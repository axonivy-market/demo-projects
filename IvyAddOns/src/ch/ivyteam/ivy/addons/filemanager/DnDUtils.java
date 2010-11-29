package ch.ivyteam.ivy.addons.filemanager;

import java.util.LinkedList;
import java.util.List;

import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.components.RTableTree;
import ch.ivyteam.ivy.richdialog.widgets.components.RTree;

import com.ulcjava.base.application.dnd.DataFlavor;
import com.ulcjava.base.application.dnd.DnDData;
import com.ulcjava.base.application.dnd.DnDLabelData;
import com.ulcjava.base.application.dnd.DnDListData;
import com.ulcjava.base.application.dnd.DnDTableData;
import com.ulcjava.base.application.dnd.DnDTableTreeData;
import com.ulcjava.base.application.dnd.DnDTextData;
import com.ulcjava.base.application.dnd.DnDTreeData;
import com.ulcjava.base.application.dnd.IDnDData;
import com.ulcjava.base.application.dnd.Transferable;
import com.ulcjava.base.application.tree.TreePath;
/**
 * 
 * @author ec
 *@since 01.01.2010
 *Used by the FileManager for DnD
 */
public class DnDUtils {
	
	public static class DnDTransferData
	{
		public IDnDData data = null;
		public List values = null;
	}
	
	/**
	 * Get the first selected value of the source
	 * @param transferData
	 * @return First selected value
	 */
	public static Object getDraggedValue(final Transferable transferData)
	{
		List values = getDraggedValues(transferData);
		if(values.size() > 0)
		{
			return values.get(0);
		}
		else
		{
			return null;
		}
	}
	
	/**
	 * Get all the selected values from the source
	 * @param transferData
	 * @return List of selected values
	 */
	public static List getDraggedValues(final Transferable transferData)
	{
		return getDraggedTransferData(transferData).values;
	}
	
	/**
	 * Get the DnDTranferData from the source
	 * with the selected values
	 * @param transferData
	 * @return TransferData
	 */
	public static DnDTransferData getDraggedTransferData(final Transferable transferData)
	{
		return getDnDTransferData(transferData, DataFlavor.DRAG_FLAVOR);
	}
	
	@SuppressWarnings("unchecked")
	private static DnDTransferData getDnDTransferData(final Transferable transferData, final DataFlavor flavor)
	{
		if(transferData == null)
		{
			throw new IllegalArgumentException("transferData must not be null.");
		}
		else if(!transferData.isDataFlavorSupported(flavor))
		{
			throw new IllegalArgumentException("transferData does not support this DataFlavor: " + flavor.toString());
		}
		
		Object data = transferData.getTransferData(flavor);
		DnDTransferData result = new DnDTransferData();
		if(data instanceof DnDTreeData)
		{
			result.values = getTreeValues((DnDTreeData) data);
			result.data = (DnDTreeData) data;
		}
		else if(data instanceof DnDListData)
		{
			result.values = getListValues((DnDListData) data);
			result.data = (DnDListData) data;
		}
		else if(data instanceof DnDTableData)
		{
			result.values = getTableValues((DnDTableData) data);
			result.data = (DnDTableData) data;
			
		}
		else if(data instanceof DnDTableTreeData)
		{
			result.values = getTableTreeValues((DnDTableTreeData) data);
			result.data = (DnDTableTreeData) data;
		}
		else if(data instanceof DnDTextData)
		{
			result.values = getTextValue((DnDTextData) data);
			result.data = (DnDTextData) data;
		}
		else if(data instanceof DnDLabelData)
		{
			result.values = getLabelValue((DnDLabelData) data);
			result.data = (DnDLabelData) data;
		}
		else
		{
			LinkedList values = new LinkedList();
			values.add( ((DnDData) data).getTextualRepresentation() );
			result.values = values;
			result.data = (DnDData) data;
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	private static List getTableTreeValues(final DnDTableTreeData data)
	{
		RTableTree tree = (RTableTree) data.getTableTree();
		TreePath paths[] = data.getTreePaths();
		List values = new LinkedList();
		for(TreePath path : paths)
		{
			values.add(tree.getTreeNodeForPath(path).getValue());
		}
		return values;
	}

	private static List getTableValues(final DnDTableData data)
	{		
		RTable table = (RTable) data.getTable();
		List values = null;
		if((values = table.getSelectedListEntries()).size() == 0)
		{
			values = table.getSelectedRecords();
		}
		return values;
		
	}

	@SuppressWarnings("unchecked")
	private static List getLabelValue(final DnDLabelData data)
	{
		List values = new LinkedList();
		values.add(data.getText());
		return values;
	}

	@SuppressWarnings("unchecked")
	private static List getTextValue(final DnDTextData data)
	{
		List values = new LinkedList();
		values.add(data.getText());
		return values;
	}

	private static List getListValues(final DnDListData data)
	{
		RList list = (RList) data.getList();
		List values = new LinkedList();
		if((values = list.getSelectedListEntries()).size() == 0)
		{
			values = list.getSelectedRecords();
		}
		return values;
	}

	@SuppressWarnings("unchecked")
	private static List getTreeValues(final DnDTreeData data)
	{
		TreePath[] paths = data.getTreePaths();
		List values = new LinkedList();
		RTree tree = (RTree) data.getTree();
		for(TreePath path : paths)
		{
			values.add(tree.getTreeNodeForPath(path).getValue());
		}
		return values;
	}
}

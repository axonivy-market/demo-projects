package ch.ivyteam.ivy.demo.dnd.SimpleDnd;

import ch.ivyteam.ivy.demo.dnd.SimpleDnd.SimpleDndPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTree;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Tree;

import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.dnd.DataFlavor;
import com.ulcjava.base.application.dnd.DnDTreeData;
import com.ulcjava.base.application.dnd.TransferHandler;
import com.ulcjava.base.application.dnd.Transferable;
import com.ulcjava.base.application.tree.TreePath;

public class TreeDndTransferHandler extends TransferHandler 
{
	/** The panel on which this transfer handler is used */
	private SimpleDndPanel fPanel;
	
	public TreeDndTransferHandler(SimpleDndPanel panel)
	{
		fPanel = panel;
	}
	
	@Override
	public int getSourceActions(ULCComponent comp) 
	{
		return TransferHandler.ACTION_COPY_OR_MOVE;
	}
	
	@Override
	public int getTargetActions(ULCComponent comp) 
	{
		return TransferHandler.ACTION_COPY_OR_MOVE;
	}
	
	@Override
	public void exportDone(ULCComponent src, Transferable t, int action) 
	{
//		 get transfer data exported by the drag source
		try
		{
			Object dragData = t.getTransferData(DataFlavor.DRAG_FLAVOR);
			DnDTreeData treeDragData = (DnDTreeData)dragData;
			RTree sourceTree = (RTree) treeDragData.getTree();
			TreePath[] draggedTreePathes = treeDragData.getTreePaths();
			
			// get transfer data exported by the drop target
			Object dropData = t.getTransferData(DataFlavor.DROP_FLAVOR);
			DnDTreeData treeDropData = (DnDTreeData)dropData;
			RTree targetTree = (RTree) treeDropData.getTree();
			TreePath droppedTreePath = treeDropData.getTreePaths()[0];

			List sourceNodes = List.create();
			for (TreePath path : draggedTreePathes)
			{
				sourceNodes.add(sourceTree.getTreeNodeForPath(path));
			}
			Tree targetNodes = targetTree.getTreeNodeForPath(droppedTreePath);
			String actionStr = action == TransferHandler.ACTION_COPY ? "copy" : "move";
			
			
			fPanel.getPanelAPI().callMethod("objectsDropped", new Object[]{sourceNodes, targetNodes, actionStr});
		}
		catch (Exception ex)
		{
			// Ignore exception for now!
		}
	}

	@Override
	public boolean importData(ULCComponent target, Transferable t) 
	{
		return true;
	}

}

package ch.ivyteam.ivy.workflow.ui.utils;

import ch.ivyteam.ivy.richdialog.widgets.components.RTree;

import com.ulcjava.base.application.tree.ITreeNode;
import com.ulcjava.base.application.tree.TreePath;

public class TreeUtil {

    // If expand is true, expands all nodes in the tree.
    // Otherwise, collapses all nodes in the tree.
    public void expandAll(RTree tree, boolean expand) {
    	System.out.println("-------------------");
    	System.out.println("TreeNode type: " + tree.getModel().getRoot().getClass().getName());
    	System.out.println("Is a ITreeNode type: " + (tree.getModel().getRoot() instanceof ITreeNode));
    	
        ITreeNode root = (ITreeNode)tree.getModel().getRoot();
    
        // Traverse tree from root
        expandAll(tree, new TreePath(root), expand);
    }
    private void expandAll(RTree tree, TreePath parent, boolean expand) {
        // Traverse children
        ITreeNode node = (ITreeNode)parent.getLastPathComponent();
        System.out.println("ITreeNode type: " + 
        		parent.getLastPathComponent().getClass().toString());
        
        if (node.getChildCount() >= 0) {
        	for (int i=0; i<node.getChildCount(); i++)
        	{
        		ITreeNode n = node.getChildAt(i);
        		TreePath path = parent.pathByAddingChild(n);
        		expandAll(tree, path, expand);
        	}
//            for (Enumeration e=node.children(); e.hasMoreElements(); ) {
//                ITreeNode n = (ITreeNode)e.nextElement();
//                TreePath path = parent.pathByAddingChild(n);
//                expandAll(tree, path, expand);
//            }
        }
    
        // Expansion or collapse must be done bottom-up
        if (expand) {
            tree.expandPath(parent);
        } else {
            tree.collapsePath(parent);
        }
    }

    
}

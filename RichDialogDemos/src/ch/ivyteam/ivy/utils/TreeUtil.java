package ch.ivyteam.ivy.utils;

import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Tree;

public class TreeUtil 
{
	
	/**
	 * Removes a child from its parent tree 
	 * @param objectToRemove The object to remove. Should not be the root node
	 */
	public static void removeTreeChild(Tree objectToRemove)
	{
		Tree parent = objectToRemove.getParent();
		
		if (parent != null)
		{
			List<Tree> children = parent.getChildren();
			
			for (int i = 0; i < children.size(); i++)
			{
				if (children.get(i) == objectToRemove)
				{
					parent.removeChildAt(i);
				}
			}	
		}
		
			
	}
}

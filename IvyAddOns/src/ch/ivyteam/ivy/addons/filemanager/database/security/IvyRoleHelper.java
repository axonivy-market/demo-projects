/**
 * 
 */
package ch.ivyteam.ivy.addons.filemanager.database.security;

import java.util.List;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.Tree;
import ch.ivyteam.ivy.security.IRole;

/**
 * @author ec
 *
 */
public class IvyRoleHelper {

	
	/**
	 * Build an Ivy Role ch.ivyteam.ivy.scripting.objects.Tree from the Everybody Role.<br>
	 * Usefull to display the roles in an RDTree
	 * @return Ivy Role ch.ivyteam.ivy.scripting.objects.Tree
	 * @throws Exception
	 */
	public static Tree buildIvyRolesTree() throws Exception{
		Tree iroleTree = new Tree();
		IRole r = Ivy.session().getWorkflowContext().getSecurityContext().findRole("Everybody");

		iroleTree.setValue(r);
		iroleTree.setInfo(r.getName());
		fillIvyRolesTree(iroleTree, r);
		return iroleTree;
	}

	/**
	 * Recursive private method to build the roles Tree
	 * @param _rTree
	 * @param _r
	 * @throws Exception
	 */
	private static void fillIvyRolesTree(Tree _rTree, IRole _r) throws Exception{
		List<IRole> roles = _r.getChildRoles();

		if(roles.isEmpty())
		{
			return;
		}

		for(IRole r: roles)
		{
			_rTree.createChild(r, r.getName());
			fillIvyRolesTree(_rTree.getLastChild(),r);
		}
	}
	
}

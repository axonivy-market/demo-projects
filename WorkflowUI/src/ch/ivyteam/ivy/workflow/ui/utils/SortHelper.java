package ch.ivyteam.ivy.workflow.ui.utils;

import java.text.Collator;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.workflow.ui.data.administration.UserManagedTeams;

public class SortHelper {
	
	
	/**
	 * It sorts the roles according to the role name
	 * @param list to sort
	 */
	public static void sortRoles(List<IRole> list) {
		final Collator collator = Collator.getInstance(Ivy.session().getContentLocale());
		Collections.sort(list, new Comparator<IRole>() {
			public int compare(IRole role1, IRole role2) {
				try {
					return collator.compare(role1.getName(), role2.getName());
				} catch (PersistencyException e) {
					Ivy.log().warn(e);
				}
				return 0;
			}
		});
	}
	
	
	/**
	 * It sorts the users according to the user name
	 * @param list to sort
	 */
	public static void sortUsers(List<IUser> list) {
		final Collator collator = Collator.getInstance(Ivy.session().getContentLocale());
		Collections.sort(list, new Comparator<IUser>() {
			public int compare(IUser user1, IUser user2) {
				try {
					return collator.compare(user1.getName(), user2.getName());
				} catch (PersistencyException e) {
					Ivy.log().warn(e);
				}
				return 0;
			}
		});
	}
	
	
	/**
	 * It sorts the users managed teams according to the user name
	 * @param list to sort
	 */
	public static void sortUsersManagedTeams(List<UserManagedTeams> list){
		final Collator collator = Collator.getInstance(Ivy.session().getContentLocale());
		Collections.sort(list, new Comparator<UserManagedTeams>() {
			public int compare(UserManagedTeams user1, UserManagedTeams user2) {
				try {
					String name1 = user1.getUser().getName();
					String name2 = user2.getUser().getName();
					return collator.compare(name1, name2);
				} catch (PersistencyException e) {
					Ivy.log().warn(e);
				}
				return 0;
			}
		});
	}
	
	

}

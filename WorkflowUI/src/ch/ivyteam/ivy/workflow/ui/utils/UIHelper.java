package ch.ivyteam.ivy.workflow.ui.utils;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.ULCTextComponent;
import com.ulcjava.base.application.util.Color;

public class UIHelper {
	
	/**
	 * Run to the whole tree of components and:
	 * 
	 * set background color to white
	 * 
	 * if the current component is ULCTextField or RTextArea then
	 * 		set border property to empty
	 * 		set background color as the parent's color
	 * 		set selectedAllOnFocusGained to true (only for RTextArea)
	 * 
	 * if the current component is ULCContainer then 
	 * 		call this method with current component as argument
	 * otherwise just exit
	 * 
	 * @param component
	 */
	public static void prettifyComponent(ULCComponent component)
	{
		component.setBackground(new Color(255, 255, 255));
		
		// component is kind of ULCTextComponent
		if (component instanceof ULCTextComponent)
		{
			// remove the border onyl for disabled or not editable component
			if (!component.isEnabled() || !((ULCTextComponent)component).isEditable() )
				component.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
			
			if (component instanceof RTextField)
				((RTextField) component).setSelectAllOnFocusGained(true);
			
			return;
		}
		else			
		{
			if (component instanceof ULCContainer &&  ((ULCContainer) component).getComponentCount() > 0)
			{					
				ULCContainer container = (ULCContainer) component;
				List<ULCComponent> components = Arrays.asList(container.getComponents());
				Iterator<ULCComponent> iterator = components.iterator();
				
				while (iterator.hasNext())
					prettifyComponent(iterator.next());
			}
			else
				return;
		}
		
	}

}

package ch.ivyteam.ivy.demo.charts.ChartsDemo;

import ch.ivyteam.ivy.demo.charts.BarChartProgrammingLanguages.BarChartProgrammingLanguagesPanel;
import ch.ivyteam.ivy.demo.charts.PieChartProgrammingLanguage.PieChartProgrammingLanguagePanel;
import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane;

import com.ulcjava.base.application.ULCContainer;

/**
 * <p>ChartsDemoPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class ChartsDemoPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTabbedPane TabbedPane = null;
private @EmbeddedRichDialog(BarChartProgrammingLanguagesPanel.class) ULCContainer barChartProgrammingLanguagesPanel = null;
private @EmbeddedRichDialog(PieChartProgrammingLanguagePanel.class) ULCContainer pieChartProgrammingLanguagePanel = null;
private @EmbeddedRichDialog(TitlePanel.class) ULCContainer titlePanel = null;
/**
   * Create a new instance of ChartsDemoPanel
   */
  public ChartsDemoPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ChartsDemoPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(535,396));
        this.add(getTabbedPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, 1.0, 0.95, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, 1.0, 0.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes TabbedPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane	
 */
private RTabbedPane getTabbedPane() {
	if (TabbedPane == null) {
		TabbedPane = new RTabbedPane();
		TabbedPane.setName("TabbedPane");
		TabbedPane.addTab("Bar Chart", null, getBarChartProgrammingLanguagesPanel(), null);
		TabbedPane.addTab("Pie Chart", null, getPieChartProgrammingLanguagePanel(), null);
	}
	return TabbedPane;
}

/**
 * This method initializes barChartProgrammingLanguagesPanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getBarChartProgrammingLanguagesPanel() {
	if (barChartProgrammingLanguagesPanel == null) {
		barChartProgrammingLanguagesPanel = RichDialogPanelFactory
				.create(BarChartProgrammingLanguagesPanel.class);
		barChartProgrammingLanguagesPanel.setName("barChartProgrammingLanguagesPanel");
	}
	return barChartProgrammingLanguagesPanel;
}

/**
 * This method initializes pieChartProgrammingLanguagePanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getPieChartProgrammingLanguagePanel() {
	if (pieChartProgrammingLanguagePanel == null) {
		pieChartProgrammingLanguagePanel = RichDialogPanelFactory
				.create(PieChartProgrammingLanguagePanel.class);
		pieChartProgrammingLanguagePanel.setName("pieChartProgrammingLanguagePanel");
	}
	return pieChartProgrammingLanguagePanel;
}

/**
 * This method initializes titlePanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getTitlePanel() {
	if (titlePanel == null) {
		titlePanel = RichDialogPanelFactory.create(TitlePanel.class);
		titlePanel.setName("titlePanel");
	}
	return titlePanel;
}
}  //  @jve:decl-index=0:visual-constraint="-273,-3"
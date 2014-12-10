package ch.ivyteam.ivy.demo.charts.BarChartProgrammingLanguages;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import ch.ivyteam.ivy.demo.charts.ProgrammingLanguagePopularity;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ulc.vwidget.chart.common.ChartConstant;
import ch.ivyteam.ulc.vwidget.chart.server.ULCVBarChart;
import ch.ivyteam.ulc.vwidget.chart.server.event.BarMouseEvent;
import ch.ivyteam.ulc.vwidget.chart.server.event.IChartMouseListener;
import ch.ivyteam.ulc.vwidget.chart.server.model.DataSeries;

import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Insets;

/**
 * Rich Dialog Demo for the bar chart. 
 * <p>
 * Contains a bar chart showing the distribution of programming languages in the world. 
 * We show how to configure the most important visual properties of the bar chart, how
 * to add and update data and how to get an event when a user clicks on a pie slice.  
 */
@SuppressWarnings("all")
public class BarChartProgrammingLanguagesPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private ULCVBarChart progLangBarChart = null;
private List<ProgrammingLanguagePopularity> programmingLanguages;
/**
   * Create a new instance of BarChartProgrammingLanguagesPanel
   */
  public BarChartProgrammingLanguagesPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes BarChartProgrammingLanguagesPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(523,296));
        this.add(getProgLangBarChart(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, 1.0, 1.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes the bar chart widget and sets all the properties that are stable 
 * during the whole life cycle of the widget
 * 	
 * @return ch.ivyteam.ulc.vwidget.chart.server.ULCVBarChart	
 */
private ULCVBarChart getProgLangBarChart() {
	if (progLangBarChart == null) {
		progLangBarChart = new ULCVBarChart();
		progLangBarChart.setName("progLangBarChart");
		
		// the title is set by a data binding, check the data binding view for more information
		// you can use too CMS macros for text parameters		
		progLangBarChart.addSubtitle("by TIOBE Programming Community Index");
		progLangBarChart.setDomainAxisTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/demo/charts/xAxisTitle\")%>");
		progLangBarChart.setRangeAxisTitle("Relative Usage");
		
		progLangBarChart.setNumberOfItemsPerPage(6);
		progLangBarChart.setPagingScaleEnabled(true);
		
		progLangBarChart.setInsets(new Insets(5, 0, 5, 0));
		progLangBarChart.setLegendVisible(true);
		progLangBarChart.setCategoryLabelOrientation(ChartConstant.BAR_CHART_CATEGORY_LABEL_DIAGONAL_DOWN);
		
		progLangBarChart.addMouseListener(new IChartMouseListener<BarMouseEvent>() {
			
			@Override
			public void mouseClicked(BarMouseEvent event) {
				DataSeries dataSeries = event.getEventEntity().getDataSeries();
				int valueIndex = event.getEventEntity().getValueIndex();
				
				// calls a Rich Dialog method on the very same rich dialog. 
				// Note the try/catch which is necessary to avoid a problem within ivy
				// Note too that you cannot use the return value because of the same 
				// problem within ivy. Do whatever you want to do directly in the Rich Dialog method.  
				try {
					getPanelAPI().callMethod("updateBar", new Object[]{dataSeries, valueIndex});
				} catch (Throwable e) {
				}
			}
		});
	}
	return progLangBarChart;
}

	/**
	 * Splits the input data into its data series and sets it into the bar chart
	 * @param progLangs a list of programming languages with its distribution value
	 */
	public void loadDataIntoChart(final List<ProgrammingLanguagePopularity> progLangs)
	{
		programmingLanguages = progLangs;
		List<Number> valuesOld = new ArrayList<Number>();
		List<Number> valuesNew = new ArrayList<Number>();
		List<String> categories = new ArrayList<String>();
		for (ProgrammingLanguagePopularity progLang : progLangs)
		{
			valuesOld.add(progLang.getPercentageOld());
			valuesNew.add(progLang.getPercentageNew());
			categories.add(progLang.getName());
		}

		DataSeries dataSeriesOld = new DataSeries();
		dataSeriesOld.setTitle("November 2011");
		dataSeriesOld.setColor(new Color(122, 255, 122));
		dataSeriesOld.setValues(valuesOld);

		DataSeries dataSeriesNew = new DataSeries();
		dataSeriesNew.setTitle("November 2012");
		dataSeriesNew.setColor(new Color(0, 144, 212));
		dataSeriesNew.setValues(valuesNew);

		getProgLangBarChart().addDataSeries(dataSeriesOld);
		getProgLangBarChart().addDataSeries(dataSeriesNew);
		getProgLangBarChart().setCategories(categories);
	}

}  //  @jve:decl-index=0:visual-constraint="10,10"
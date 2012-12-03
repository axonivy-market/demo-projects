package ch.ivyteam.ivy.demo.charts.PieChartProgrammingLanguage;

import java.util.ArrayList;
import java.util.List;

import ch.ivyteam.ivy.demo.charts.ProgrammingLanguagePopularity;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ulc.vwidget.chart.server.ULCVPieChart;
import ch.ivyteam.ulc.vwidget.chart.server.event.IChartMouseListener;
import ch.ivyteam.ulc.vwidget.chart.server.event.PieMouseEvent;
import ch.ivyteam.ulc.vwidget.chart.server.model.PieSlice;

import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.server.GradientPaint;
import com.ulcjava.base.server.GradientPaint.Orientation;

/**
 * Rich Dialog Demo for the pie chart. 
 * <p>
 * Contains a pie chart showing the distribution of programming languages in the world. 
 * We show how to configure the most important visual properties of the pie chart, how
 * to add and update data and how to get an event when a user clicks on a pie slice.  
 */
@SuppressWarnings("all")
public class PieChartProgrammingLanguagePanel extends RichDialogGridBagPanel implements IRichDialogPanel {
	/** Serial version id */
	private static final long serialVersionUID = 1L;
	private ULCVPieChart fPieChart = null;

	/**
	 * Create a new instance of PieChartProgrammingLanguagePanel
	 */
	public PieChartProgrammingLanguagePanel() {
		super();
		initialize();
	}

	/**
	 * This method initializes PieChartProgrammingLanguagePanel
	 * 
	 * @return void
	 */
	private void initialize() {
		this.add(getULCVPieChart(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, 1.0, 1.0,
				com.ulcjava.base.application.GridBagConstraints.CENTER,
				com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,
						0, 0, 0), 0, 0));
	}

	/**
	 * This method initializes the pie chart and sets all the properties that are stable 
	 * during the whole life cycle of the widget
	 * 
	 * @return ch.ivyteam.ulc.vwidget.chart.server.ULCVPieChart
	 */
	private ULCVPieChart getULCVPieChart() {
		if (fPieChart == null) {
			fPieChart = new ULCVPieChart();
			fPieChart.setName("fPieChart");
			
			fPieChart.setLegendVisible(false);
			
			fPieChart.setBackgroundPaint(new GradientPaint(Color.lightGray, Color.black, Orientation.VERTICAL));
			fPieChart.setLabelForeground(Color.white);
			fPieChart.setLabelFormat("{0} : {1}");
			
			fPieChart.addMouseListener(new IChartMouseListener<PieMouseEvent>() {
				
				@Override
				public void mouseClicked(PieMouseEvent event) {
					PieSlice pieSlice = event.getEventEntity().getPieSlice();
					pieSlice.setValue(pieSlice.getValue().doubleValue() + 1);
					fPieChart.updatePieSlice(pieSlice);
				}
			});
		}
		return fPieChart;
	}

	/**
	 * Loads data into the chart.
	 * @param progLangs the raw data to display in the pie chart
	 */
	public void loadDataIntoChart(final List<ProgrammingLanguagePopularity> progLangs) {
		// the colors for the pie slices are defined here 
		List<Color> colors = new ArrayList<Color>();
		colors.add(new Color(0,51,102));
		colors.add(new Color(0,76,153));
		colors.add(new Color(0,122,202));
		colors.add(new Color(0,128,255));
		colors.add(new Color(51,153,255));
		colors.add(new Color(102,176,255));
		colors.add(new Color(153,204,255));
		
		for (int i = 0; i < 7; i++)
		{
			ProgrammingLanguagePopularity progLang = progLangs.get(i);
			PieSlice pieSlice = new PieSlice(progLang.getName(), progLang.getPercentageNew(), colors.get(i));
			fPieChart.addPieSlice(pieSlice);
		}
	}
}
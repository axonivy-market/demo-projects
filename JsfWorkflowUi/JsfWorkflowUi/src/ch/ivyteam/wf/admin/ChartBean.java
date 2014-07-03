package ch.ivyteam.wf.admin;  
  
import java.io.Serializable;

import javax.faces.bean.ManagedBean;

import org.primefaces.context.RequestContext;
import org.primefaces.event.ItemSelectEvent;
import org.primefaces.model.chart.Axis;
import org.primefaces.model.chart.AxisType;
import org.primefaces.model.chart.BarChartModel; 
import org.primefaces.model.chart.BarChartSeries;
import org.primefaces.model.chart.ChartSeries;
import org.primefaces.model.chart.LineChartSeries;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.Recordset;
  
@SuppressWarnings("serial")
@ManagedBean
public class ChartBean implements Serializable {  
	
    private BarChartModel barModel;
    private static String[] barId = new String[100];
    private ChartSeries businessRuntime = new BarChartSeries();
    private ChartSeries workingtime = new BarChartSeries();
    private LineChartSeries average = new LineChartSeries();
  
    public ChartBean() {  
        createBarModel();
    }
    
    public BarChartModel getBarModel() {
        return barModel;
    }
  
    private void createBarModel() {  
    	barModel = new BarChartModel();
    	barModel.addSeries(workingtime);
    	barModel.addSeries(businessRuntime);
    	barModel.addSeries(average);
    	barModel.setBarMargin(2);
    	barModel.setBarPadding(2);
    	barModel.setAnimate(true);
    	barModel.setStacked(true);
    	barModel.setShadow(false);
    	barModel.setExtender("ext");
    	barModel.setLegendPosition("ne");
    	barModel.setSeriesColors("638411, EDF1C1, B0BE29");
    }
    
    public void setDescriptions(String chartFor, String highestTime) {
    	Axis yAxis = barModel.getAxis(AxisType.Y);
    	yAxis.setMin(0);
    	yAxis.setLabel(Ivy.cms().co("/labels/admin/workflowStatistic/throughputTime") + " (" + highestTime + ")");
    	
    	if(chartFor.equals("case"))
    	{
        	barModel.setTitle(Ivy.cms().co("/labels/admin/averrageStatistic/chartTitle"));
        	barModel.setDatatipFormat(Ivy.cms().co("/navLabels/detailsStatistic"));
    	}
    	else
    	{
    		barModel.setTitle(Ivy.cms().co("/labels/admin/detailsStatistic/chartTitle"));
        	barModel.setDatatipFormat(Ivy.cms().co("/navLabels/taskDetails"));
    	}
    }
    
    public void setChartSeries(Recordset chartSeries, String chartFor, String highestTime, Number averageTime) {
        this.businessRuntime.setLabel(Ivy.cms().co("/labels/admin/workflowStatistic/waitTime"));
        this.workingtime.setLabel(Ivy.cms().co("/labels/admin/workflowStatistic/processingTime"));
    	this.average.setLabel(Ivy.cms().co("/labels/admin/averrageStatistic/average"));
		this.average.setDisableStack(true);
        this.average.setShowMarker(false);
        int divisor = highestTime.equals("h") ? 3600 : highestTime.equals("min") ? 60 : 1;
        
        for(int count = 0; count < chartSeries.size(); count++)
        {
            String barName;
        	Number workingtime = (Number) chartSeries.getAt(count).getField("MINWORKINGTIME");
        	Number businessRuntime = (Number) chartSeries.getAt(count).getField("MINBUSINESSRUNTIME");
        	if(chartFor.equals("case"))
			{
				barName = chartSeries.getAt(count).getField("NAME").toString() + " (CaseId: " + chartSeries.getAt(count).getField("CASEID").toString() + ")";
				ChartBean.barId[count] = chartSeries.getAt(count).getField("CASEID").toString();
			}
			else
			{
				barName = chartSeries.getAt(count).getField("MAXNAME").toString() + " (TaskId: " + chartSeries.getAt(count).getField("TASKID").toString() + ")";
				ChartBean.barId[count] = chartSeries.getAt(count).getField("TASKID").toString();
			}
			this.businessRuntime.set(barName, businessRuntime.floatValue() / divisor - workingtime.floatValue() / divisor);
        	this.workingtime.set(barName, workingtime.floatValue() / divisor);
			this.average.set(barName, averageTime.floatValue() / divisor);
        }
	}
    
    public void itemSelectCase(ItemSelectEvent event) {
        int index = event.getItemIndex();
        String caseId = ChartBean.barId[index];
        String statisticDetailsUri = Ivy.html().startref("144697C904B165C8/StatisticDetailsAvg.ivp");
        
        RequestContext.getCurrentInstance().execute("window.open('" + statisticDetailsUri + "?caseId=" + caseId + "','_self')");
    }
    
    public void itemSelectTask(ItemSelectEvent event) {
        int index = event.getItemIndex();
        String taskId = ChartBean.barId[index];
        String taskHistoryUri = Ivy.html().startref("13FE81AF3A82F57F/TaskHistoryDetails.ivp");
        
        RequestContext.getCurrentInstance().execute("window.open('" + taskHistoryUri + "?detailTaskId=" + taskId + "','_self')");
    }
}  
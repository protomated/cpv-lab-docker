{include file='dashTable.tpl' tableID='Campaign' metric='Cost' order='Top' columnHeader='Campaign Name' metricHeader='Cost' rows=$campaignsCostTop}
{include file='dashTable.tpl' tableID='Campaign' metric='Cost' order='Bottom' columnHeader='Campaign Name' metricHeader='Cost' rows=$campaignsCostBottom}
{include file='dashTable.tpl' tableID='Campaign' metric='Revenue' order='Top' columnHeader='Campaign Name' metricHeader='Revenue' rows=$campaignsRevenueTop}
{include file='dashTable.tpl' tableID='Campaign' metric='Revenue' order='Bottom' columnHeader='Campaign Name' metricHeader='Revenue' rows=$campaignsRevenueBottom}
{include file='dashTable.tpl' tableID='Campaign' metric='ROI' order='Top' columnHeader='Campaign Name' metricHeader='ROI' rows=$campaignsROITop}
{include file='dashTable.tpl' tableID='Campaign' metric='ROI' order='Bottom' columnHeader='Campaign Name' metricHeader='ROI' rows=$campaignsROIBottom}
<!!!!>
{include file='dashTable.tpl' tableID='TrafficSources' metric='Cost' order='Top' columnHeader='Traffic Source' metricHeader='Cost' rows=$trafficSourcesCostTop}
{include file='dashTable.tpl' tableID='TrafficSources' metric='Cost' order='Bottom' columnHeader='Traffic Source' metricHeader='Cost' rows=$trafficSourcesCostBottom}
{include file='dashTable.tpl' tableID='TrafficSources' metric='Revenue' order='Top' columnHeader='Traffic Source' metricHeader='Revenue' rows=$trafficSourcesRevenueTop}
{include file='dashTable.tpl' tableID='TrafficSources' metric='Revenue' order='Bottom' columnHeader='Traffic Source' metricHeader='Revenue' rows=$trafficSourcesRevenueBottom}
{include file='dashTable.tpl' tableID='TrafficSources' metric='ROI' order='Top' columnHeader='Traffic Source' metricHeader='ROI' rows=$trafficSourcesROITop}
{include file='dashTable.tpl' tableID='TrafficSources' metric='ROI' order='Bottom' columnHeader='Traffic Source' metricHeader='ROI' rows=$trafficSourcesROIBottom}
<!!!!>
{include file='dashTableComplete.tpl' tableID='Complete' metric='Cost' order='Top' rows=$completeCostTop}
{include file='dashTableComplete.tpl' tableID='Complete' metric='Cost' order='Bottom' rows=$completeCostBottom}
{include file='dashTableComplete.tpl' tableID='Complete' metric='Revenue' order='Top' rows=$completeRevenueTop}
{include file='dashTableComplete.tpl' tableID='Complete' metric='Revenue' order='Bottom' rows=$completeRevenueBottom}
{include file='dashTableComplete.tpl' tableID='Complete' metric='ROI' order='Top' rows=$completeROITop}
{include file='dashTableComplete.tpl' tableID='Complete' metric='ROI' order='Bottom' rows=$completeROIBottom}
<!!!!>
<input type="hidden" id="hidChartCostTop" value="{$chartCostTop}"/>
<input type="hidden" id="hidChartCostBottom" value="{$chartCostBottom}"/>
<input type="hidden" id="hidChartRevenueTop" value="{$chartRevenueTop}"/>
<input type="hidden" id="hidChartRevenueBottom" value="{$chartRevenueBottom}"/>
<input type="hidden" id="hidChartROITop" value="{$chartROITop}"/>
<input type="hidden" id="hidChartROIBottom" value="{$chartROIBottom}"/>
package com.axonivy.connectivity.soap;

import static org.assertj.core.api.Assertions.assertThat;

import javax.xml.ws.BindingProvider;

import org.junit.Test;

import com.axonivy.connectivity.creatorder.client.CreateOrder;
import com.axonivy.connectivity.creatorder.client.CreateOrderService;
import com.axonivy.connectivity.creatorder.client.Order;
import com.axonivy.connectivity.creatorder.client.WebServiceProcessTechnicalException;
import com.axonivy.connectivity.rest.EngineUrl;

public class IntegrationTestSoapCreateOrderService 
{
	@Test
	public void createOrder_lowerThan10() throws WebServiceProcessTechnicalException
	{
		Order order = createOrder(1);
		Long taskId = callCreateOrderService(order);
		assertThat(taskId).isNotNull().isGreaterThan(0);
	}
	
	@Test
	public void createOrder_greaterThan10() throws WebServiceProcessTechnicalException
	{
		Order order = createOrder(100);
		Long taskId = callCreateOrderService(order);
		assertThat(taskId).isNotNull().isGreaterThan(0);
	}

	private static Order createOrder(int amount) {
		Order order = new Order();
		order.setAmount(amount);
		order.setProduct("Bike");
		order.setUnitPrice(859.00);
		order.setRequester("Hans");
		return order;
	}
	
	private static Long callCreateOrderService(Order order) throws WebServiceProcessTechnicalException {
		CreateOrderService service = new CreateOrderService();
		CreateOrder port = service.getCreateOrderPort();
		routeToCurrentEngine(port);
		Long taskId = port.call(order);
		return taskId;
	}

	private static void routeToCurrentEngine(CreateOrder port) {
		String url = EngineUrl.soap() + "/ConnectivityDemos/162492A1649E72DF";
		((BindingProvider) port).getRequestContext().put(BindingProvider.ENDPOINT_ADDRESS_PROPERTY, url);
	}
	
}

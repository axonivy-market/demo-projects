/**
 * WS_TaskListServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 May 23, 2006 (11:54:39 CEST) WSDL2Java emitter.
 */

package wS_TaskList.ws.ivy.xivy3;

public class WS_TaskListServiceLocator extends org.apache.axis.client.Service implements wS_TaskList.ws.ivy.xivy3.WS_TaskListService {

    public WS_TaskListServiceLocator() {
    }


    public WS_TaskListServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public WS_TaskListServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for WS_TaskList
    private java.lang.String WS_TaskList_address = "http://localhost:8080/ivy/ws/WS_TaskList";

    public java.lang.String getWS_TaskListAddress() {
        return WS_TaskList_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String WS_TaskListWSDDServiceName = "WS_TaskList";

    public java.lang.String getWS_TaskListWSDDServiceName() {
        return WS_TaskListWSDDServiceName;
    }

    public void setWS_TaskListWSDDServiceName(java.lang.String name) {
        WS_TaskListWSDDServiceName = name;
    }

    public wS_TaskList.ws.ivy.xivy3.WS_TaskList getWS_TaskList() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(WS_TaskList_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getWS_TaskList(endpoint);
    }

    public wS_TaskList.ws.ivy.xivy3.WS_TaskList getWS_TaskList(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            wS_TaskList.ws.ivy.xivy3.WS_TaskListSoapBindingStub _stub = new wS_TaskList.ws.ivy.xivy3.WS_TaskListSoapBindingStub(portAddress, this);
            _stub.setPortName(getWS_TaskListWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setWS_TaskListEndpointAddress(java.lang.String address) {
        WS_TaskList_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (wS_TaskList.ws.ivy.xivy3.WS_TaskList.class.isAssignableFrom(serviceEndpointInterface)) {
                wS_TaskList.ws.ivy.xivy3.WS_TaskListSoapBindingStub _stub = new wS_TaskList.ws.ivy.xivy3.WS_TaskListSoapBindingStub(new java.net.URL(WS_TaskList_address), this);
                _stub.setPortName(getWS_TaskListWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("WS_TaskList".equals(inputPortName)) {
            return getWS_TaskList();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://localhost:8080/ivy/ws/WS_TaskList", "WS_TaskListService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://localhost:8080/ivy/ws/WS_TaskList", "WS_TaskList"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("WS_TaskList".equals(portName)) {
            setWS_TaskListEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}

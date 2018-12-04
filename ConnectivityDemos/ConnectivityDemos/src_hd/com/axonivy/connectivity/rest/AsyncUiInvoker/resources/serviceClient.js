function ServiceClient(uri) {
	// current service uri: e.g. "http://localhost:8081/ivy/api/designer/chat"
	this.uri = uri;
	
	this.batch = async function(callback)
	{
		const response = await fetch(uri+"?blockSeconds=3");
	    //const messages = await response.json();
	    callback(response.ok); // update UI
	    return;
	}
}

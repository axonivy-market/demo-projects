function Chat(uri) {
	// current service uri: e.g. "http://localhost:8081/ivy/api/designer/chat"
	this.uri = uri;
	
	this.users = async function(callback)
	{
		const response = await fetch(uri+"/users");
	    const users = await response.json();
	    callback(users);
	    return users;
	}
	
	this.listen = async function(callback)
	{
		const response = await fetch(uri);
	    const messages = await response.json();
	    this.listen(callback); // wait for next update
	    callback(messages); // update UI
	    return;
	}
	
	this.broadcast = async function(message)
	{
		const response = await fetch(uri, {
		    method: 'POST',
		    headers: {'X-Requested-By': 'ivy'},
		    body: message
		});
	    return;
	}
	
	this.send = async function(receiver, message)
	{
		const response = await fetch(uri+"/"+receiver, {
		    method: 'POST',
		    headers: {'X-Requested-By': 'ivy'},
		    body: message
		});
	    return;
	}
}


function View()
{
	this.renderUsers = function(users)
	{
		var display = document.getElementById("users");
		users.forEach(function(user){
			display.innerHTML += "<option>"+user +"</option>";
		});
	}
	
	this.renderMessages = function(messages){
		var text = document.getElementById("form:chat");
		messages.forEach(function(entry) {
	        text.innerHTML += "["+entry.sentDate+"] "+ entry.sender +": "+entry.message+"<br/>";
	    });
		text.scrollTop = text.scrollHeight;
	}
}


function IvyUri()
{
	this.rest = function()
	{
		var baseUri = window.location.origin; // e.g. http://localhost:8080
		var path = window.location.pathname.split( '/' ); // assume faces uri
		var webAppCtxt = path[1]; // e.g. /ivy
		var app = path[4]; // e.g. /designer
		var restUri = baseUri+"/"+webAppCtxt+"/api/"+app;
		return restUri
	}
}

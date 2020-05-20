function IvyUri()
{
  this.rest = function()
  {
    var baseUri = window.location.origin; // e.g. http://localhost:8080
    var path = window.location.pathname.split( '/' ); // assume faces uri
    var webAppCtxt = path[1]; // e.g. /ivy
    var restUri = baseUri+"/"+webAppCtxt+"/api";
    return restUri
  }
}

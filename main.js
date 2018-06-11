// cargar el módulo http
var http = require ('http');

// configuramos nuestro servidor HTTP
var server = http.createServer (function (request, response) {
  response.writeHead (200, {"Content-Type": "text / plain"});
  response.end ("Hola getintodevops.com \ n");
});


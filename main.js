// cargar el módulo http
var http = require ('http');

// configuramos nuestro servidor HTTP
var server = http.createServer (function (request, response) {
  response.writeHead (200, {"Content-Type": "text / plain"});
  response.end ("Hola getintodevops.com \ n");
});

// escucha en localhost: 8000
server.listen (8000);
console.log ("El servidor está escuchando en http://192.168.147.144:8000/");
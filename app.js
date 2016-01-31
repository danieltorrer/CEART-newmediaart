var express = require('express');
var app = express();
var http = require('http').Server(app);
var io = require('socket.io')(http);

var port = process.env.PORT || 3000;

app.use(express.static('public'));


app.get('/', function(req, res){
  res.sendFile('index.html');
});

io.on('connection', function(socket){

    console.log('A user Connected');

    socket.broadcast.emit('guest_connected');

    socket.on('keyPressed', function(nota){
        socket.broadcast.emit('keyPressed', nota);
    })

});

http.listen(port, function(){
  console.log('Listening on *:' + port);
});

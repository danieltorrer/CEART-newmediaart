var p;
var socket

var $el = {
	messages : $('.messages'),
	beat1 : $('#beat1').get(0),
	beat2 : $('#beat2').get(0),
	beat3 : $('#beat3').get(0),
	beat4 : $('#beat4').get(0),
	beat5 : $('#beat5').get(0),
	beat6 : $('#beat6').get(0),
}
$(document).ready(function(){

		var numero = 1;

		$('button').click(function(){
			p.setNumero( numero++ );
		});

		$('.connect').click(function(){
			$('.connect').hide();
			socket = io();

			socket.on('keyPressed', function(nota){
				p.animateParticle(nota);
				playSound(nota);
			});

			socket.on('guest_connected', function(){
				$el.messages.append('<p> Se ha conectado un usuario </p>');
			});

		});

});

function keyPressedClient(nota){
	playSound(nota);
	socket.emit('keyPressed', nota);
}

function getProcessingObject(){
	p = Processing.getInstanceById('box');
}

function playSound(nota){
	if (nota.code > 48 && nota.code < 55) {
		var key = nota.code - 48;
		$el['beat'+key].play();
	}
	
}

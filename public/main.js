var p;
var socket

var $el = {
	messages : $('.messages'),
	/*beat1 : $('#beat1').get(0),
	beat2 : $('#beat2').get(0),
	beat3 : $('#beat3').get(0),
	beat4 : $('#beat4').get(0),
	beat5 : $('#beat5').get(0),
	beat6 : $('#beat6').get(0),*/
}

var sound = []


$(document).ready(function(){

		for (var i = 0; i < 6; i++) {
			sound[i] = new Howl({
				urls: ['data/beat'+(i+1) + '.mp3']
			})
		};
		
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
		var key = nota.code - 49;
		//$el['beat'+key].play();
		sound[key].play();
	}
	
}

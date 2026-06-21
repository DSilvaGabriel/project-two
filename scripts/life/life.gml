function scr_hitVida() {
	tomouHit	= true;
	timeHit		= 0;
	hit			= instanceInimigo.hit;

	timeHit = scr_temporizador(
		timeHit,
		tempoHit,
		function() {
			vida -= hit;
		},
		" HitUnico"
	);
				
	scr_recuo(instanceInimigo);
}

function scr_hitContinuoVida() {
	hit		 = instanceInimigo.hitContinuo;
	tempoHit = global.timeGame * instanceInimigo.tempoHitContinuo
	
	timeHit = scr_temporizador(
		timeHit,
		tempoHit,
		function(){
			vida -= hit;
			show_debug_message("ola");
		},
		" HitContinuo"
	);
}
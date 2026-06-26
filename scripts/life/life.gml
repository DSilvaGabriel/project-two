function scr_hitVida() {
	tomouHit	= true;
	timeHit		= 0;
	tempoHit	= instanceInimigo.tempoHit;
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
		},
		" HitContinuo"
	);
}

function scr_perdeVida(tipoHit){
	switch(tipoHit) {
		case("hit"): {
			scr_hitVida();
		} break
			
		case("continuo"): {
			scr_hitContinuoVida();
		}
	}
}	
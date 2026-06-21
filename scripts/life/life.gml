function scr_hitVida() {
	tomouHit	= true;
	timeHit		= 0;
	hit			= instanceInimigo.hit;

	timeHit = scr_temporizador(
		0,
		tempoHit,
		function() {
			vida -= hit;
		},
		"Hit"
	);
				
	scr_recuo(instanceInimigo);
}

function scr_perdeVidaPorHit() {
}
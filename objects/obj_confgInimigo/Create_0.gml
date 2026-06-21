vida = vidaMaxima;
tomouHit = false;

sprite_index = spr_inimigo1;

function fun_perdeVida(_inimigo) {
	instanceInimigo = instance_place(x, y, _inimigo);
	
	if(!instanceInimigo) exit;

	var tipoHit = instanceInimigo.tipoHit;
	
	
	switch(tipoHit) {
		case("hit"):{
			scr_hitVida();
		}
		break;
		
		case("continuo"):{
			scr_hitContinuoVida()
		}break;
	}
}
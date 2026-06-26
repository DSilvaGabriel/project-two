vida			= vidaMaxima;
tomouHit		= false;
timeMove		= 0;
tempoEscolha	= global.timeGame;
estado			= ["par", "cim", "bai", "esq", "dir"];
escolha			= noone;
vel				= 1.7;
movex			= 0;
movey			= 0;

sprite_index = spr_inimigo1;

function fun_perdeVida(_inimigo) {
	
	var existe = instance_exists(_inimigo);
	if(!existe) exit;
	
	instanceInimigo = instance_place(x, y, _inimigo);
	
	if(!instanceInimigo) exit;

	var tipoHit = instanceInimigo.tipoHit;
	
	scr_perdeVida(tipoHit);
}
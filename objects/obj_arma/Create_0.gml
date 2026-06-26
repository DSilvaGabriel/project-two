sprite_index = spriteArma;

function fun_directionPlayer(){
	
	if(!coletada) exit;	

	var directioon = point_direction(x, y, mouse_x, mouse_y);

	image_angle = directioon;
	x = obj_jogador.x + lengthdir_x(32, directioon);
	y = obj_jogador.y + lengthdir_y(32, directioon);
	
	if(!keyboard_check(ord("X"))) exit;
	
	var instance = instance_create_layer(x, y ,"arma", obj_tiro);
	
	instance.sprite_index		= spriteTiro;
	instance.tipoHit			= tipoHit;
	instance.tempoHit			= tempoHit;
	instance.hit				= hit;
	instance.tempoHitContinuo	= tempoHitContinuo;
	instance.tempoParadohit		= tempoParadoHit;
	instance.forcaRecuo			= forcaRecuo;
}
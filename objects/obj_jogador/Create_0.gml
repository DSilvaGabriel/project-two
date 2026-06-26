#region Definições Iniciais
	sprite_index = spr_jogador1;

	velocidade = 3;
	
	vidaMaxima	= 100;
	vida		= vidaMaxima;
	
	tomouHit			= false;
	tempoHit			= 1;
	tempoParadoHit		= global.timeGame * 1.7;
	timeParadoHit		= tempoParadoHit;
	
	hit = 1;
	hitContinuo = .1;
	tipoHit = "continuo";
	forcaRecuo = 36.8;
	tempoHitContinuo = 1;
	
	arma = false;
	
	show_debug_message(string(tempoHit) + "tempo");
#endregion

#region Funções locais
	function fun_global() {
		fun_movimentacao();
		fun_coletaArma();
	}

	function fun_movimentacao() {
		
		movex = -keyboard_check(vk_left) +keyboard_check(vk_right);
		movey = -keyboard_check(vk_up) +keyboard_check(vk_down);
		
		fun_tomarHitDoInimigo(obj_inimigo0);
		
		x += clamp(movex * velocidade, -velocidade, velocidade);
		y += clamp(movey * velocidade, -velocidade, velocidade);
	}
	
	function fun_tomarHitDoInimigo(_inimigo){
		if(tomouHit) {
		
			timeParadoHit = scr_temporizador(
				timeParadoHit,
				tempoParadoHit,
				function(){
					tomouHit = false;
				}
			);
		
			movex = 0;
			movey = 0;
			return;
		}
		
		instanceInimigo = instance_place(x, y, _inimigo);
		timeHit			= 0;
		
		if(instanceInimigo == noone) return;
		
		var tipoHit = instanceInimigo.tipoHit;
		
		switch(tipoHit) {
			case("hit"): {
				scr_hitVida();
			} break
			
			case("continuo"): {
				scr_hitContinuoVida();
			}
		}

		return;
	}

	function fun_coletaArma(){

		var xArma, yArma;
		xArma = 0;
		yArma = 0;
		
		var directioon		= point_direction(x, y, mouse_x, mouse_y);
		
		if(arma){
			xArma = lengthdir_x(32, directioon);
			yArma = lengthdir_y(32, directioon);
		}
		
		var instance = instance_place(x + xArma, y + yArma, obj_arma);
		
		if(!instance) exit;
		
		coletarArma = keyboard_check_pressed(ord("F"));
		
		if(coletarArma) {
			instance.coletada	= !instance.coletada;
			arma				= !arma;
		}
	}
#endregion


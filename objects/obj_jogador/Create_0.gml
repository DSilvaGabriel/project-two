#region Definições Iniciais
	sprite_index = spr_jogador1;

	velocidade = 3;
	
	vidaMaxima	= 3;
	vida		= vidaMaxima;
	
	tomouHit			= false;
	tempoHit			= game_get_speed(gamespeed_fps);
	timeHit				= 0;
	tempoParadoHit		= game_get_speed(gamespeed_fps) * 1.7;
	timeParadoHit		= tempoParadoHit;
	
#endregion

#region Funções locais
	function fun_global() {
		fun_movimentacao();
	}

	function fun_movimentacao() {
		
		movex = -keyboard_check(vk_left) +keyboard_check(vk_right);
		movey = -keyboard_check(vk_up) +keyboard_check(vk_down);
		
		fun_tomarHitDoInimigo(obj_inimigo1);
		
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
		
		if(instanceInimigo == noone) return;
		
		var tipoHit = instanceInimigo.hitNoJogador;
		
		switch(tipoHit) {
			case("hit"): {
				scr_hitVida();
			} break
			
			case("continuo"): {
				
			}
		}

		return;
	}
#endregion


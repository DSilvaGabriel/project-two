function scr_estadoInimigosAleatorio(estado){
	
	timeMove = scr_temporizador(
		timeMove, 
		tempoEscolha, 
		function(){
			escolha = scr_aleatoriedade(estado);
			tempoEscolha = global.timeGame * random_range(1, 7)
		}
	);
	
	switch(escolha){
		case("par"): {
			movex = 0;
			movey = 0;
		} break;
		
		case("cim"):{
			movex = 0;
			movey = -vel;
		} break;
		
		case("bai"):{
			movex = 0;
			movey = vel;
		} break;
		
		case("dir"):{
			movex = vel;
			movey = 0;
		} break;
		
		case("esq"):{
			movex = -vel;
			movey = 0;
		} break;
	
		case("seg"):{
			var seg = scr_seguePlayer();
			
			if(!seg) escolha = "par";
		} break;
	}
}

function scr_seguePlayer() {
		var directioon = scr_directioonXY(x, y, obj_jogador.x, obj_jogador.y);
		
		movex = lengthdir_x(vel, directioon);
		movey = lengthdir_y(vel, directioon);
}

function scr_pertoPlayer(raio) {
	var dist = point_distance(x, y, obj_jogador.x, obj_jogador.y);
	var segue = false;
	if(dist > raio) return segue = true;
	
	escolha = "seg";
	
	return dist;
}
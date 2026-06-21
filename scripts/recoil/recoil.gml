function scr_recuo(_inimigo) {
	var _instanceInimigo = instance_place(x, y, _inimigo);

	if (_instanceInimigo != noone) {

		var _dx = x - _instanceInimigo.x;
		var _dy = y - _instanceInimigo.y;

		var _dist = point_distance(0, 0, _dx, _dy);

		if (_dist > 0) {
		    _dx /= _dist;
		    _dy /= _dist;
		}

		var _forca = _instanceInimigo.forcaRecuo;

		x += _dx * _forca;
		y += _dy * _forca;
	}	
}
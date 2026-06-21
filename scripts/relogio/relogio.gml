function scr_temporizador(_time, _tempo, _function, _argumentDebugNomeTime = ""){
	
	_time--;
	
	if(_time < 0) {
		_function();
		
		_time = _tempo;
	}
	
	return _time;
}
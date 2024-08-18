// exponential interpolate
// like lerp but multiplicative instead of linear scaling
// t = 0 -> returns start
// t = 1 -> returns target
// for points in the middle, uses y = x^2
function eerp(_start, _target, _t){
	if _target < _start {
		
		var _range = _start - _target
	
		var _amt = power(_t, 2)
	
		return _start - (_amt * _range)
	} else {
		var _range = _target - _start
	
		var _amt = power(_t, 2)
	
		return _start + (_amt * _range)
	}
}
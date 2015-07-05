_dir = _this select 1;
_vehs = "";

if (_dir == "raise")then{

	_object = _this select 0;
	_Vehs = nearestobjects [_object,[],9];
	sleep 2;
	_object animate ["elev_ext_1_rail",0];
	sleep 2;
	waituntil{(_object animationphase "elev_ext_1_rail") == 0};
	{_x setvelocity [0,0,1];}foreach _Vehs;
	_object animate ["elev_ext_1", 0];
};

if (_dir == "lower")then{

	_object = _this select 0;
	_Vehs = nearestobjects [_object,[],9];
	sleep 4;
	{_x setvelocity [0,0,-1];}foreach _Vehs;
	_object animate ["elev_ext_1", -8.92];
	waituntil{(_object animationphase "elev_ext_1") == -8.92};
	_object animate ["elev_ext_1_rail",-1.05];
};
//null = [lhd8,'lower']execVM "ATLAS_Water\LHD\scripts\elev.sqf";
_dir = _this select 1;

if (_dir == "raise")then{

	_object = _this select 0;
	_Vehs = nearestobjects [_object,[],25];
	sleep 2;
	_object animate ["elev_int_rail",0];
	_object animate ["elev_int_rail_bottom",0];
	sleep 2;
	waituntil{(_object animationphase "elev_int_rail") == 0};
	{_x setvelocity [0,0,1];}foreach _Vehs;
	_object animate ["elev_int", 0];
	waituntil{(_object animationphase "elev_int") == 0};
	_object animate ["elev_int_rail",-0.7];
	_object animate ["elev_int_rail_top",-0.7];
};

if (_dir == "lower")then{

	_object = _this select 0;
	_Vehs = nearestobjects [_object,[],25];
	sleep 2;
	_object animate ["elev_int_rail",0];
	_object animate ["elev_int_rail_top",0];
	sleep 2;
	waituntil{(_object animationphase "elev_int_rail") == 0};
	{_x setvelocity [0,0,-1];}foreach _Vehs;
	_object animate ["elev_int", -7.79];
	waituntil{(_object animationphase "elev_int") == -7.79};
	_object animate ["elev_int_rail",-0.7];
	_object animate ["elev_int_rail_bottom",-0.7];
};
//null = [lhd8,'down']execVM "ATLAS_Water\LHD\scripts\elev.sqf";
//0 == up
//-any == down
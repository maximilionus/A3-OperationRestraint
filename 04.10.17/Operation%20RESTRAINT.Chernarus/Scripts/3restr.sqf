if (!isDedicated) then {

	waitUntil {!isNull (findDisplay 46)};



	if( (difficultyOption "thirdPersonView")isEqualTo 1) then
	{
		while {true} do {

			waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};

			if  (((vehicle player) == player) && (speed ( player)) >= -100) then {
				player switchCamera "INTERNAL";
			};
			sleep 0.1;

			if (((vehicle player)isKindOf "LandVehicle") && (speed (vehicle player)) >= -100) then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;

            if (( vehicle player) isKindOf "Helicopter" && (getPosVisual (vehicle player) select 2) > 5) then {
				(vehicle player) switchCamera "Internal";
			};
            sleep 0.1;

            if ((vehicle player) isKindOf "Plane" && (speed (vehicle player)) >= -100) then {
				(vehicle player) switchCamera "Internal";
			};
            sleep 0.1;

			if (((vehicle player)isKindOf "Ship") && (speed (vehicle player)) >= -100) then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;


		};
	};

};

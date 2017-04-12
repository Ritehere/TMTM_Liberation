//Call me by [] call compile preprocessFileLineNumbers "liberation_helper.sqf";
//Places Captures, Bigcities, Radio Towers and populates map with battlegroup spawn points

private _loctypes = ["Name", "NameCity", "NameMarine", "NameVillage", "NameCityCapital", "NameLocal", "Hill"];
collect3DENHistory 
{
    {
        switch (type _x) do
        {
            case "NameVillage": 
            {
                _ent = create3DENEntity["MARKER", "n_art", position _x];
                _ent set3DENAttribute["text", text _x];
                _ent set3DENAttribute["baseColor", "colorEast"];
                _ent set3DENAttribute["markerName", format["capture_%1", _foreachIndex]];
            };
            case "Hill": 
            {
                _ent = create3DENEntity["MARKER", "loc_Transmitter", position _x];
                _ent set3DENAttribute["text", "Radio Tower"];
                _ent set3DENAttribute["baseColor", "colorEast"];
                _ent set3DENAttribute["markerName", format["tower_%1", _foreachIndex]];
            };
            case "NameCity":
            {
                _ent = create3DENEntity["MARKER", "n_service", position _x];
                _ent set3DENAttribute["text", text _x];
                _ent set3DENAttribute["rotation", 90];
                _ent set3DENAttribute["size2", [1.55,1.55]];
                _ent set3DENAttribute["baseColor", "colorEast"];     
                _ent set3DENAttribute["markerName", format["bigtown_%1", _foreachIndex]];           
            };
            case "NameCityCapital":
            {
                _ent = create3DENEntity["MARKER", "n_service", position _x];
                _ent set3DENAttribute["text", text _x];
                _ent set3DENAttribute["rotation", 90];
                _ent set3DENAttribute["size2", [1.55,1.55]];
                _ent set3DENAttribute["baseColor", "colorEast"];
                _ent set3DENAttribute["markerName", format["bigtown_%1", _foreachIndex]];                
            };
        };
    } foreach (nearestLocations [[0,0,0],_loctypes,worldSize + worldSize]);
    
    for [{_i = 0}, {_i < 100}, {_i = _i + 1}] do
    {
        _safePos = [[],0,-1,50,0,15,0,[],[]] call BIS_fnc_findSafePos;
        _safePos set [2,0];
        _ent = create3DENEntity["MARKER", "empty", _safePos];
        _ent set3DENAttribute["markerName", format["opfor_point_%1", _i]];
    };
};
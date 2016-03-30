/*
 * call '_code' for each Curator-selected unit, passing the unit as arg
 */

params ["_code", "_ares_args"];

[
    [
        _code,
        {
            params ["_code", "_units"];
            {
                _x call _code;
            } forEach _units;
        }
    ],
    _ares_args
] call A3MT_fnc_aresSelection;
/*
 * call '_code' for each Curator-selected group, passing the group as arg,
 * the execution is guaranteed to run only where each group is local
 */

params ["_code", "_ares_args"];

[
    [
        _code,
        {
            params ["_code", "_groups"];
            {
                _x call _code;
            } forEach _groups;
        }
    ],
    _ares_args,
    true
] call A3MT_fnc_aresSelection;
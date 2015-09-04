execvm "UG_AM\compiles.sqf";
execvm "UG_AM\admincompiles.sqf";

private ['_code', '_function', '_file'];

{
    _code = '';
    _function = _x select 0;
    _file = _x select 1;

    _code = compileFinal (preprocessFileLineNumbers _file);                    

    missionNamespace setVariable [_function, _code];
}
forEach 
[
['Exile_AdminGetItemList','UG_AM\functions\Exile_AdminGetItemList.sqf']
];
true
collect3DENHistory 
{
    {
        switch ((_x get3DENAttribute "text") select 0) do
        {
            case "Factory": { _x set3DENAttribute ["text", format["Resource at %1", mapGridPosition  ((_x get3DENAttribute "position") select 0)]]};
            case "Military Base": { _x set3DENAttribute ["text", format["Military Base at %1", mapGridPosition ((_x get3DENAttribute "position")  select 0)]]};
            default {};
        };    
    } foreach (all3DENEntities select 5);
};
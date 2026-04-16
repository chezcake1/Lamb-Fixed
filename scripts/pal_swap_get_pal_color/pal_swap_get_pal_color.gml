
function pal_swap_get_pal_color(sprite, pal_x, pal_y)
{
    if (global.performance)
        return 16777215;
    
    var _palettes = ds_map_find_value(global.Pal_Map, sprite);
    
    if (_palettes == undefined)
    {
        trace(string("[pal_swap_get_pal_color] sprite: {0} pal_x: {1} pal_y: {2} _palettes: {3}", sprite, pal_x, pal_y, _palettes));
        return 16777215;
    }
    
    var _return = 16777215;
    
    try
    {
        _return = _palettes[pal_x][pal_y];
    }
    catch (_palettes)
    {
    }
    
    return _return;
}



class Coords

    constructor: (@start_x, @start_y, @box_w, @box_h, @box_distance) ->
        
    getConnectionStartX: () ->
        @start_x + @box_w
        
    getConnectionStartY: () ->
        @start_y + (@box_h / 2)
        
    getBoxCenterX: () ->
        @start_x + (@box_w / 2)
        
    getBoxCenterY: () ->
        @start_y + (@box_h / 2)
        
    recalculate: (iteration) ->
        @start_x = @start_x + @box_distance
        @start_y = @start_y + (150 * iteration)
        
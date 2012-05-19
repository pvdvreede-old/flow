
class Flow

    constructor: (@html_id, @width, @height) ->
        @paper = Raphael.paper @html_id, @width, @height
        
    addData: (data) ->
        if data is Array
            for d in data
                @data.push d
        else if data is object
            @data.push data
        else
            throw new "error" : "parameter is not array or object."
            
    draw: () ->
        for item in @data
            coords = new Coords 50, 50, 80, 80, 150
            @drawItem coords, item, @paper
        
    drawItem: (coords, item, paper) ->
        item_rect = paper.rect coords.start_x, coords.start_y, coords.box_w, coords.box_h
        connections = item.connections
        
        text = paper.text coords.getBoxCenterX(), coords.getBoxCenterY(), item.name
        
        if connections.length > 0
            paper.path "M #{ coords.getConnectionStartX() } #{ coords.getConnectionStartY() } l #{ coords.getConnectionDrawX() } 0"
        
        for c, i in connections
            coords.recalculate i
            @drawitem coords, c, paper
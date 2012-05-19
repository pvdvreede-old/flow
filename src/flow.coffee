
class Flow

    constructor: (@html_id, @width, @height) ->
        @paper = Raphael @html_id, @width, @height
        @data = new Array
        
    addData: (data) ->
        for d in data
            @data.push d
            
    draw: () ->
        coords = new Coords 50, 50, 80, 80, 150
        for item, i in @data
            @drawItem coords, item, @paper
            coords.recalculate i
        return
        
    drawItem: (coords, item, paper) ->
        item_rect = paper.rect coords.start_x, coords.start_y, coords.box_w, coords.box_h
        connections = item.connections
        
        text = paper.text coords.getBoxCenterX(), coords.getBoxCenterY(), item.name
        
        if connections.length > 0
            paper.path("M #{ coords.getConnectionStartX() } #{ coords.getConnectionStartY() } l #{ coords.getConnectionDrawX() } 0").attr {"arrow-end" : "classic-wide-long", "stroke-width" : 2}
        
        for c, i in connections
            coords.recalculate i
            @drawItem coords, c, paper
        
        return

# Make the Flow object a global variable accessable to users
window.Flow = Flow
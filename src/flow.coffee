
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
        
        
    drawItem: (coords, item, paper) ->
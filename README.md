# Flow

### Javascript library for building flow diagrams that uses RaphaelJS.

Flow can be used to create an SVG diagram showing the flow of objects from one point to another. This is done by passing in an array of objects in a recursive manner.

#### Usage

Flow uses [RaphaelJS](http://raphaeljs.com/) to build the diagram so Raphael must be added to the webpage. Use the following to add the RaphaelJS file to your website, or you can download the file and serve it from your own server:

    <script type="text/javascript" src="http://github.com/DmitryBaranovskiy/raphael/raw/master/raphael-min.js"></script>

You will also need to add the flow JS file to your page as well.

Once these files are added you can use the following javascript in your project to create a new Flow:

    // create a new flow in the 'div-id' div on the page with a size of 320 x 400
    var flow = new Flow("div-id", 320, 400);
    
    // pass the data objects into the flow
    flow.addData(flow_objects);
    
    // draw the flow once everything is in place
    flow.draw();
    
#### Flow objects

Flow uses an array of custom objects that may contain more of the same to build the flow. The object looks like:

    var flow_item = {
        "name" :        "Text to display on the object, this can use '\n' new line symbols",
        "colour" :      "Colour of the object on the flow diagram",
        "connections":  "An array of flow objects that this flow object is connected to, which can be more than one."
    };
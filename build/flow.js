// Generated by CoffeeScript 1.3.3
(function() {
  var Flow;

  Flow = (function() {

    function Flow(html_id, width, height) {
      this.html_id = html_id;
      this.width = width;
      this.height = height;
    }

    Flow.prototype.addData = function(data) {
      var d, _i, _len, _results;
      if (data === Array) {
        _results = [];
        for (_i = 0, _len = data.length; _i < _len; _i++) {
          d = data[_i];
          _results.push(this.data.push(d));
        }
        return _results;
      } else if (data === object) {
        return this.data.push(data);
      } else {
        throw new {
          "error": "parameter is not array or object."
        };
      }
    };

    Flow.prototype.draw = function() {};

    Flow.prototype.drawItem = function() {};

    return Flow;

  })();

}).call(this);
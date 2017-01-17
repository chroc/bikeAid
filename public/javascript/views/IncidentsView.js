var IncidentsView = Backbone.View.extend({
  tagName: 'div',
  // className
  // idName

  render: function() {
    this.collection.forEach(function(incident) {
        var view = new IncidentView({ model: incident });
        this.$el.append(view.render().el);
    }, this);
    return this;
  }
});

var IncidentsView = Backbone.View.extend({
  tagName: 'div',
  // className
  // idName

  render: function() {
    this.collection.forEach(function(lawFirm) {
        var view = new IncidentsView({ model: incident });
        this.$el.append(view.render().el);
    }, this);
    return this;
  }
});

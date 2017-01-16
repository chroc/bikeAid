var LawFirmsView = Backbone.View.extend({
  tagName: 'div',
  // className
  // idName

  render: function() {
    this.collection.forEach(function(lawFirm) {
        var view = new LawFirmView({ model: lawFirm });
        this.$el.append(view.render().el);
    }, this);
    return this;
  }
});

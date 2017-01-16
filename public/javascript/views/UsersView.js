var UsersView = Backbone.View.extend({
  tagName: 'div',
  // className
  // idName

  render: function() {
    this.collection.forEach(function(user) {
        var view = new UserView({ model: user });
        this.$el.append(view.render().el);
    }, this);
    return this;
  }
});

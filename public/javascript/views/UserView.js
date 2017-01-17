var UserView = Backbone.View.extend({
  tagName: 'p',

  events: {
    'focusout .name': 'updateModel',
    'focusout .username': 'updateModel',
    'focusout .location': 'updateModel'
  },

  initialize: function() {
    // this.listenTo(this.model, 'change:name', this.render)
  },

  render: function() {
    var html = Handlebars.templates.user(this.model.toJSON());
    this.$el.html(html);

    return this;
  },

  updateModel: function(e) {
    this.model.updateProps(e.currentTarget);
  }
});

var LawFirmView = Backbone.View.extend({
  tagName: 'p',

  events: {
    'focusout .company_name': 'updateModel',
    'focusout .location': 'updateModel',
    'focusout .free_advice': 'updateModel',
    'focusout .email': 'updateModel',
    'focusout .phone_number': 'updateModel',
  },

  initialize: function() {
    // this.listenTo(this.model, 'change:name', this.render)
  },

  render: function() {
    var html = Handlebars.templates.lawFirm(this.model.toJSON());
    this.$el.html(html);

    return this;
  },

  updateModel: function(e) {
    this.model.updateProps(e.currentTarget);
  }
});

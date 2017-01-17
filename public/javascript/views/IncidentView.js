var IncidentView = Backbone.View.extend({
  tagName: 'p',

  events: {
    'focusout .location': 'updateModel',
    'focusout .date': 'updateModel',
    'focusout .description': 'updateModel',
    'focusout .police_involved': 'updateModel',
    'focusout .ambulance_involved': 'updateModel',
    'focusout .private_health': 'updateModel',
    'focusout .additional_information': 'updateModel'
  },

  initialize: function() {
    // this.listenTo(this.model, 'change:name', this.render)
  },

  render: function() {
    var html = Handlebars.templates.incident(this.model.toJSON());
    this.$el.html(html);

    return this;
  },

  updateModel: function(e) {
    this.model.updateProps(e.currentTarget);
  }
});

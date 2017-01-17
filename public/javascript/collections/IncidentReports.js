var IncidentReports = Backbone.Collection.extend({
  model: IncidentReport,
  url: '/incident_reports'
});

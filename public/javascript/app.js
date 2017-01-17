var lawFirmsView = new LawFirmsView({
  collection: lawFirms
});

$('#list').append(lawFirmsView.render().el);

var incidentsView = new IncidentsView({
  collection: incidents
});

$('#list').append(incidentsView.render().el);

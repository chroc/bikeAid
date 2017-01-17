var lawFirmsView = new LawFirmsView({
  collection: lawFirms
});

$('#law-firms').append(lawFirmsView.render().el);

var usersView = new UsersView({
  collection: users
});

$('#users').append(usersView.render().el);


var incidentsView = new IncidentsView({
  collection: incidents
});

$('#incident-reports').append(incidentsView.render().el);

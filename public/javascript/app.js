var lawFirmsView = new LawFirmsView({
  collection: lawFirms
});

$('#law-firms').append(lawFirmsView.render().el);

var usersView = new UsersView({
  collection: users
});

$('#users').append(usersView.render().el);

$('#list').append(lawFirmsView.render().el);

var incidentsView = new IncidentsView({
  collection: incidents
});

$('#list').append(incidentsView.render().el);

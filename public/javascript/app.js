var lawFirmsView = new LawFirmsView({
  collection: lawFirms
});

$('#list').append(lawFirmsView.render().el);

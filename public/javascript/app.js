var view = new UsersView({
  collection: users
});

$('#list').append(view.render().el);

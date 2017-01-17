(function() {
  var template = Handlebars.template, templates = Handlebars.templates = Handlebars.templates || {};
templates['lawFirm'] = template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    var helper, alias1=depth0 != null ? depth0 : {}, alias2=helpers.helperMissing, alias3="function", alias4=container.escapeExpression;

  return "<p class='company_name'>"
    + alias4(((helper = (helper = helpers.company_name || (depth0 != null ? depth0.company_name : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"company_name","hash":{},"data":data}) : helper)))
    + "</p>\n<p class='location'>"
    + alias4(((helper = (helper = helpers.location || (depth0 != null ? depth0.location : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"location","hash":{},"data":data}) : helper)))
    + "</p>\n<p class='free_advice'>"
    + alias4(((helper = (helper = helpers.free_advice || (depth0 != null ? depth0.free_advice : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"free_advice","hash":{},"data":data}) : helper)))
    + "</p>\n<p class='email'>"
    + alias4(((helper = (helper = helpers.email || (depth0 != null ? depth0.email : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"email","hash":{},"data":data}) : helper)))
    + "</p>\n<p class='phone_number'>"
    + alias4(((helper = (helper = helpers.phone_number || (depth0 != null ? depth0.phone_number : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"phone_number","hash":{},"data":data}) : helper)))
    + "</p>\n<hr>\n";
},"useData":true});
templates['user'] = template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    var helper, alias1=depth0 != null ? depth0 : {}, alias2=helpers.helperMissing, alias3="function", alias4=container.escapeExpression;

  return "<p class='name'>"
    + alias4(((helper = (helper = helpers.name || (depth0 != null ? depth0.name : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"name","hash":{},"data":data}) : helper)))
    + "</p>\n<p class='username'>"
    + alias4(((helper = (helper = helpers.username || (depth0 != null ? depth0.username : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"username","hash":{},"data":data}) : helper)))
    + "</p>\n<p class='location'>"
    + alias4(((helper = (helper = helpers.location || (depth0 != null ? depth0.location : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"location","hash":{},"data":data}) : helper)))
    + "</p>\n<hr>\n";
},"useData":true});
templates['incident'] = template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    var helper, alias1=depth0 != null ? depth0 : {}, alias2=helpers.helperMissing, alias3="function", alias4=container.escapeExpression;

  return "<p class='location'>"
    + alias4(((helper = (helper = helpers.location || (depth0 != null ? depth0.location : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"location","hash":{},"data":data}) : helper)))
    + "</p>\n<p class='date'>"
    + alias4(((helper = (helper = helpers.date || (depth0 != null ? depth0.date : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"date","hash":{},"data":data}) : helper)))
    + "</p>\n<p class='description'>"
    + alias4(((helper = (helper = helpers.description || (depth0 != null ? depth0.description : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"description","hash":{},"data":data}) : helper)))
    + "</p>\n<p class='police_involved'>"
    + alias4(((helper = (helper = helpers.police_involved || (depth0 != null ? depth0.police_involved : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"police_involved","hash":{},"data":data}) : helper)))
    + "</p>\n<p class='ambulance_involved'>"
    + alias4(((helper = (helper = helpers.ambulance_involved || (depth0 != null ? depth0.ambulance_involved : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"ambulance_involved","hash":{},"data":data}) : helper)))
    + "</p>\n<p class='private_health'>"
    + alias4(((helper = (helper = helpers.private_health || (depth0 != null ? depth0.private_health : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"private_health","hash":{},"data":data}) : helper)))
    + "</p>\n<p class='additional_information'>"
    + alias4(((helper = (helper = helpers.additional_information || (depth0 != null ? depth0.additional_information : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"additional_information","hash":{},"data":data}) : helper)))
    + "</p>\n<hr>\n";
},"useData":true});
})();

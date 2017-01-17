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
})();
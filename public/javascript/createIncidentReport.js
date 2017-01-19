$(document).ready(function() {
  $('#incident_report').bootstrapValidator({
      // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
      feedbackIcons: {
          valid: 'glyphicon glyphicon-ok',
          invalid: 'glyphicon glyphicon-remove',
          validating: 'glyphicon glyphicon-refresh'
      },
      fields: {
          address: {
              validators: {
                   stringLength: {
                      min: 8,
                  },
                  notEmpty: {
                      message: 'Please supply your street address'
                  }
              }
          },
          city: {
              validators: {
                   stringLength: {
                      min: 4,
                  },
                  notEmpty: {
                      message: 'Please supply your city'
                  }
              }
          },
          state: {
              validators: {
                  notEmpty: {
                      message: 'Please select your state'
                  }
              }
          },
          postcode: {
              validators: {
                  notEmpty: {
                      message: 'Please supply your postcode'
                  },
                  postCode: {
                      country: 'AUD',
                      message: 'Please supply a vaild postcode'
                  }
              }
          },
          date: {
              validators: {
                  notEmpty: {
                      message: 'Please enter the accident date'
                  },
                  date: {
                      message: 'Please supply a vaild date',
                      format: 'DD/MM/YYYY'
                  }
              }
          },
          incident_description: {
              validators: {
                    stringLength: {
                      min: 10,
                      max: 200,
                      message:'Please enter at least 10 characters and no more than 200'
                  },
                  notEmpty: {
                      message: 'Please supply a description of the incident'
                  }
                  }
              },
          additional_information: {
              // validators: {
              //       stringLength: {
              //         min: 0,
              //         max: 200,
              //         message:'Please enter at least 10 characters and no more than 200'
              //     },
              //     notEmpty: {
              //         message: 'Please supply a description of the incident'
              //     }
              //     }
              }
          }
      })
      .on('success.form.bv', function(e) {
          $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
              $('#incident_report').data('bootstrapValidator').resetForm();

          // Prevent form submission
          e.preventDefault();

          // Get the form instance
          var $form = $(e.target);

          // Get the BootstrapValidator instance
          var bv = $form.data('bootstrapValidator');

          // Use Ajax to submit form data
          $.post($form.attr('action'), $form.serialize(), function(result) {
              console.log(result);
          }, 'json');
      });
});

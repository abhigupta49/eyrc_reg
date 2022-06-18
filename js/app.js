$(document).ready(function () {
    $("#contact_form")
      .bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
          valid: "glyphicon glyphicon-ok",
          invalid: "glyphicon glyphicon-remove",
          validating: "glyphicon glyphicon-refresh"
        },
        fields: {
          firstName: {
            validators: {
              stringLength: {
                min: 2
              },
              notEmpty: {
                message: "Please supply your first name"
              }
            }
          },
          lastName: {
            validators: {
              stringLength: {
                min: 2
              },
              notEmpty: {
                message: "Please supply your last name"
              }
            }
          },
          email: {
            validators: {
              notEmpty: {
                message: "Please supply your email address"
              },
              emailAddress: {
                message: "Please supply a valid email address"
              }
            }
          },
          phone: {
            validators: {
              notEmpty: {
                message: "Please supply your phone number"
              },
              phone: {
                country: "IN",
                message: "Please supply a vaild phone number with area code"
              }
            }
          },
          
          
          country: {
            validators: {
              notEmpty: {
                message: "Please select your state"
              }
            }
          },
          year:{
            validators: {
                notEmpty: {
                  message: "Please select year"
                }
              }
          },
          college:{
            validators: {
                notEmpty: {
                  message: "Please select College"
                }
              }
          },
          domain:{
            validators: {
                notEmpty: {
                  message: "Please select Department"
                }
              }
          },
          gender: {
            validators: {
              notEmpty: {
                message: "Please select gender"
              },
              
            }
          },
          
        }
      })
      .on("success.form.bv", function (e) {
        $("#success_message").slideDown({ opacity: "show" }, "slow"); // Do something ...
        $("#contact_form").data("bootstrapValidator").resetForm();
  
        // Prevent form submission
        e.preventDefault();
  
        // Get the form instance
        var $form = $(e.target);
  
        // Get the BootstrapValidator instance
        var bv = $form.data("bootstrapValidator");
  
        // Use Ajax to submit form data
        $.post(
          $form.attr("action"),
          $form.serialize(),
          function (result) {
            console.log(result);
          },
          "json"
        );
      });
  });
  
  //fetch country
  document.addEventListener('DOMContentLoaded',()=>{
    const selectDrop = document.querySelector('#country');
    
    fetch('https://restcountries.com/v2/all').then(res =>{
        return res.json();
    }).then(data =>{
        let output = "";
        data.forEach(country =>{
            output += `<option>${country.name}</option>`;
            // console.log(country.name);
        })
        selectDrop.innerHTML=output;
    }).catch(err =>{
        console.log(err);
    })
  })

  //fetch college list
  document.addEventListener('DOMContentLoaded',()=>{
    const selectDrop = document.querySelector('#collegeList');
    
    fetch('https://raw.githubusercontent.com/Hipo/university-domains-list/master/world_universities_and_domains.json').then(res =>{
        return res.json();
    }).then(data =>{
        let collegeOutput = "";
        data.forEach(college =>{
            collegeOutput += `<option>${college.name}</option>`;
            // console.log(college);
        })
        selectDrop.innerHTML=collegeOutput;
    }).catch(err =>{
        console.log(err);
    })
  })

 
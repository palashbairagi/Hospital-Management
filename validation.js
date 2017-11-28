
function validateLoginForm() {
  
	var validator = $("#loginForm").validate({
    
        // Specify the validation rules
        rules: {
        	userName:"required",
            password:"required",
        },
        
        // Specify the validation error messages
        messages: {
        	userName:"Please Enter Username",
            password:"Please Enter Password",
        }
        
	   });
	
		if(validator.form()){
    	
    	}
  }
  

function validateDoctorForm(){
	  
	var validator = $("#doctorForm").validate({
    
        // Specify the validation rules
        rules: {
        	firstName:"required",
            lastName:"required",
            userName:"required",
            password:"required",
            age:"required",
            phoneNumber:"required",
            mobileNumber:"required",
            emailId:"required",
            houseNumber:"required",
            street:"required",
            city:"required",
            state:"required",
            designation:"required",
            specialization:"required",
            experience:"required",
        },
        
        // Specify the validation error messages
        messages: {
        	firstName:"Please Enter First Name",
        	lastName:"Please Enter Last Name",
        	 userName:"required",
             password:"required",
             age:"required",
             phoneNumber:"required",
             mobileNumber:"required",
             emailId:"required",
             houseNumber:"required",
             street:"required",
             city:"required",
             state:"required",
             designation:"required",
             specialization:"required",
             experience:"required",
        }
        
	   });
	
		if(validator.form()){
    		
    	}
  }


function validatePatientForm(){
	  
	var validator = $("#patientForm").validate({
    
        // Specify the validation rules
        rules: {
        	firstName:"required",
            lastName:"required",
            fatherName:"required",
            age:"required",
            phoneNumber:"required",
            mobileNumber:"required",
            emailId:"required",
            houseNumber:"required",
            street:"required",
            city:"required",
            state:"required",
            occupation:"required",
            bloodGroup:"required",
        },
        
        // Specify the validation error messages
        messages: {
        	firstName:"Please Enter First Name",
        	lastName:"Please Enter Last Name",
            fatherName:"required",
        	age:"required",
             phoneNumber:"required",
             mobileNumber:"required",
             emailId:"required",
             houseNumber:"required",
             street:"required",
             city:"required",
             state:"required",
             occupation:"required",
             bloodGroup:"required",
        }
        
	   });
	
		if(validator.form()){
    		
    	}
  }


function validateWardForm() {
  
	var validator = $("#wardForm").validate({
    
        // Specify the validation rules
        rules: {
        	wardNumber:"required",
        	wardType:"required",
        },
        
        // Specify the validation error messages
        messages: {
        	wardNumber:"Please Enter Ward Number",
        	wardType:"Please Enter Ward Type",
        }
        
	   });
	
		if(validator.form()){
    	
    	}
  }



function validatePassword(){	
	var validator = $("#changePassword").validate({
		rules: {        	   
			currentPassword: "required",
			newPassword :"required",
			confirmPassword:{
				equalTo: "#newPassword"
		    }		
    	},  	                        
	    messages: {
	    	currentPassword: "Enter Current Password",
    		newPassword :"Enter New Password",
    		confirmPassword :"Password do not match"
	    }
	});
	if(validator.form()){
		
	}
}

$(function() {
	  
    $("#viewStudentTotalAttendance").validate({
    
        // Specify the validation rules
        rules: {
        	rollNumber: {
                required: true,
                minlength: 12,
                maxlength: 12
            }, 
            dateFrom:"required",
            dateTo:"required",
        },
        
        // Specify the validation error messages
        messages: {
        	rollNumber:{
                required: "Please Enter Enrollment Number",
                minlength: "Enrollment Number must be 12 characters long",
                maxlength: "Enrollment Number must be 12 characters long"
            },
            dateFrom:"Please Enter Date",
            dateTo:"Please Enter Date",
        },
        
        submitHandler: function(form) {
            form.submit();
        }
    });

  });


$(function() {
	  
    $("#editStudent").validate({
    
        // Specify the validation rules
        rules: {
        	rollNumber: {
                required: true,
                minlength: 12,
                maxlength: 12
            }, 
            name:"required"
        },
        
        // Specify the validation error messages
        messages: {
        	rollNumber:{
                required: "Please Enter Enrollment Number",
                minlength: "Enrollment Number must be 12 characters long",
                maxlength: "Enrollment Number must be 12 characters long"
            },
            name:"Please Enter Name"
        },
        
        submitHandler: function(form) {
            form.submit();
        }
    });

  });



$(function() {
  
    // Setup form validation on the #register-form element
    $("#userRegistration").validate({
    
        // Specify the validation rules
        rules: {
            firstName: "required",
            lastName: "required",
            userName: "required",
            password: {
                required: true,
                minlength: 5
            },
        },
        
        // Specify the validation error messages
        messages: {
            firstName: "Please Enter First Name",
            lastName: "Please Enter Last Name",
            password: {
                required: "Please Enter Password",
                minlength: "Password must be at least 5 characters long"
            },
            userName: "Please Enter Username",
        },
        
        submitHandler: function(form) {
            form.submit();
        }
    });

  });
  


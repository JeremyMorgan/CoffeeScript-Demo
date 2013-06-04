window.validate = (form) ->
    required_field_names = ['miles','gallons']
    required_fields = (form.elements[name] for name in required_field_names)
    errors = []
    (errors.push field.name if field.value == '') for field in required_fields
    report errors
    errors.length == 0
 
    report = (errors) ->
    alert "The following fields must be filled out: \n\n " + errors.join("\n ") if errors.length > 0
    
window.math = (form) ->
    miles = form.miles.value
    gallons = form.gallons.value
    
    mpg = miles / gallons
    
    alert "MPG IS " + mpg
    Document.getElementById("result").innerHTML = mpg
     
      

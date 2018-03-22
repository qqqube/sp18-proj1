# Q0: Why is this error being thrown?
There is no Pokemon controller. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They appear at the top of the page with the sentence "A wild *pokemon name* has appeared!" They're all trainerless. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It looks for /capture/id using POST. 

# Question 3: What would you name your own Pokemon?
Momo

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in @pokemon.trainer into the redirect_to. It's okay to not have a path there because the method checks the class of the instance provided and gives the /aritcles based on the model class and path procided in the routes, and the checks if the object has the id or not. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The end of application.html.erb renders layouts/messages which generates the error messages. 


# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

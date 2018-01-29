# OSD600Release.1
# What does it do?
This is an API that allows you to take a get or post request containing a phone number and it will parse it. 
The output is a json containing the phone number.

It currently takes GET request with:
```
GET api/phonenumbers/parse/text/:id
```

and POST request:
```
POST api/phonenumbers/parse/file
```

# How do I build it?
Ruby and Rails need to be installed first.
Clone the project and run this command:
```
bundle install
```


# How do I start the server?
Run this on local machine:
```
rails server
``` 

If you are running on cloud9:
```
rails s -b $IP -p $PORT
```

# How do I run tests?
Rspec is currently used for testing.
The testing file located in the spec/controller/folder and called phone_number_spec.rb.
To run tests:
```
bundle exec rspec
```

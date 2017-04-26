# FizzBuzz
The classic FizzBuzz programming problem, implemented using Ruby on Rails structured as a JSON API. 
This also includes an CLI client written in Python. 

## Getting Started
You will need the following list of dependencies to before getting started:
* Ruby 2.2.2 or newer (which you can set up by [clicking here](https://www.ruby-lang.org/en/documentation/installation/))

## Installation
Run the following commands below to get set up.
```
git clone git@github.com:ollie-troward/fizzbuzz.git
cd fizzbuzz
gem install bundler
bundle install
```

## Usage
To get everything started, run the following commands.
```
rails db:migrate
rails server
```

## Testing
To run the tests, run the following command.
```
rspec
```

## [The Client](client)
Once the service has been setup, [click here](client) to use the client.

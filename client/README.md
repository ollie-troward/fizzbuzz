# FizzBuzz Client
The classic FizzBuzz programming problem, implemented using Ruby on Rails structured as a JSON API.
This also includes an CLI client written in Python.

## Getting Started
You will need the following list of dependencies to before getting started:
* Python 2.7.10 or newer (which you can set up by [clicking here](https://www.python.org/downloads/))

## Installation
Run the following commands below to get set up.
```
sudo easy_install pip
sudo pip install click requests
```

## Usage
To get everything started, run the following commands.
* Be sure to run the development server using `rails server` before running the client.
For retrieving the data, run the command below.
```
python fizzbuzz.py http://localhost:3000 --page=1 --limit=100
```
To favourite a number, run the command below.
```
python favourite.py http://localhost:3000 67
```

## Testing
To run the tests, run the following command.
* Be sure to run the development server using `rails server` before running the test suite.
For running the tests for fizzbuzz, run the command below.
```
python fizzbuzz_test.py
```
For running the tests for fizzbuzz, run the command below.
```
python favourite_test.py
```

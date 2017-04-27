import click
from click.testing import CliRunner
from fizzbuzz import run

def setup():
    runner = CliRunner()
    result = runner.invoke(run, ['http://localhost:3000'])
    if "Connection refused" in result.output:
        print("Client failed to connect, be sure the server is running.")

def test_retrieve_default_fizzbuzz():
    runner = CliRunner()
    result = runner.invoke(run, ['http://localhost:3000'])
    assert result.exit_code == 0, "Unexpected exit code"
    assert "Number: 1, Favourite: False" in result.output
    assert "Number: Fizz, Favourite: False" in result.output
    assert "Number: Buzz, Favourite: False" in result.output

def test_retrieve_fizzbuzz_with_limit():
    runner = CliRunner()
    result = runner.invoke(run, ['http://localhost:3000', '--limit=1'])
    assert result.exit_code == 0, "Unexpected exit code"
    assert "Number: 1, Favourite: False" in result.output
    assert "Number: Fizz, Favourite: False" not in result.output
    assert "Number: Buzz, Favourite: False" not in result.output

def test_retrieve_fizzbuzz_with_page_number():
    runner = CliRunner()
    result = runner.invoke(run, ['http://localhost:3000', '--limit=5', '--page=67'])
    assert result.exit_code == 0, "Unexpected exit code"
    assert "Number: 331, Favourite: False" in result.output
    assert "Number: 332, Favourite: False" in result.output
    assert "Number: Fizz, Favourite: False" in result.output
    assert "Number: 334, Favourite: False" in result.output
    assert "Number: Buzz, Favourite: False" in result.output

def test_reach_above_maximum():
    runner = CliRunner()
    result = runner.invoke(run, ['http://localhost:3000', '--limit=500', '--page=10000000000'])
    assert result.exit_code == 0, "Unexpected exit code"
    assert "FizzBuzz not found" in result.output

if __name__ == '__main__':
    setup()
    test_retrieve_default_fizzbuzz()
    test_retrieve_fizzbuzz_with_limit()
    test_retrieve_fizzbuzz_with_page_number()
    test_reach_above_maximum()

import click
from click.testing import CliRunner
from fizzbuzz import run

def test_retrieve_default_fizzbuzz():
    runner = CliRunner()
    result = runner.invoke(run, ['http://localhost:3000'])
    assert result.exit_code == 0
    assert "Number: 1, Favourite: False" in result.output
    assert "Number: Fizz, Favourite: False" in result.output
    assert "Number: Buzz, Favourite: False" in result.output

def test_retrieve_fizzbuzz_with_limit():
    runner = CliRunner()
    result = runner.invoke(run, ['http://localhost:3000', '--limit=1'])
    assert result.exit_code == 0
    assert "Number: 1, Favourite: False" in result.output
    assert "Number: Fizz, Favourite: False" not in result.output
    assert "Number: Buzz, Favourite: False" not in result.output

def test_retrieve_fizzbuzz_with_page_number():
    runner = CliRunner()
    result = runner.invoke(run, ['http://localhost:3000', '--limit=5', '--page=67'])
    assert result.exit_code == 0
    assert "Number: 331, Favourite: False" in result.output
    assert "Number: 332, Favourite: False" in result.output
    assert "Number: Fizz, Favourite: False" in result.output
    assert "Number: 334, Favourite: False" in result.output
    assert "Number: Buzz, Favourite: False" in result.output

if __name__ == '__main__':
    test_retrieve_default_fizzbuzz()
    test_retrieve_fizzbuzz_with_limit()
    test_retrieve_fizzbuzz_with_page_number()

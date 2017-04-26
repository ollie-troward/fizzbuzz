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

if __name__ == '__main__':
    test_retrieve_default_fizzbuzz()

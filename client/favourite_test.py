import click
from click.testing import CliRunner
from favourite import run

def setup():
    runner = CliRunner()
    result = runner.invoke(run, ['http://localhost:3000', 'ping'])
    if "Connection refused" in result.output:
        print("Client failed to connect, be sure the server is running.")

def test_favourite_a_number():
    runner = CliRunner()
    result = runner.invoke(run, ['http://localhost:3000', '67'])
    assert result.exit_code == 0
    assert "Number 67 is now a favourite" in result.output

def test_invalid_favourite():
    runner = CliRunner()
    result = runner.invoke(run, ['http://localhost:3000', 'cheese'])
    assert result.exit_code == 0
    assert "cheese is an invalid number" in result.output

if __name__ == '__main__':
    setup()
    test_favourite_a_number()
    test_invalid_favourite()

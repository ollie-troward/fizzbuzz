import click
from click.testing import CliRunner
from favourite import run

def test_favourite_a_number():
    runner = CliRunner()
    result = runner.invoke(run, ['http://localhost:3000', '67'])
    assert result.exit_code == 0
    assert "Number 67 is now a favourite" in result.output

if __name__ == '__main__':
    test_favourite_a_number()

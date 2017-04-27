import click
import requests

@click.command()
@click.argument('url')
@click.argument('number')
def run(url, number):
    try:
        response = requests.put(url + '/favourite/' + number)
        click.echo(response.content)
    except requests.ConnectionError as e:
        click.echo(e)

if __name__ == '__main__':
    run()

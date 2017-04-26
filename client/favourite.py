import click
import requests

@click.command()
@click.argument('url')
@click.argument('number')
def run(url, number):
    response = requests.put(url + '/favourite/' + number)
    click.echo(response.content)

if __name__ == '__main__':
    run()

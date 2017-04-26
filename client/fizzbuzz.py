import click
import requests

@click.command()
@click.argument('url')
def run(url):
    response = requests.get(url)
    results = response.json()

    for result in results:
        click.echo("Number: %s, Favourite: %s" % (result['number'], result['favourite']))

if __name__ == '__main__':
    run()

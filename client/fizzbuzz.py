import click
import requests

@click.command()
@click.argument('url')
@click.option('--page', help='Set the page number.')
@click.option('--limit', help='Limit of numbers on a page.')
def run(url, page, limit):
    parameters = {'page': page, 'limit': limit}
    response = requests.get(url, params=parameters)
    results = response.json()

    for result in results:
        click.echo("Number: %s, Favourite: %s" % (result['number'], result['favourite']))

if __name__ == '__main__':
    run()

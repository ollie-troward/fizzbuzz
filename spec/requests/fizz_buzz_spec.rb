require 'rails_helper'

RSpec.describe 'FizzBuzz', type: :request do
  describe 'GET /' do
    context 'when given the correct input' do
      it 'displays values from 1 to 100 on the homepage' do
        get '/'
        expect(response).to have_http_status(200)
        expect(response.body).to eq(file_fixture('home.json').read)
      end
      it 'displays values from 1001 to 1100 on page number 11' do
        get '/?page=11'
        expect(response).to have_http_status(200)
        expect(response.body).to eq(file_fixture('page_11.json').read)
      end
    end
    context 'when given an invalid input' do
      it 'displays the home page if the page number cannot be understood' do
        get '/?page=ijustlovecake'
        expect(response).to have_http_status(200)
        expect(response.body).to eq(file_fixture('home.json').read)
      end
      it 'displays a 404 error if the page number is too high' do
        get '/?page=10000000000000000'
        expect(response).to have_http_status(404)
        expect(response.body).to eq('FizzBuzz not found')
      end
    end
  end
end

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
      it 'displays values from 5-8 based on a limit of 4' do
        get '/?page=2&limit=4'
        expect(response).to have_http_status(200)
        expect(response.body).to eq(file_fixture('limit_4.json').read)
      end
    end
    context 'when setting a favourite' do
      before(:each) do
        @favourite = 179
        put "/favourite/#{@favourite}"
      end
      it 'displays a flag on the favourite number' do
        get '/?page=30&limit=6'
        expect(response).to have_http_status(200)
        expect(response.body).to eq(file_fixture('favourite.json').read)
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

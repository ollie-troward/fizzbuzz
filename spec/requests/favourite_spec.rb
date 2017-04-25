require 'rails_helper'

RSpec.describe 'Favourite', type: :request do
  describe 'PUT /' do
    context 'when given the correct input' do
      it 'succeeds when setting a number as a favourite' do
        put '/favourite/67'
        expect(response).to have_http_status(200)
        expect(response.body).to eq('Number 67 is now a favourite')
      end
    end
    context 'when given the incorrect input' do
      it 'displays an error for an invalid number' do
        put '/favourite/iamanumber'
        expect(response).to have_http_status(422)
        expect(response.body).to eq('iamanumber is an invalid number')
      end
    end
  end
end

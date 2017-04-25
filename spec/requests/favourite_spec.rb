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
  end
end

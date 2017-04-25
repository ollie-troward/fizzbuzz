require 'rails_helper'

RSpec.describe 'HomePage', type: :request do
  describe 'GET /' do
    it 'displays values from 1 to 100 on the homepage' do
      get '/'
      expect(response).to have_http_status(200)
      expect(response.body).to eq(file_fixture('homepage.json').read)
    end
  end
end

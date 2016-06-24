require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do
	describe 'GET #index' do
    it '200 success' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
	end
end
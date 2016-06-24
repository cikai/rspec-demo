require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do
	describe 'GET #index' do
    it '200 success' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
	end

	describe 'GET #new' do
    it 'create new blog # normally' do
      article = Article.create!(:title => 'testing', :text => 'testing msg')
      get :new
      assert_select 'f.submit' do
        assert_select 'input[name=?]', 'title'
        assert_select 'textarea[name=?]', 'text'
        assert_select 'input[type=?]', 'submit'
      end
    end

    it 'create new blog # FactoryGirl' do
      article = FactoryGirl.create(:title => 'FactoryGirl testing', :text => 'testing msg')
      visit '/new'
      fill_in 'article[title]', :with => 'FactoryGirl testing'
      fill_in 'article[text]', :with => 'testing msg'
      click_button 'commit'

      expect(page).to have_selector("h1", :text => "testing msg")
    end
	end
end
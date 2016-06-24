require 'rails_helper'

RSpec.describe Article, :type => :model do

	it 'create' do
		article = Article.create!(title: 'hello', text: 'hello world')
    expect(Article.all).to eq([article])
	end

end
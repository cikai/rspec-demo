require 'rails_helper'

describe Article do

  it 'case 1 : 非法数据' do
  	article = Article.new(
      title: '110', 
      text: '1234'
  	)
  	expect(article.errors[:title]).to include('标题不为空，不少于5个字。')
  end

end
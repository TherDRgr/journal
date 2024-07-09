require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
 
  setup do
    @article = articles(:one)
  end

  test 'should create article' do
    assert_difference("Article.count") do
    post article_url, params: {article: {title: @article.title, body: @article.body, category: @article.category} }
    end
    assert_redirected_to article_url(Article.last)
  end 
end

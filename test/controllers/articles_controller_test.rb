require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @article = articles(:one)
  end 

  test "should not save article without category" do
    article = Article.new
    assert_not article.save, "Saved the Article without category"
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should create article" do
    assert_difference("Article.count") do
      post articles_url, params: { article: { category: @article.category, title: @article.title, body: @article.body } }
    end
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

end

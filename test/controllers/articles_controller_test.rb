require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @article = articles(:one)
  end 

  test "should not save article without title" do
    article = Article.new
    assert_not article.save, "Saved the article without a title"
  end

  # test "should get index" do
  #   get articles_url
  #   assert_response :success
  # end

end

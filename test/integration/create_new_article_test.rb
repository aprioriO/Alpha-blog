require 'test_helper'

class CreateArticleTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.create(username: "olena", email: 'olena@example.com', password: "password", admin:true )
  end
  test "create new article" do
      sign_in_as(@user,"password")
      get new_article_path
      assert_template 'articles/new'
      assert_difference 'Article.count',1 do
          post articles_path , params:{article: {title: "Article for test",
              description: "This is a new article for test"}}
          follow_redirect!
      end
      assert_template 'articles/show'
      assert_match 'Title: Article for test' ,response.body
  end
end

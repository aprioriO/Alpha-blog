require 'test_helper'
class CategoriesControllerTest < ActionController::TestCase

  def setup
  @category = Category.create(name: "sports")
  end

  test "should get categories index" do
  get :index
  assert_response :success
  end

  test "should get new" do
  get :new
  assert_response :success
  end

  test "should get show" do
  get :show, params:{'id' => @category.id}
  assert_response :success
  end

  test "should redirect create when admin not logged in" do
    assert_no_difference 'Category.count' do
     post :create, params:{category: {name: "sport"}}

     # post :create, category:{name: "sports"} ???
     # post categories_path, params:{category: {name: "sport"}} ???
     # post categories_path, params: {category: { name: "sports" }} ???

    end
    assert_redirected_to categories_path
  end
end

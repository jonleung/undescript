require 'test_helper'

class WebSlidesControllerTest < ActionController::TestCase
  setup do
    @web_slide = web_slides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_slides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_slide" do
    assert_difference('WebSlide.count') do
      post :create, :web_slide => @web_slide.attributes
    end

    assert_redirected_to web_slide_path(assigns(:web_slide))
  end

  test "should show web_slide" do
    get :show, :id => @web_slide.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @web_slide.to_param
    assert_response :success
  end

  test "should update web_slide" do
    put :update, :id => @web_slide.to_param, :web_slide => @web_slide.attributes
    assert_redirected_to web_slide_path(assigns(:web_slide))
  end

  test "should destroy web_slide" do
    assert_difference('WebSlide.count', -1) do
      delete :destroy, :id => @web_slide.to_param
    end

    assert_redirected_to web_slides_path
  end
end

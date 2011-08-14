require 'test_helper'

class SlideshowsControllerTest < ActionController::TestCase
  setup do
    @slideshow = slideshows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slideshows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slideshow" do
    assert_difference('Slideshow.count') do
      post :create, :slideshow => @slideshow.attributes
    end

    assert_redirected_to slideshow_path(assigns(:slideshow))
  end

  test "should show slideshow" do
    get :show, :id => @slideshow.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @slideshow.to_param
    assert_response :success
  end

  test "should update slideshow" do
    put :update, :id => @slideshow.to_param, :slideshow => @slideshow.attributes
    assert_redirected_to slideshow_path(assigns(:slideshow))
  end

  test "should destroy slideshow" do
    assert_difference('Slideshow.count', -1) do
      delete :destroy, :id => @slideshow.to_param
    end

    assert_redirected_to slideshows_path
  end
end

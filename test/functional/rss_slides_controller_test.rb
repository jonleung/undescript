require 'test_helper'

class RssSlidesControllerTest < ActionController::TestCase
  setup do
    @rss_slide = rss_slides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rss_slides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rss_slide" do
    assert_difference('RssSlide.count') do
      post :create, :rss_slide => @rss_slide.attributes
    end

    assert_redirected_to rss_slide_path(assigns(:rss_slide))
  end

  test "should show rss_slide" do
    get :show, :id => @rss_slide.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @rss_slide.to_param
    assert_response :success
  end

  test "should update rss_slide" do
    put :update, :id => @rss_slide.to_param, :rss_slide => @rss_slide.attributes
    assert_redirected_to rss_slide_path(assigns(:rss_slide))
  end

  test "should destroy rss_slide" do
    assert_difference('RssSlide.count', -1) do
      delete :destroy, :id => @rss_slide.to_param
    end

    assert_redirected_to rss_slides_path
  end
end

require 'test_helper'

class AnalyticsSlidesControllerTest < ActionController::TestCase
  setup do
    @analytics_slide = analytics_slides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:analytics_slides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create analytics_slide" do
    assert_difference('AnalyticsSlide.count') do
      post :create, :analytics_slide => @analytics_slide.attributes
    end

    assert_redirected_to analytics_slide_path(assigns(:analytics_slide))
  end

  test "should show analytics_slide" do
    get :show, :id => @analytics_slide.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @analytics_slide.to_param
    assert_response :success
  end

  test "should update analytics_slide" do
    put :update, :id => @analytics_slide.to_param, :analytics_slide => @analytics_slide.attributes
    assert_redirected_to analytics_slide_path(assigns(:analytics_slide))
  end

  test "should destroy analytics_slide" do
    assert_difference('AnalyticsSlide.count', -1) do
      delete :destroy, :id => @analytics_slide.to_param
    end

    assert_redirected_to analytics_slides_path
  end
end

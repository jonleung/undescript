require 'test_helper'

class VideoSlidesControllerTest < ActionController::TestCase
  setup do
    @video_slide = video_slides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_slides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_slide" do
    assert_difference('VideoSlide.count') do
      post :create, :video_slide => @video_slide.attributes
    end

    assert_redirected_to video_slide_path(assigns(:video_slide))
  end

  test "should show video_slide" do
    get :show, :id => @video_slide.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @video_slide.to_param
    assert_response :success
  end

  test "should update video_slide" do
    put :update, :id => @video_slide.to_param, :video_slide => @video_slide.attributes
    assert_redirected_to video_slide_path(assigns(:video_slide))
  end

  test "should destroy video_slide" do
    assert_difference('VideoSlide.count', -1) do
      delete :destroy, :id => @video_slide.to_param
    end

    assert_redirected_to video_slides_path
  end
end

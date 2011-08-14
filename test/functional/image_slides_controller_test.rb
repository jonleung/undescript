require 'test_helper'

class ImageSlidesControllerTest < ActionController::TestCase
  setup do
    @image_slide = image_slides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_slides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_slide" do
    assert_difference('ImageSlide.count') do
      post :create, :image_slide => @image_slide.attributes
    end

    assert_redirected_to image_slide_path(assigns(:image_slide))
  end

  test "should show image_slide" do
    get :show, :id => @image_slide.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @image_slide.to_param
    assert_response :success
  end

  test "should update image_slide" do
    put :update, :id => @image_slide.to_param, :image_slide => @image_slide.attributes
    assert_redirected_to image_slide_path(assigns(:image_slide))
  end

  test "should destroy image_slide" do
    assert_difference('ImageSlide.count', -1) do
      delete :destroy, :id => @image_slide.to_param
    end

    assert_redirected_to image_slides_path
  end
end

require 'test_helper'

class TextSlidesControllerTest < ActionController::TestCase
  setup do
    @text_slide = text_slides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:text_slides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text_slide" do
    assert_difference('TextSlide.count') do
      post :create, :text_slide => @text_slide.attributes
    end

    assert_redirected_to text_slide_path(assigns(:text_slide))
  end

  test "should show text_slide" do
    get :show, :id => @text_slide.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @text_slide.to_param
    assert_response :success
  end

  test "should update text_slide" do
    put :update, :id => @text_slide.to_param, :text_slide => @text_slide.attributes
    assert_redirected_to text_slide_path(assigns(:text_slide))
  end

  test "should destroy text_slide" do
    assert_difference('TextSlide.count', -1) do
      delete :destroy, :id => @text_slide.to_param
    end

    assert_redirected_to text_slides_path
  end
end

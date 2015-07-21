require 'test_helper'

class HotelsControllerTest < ActionController::TestCase
  setup do
    @hotel = hotels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hotels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hotel" do
    assert_difference('Hotel.count') do
      post :create, hotel: { booking_url: @hotel.booking_url, description: @hotel.description, facilites: @hotel.facilites, img_url: @hotel.img_url, location: @hotel.location, name: @hotel.name, stars: @hotel.stars, website_url: @hotel.website_url }
    end

    assert_redirected_to hotel_path(assigns(:hotel))
  end

  test "should show hotel" do
    get :show, id: @hotel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hotel
    assert_response :success
  end

  test "should update hotel" do
    patch :update, id: @hotel, hotel: { booking_url: @hotel.booking_url, description: @hotel.description, facilites: @hotel.facilites, img_url: @hotel.img_url, location: @hotel.location, name: @hotel.name, stars: @hotel.stars, website_url: @hotel.website_url }
    assert_redirected_to hotel_path(assigns(:hotel))
  end

  test "should destroy hotel" do
    assert_difference('Hotel.count', -1) do
      delete :destroy, id: @hotel
    end

    assert_redirected_to hotels_path
  end
end

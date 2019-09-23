require 'test_helper'

class CarParkingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_parking = car_parkings(:one)
  end

  test "should get index" do
    get car_parkings_url, as: :json
    assert_response :success
  end

  test "should create car_parking" do
    assert_difference('CarParking.count') do
      post car_parkings_url, params: { car_parking: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show car_parking" do
    get car_parking_url(@car_parking), as: :json
    assert_response :success
  end

  test "should update car_parking" do
    patch car_parking_url(@car_parking), params: { car_parking: {  } }, as: :json
    assert_response 200
  end

  test "should destroy car_parking" do
    assert_difference('CarParking.count', -1) do
      delete car_parking_url(@car_parking), as: :json
    end

    assert_response 204
  end
end

require 'test_helper'

class OfferedMealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offered_meal = offered_meals(:one)
  end

  test "should get index" do
    get offered_meals_url, as: :json
    assert_response :success
  end

  test "should create offered_meal" do
    assert_difference('OfferedMeal.count') do
      post offered_meals_url, params: { offered_meal: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show offered_meal" do
    get offered_meal_url(@offered_meal), as: :json
    assert_response :success
  end

  test "should update offered_meal" do
    patch offered_meal_url(@offered_meal), params: { offered_meal: {  } }, as: :json
    assert_response 200
  end

  test "should destroy offered_meal" do
    assert_difference('OfferedMeal.count', -1) do
      delete offered_meal_url(@offered_meal), as: :json
    end

    assert_response 204
  end
end

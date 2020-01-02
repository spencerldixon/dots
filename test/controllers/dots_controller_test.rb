require 'test_helper'

class DotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dot = dots(:one)
  end

  test "should get index" do
    get dots_url
    assert_response :success
  end

  test "should get new" do
    get new_dot_url
    assert_response :success
  end

  test "should create dot" do
    assert_difference('Dot.count') do
      post dots_url, params: { dot: { experiment_id: @dot.experiment_id, metric_id: @dot.metric_id, value: @dot.value } }
    end

    assert_redirected_to dot_url(Dot.last)
  end

  test "should show dot" do
    get dot_url(@dot)
    assert_response :success
  end

  test "should get edit" do
    get edit_dot_url(@dot)
    assert_response :success
  end

  test "should update dot" do
    patch dot_url(@dot), params: { dot: { experiment_id: @dot.experiment_id, metric_id: @dot.metric_id, value: @dot.value } }
    assert_redirected_to dot_url(@dot)
  end

  test "should destroy dot" do
    assert_difference('Dot.count', -1) do
      delete dot_url(@dot)
    end

    assert_redirected_to dots_url
  end
end

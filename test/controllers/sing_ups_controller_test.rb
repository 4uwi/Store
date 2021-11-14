require "test_helper"

class SingUpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sing_up = sing_ups(:one)
  end

  test "should get index" do
    get sing_ups_url
    assert_response :success
  end

  test "should get new" do
    get new_sing_up_url
    assert_response :success
  end

  test "should create sing_up" do
    assert_difference('SingUp.count') do
      post sing_ups_url, params: { sing_up: {  } }
    end

    assert_redirected_to sing_up_url(SingUp.last)
  end

  test "should show sing_up" do
    get sing_up_url(@sing_up)
    assert_response :success
  end

  test "should get edit" do
    get edit_sing_up_url(@sing_up)
    assert_response :success
  end

  test "should update sing_up" do
    patch sing_up_url(@sing_up), params: { sing_up: {  } }
    assert_redirected_to sing_up_url(@sing_up)
  end

  test "should destroy sing_up" do
    assert_difference('SingUp.count', -1) do
      delete sing_up_url(@sing_up)
    end

    assert_redirected_to sing_ups_url
  end
end

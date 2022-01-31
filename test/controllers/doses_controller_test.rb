require "test_helper"

class DosesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dose = doses(:one)
  end

  test "should get index" do
    get doses_url
    assert_response :success
  end

  test "should get new" do
    get new_dose_url
    assert_response :success
  end

  test "should create dose" do
    assert_difference("Dose.count") do
      post doses_url, params: { dose: { description: @dose.description } }
    end

    assert_redirected_to dose_url(Dose.last)
  end

  test "should show dose" do
    get dose_url(@dose)
    assert_response :success
  end

  test "should get edit" do
    get edit_dose_url(@dose)
    assert_response :success
  end

  test "should update dose" do
    patch dose_url(@dose), params: { dose: { description: @dose.description } }
    assert_redirected_to dose_url(@dose)
  end

  test "should destroy dose" do
    assert_difference("Dose.count", -1) do
      delete dose_url(@dose)
    end

    assert_redirected_to doses_url
  end
end

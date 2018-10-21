require 'test_helper'

class CaregiversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caregiver = caregivers(:one)
  end

  test "should get index" do
    get caregivers_url
    assert_response :success
  end

  test "should get new" do
    get new_caregiver_url
    assert_response :success
  end

  test "should create caregiver" do
    assert_difference('Caregiver.count') do
      post caregivers_url, params: { caregiver: { address1: @caregiver.address1, address2: @caregiver.address2, city: @caregiver.city, country: @caregiver.country, drivers_license_number: @caregiver.drivers_license_number, drivers_license_state: @caregiver.drivers_license_state, email: @caregiver.email, firstname: @caregiver.firstname, is_lpn: @caregiver.is_lpn, is_stna: @caregiver.is_stna, is_verified: @caregiver.is_verified, lastname: @caregiver.lastname, lpn_license_id: @caregiver.lpn_license_id, phone: @caregiver.phone, state: @caregiver.state, stna_license_id: @caregiver.stna_license_id, zip: @caregiver.zip } }
    end

    assert_redirected_to caregiver_url(Caregiver.last)
  end

  test "should show caregiver" do
    get caregiver_url(@caregiver)
    assert_response :success
  end

  test "should get edit" do
    get edit_caregiver_url(@caregiver)
    assert_response :success
  end

  test "should update caregiver" do
    patch caregiver_url(@caregiver), params: { caregiver: { address1: @caregiver.address1, address2: @caregiver.address2, city: @caregiver.city, country: @caregiver.country, drivers_license_number: @caregiver.drivers_license_number, drivers_license_state: @caregiver.drivers_license_state, email: @caregiver.email, firstname: @caregiver.firstname, is_lpn: @caregiver.is_lpn, is_stna: @caregiver.is_stna, is_verified: @caregiver.is_verified, lastname: @caregiver.lastname, lpn_license_id: @caregiver.lpn_license_id, phone: @caregiver.phone, state: @caregiver.state, stna_license_id: @caregiver.stna_license_id, zip: @caregiver.zip } }
    assert_redirected_to caregiver_url(@caregiver)
  end

  test "should destroy caregiver" do
    assert_difference('Caregiver.count', -1) do
      delete caregiver_url(@caregiver)
    end

    assert_redirected_to caregivers_url
  end
end

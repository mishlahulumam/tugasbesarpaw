require 'test_helper'

class StudiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studio = studios(:one)
  end

  test "should get index" do
    get studios_url
    assert_response :success
  end

  test "should get new" do
    get new_studio_url
    assert_response :success
  end

  test "should create studio" do
    assert_difference('Studio.count') do
      post studios_url, params: { studio: {kode: 'STD01', tanggal: '2017-12-18', waktu:'10:00', nama: 'umam', nama_band: 'Morning Grace', no_hp:'08114491808'} }
    end

    assert_redirected_to studio_url(Studio.last)
  end

  test "should show studio" do
    get studio_url(@studio)
    assert_response :success
  end

  test "should get edit" do
    get edit_studio_url(@studio)
    assert_response :success
  end

  test "should update studio" do
    patch studio_url(@studio), params: { studio: {kode: 'STD01', tanggal: '2017-12-18', waktu:'10:00', nama: 'umam', nama_band: 'Morning Grace', no_hp:'08114491808'} }
    assert_redirected_to studio_url(@studio)
    #assert_response :success
  end

  test "should destroy studio" do
    assert_difference('Studio.count', -1) do
      delete studio_url(@studio)
    end

    assert_redirected_to studios_url
  end
end

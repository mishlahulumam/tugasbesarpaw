require 'test_helper'

class ListalatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listalat = listalats(:one)
  end

  test "should get index" do
    get listalats_url
    assert_response :success
  end

  test "should get new" do
    get new_listalat_url
    assert_response :success
  end

  test "should create listalat" do
    assert_difference('Listalat.count') do
      post listalats_url, params: { listalat: {nama_alat: 'Gitar Ibanez RG', jenis: 'Gitar', tipe: 'Ibanez RG 470 ZB', harga_sewa: '50000', status: '1'} }
    end

    assert_redirected_to listalat_url(Listalat.last)
  end

  test "should show listalat" do
    get listalat_url(@listalat)
    assert_response :success
  end

  test "should get edit" do
    get edit_listalat_url(@listalat)
    assert_response :success
  end

  test "should update listalat" do
    patch listalat_url(@listalat), params: { listalat: {nama_alat: 'Gitar Ibanez RG', jenis: 'Gitar', tipe: 'Ibanez RG 470 ZB', harga_sewa: '50000', status: '1'} }
    assert_redirected_to listalat_url(@listalat)
    #assert_response :success
  end

  test "should destroy listalat" do
    assert_difference('Listalat.count', -1) do
      delete listalat_url(@listalat)
    end

    assert_redirected_to listalats_url
  end
end

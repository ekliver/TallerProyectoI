require 'test_helper'

class EjesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eje = ejes(:one)
  end

  test "should get index" do
    get ejes_url
    assert_response :success
  end

  test "should get new" do
    get new_eje_url
    assert_response :success
  end

  test "should create eje" do
    assert_difference('Eje.count') do
      post ejes_url, params: { eje: { iconEje: @eje.iconEje, imgEje: @eje.imgEje, nomEje: @eje.nomEje } }
    end

    assert_redirected_to eje_url(Eje.last)
  end

  test "should show eje" do
    get eje_url(@eje)
    assert_response :success
  end

  test "should get edit" do
    get edit_eje_url(@eje)
    assert_response :success
  end

  test "should update eje" do
    patch eje_url(@eje), params: { eje: { iconEje: @eje.iconEje, imgEje: @eje.imgEje, nomEje: @eje.nomEje } }
    assert_redirected_to eje_url(@eje)
  end

  test "should destroy eje" do
    assert_difference('Eje.count', -1) do
      delete eje_url(@eje)
    end

    assert_redirected_to ejes_url
  end
end

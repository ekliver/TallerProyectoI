require 'test_helper'

class ProveedorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proveedor = proveedors(:one)
  end

  test "should get index" do
    get proveedors_url
    assert_response :success
  end

  test "should get new" do
    get new_proveedor_url
    assert_response :success
  end

  test "should create proveedor" do
    assert_difference('Proveedor.count') do
      post proveedors_url, params: { proveedor: { celular1: @proveedor.celular1, celular2: @proveedor.celular2, correo: @proveedor.correo, departamento: @proveedor.departamento, direccion: @proveedor.direccion, distrito: @proveedor.distrito, foto_local: @proveedor.foto_local, hora_fin: @proveedor.hora_fin, hora_inicio: @proveedor.hora_inicio, latitud: @proveedor.latitud, longitud: @proveedor.longitud, provincia: @proveedor.provincia, razon_social: @proveedor.razon_social, telefono: @proveedor.telefono, tipo_servicio: @proveedor.tipo_servicio, url: @proveedor.url } }
    end

    assert_redirected_to proveedor_url(Proveedor.last)
  end

  test "should show proveedor" do
    get proveedor_url(@proveedor)
    assert_response :success
  end

  test "should get edit" do
    get edit_proveedor_url(@proveedor)
    assert_response :success
  end

  test "should update proveedor" do
    patch proveedor_url(@proveedor), params: { proveedor: { celular1: @proveedor.celular1, celular2: @proveedor.celular2, correo: @proveedor.correo, departamento: @proveedor.departamento, direccion: @proveedor.direccion, distrito: @proveedor.distrito, foto_local: @proveedor.foto_local, hora_fin: @proveedor.hora_fin, hora_inicio: @proveedor.hora_inicio, latitud: @proveedor.latitud, longitud: @proveedor.longitud, provincia: @proveedor.provincia, razon_social: @proveedor.razon_social, telefono: @proveedor.telefono, tipo_servicio: @proveedor.tipo_servicio, url: @proveedor.url } }
    assert_redirected_to proveedor_url(@proveedor)
  end

  test "should destroy proveedor" do
    assert_difference('Proveedor.count', -1) do
      delete proveedor_url(@proveedor)
    end

    assert_redirected_to proveedors_url
  end
end

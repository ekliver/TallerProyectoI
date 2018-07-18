require "application_system_test_case"

class ProveedorsTest < ApplicationSystemTestCase
  setup do
    @proveedor = proveedors(:one)
  end

  test "visiting the index" do
    visit proveedors_url
    assert_selector "h1", text: "Proveedors"
  end

  test "creating a Proveedor" do
    visit proveedors_url
    click_on "New Proveedor"

    fill_in "Celular1", with: @proveedor.celular1
    fill_in "Celular2", with: @proveedor.celular2
    fill_in "Correo", with: @proveedor.correo
    fill_in "Departamento", with: @proveedor.departamento
    fill_in "Direccion", with: @proveedor.direccion
    fill_in "Distrito", with: @proveedor.distrito
    fill_in "Foto Local", with: @proveedor.foto_local
    fill_in "Hora Fin", with: @proveedor.hora_fin
    fill_in "Hora Inicio", with: @proveedor.hora_inicio
    fill_in "Latitud", with: @proveedor.latitud
    fill_in "Longitud", with: @proveedor.longitud
    fill_in "Provincia", with: @proveedor.provincia
    fill_in "Razon Social", with: @proveedor.razon_social
    fill_in "Telefono", with: @proveedor.telefono
    fill_in "Tipo Servicio", with: @proveedor.tipo_servicio
    fill_in "Url", with: @proveedor.url
    click_on "Create Proveedor"

    assert_text "Proveedor was successfully created"
    click_on "Back"
  end

  test "updating a Proveedor" do
    visit proveedors_url
    click_on "Edit", match: :first

    fill_in "Celular1", with: @proveedor.celular1
    fill_in "Celular2", with: @proveedor.celular2
    fill_in "Correo", with: @proveedor.correo
    fill_in "Departamento", with: @proveedor.departamento
    fill_in "Direccion", with: @proveedor.direccion
    fill_in "Distrito", with: @proveedor.distrito
    fill_in "Foto Local", with: @proveedor.foto_local
    fill_in "Hora Fin", with: @proveedor.hora_fin
    fill_in "Hora Inicio", with: @proveedor.hora_inicio
    fill_in "Latitud", with: @proveedor.latitud
    fill_in "Longitud", with: @proveedor.longitud
    fill_in "Provincia", with: @proveedor.provincia
    fill_in "Razon Social", with: @proveedor.razon_social
    fill_in "Telefono", with: @proveedor.telefono
    fill_in "Tipo Servicio", with: @proveedor.tipo_servicio
    fill_in "Url", with: @proveedor.url
    click_on "Update Proveedor"

    assert_text "Proveedor was successfully updated"
    click_on "Back"
  end

  test "destroying a Proveedor" do
    visit proveedors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proveedor was successfully destroyed"
  end
end

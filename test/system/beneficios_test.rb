require "application_system_test_case"

class BeneficiosTest < ApplicationSystemTestCase
  setup do
    @beneficio = beneficios(:one)
  end

  test "visiting the index" do
    visit beneficios_url
    assert_selector "h1", text: "Beneficios"
  end

  test "creating a Beneficio" do
    visit beneficios_url
    click_on "New Beneficio"

    fill_in "Iconeje", with: @beneficio.iconEje
    fill_in "Iconseje", with: @beneficio.iconSEje
    fill_in "Ideje", with: @beneficio.idEje
    fill_in "Idfavorito", with: @beneficio.idFavorito
    fill_in "Idlocal", with: @beneficio.idLocal
    fill_in "Imgbeneficio", with: @beneficio.imgBeneficio
    fill_in "Inabierto", with: @beneficio.inAbierto
    fill_in "Infavorito", with: @beneficio.inFavorito
    fill_in "Nombeneficio", with: @beneficio.nomBeneficio
    fill_in "Nomdistrito", with: @beneficio.nomDistrito
    fill_in "Nomeje", with: @beneficio.nomEje
    fill_in "Numdistancia", with: @beneficio.numDistancia
    fill_in "Numlatitud", with: @beneficio.numLatitud
    fill_in "Numlongitud", with: @beneficio.numLongitud
    fill_in "Porcdescuento", with: @beneficio.porcDescuento
    fill_in "Puntbeneficio", with: @beneficio.puntBeneficio
    click_on "Create Beneficio"

    assert_text "Beneficio was successfully created"
    click_on "Back"
  end

  test "updating a Beneficio" do
    visit beneficios_url
    click_on "Edit", match: :first

    fill_in "Iconeje", with: @beneficio.iconEje
    fill_in "Iconseje", with: @beneficio.iconSEje
    fill_in "Ideje", with: @beneficio.idEje
    fill_in "Idfavorito", with: @beneficio.idFavorito
    fill_in "Idlocal", with: @beneficio.idLocal
    fill_in "Imgbeneficio", with: @beneficio.imgBeneficio
    fill_in "Inabierto", with: @beneficio.inAbierto
    fill_in "Infavorito", with: @beneficio.inFavorito
    fill_in "Nombeneficio", with: @beneficio.nomBeneficio
    fill_in "Nomdistrito", with: @beneficio.nomDistrito
    fill_in "Nomeje", with: @beneficio.nomEje
    fill_in "Numdistancia", with: @beneficio.numDistancia
    fill_in "Numlatitud", with: @beneficio.numLatitud
    fill_in "Numlongitud", with: @beneficio.numLongitud
    fill_in "Porcdescuento", with: @beneficio.porcDescuento
    fill_in "Puntbeneficio", with: @beneficio.puntBeneficio
    click_on "Update Beneficio"

    assert_text "Beneficio was successfully updated"
    click_on "Back"
  end

  test "destroying a Beneficio" do
    visit beneficios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beneficio was successfully destroyed"
  end
end

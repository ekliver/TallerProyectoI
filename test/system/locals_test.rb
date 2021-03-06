require "application_system_test_case"

class LocalsTest < ApplicationSystemTestCase
  setup do
    @local = locals(:one)
  end

  test "visiting the index" do
    visit locals_url
    assert_selector "h1", text: "Locals"
  end

  test "creating a Local" do
    visit locals_url
    click_on "New Local"

    fill_in "Dirlocal", with: @local.dirLocal
    fill_in "Inabierto", with: @local.inAbierto
    fill_in "Nomdistrito", with: @local.nomDistrito
    fill_in "Nomlocal", with: @local.nomLocal
    fill_in "Numlatitud", with: @local.numLatitud
    fill_in "Numlongitud", with: @local.numLongitud
    fill_in "Numtelefono", with: @local.numTelefono
    click_on "Create Local"

    assert_text "Local was successfully created"
    click_on "Back"
  end

  test "updating a Local" do
    visit locals_url
    click_on "Edit", match: :first

    fill_in "Dirlocal", with: @local.dirLocal
    fill_in "Inabierto", with: @local.inAbierto
    fill_in "Nomdistrito", with: @local.nomDistrito
    fill_in "Nomlocal", with: @local.nomLocal
    fill_in "Numlatitud", with: @local.numLatitud
    fill_in "Numlongitud", with: @local.numLongitud
    fill_in "Numtelefono", with: @local.numTelefono
    click_on "Update Local"

    assert_text "Local was successfully updated"
    click_on "Back"
  end

  test "destroying a Local" do
    visit locals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Local was successfully destroyed"
  end
end

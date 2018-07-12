require "application_system_test_case"

class EjesTest < ApplicationSystemTestCase
  setup do
    @eje = ejes(:one)
  end

  test "visiting the index" do
    visit ejes_url
    assert_selector "h1", text: "Ejes"
  end

  test "creating a Eje" do
    visit ejes_url
    click_on "New Eje"

    fill_in "Iconeje", with: @eje.iconEje
    fill_in "Imgeje", with: @eje.imgEje
    fill_in "Nomeje", with: @eje.nomEje
    click_on "Create Eje"

    assert_text "Eje was successfully created"
    click_on "Back"
  end

  test "updating a Eje" do
    visit ejes_url
    click_on "Edit", match: :first

    fill_in "Iconeje", with: @eje.iconEje
    fill_in "Imgeje", with: @eje.imgEje
    fill_in "Nomeje", with: @eje.nomEje
    click_on "Update Eje"

    assert_text "Eje was successfully updated"
    click_on "Back"
  end

  test "destroying a Eje" do
    visit ejes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eje was successfully destroyed"
  end
end

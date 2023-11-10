require "application_system_test_case"

class EquipmentsTest < ApplicationSystemTestCase
  setup do
    @equipment = equipments(:one)
  end

  test "visiting the index" do
    visit equipments_url
    assert_selector "h1", text: "Equipments"
  end

  test "should create equipment" do
    visit equipments_url
    click_on "New equipment"

    fill_in "Cost", with: @equipment.cost
    fill_in "Current responsible", with: @equipment.current_responsible
    fill_in "Date of acquisition", with: @equipment.date_of_acquisition
    fill_in "Delivery date responsible", with: @equipment.delivery_date_responsible
    fill_in "Last maintenance", with: @equipment.last_maintenance
    fill_in "Name", with: @equipment.name
    fill_in "Serial number", with: @equipment.serial_number
    fill_in "State", with: @equipment.state
    click_on "Create Equipment"

    assert_text "Equipment was successfully created"
    click_on "Back"
  end

  test "should update Equipment" do
    visit equipment_url(@equipment)
    click_on "Edit this equipment", match: :first

    fill_in "Cost", with: @equipment.cost
    fill_in "Current responsible", with: @equipment.current_responsible
    fill_in "Date of acquisition", with: @equipment.date_of_acquisition
    fill_in "Delivery date responsible", with: @equipment.delivery_date_responsible
    fill_in "Last maintenance", with: @equipment.last_maintenance
    fill_in "Name", with: @equipment.name
    fill_in "Serial number", with: @equipment.serial_number
    fill_in "State", with: @equipment.state
    click_on "Update Equipment"

    assert_text "Equipment was successfully updated"
    click_on "Back"
  end

  test "should destroy Equipment" do
    visit equipment_url(@equipment)
    click_on "Destroy this equipment", match: :first

    assert_text "Equipment was successfully destroyed"
  end
end

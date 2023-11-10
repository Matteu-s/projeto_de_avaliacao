require "test_helper"

class EquipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment = equipments(:one)
  end

  test "should get index" do
    get equipments_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_url
    assert_response :success
  end

  test "should create equipment" do
    assert_difference("Equipment.count") do
      post equipments_url, params: { equipment: { cost: @equipment.cost, current_responsible: @equipment.current_responsible, date_of_acquisition: @equipment.date_of_acquisition, delivery_date_responsible: @equipment.delivery_date_responsible, last_maintenance: @equipment.last_maintenance, name: @equipment.name, serial_number: @equipment.serial_number, state: @equipment.state } }
    end

    assert_redirected_to equipment_url(Equipment.last)
  end

  test "should show equipment" do
    get equipment_url(@equipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_url(@equipment)
    assert_response :success
  end

  test "should update equipment" do
    patch equipment_url(@equipment), params: { equipment: { cost: @equipment.cost, current_responsible: @equipment.current_responsible, date_of_acquisition: @equipment.date_of_acquisition, delivery_date_responsible: @equipment.delivery_date_responsible, last_maintenance: @equipment.last_maintenance, name: @equipment.name, serial_number: @equipment.serial_number, state: @equipment.state } }
    assert_redirected_to equipment_url(@equipment)
  end

  test "should destroy equipment" do
    assert_difference("Equipment.count", -1) do
      delete equipment_url(@equipment)
    end

    assert_redirected_to equipments_url
  end
end

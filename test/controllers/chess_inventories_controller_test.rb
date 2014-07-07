require 'test_helper'

class ChessInventoriesControllerTest < ActionController::TestCase
  setup do
    @chess_inventory = chess_inventories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chess_inventories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chess_inventory" do
    assert_difference('ChessInventory.count') do
      post :create, chess_inventory: { entrytype: @chess_inventory.entrytype, lotnumber: @chess_inventory.lotnumber, partnumber: @chess_inventory.partnumber, quantity: @chess_inventory.quantity, shelfnumber: @chess_inventory.shelfnumber }
    end

    assert_redirected_to chess_inventory_path(assigns(:chess_inventory))
  end

  test "should show chess_inventory" do
    get :show, id: @chess_inventory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chess_inventory
    assert_response :success
  end

  test "should update chess_inventory" do
    patch :update, id: @chess_inventory, chess_inventory: { entrytype: @chess_inventory.entrytype, lotnumber: @chess_inventory.lotnumber, partnumber: @chess_inventory.partnumber, quantity: @chess_inventory.quantity, shelfnumber: @chess_inventory.shelfnumber }
    assert_redirected_to chess_inventory_path(assigns(:chess_inventory))
  end

  test "should destroy chess_inventory" do
    assert_difference('ChessInventory.count', -1) do
      delete :destroy, id: @chess_inventory
    end

    assert_redirected_to chess_inventories_path
  end
end

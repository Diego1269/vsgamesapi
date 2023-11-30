require "test_helper"

class PrivilegiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @privilegio = privilegios(:one)
  end

  test "should get index" do
    get privilegios_url, as: :json
    assert_response :success
  end

  test "should create privilegio" do
    assert_difference("Privilegio.count") do
      post privilegios_url, params: { privilegio: { nombre: @privilegio.nombre } }, as: :json
    end

    assert_response :created
  end

  test "should show privilegio" do
    get privilegio_url(@privilegio), as: :json
    assert_response :success
  end

  test "should update privilegio" do
    patch privilegio_url(@privilegio), params: { privilegio: { nombre: @privilegio.nombre } }, as: :json
    assert_response :success
  end

  test "should destroy privilegio" do
    assert_difference("Privilegio.count", -1) do
      delete privilegio_url(@privilegio), as: :json
    end

    assert_response :no_content
  end
end

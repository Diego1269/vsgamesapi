require "test_helper"

class DetalleVentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalle_ventum = detalle_venta(:one)
  end

  test "should get index" do
    get detalle_venta_url, as: :json
    assert_response :success
  end

  test "should create detalle_ventum" do
    assert_difference("DetalleVentum.count") do
      post detalle_venta_url, params: { detalle_ventum: { cantidad: @detalle_ventum.cantidad, numero_transaccion: @detalle_ventum.numero_transaccion, precio: @detalle_ventum.precio, producto_id: @detalle_ventum.producto_id, total_venta: @detalle_ventum.total_venta } }, as: :json
    end

    assert_response :created
  end

  test "should show detalle_ventum" do
    get detalle_ventum_url(@detalle_ventum), as: :json
    assert_response :success
  end

  test "should update detalle_ventum" do
    patch detalle_ventum_url(@detalle_ventum), params: { detalle_ventum: { cantidad: @detalle_ventum.cantidad, numero_transaccion: @detalle_ventum.numero_transaccion, precio: @detalle_ventum.precio, producto_id: @detalle_ventum.producto_id, total_venta: @detalle_ventum.total_venta } }, as: :json
    assert_response :success
  end

  test "should destroy detalle_ventum" do
    assert_difference("DetalleVentum.count", -1) do
      delete detalle_ventum_url(@detalle_ventum), as: :json
    end

    assert_response :no_content
  end
end

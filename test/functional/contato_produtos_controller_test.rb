require 'test_helper'

class ContatoProdutosControllerTest < ActionController::TestCase
  setup do
    @contato_produto = contato_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contato_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contato_produto" do
    assert_difference('ContatoProduto.count') do
      post :create, contato_produto: @contato_produto.attributes
    end

    assert_redirected_to contato_produto_path(assigns(:contato_produto))
  end

  test "should show contato_produto" do
    get :show, id: @contato_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contato_produto
    assert_response :success
  end

  test "should update contato_produto" do
    put :update, id: @contato_produto, contato_produto: @contato_produto.attributes
    assert_redirected_to contato_produto_path(assigns(:contato_produto))
  end

  test "should destroy contato_produto" do
    assert_difference('ContatoProduto.count', -1) do
      delete :destroy, id: @contato_produto
    end

    assert_redirected_to contato_produtos_path
  end
end

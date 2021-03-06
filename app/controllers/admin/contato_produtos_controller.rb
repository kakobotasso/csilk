class Admin::ContatoProdutosController < Admin::AdminController
layout 'admin'  
before_filter :authenticate_user!
  # GET /contato_produtos
  # GET /contato_produtos.json
  def index
    @contato_produtos = ContatoProduto.all.sort! { |a,b| b.id <=> a.id }

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contato_produtos }
    end
  end

  # GET /contato_produtos/1
  # GET /contato_produtos/1.json
  def show
    @contato_produto = ContatoProduto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contato_produto }
    end
  end

  # GET /contato_produtos/new
  # GET /contato_produtos/new.json
  def new
    @contato_produto = ContatoProduto.new
    @produto_id = Produto.find(params[:produto_id])
    @contato_produto.produto_id = params[:produto_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contato_produto }
    end
  end

  # GET /contato_produtos/1/edit
  def edit
    @contato_produto = ContatoProduto.find(params[:id])
  end

  # POST /contato_produtos
  # POST /contato_produtos.json
  def create
    @contato_produto = ContatoProduto.new(params[:contato_produto])
#    @produto_id = Produto.find(params[:produto_id])
#    @contato_produto.produto_id = params[:produto_id]

    respond_to do |format|
      if @contato_produto.save
        format.html { redirect_to [:admin, @contato_produto], notice: 'Contato produto was successfully created.' }
        format.json { render json: @contato_produto, status: :created, location: @contato_produto }
      else
        format.html { render action: "new" }
        format.json { render json: @contato_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contato_produtos/1
  # PUT /contato_produtos/1.json
  def update
    @contato_produto = ContatoProduto.find(params[:id])

    respond_to do |format|
      if @contato_produto.update_attributes(params[:contato_produto])
        format.html { redirect_to [:admin, @contato_produto], notice: 'Contato produto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contato_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contato_produtos/1
  # DELETE /contato_produtos/1.json
  def destroy
    @contato_produto = ContatoProduto.find(params[:id])
    @contato_produto.destroy

    respond_to do |format|
      format.html { redirect_to admin_contato_produtos_url }
      format.json { head :no_content }
    end
  end
end

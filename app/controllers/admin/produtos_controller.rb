class Admin::ProdutosController < Admin::AdminController
layout 'admin'  
before_filter :authenticate_user!

  # GET /produtos
  # GET /produtos.json
  def index
    @produtos = Produto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @produtos }
    end
  end

  # GET /produtos/1
  # GET /produtos/1.json
  def show
    @produto = Produto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @produto }
    end
  end

  # GET /produtos/new
  # GET /produtos/new.json
  def new
    @produto = Produto.new
    @categoria_para_select = Categoria.order(:nome)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @produto }
    end
  end

  # GET /produtos/1/edit
  def edit
    @produto = Produto.find(params[:id])
    @categoria_para_select = Categoria.order(:nome)
  end

  # POST /produtos
  # POST /produtos.json
  def create
    @produto = Produto.new(params[:produto])
    @categoria_para_select = Categoria.order(:nome)

    #def mark_for_destruction?
      #@marked_for_destruction
    #end

    respond_to do |format|
        if @produto.save
          format.html { redirect_to [:admin, @produto], notice: 'Produto criado com sucesso.' }
          format.json { render json: @produto, status: :created, location: @produto }
        else
          format.html { render action: "new" }
          format.json { render json: @produto.errors, status: :unprocessable_entity }
        end
    end
  end

  # PUT /produtos/1
  # PUT /produtos/1.json
  def update
    @produto = Produto.find(params[:id])
    @categoria_para_select = Categoria.order(:nome)

    #def mark_for_destruction?
      #@marked_for_destruction
    #end

    respond_to do |format|
      if @produto.update_attributes(params[:produto])
        format.html { redirect_to [:admin, @produto], notice: 'Produto atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produtos/1
  # DELETE /produtos/1.json
  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy

    respond_to do |format|
      format.html { redirect_to admin_produtos_url }
      format.json { head :no_content }
    end
  end

  def adicionar_fotos
    
  end

  
end

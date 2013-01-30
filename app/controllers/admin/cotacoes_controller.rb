class Admin::CotacoesController < Admin::AdminController
	layout 'admin'  
	before_filter :authenticate_user!
  
  def index
    @cotacoes = Cotacao.all.sort! { |a,b| b.id <=> a.id }

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cotacoess }
    end
  end

  # GET /contatos/1
  # GET /contatos/1.json
  def show
    @cotacoes = Cotacao.find(params[:id])
    @cotacoes.update_attributes(:novo => 0 )

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cotacoes }
    end
  end

  # GET /contatos/new
  # GET /contatos/new.json
  def new
    @cotacoes = Cotacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cotacoes }
    end
  end

  # GET /contatos/1/edit
  def edit
    @cotacoes = Cotacao.find(params[:id])
  end

  # POST /contatos
  # POST /contatos.json
  def create
    @cotacoes = Cotacao.new(params[:contato])

    respond_to do |format|
      if @cotacoes.save
        format.html { redirect_to [:admin, @cotacoes], notice: 'Cotacoes was successfully created.' }
        format.json { render json: @cotacoes, status: :created, location: @cotacoes }
      else
        format.html { render action: "new" }
        format.json { render json: @cotacoes.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contatos/1
  # PUT /contatos/1.json
  def update
    @cotacoes = Cotacao.find(params[:id])

    respond_to do |format|
      if @cotacoes.update_attributes(params[:contato])
        format.html { redirect_to [:admin, @cotacoes], notice: 'Contato was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cotacoes.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contatos/1
  # DELETE /contatos/1.json
  def destroy
    @cotacoes = Cotacao.find(params[:id])
    @cotacoes.destroy

    respond_to do |format|
      format.html { redirect_to admin_contatos_url }
      format.json { head :no_content }
    end
  end
end

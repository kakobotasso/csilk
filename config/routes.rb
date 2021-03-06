Csilk::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  get "welcome/index"

  scope '/admin' do
    root :to => 'admin/dashboard#index'
    #devise_for :users, :as => :admin#, :controllers => { :sessions => 'admin/sessions', :passwords => 'admin/passwords' }
    devise_for :users, :path_names => {
      :sign_in => '',
      :sign_out => 'logout',
      :password => 'secret',
      :confirmation => 'verification',
      :unlock => 'unblock',
      :registration => 'register',
      :sign_up => 'cmon_let_me_in'
    },
    :controllers => {
      :sessions  => 'admin/sessions',
      :passwords => 'admin/passwords',
      #:registration => 'admin/users/register/cmon_let_me_in',
      #:sign_up => 'admin/novo'
    }
  end

  # INSTITUCIONAL
  get '/quem-somos' => 'welcome#quem_somos', :as => "quem_somos"
  get '/o-que-fazemos' => 'welcome#fazemos', :as => "fazemos"
  get '/clientes' => 'welcome#clientes', :as => "clientes"
  get '/sustentabilidade' => 'welcome#sustentabilidade', :as => "sustentabilidade"
  get '/projeto-social' => 'welcome#social', :as => "social"

  # CATEGORIAS
  get '/produtos/' => 'categoria#index', :as => "produtos"
  get '/produtos/:categoria' => 'categoria#show', :as => "categoria"
  
  # PRODUTOS
  get '/produtos/:categoria/:produto' => 'produtos#index', :as => "produto"
  get '/produtos/:categoria/:produto/salvar-contato' => 'produtos#contato', :as => 'contato_produtos'
  get '/produtos/:categoria/:produto/visita' => 'produtos#aumenta_visita', :as => 'visita_produtos'

  # CONTATO
  get '/contato' => 'contato#new', :as => "contatos"
  post '/contato' => 'contato#create'

  # CONTATO
  get '/cotacao' => 'cotacao#new', :as => "cotacoes"
  post '/cotacao' => 'cotacao#create'

  # SEJA UM FORNECEDOR
  get '/seja-um-fornecedor' => 'fornecedor#new', :as => "fornecedores"
  post '/seja-um-fornecedor' => 'fornecedor#create'

  # NEWSLETTER
  get '/newsletter' => 'newsletter#novo', :as => "newsletters"

  namespace :admin do
    # colocar todos os resources aqui
    resources :categorias
    resources :banners
    resources :newsletters
    resources :contatos
    resources :fornecedores
    resources :produtos
    resources :fotos
    resources :contato_produtos
    resources :cotacoes

    controller :banners do
      put "banners/:id/desativar", :action => :desativar
      put "banners/:id/ativar", :action => :ativar
    end
  end

  root :to => 'welcome#index'
end

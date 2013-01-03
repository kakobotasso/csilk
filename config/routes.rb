Csilk::Application.routes.draw do

  get "welcome/index"

  scope '/admin' do
    root :to => 'admin/produtos#index'
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

  # CATEGORIAS
  get '/produtos/:categoria' => 'categoria#index', :as => "categoria"
  
  # PRODUTOS
  get '/produtos/:categoria/:produto' => 'produtos#index', :as => "produto"
  get '/produtos/:categoria/:produto/salvar-contato' => 'produtos#contato', :as => 'contato_produtos'
  get '/produtos/:categoria/:produto/visita' => 'produtos#aumenta_visita', :as => 'visita_produtos'

  # CONTATO
  get '/contato' => 'contato#new', :as => "contatos"
  post '/contato' => 'contato#create'

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
  end

  root :to => 'welcome#index'
end

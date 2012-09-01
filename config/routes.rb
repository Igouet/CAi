CAi2012::Application.routes.draw do

  resources :lugars

  get "modulos/actividades"

  get "videos/new"

  get "videos/edit"

  get "videos/index"

  get "impulso/index"

  get "impulso/new"

  get "impulso/show"

  get "impulso/edit"

  get "impulso/destroy"

  match "/vocalia/:id/noticias" => "vocalia#noticias"
  match "/vocalia/:id/nosotros" => "vocalia#nosotros"
  match '/vocalias', :to => 'vocalia#index'
  resources :vocalia

  resources :ingenieros
  
  resources :sessions, :only => [:new, :create, :destroy]
  
  resources :equipos

  resources :fotos
  
  match '/posts/indice', :controller => 'posts', :action => 'indice'
  
  match '/modulos/inicio', :controller => 'modulos', :action => 'inicio'
  match '/galeria', :controller => 'albums', :action => 'portada'
  get "posts/impulso"
  get "posts/caitv"
  resources :posts
  
  resources :albums

  resources :seccions

  resources :eventos

  
  match '/contacto', :to => 'pages#contacto', :as => :contacto
  match '/ayuda', :to => 'pages#ayuda', :as => :ayuda
  match '/equipo', :to => 'pages#equipo', :as => :ayuda
  match '/participa', :to => 'pages#participa', :as => :ayuda
  
  match '/inscribirse', :to => 'ingenieros#new', :as => :signup
  match '/conectarse', :to => 'sessions#new', :as => :signin
  match '/desconectarse', :to => 'sessions#destroy', :as => :signout
  
  match '/ingenieros', :to => 'ingenieros#index'
  

  
  match '/equipo/nuevo', :to => 'equipos#new', :as => :nuevoequipo
  
  root :to => 'modulos#inicio'


  get "modulos/medios"
  get "modulos/noticias"
  get "modulos/vocalias"
  get "modulos/servicios"
  get "modulos/portales"
  get "modulos/areas"
  
  get "intranet/inicio"
    get "intranet/publicaciones"
      get "intranet/proyectos"
        get "intranet/usuarios"
  get "intranet/web"
  get "intranet/posts"
  
  get "partidos/new"

  get "partidos/show"

  get "partidos/edit"

  get "albums/index"
  get "equipos/new"

  get "equipos/edit"

  get "equipos/show"

  get "eventos/new"

  get "eventos/show"

  get "eventos/edit"

  get "comentarios/new"

  get "comentarios/show"

  get "comentarios/edit"

  get "mensajes/new"

  get "mensajes/show"

  get "mensajes/edit"

  get "fotos/new"

  get "fotos/show"

  get "fotos/edit"

  get "albums/new"

  get "albums/show"

  get "albums/edit"

  get "seccions/new"

  get "seccions/show"

  get "posts/new"

  get "posts/edit"
  
  get "posts/indice"

  get "posts/show"

  get "modulos/new"

  get "modulos/show"

  get "ingenieros/new"

  get "ingenieros/show"

  get "ingenieros/edit"

  get "pages/inicio"

  get "pages/contacto"

  get "pages/ayuda"

  get "pages/equipo"

  get "pages/participa"
  
  get "intranet/inicio"


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

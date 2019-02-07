Rails.application.routes.draw do
  devise_for :autors
  # resources :comentarios
  #get 'articulos/new'
  #get 'articulos/index'

  resources :articulos do
    resources :comentarios
  end

  get 'home/index'
  root 'home#index'
  get 'estaticas/contacto'
  get 'estaticas/nosotros'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

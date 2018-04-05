Rails.application.routes.draw do
   get '/artists', to: 'artist#index'
    # root 'artist#index'
    resource :artist

  # get 'artist/index', to: 'artist#index'
  #
  # get 'artist/create'
  #
  # get 'artist/show'
  #
  # get 'artist/edit'
  #
  # get 'artist/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

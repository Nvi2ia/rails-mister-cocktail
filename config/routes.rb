Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home' # always the first one

    # resources :restaurants

    # READ
    get 'cocktails',     to: 'cocktails#index'

    # CREATE
    get 'cocktails/new', to: 'cocktails#new', as: 'new_cocktail'
    post 'cocktails',    to: 'cocktails#create'

    # READ BIS
    get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail'

    # UPDATE
    #get 'cocktails/:id/edit', to: 'cocktails#edit', as: 'edit_cocktail'
    #patch 'cocktails/:id',    to: 'cocktails#update'

    # DELETE
    #delete 'cocktails/:id', to: 'cocktails#destroy'
end

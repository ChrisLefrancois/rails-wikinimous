Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'articles/new', to: 'articles#new', as: :new_article

  get 'articles', to: 'articles#index', as: :articles
  get 'articles/:id', to: 'articles#show', as: :article

  post 'articles', to: 'articles#create'

  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#edit'

  delete 'articles/:id', to: 'articles#destroy'
end

Rails.application.routes.draw do
  get 'articles' => "articles#index"
  get 'articles/:id' => 'articles#show',  as: :article
  root to: 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

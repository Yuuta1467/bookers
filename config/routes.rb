Rails.application.routes.draw do
  resources :books
  get '/' => 'homes#top'
  get 'books'=>'books#index'
  get 'books/:id' => 'books#show'
end

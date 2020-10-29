Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html 
  
  get '/', to: 'application#home'
  get '/credits', to: 'application#credits'
  get '/candies', to: 'candies#index'
  get '/candies/new', to: 'candies#new'
  post 'candies', to: 'candies#create'
  get 'candies/sort', to: 'candies#sort_by', as: 'sort'
  get '/candies/:id', to: 'candies#show', as: 'candy'
  
end

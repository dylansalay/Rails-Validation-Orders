Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/account_get' => 'account#new'
  post '/account_post' => 'account#create'
  
  get '/order_get' => 'order#new'
  post '/order_post' => 'order#create'

end

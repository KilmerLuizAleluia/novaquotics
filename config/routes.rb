Rails.application.routes.draw do

  resources :quotes
  root 'quotes#index'

  get 'novaquote' => 'quotes#novaquote'

end

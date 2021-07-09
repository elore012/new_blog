Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'myexperiences#index'
  get '/myexperiences' => 'myexperiences#index', as:'view'
  get '/myexperiences/new' => 'myexperiences#new', as:'get_form'
  post '/myexperiences' => 'myexperiences#create', as: 'create'
  get '/myexperiences/:id' => 'myexperiences#show',as:'show'
  get '/myexperiences/:id/edit' => 'myexperiences#edit', as:'edit'
  delete '/myexperiences/:id' => 'myexperiences#destroy', as: 'destroy'
  post '/myexperiences/:id/edit' => 'myexperiences#update', as:'update'
   
end

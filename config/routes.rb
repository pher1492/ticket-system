Rails.application.routes.draw do
  
  #resource :tickets

  root 'tickets#list'

  get 'tickets/list'
  get 'tickets/new'
  post 'tickets/create'
  patch 'tickets/update'
  get 'tickets/list'
  get 'tickets/show'
  get 'tickets/edit'
  get 'tickets/update'
  get 'tickets/delete'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

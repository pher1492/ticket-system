Rails.application.routes.draw do

  #need to look into this. use resource instead?  
  resources :tickets do 
  	resources :comments
  end

  root 'tickets#index'

  



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

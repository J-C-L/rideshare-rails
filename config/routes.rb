Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'passengers#index'

resources :passengers

# need all restful routes?
resources :drivers

resources :trips, except: [:index, :new, :create]
post 'trips/:passenger_id', to: 'trips#create', as: 'create_trip'
# able to do this using more restful route? need to pass in new rating
patch 'trips/:id/:rating', to: 'trips#update_rating', as: 'update_rating'

end

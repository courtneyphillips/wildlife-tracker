Rails.application.routes.draw do
  resources :types do
    resources :species
  end

  resources :species do
    resources :sightings
  end
end

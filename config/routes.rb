Rails.application.routes.draw do
  get '/champions', to: "champions#champions"
  get '/items', to: "items#items"
  get '/traits', to: "traits#traits"
  get 'home/home'
  root "home#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

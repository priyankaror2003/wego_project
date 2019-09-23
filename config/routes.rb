Rails.application.routes.draw do
  resources :car_parkings
  get "/carparks/nearest" => "car_parkings#nearest"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

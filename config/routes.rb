Rails.application.routes.draw do
  get '/greetings/random', to: 'messages#random'
  get "up" => "rails/health#show", as: :rails_health_check
end

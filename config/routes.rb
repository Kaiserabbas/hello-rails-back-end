Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'greetings/random'
    end
  end
  root 'api/v1/greetings#random'
end

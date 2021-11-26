Rails.application.routes.draw do
  root 'home#index'
  get 'home/team'
  post 'home/team' => 'home#team'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

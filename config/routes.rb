Rails.application.routes.draw do
  root "top#index"
  resources :incomes
  resources :cost
end

Rails.application.routes.draw do
  root "top#index"
  resources :incomes
  resources :costs
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get '/companies', to: 'pages#companies_index', as: :companies
  # get '/companies/:id', to: 'pages#company_show', as: :company
  # get '/dropoffs', to: 'pages#dropoffs_index', as: :dropoffs
  get '/profile', to: 'pages#profile', as: :profile

  resources :companies, only: [:index, :show] do
    resources :coupons, only: [:index], shallow: true
  end

  resources :dropoffs, only: [:index]

  resources :items, only: [:index]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

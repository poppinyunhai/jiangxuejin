School::Application.routes.draw do

  devise_for :users

  root to: "welcome#index"
  resources :joins
  resources :hschools
  resources :mengs
  resources :abouts
  resources :contacts
  resources :dongs
  resources :meets
  resources :guans
  resources :shenqings
  resources :fellowships 
  get "success" => "mengs#success"
  get "successt" => "shenqings#success"
  get "error" => "mengs#error"
  get "errort" => "shenqings#error"
  resources :hschools do
    collection do
      match 'search' => 'hschools#search', via: [:get, :post], as: :search
    end
  end
  namespace :admin do
    root :to => 'meets#index'
    resources :contacts
    resources :joins
    resources :meets
    resources :abouts
    resources :mengs
    resources :lians
    resources :hschools
    resources :fellowships
    resources :shenqings
    resources :essays
    resources :dongs
    resources :guans
  end
end





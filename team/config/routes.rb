Rails.application.routes.draw do
  
  resources :kitaps
  root 'giris#index'


end

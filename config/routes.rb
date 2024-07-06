Rails.application.routes.draw do
 root "fruits#index"
 resources :fruits , only: [:new, :create, :show, :edit, :update, :destroy]
end

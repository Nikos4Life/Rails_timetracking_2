Rails.application.routes.draw do
  root to: 'site#home'
  
  resources :projects, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :entries, only: [:index, :new, :create, :destroy]
  end

end

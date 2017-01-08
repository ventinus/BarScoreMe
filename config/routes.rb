Rails.application.routes.draw do
  devise_for :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/', to: redirect('/players/sign_in')

  resources :players, except: :show

  resources :bouts
end

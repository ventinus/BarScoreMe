Rails.application.routes.draw do
  devise_for :users

  get '/', to: redirect('/bouts')

  resources :players, except: :show

  resources :bouts
end

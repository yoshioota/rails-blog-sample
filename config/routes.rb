Rails.application.routes.draw do

  resources :u, only: [:index, :show] do
    scope module: :u do
      resources :articles, only: [:index, :show]
    end
  end

  get 'home' => 'home#show'
  namespace :home do

    resources :articles do
      member do
        post :publish
        post :draft
      end
    end
    resources :comments

    resource :withdrawals

    namespace :settings do
      resource :profiles
      resource :accounts
      resource :passwords
    end
  end

  devise_for :users,
      controllers: {
        registrations: 'registrations',
        # sessions: 'sessions'
      }

  root 'welcome#index'

end

Flashcards::Application.routes.draw do
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :decks do
    resources :cards, except: :index
  end
  root to: 'high_voltage/pages#show', id: 'home'
end

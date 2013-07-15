Flashcards::Application.routes.draw do
  resources :decks, only: [:show, :new, :create, :destroy, :edit, :update]
  root to: 'decks#index'
end

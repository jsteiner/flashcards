class CardsController < ApplicationController
  def show
    @deck = find_deck
    @card = find_card
  end

  def new
    @deck = find_deck
    @card = @deck.cards.new
  end

  def create
    @deck = find_deck
    @card = @deck.cards.create(params[:card])
    redirect_to @deck
  end

  def edit
    @deck = find_deck
    @card = find_card
  end

  def update
    @deck = find_deck
    @card = find_card
    @card.update_attributes(params[:card])
    redirect_to @deck
  end

  def destroy
    @deck = find_deck
    card = find_card
    card.destroy
    redirect_to @deck
  end

  private

  def find_deck
    current_user.decks.find(params[:deck_id])
  end

  def find_card
    @deck.cards.find(params[:id])
  end
end

class DecksController < ApplicationController
  before_filter :authenticate
  respond_to :html, :json

  def index
    @decks = current_user.decks
    respond_with @decks
  end

  def show
    @deck = current_user.decks.where(name: params[:id]).first
    respond_with @deck
  end

  def new
    @deck = current_user.decks.new
  end

  def create
    @deck = current_user.decks.new(params[:deck])
    @deck.save
    redirect_to decks_path
  end

  def edit
    @deck = current_user.decks.find(params[:id])
  end

  def update
    @deck = current_user.decks.find(params[:id])
    @deck.update_attributes(params[:deck])
    redirect_to deck_path(@deck)
  end

  def destroy
    @deck = current_user.decks.find(params[:id])
    @deck.destroy
    redirect_to decks_path
  end
end

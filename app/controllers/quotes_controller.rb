class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  def novaquote
    byebug
    @quotes = Quote.all
    text = params[:text]
  end

end

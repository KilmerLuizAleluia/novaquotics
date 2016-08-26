class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  def novaquote
    byebug
    @quotes = Quote.all

    @quote = Quote.new(content: params[:text], userSender: params[:user_name])
    @quote.save();
  end

  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.all
  end

end

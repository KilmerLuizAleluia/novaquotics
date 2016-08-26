class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  def novaquote
    byebug
    @quotes = Quote.all

    a = "foobar"
    a.slice! "foo"
    => "foo"
    a
    => "bar"

    username = params[:text].slice! "by @"
    params[:text].slice! "by @"


    @quote = Quote.new(content: params[:text], userSender: username )0
    @quote.save();
  end

  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.all
  end

end

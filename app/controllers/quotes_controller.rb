class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  def novaquote
    byebug

    parametros = params[:text].partition('by @')
    content = parametros[0]
    myth = parametros[2]

    @quote = Quote.new(content: content, userSender: params[:username], myth: myth, quoteDate: Date.today.to_s)
    @quote.save();
  end

  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.all
  end

end

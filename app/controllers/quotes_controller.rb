class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  def novaquote
    byebug

    parametros = params[:text].partition('by @')
    content = parametros[0]
    myth = parametros[2]

    @quote = Quote.new(content: content, userSender: params[:user_name], myth: myth, quoteDate: Time.now.strftime("%d/%m/%Y"))
    @quote.save();
  end

  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.order('id DESC').all
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_params
      params.require(:quote).permit(:content, :userSender, :myth, :quoteDate)
    end
end

class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_a92abbc881ff4eb49fe50f368567f100')
    if params[:ticker] == ''
      @nothing = 'Please enter a symbol'
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
# not working!!
      if !@stock
        @error = 'Please enter a valid symbol'
      end
    end
  end
  def about
  end
end

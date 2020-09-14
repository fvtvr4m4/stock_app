class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_a92abbc881ff4eb49fe50f368567f100')
  end
  def about
  end
end

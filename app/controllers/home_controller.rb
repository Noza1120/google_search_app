class HomeController < ApplicationController
  def index
  end

  def search
    @query = params[:query]
    # Custom Search JSON APIの呼び出し
    request = WebApi::GoogleSearch::ApiRequest.build(@query)
    @items = WebApi::GoogleSearch::ApiClient.send(request)
  end
end

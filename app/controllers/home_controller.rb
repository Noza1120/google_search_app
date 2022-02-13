class HomeController < ApplicationController
  def index
  end

  def search
    @query = query_params
    # Custom Search JSON APIの呼び出し
    request = WebApi::GoogleSearch::ApiRequest.build(@query)
    @items = WebApi::GoogleSearch::ApiClient.send(request)
  end

  private

  def query_params
    if params[:query] == ""
      redirect_to root_path 
    else
      params[:query]
    end
  end
end
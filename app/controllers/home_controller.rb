class HomeController < ApplicationController
  def index
  end

  def search
    @query = params[:query]
    # 検索取得結果は一旦スタブとする
    @items = [
                  {  :title => "テスト1", :link => "https://test1.com" },
                  {  :title => "テスト2", :link => "https://test2.com"}
                ] 
  end
end

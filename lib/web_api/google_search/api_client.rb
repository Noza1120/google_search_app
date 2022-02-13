require 'google/apis/customsearch_v1'

module WebApi::GoogleSearch
  class ApiClient
    API_KEY = ENV['API_KEY']
    CSE_ID  = ENV['CSE_ID']

    def self.send(request)
      # gem google-api-client
      customsearch = Google::Apis::CustomsearchV1::CustomSearchAPIService.new
      # APIキーを設定
      customsearch.key = API_KEY
      # リクエストに検索エンジンIDを含める
      request[:cx] = CSE_ID

      begin
        # 検索結果の取得
        response = customsearch.list_cses(request)
        items = response.items
        items.map {|item| { title: item.title, link: item.link} }                       
      rescue Google::Apis::ServerError
        raise "Web API Server Error"
      rescue Google::Apis::ClientError
        raise "Web API Client Error"
      rescue Google::Apis::AuthorizationError
        raise "Web API Autorization Error"
      end
    end
  end
end
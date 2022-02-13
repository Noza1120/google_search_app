module WebApi::GoogleSearch
  class ApiRequest
    def self.build(query, start = nil)
      {               
        q:     query,
        start: start
      }             
    end
  end
end
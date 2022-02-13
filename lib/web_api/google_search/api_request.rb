module WebApi::GoogleSearch
  class ApiRequest
    def self.build(query, start = 1)
      {               
        q:     query,
        start: start
      }             
    end
  end
end
class OxfordService

  attr_reader :conn


  def map_json(word)
    if parse_json(word) == false
      return false
    else
      parse_json(word).map do |raw|
        Input.new(raw)
      end
    end
  end


  private

    def initialize
      @conn = Faraday.new(url: "https://od-api.oxforddictionaries.com/api/v1") do |faraday|
        faraday.adapter                         Faraday.default_adapter
        faraday.headers['app_id']             = ENV["app_id"]
        faraday.headers["app_key"]            = ENV["app_key"]
      end
    end

    def get_json(word)
      @conn.get("inflections/en/#{word}")
    end

    def parse_json(word)
      if get_json(word).status == 404
        false
      else
        JSON.parse(get_json(word).body, symbolize_names: true)[:results].first[:lexicalEntries]
      end
    end



end

class OxfordService


  def get_json(word)
    @conn.get("inflections/en/#{word}")
  end

  private

  attr_reader :conn

    def initialize
      @conn = Faraday.new(url: "https://od-api.oxforddictionaries.com/api/v1") do |faraday|
        faraday.adapter                         Faraday.default_adapter
        faraday.headers['app_id']             = ENV["app_id"]
        faraday.headers["app_key"]            = ENV["app_key"]
      end
    end

end

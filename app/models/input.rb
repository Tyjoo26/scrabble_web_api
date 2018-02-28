class Input

  attr_reader :word, :root

  def initialize(attrs={})
    @word = attrs[:text]
    @root = attrs[:inflectionOf][0][:text]
  end

  def self.parse_json(word)
    if OxfordService.new.get_json(word).status == 404
      false
    else
      JSON.parse(OxfordService.new.get_json(word).body, symbolize_names: true)[:results].first[:lexicalEntries]
    end
  end

  def self.map_json(word)
    if parse_json(word) == false
      return false
    else
      parse_json(word).map do |raw|
        Input.new(raw)
      end
    end
  end

  def self.grab_input(word)
    if map_json(word) == false
      return false
    else
      map_json(word).first
    end
  end


end

class Input

  attr_reader :word, :root

  def initialize(attrs={})
    @word = attrs[:text]
    @root = attrs[:inflectionOf][0][:text]
  end

  def self.map_input(word)
    call_oxford_service.map_json(word).first
  end

  private

    def self.call_oxford_service
      OxfordService.new
    end
end

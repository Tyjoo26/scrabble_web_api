class Input

  attr_reader :word, :root
  
  def initialize(attrs={})
    @word = attrs[:text]
    @root = attrs[:inflectionOf][0][:text]
  end


end

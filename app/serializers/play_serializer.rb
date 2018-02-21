class PlaySerializer < ActiveModel::Serializer
  attributes :user_id, :score

  belongs_to :user

  def score
    binding.pry
  end
end

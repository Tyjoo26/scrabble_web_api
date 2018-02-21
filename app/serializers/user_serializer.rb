class UserSerializer < ActiveModel::Serializer
  attributes :id , :score


  def score
    binding.pry
  end
end

class UserSerializer < ActiveModel::Serializer
  attributes :id , :score


  def user_id
    object.id
  end

  
  def score
    object.plays.sum(:score)
  end
end

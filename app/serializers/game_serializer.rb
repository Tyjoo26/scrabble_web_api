class GameSerializer < ActiveModel::Serializer
  attributes :game_id

  belongs_to :player_1, class_name: "User", foreign_key: :player_1_id, :key => :scores
  belongs_to :player_2, class_name: "User", foreign_key: :player_2_id, :key => ""



  def game_id
    object.id
  end





end

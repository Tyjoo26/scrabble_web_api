describe "API V1 Controller Request spec" do
  context "HTTP VERB REQUESTS" do
    scenario "when i send a get request to a specific game show page i get a valid json response" do
      player_1 = create(:user)
      player_2 = create(:user)
      game = Game.create(player_1_id: player_1.id, player_2_id: player_2.id)

      get "/api/v1/games/#{game.id}"

      expect(response).to be_success

      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:game_id]).to eq(game.id)
    end


    scenario "when i send a POST request to a specific game show page i get a valid json response" do
      player_1 = create(:user)
      player_2 = create(:user)
      game = Game.create(id: 1, player_1_id: player_1.id, player_2_id: player_2.id)

      post "/api/v1/games/#{game.id}/plays", params: {:user_id => player_1.id, :game_id =>1, :word => "at" }

      expect(response).to be_success

      parsed_response = JSON.parse(response.body, symbolize_names: true)
      plays = Play.last

      expect(parsed_response[:score]).to eq(plays.score)
      
    end
  end
end

json.array!(@players) do |player|
  json.extract! player, :id, :last, :first, :postion, :phone, :email
  json.url player_url(player, format: :json)
end

json.array!(@votes) do |vote|
  json.extract! vote, :id, :user_id, :movie_id, :value
  json.url vote_url(vote, format: :json)
end

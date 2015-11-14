json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :year, :genre_id, :description
  json.url movie_url(movie, format: :json)
end

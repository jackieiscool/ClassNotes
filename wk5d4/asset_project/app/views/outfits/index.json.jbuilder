json.array!(@outfits) do |outfit|
  json.extract! outfit, 
  json.url outfit_url(outfit, format: :json)
end

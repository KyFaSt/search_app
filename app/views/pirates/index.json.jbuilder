json.array!(@pirates) do |pirate|
  json.extract! pirate, :id, :name, :ship, :description
  json.url pirate_url(pirate, format: :json)
end

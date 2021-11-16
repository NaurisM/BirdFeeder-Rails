json.extract! observation, :id, :season, :name, :max_number, :notes, :created_at, :updated_at
json.url observation_url(observation, format: :json)

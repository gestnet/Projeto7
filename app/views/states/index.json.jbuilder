json.array!(@states) do |state|
  json.extract! state, :id, :name, :url
  json.url state_url(state, format: :json)
end

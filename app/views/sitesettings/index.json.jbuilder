json.array!(@sitesettings) do |sitesetting|
  json.extract! sitesetting, :id, :meta_key, :meta_value
  json.url sitesetting_url(sitesetting, format: :json)
end

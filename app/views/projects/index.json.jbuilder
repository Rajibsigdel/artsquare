json.array!(@projects) do |project|
  json.extract! project, :id, :title, :slug, :description, :thumbnail, :is_adult, :status
  json.url project_url(project, format: :json)
end

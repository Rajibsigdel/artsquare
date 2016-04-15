json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :details, :image_url
  json.url blog_url(blog, format: :json)
end

json.extract! announcement, :id, :name, :title, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)

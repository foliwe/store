json.extract! search, :id, :keyword, :category_id, :age_ids, :created_at, :updated_at
json.url search_url(search, format: :json)
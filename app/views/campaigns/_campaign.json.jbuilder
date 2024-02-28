json.extract! campaign, :id, :title, :picture, :content, :total, :target, :close_at, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)

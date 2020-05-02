# frozen_string_literal: true

json.extract! article, :id, :title, :content, :user_id, :created_at, :updated_at
json.url article_url(article, format: :json)

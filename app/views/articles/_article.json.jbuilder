json.extract! article, :id, :title, :authors, :abstract, :doi, :journal, :volume, :issue, :page, :created_at, :updated_at
json.url article_url(article, format: :json)

json.extract! ebook, :id, :title, :author, :description, :published_date, :isbn, :genre, :pages, :created_at, :updated_at
json.url ebook_url(ebook, format: :json)

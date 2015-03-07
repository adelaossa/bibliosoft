json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :description, :publication_date, :isbn, :type_id, :area_id
  json.url book_url(book, format: :json)
end

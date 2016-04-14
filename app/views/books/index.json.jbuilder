json.books @books do |book|
  json.(book, :created_at, :updated_at)

  json.title book.title
  json.year book.year
  json.isbn book.ISBN
  json.description book.description
  json.image book.image

  json.author do
     json.name book.author.name
     json.last_name book.author.last_name
  end

  json.comments book.comments do |comment|
      json.text comment.text
      json.stars comment.stars
  end
end

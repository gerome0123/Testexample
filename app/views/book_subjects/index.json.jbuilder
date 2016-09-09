json.array!(@book_subjects) do |book_subject|
  json.extract! book_subject, :id, :book_id, :subject_id
  json.url book_subject_url(book_subject, format: :json)
end

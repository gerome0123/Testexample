json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :firstname, :lastname
  json.url teacher_url(teacher, format: :json)
end

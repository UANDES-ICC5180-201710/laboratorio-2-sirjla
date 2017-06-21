json.extract! interest, :id, :person, :course, :created_at, :updated_at
json.url interest_url(interest, format: :json)
json.course_count interest.course.interests.count

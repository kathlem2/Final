json.extract! feedback, :id, :presentation_id, :ranking, :comment, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)

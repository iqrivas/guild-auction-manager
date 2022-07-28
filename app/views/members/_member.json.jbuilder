json.extract! member, :id, :username, :rank, :email, :status, :created_at, :updated_at
json.url member_url(member, format: :json)

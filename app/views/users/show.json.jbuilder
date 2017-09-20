json.user do
  json.name @user.name
  json.email @user.email
  json.birth_date @user.birth_date
  json.attending @participants do |participant|
    json.title participant.event.title
    json.link event_path(participant.event)
  end
end

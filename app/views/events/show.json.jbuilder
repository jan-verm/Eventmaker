json.event do
  json.title @event.title
  json.description @event.description
  json.start @event.start
  json.end @event.end
  json.users @event.users do |user|
    json.name user.name
    json.link user_path(user)
  end
  json.comments @event.comments do |comment|
    json.id comment.id
    json.text comment.text
    json.user_id comment.user_id
    json.date comment.date
  end
  json.related do
    json.events_index_link events_path
  end
end

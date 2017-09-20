json.events @events do |event|
  json.title event.title
  json.description event.description
  json.link event_path(event)
end
json.related do
  json.welcome_index_link root_path
end

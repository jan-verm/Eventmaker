json.users @users do |user|
  json.name user.name
  json.email user.email
  json.link user_path(user)
end
json.related do
  json.welcome_index_link root_path
end

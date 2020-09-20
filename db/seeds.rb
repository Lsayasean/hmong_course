# frozen_string_literal: true

Team.create!(
  name: "unassigned"
)

5.times do |n| 
  Team.create!(
  name: "team_#{n}"
  )
end 



7.times do |n|
  User.create(
    email: "admin#{n}@admin.com",
    password: "password",
    first_name: "admin#{n}",
    last_name: "admin",
    team_id: n
  )
end
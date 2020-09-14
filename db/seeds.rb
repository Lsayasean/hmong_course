# frozen_string_literal: true

User.create(
  email: "admin@admin.com",
  password: "password",
  first_name: "admin",
  last_name: "admin",
)

5.times do |n| 
  Team.create!(
  name: "team_#{n + 1}"
  )
end 
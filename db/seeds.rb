# frozen_string_literal: true

Team.create!(
  name: "unassigned"
)

5.times do |n| 
  Team.create!(
  name: "team_#{n}"
  )
end 


User.create(
  email: "adminofadmins@admin.com",
  password: "adminofadmin",
  first_name: "Ultra",
  last_name: "Admin",
  team_id: 1
)
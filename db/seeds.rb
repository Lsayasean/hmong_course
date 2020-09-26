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
  email: "hmongteacher@hmong.com",
  password: "hmongteacher",
  first_name: "Teacher",
  last_name: "Admin",
  team_id: 1
)
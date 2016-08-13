@user = User.create email: 'test@test.com', password: 'password', password_confirmation: 'password', first_name: 'Shawn', last_name: 'Kearney'

puts '1 user created'

AdminUser.create email: 'admin@test.com', password: 'password', password_confirmation: 'password', first_name: 'Admin', last_name: 'User'

puts '1 admin_user created'

100.times do |post|
  Post.create! date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5
end

puts '100 posts have been created'

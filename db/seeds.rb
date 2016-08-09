@user = User.create email: 'test@test.com', password: 'password', password_confirmation: 'password', first_name: 'Shawn', last_name: 'Kearney'

puts '1 user created'

100.times do |post|
  Post.create! date: Date.today, rationale: "#{post} rationale content", user_id: @user.id
end

puts '100 posts have been created'

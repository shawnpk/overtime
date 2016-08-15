@user = User.create email: 'test@test.com',
                    password: 'password',
                    password_confirmation: 'password',
                    first_name: 'Shawn',
                    last_name: 'Kearney',
                    phone: '3108641460'

puts '1 user created'

AdminUser.create email: 'admin@test.com',
                 password: 'password',
                 password_confirmation: 'password',
                 first_name: 'Admin',
                 last_name: 'User',
                 phone: '3108641460'

puts '1 admin_user created'

100.times do |post|
  Post.create! date: Date.today, rationale: "#{post} rationale content: Duis anim est aute excepteur aliqua culpa pariatur occaecat pariatur occaecat. Quis dolore id reprehenderit aute ipsum esse ut sunt non eiusmod veniam. Sit aute eu voluptate enim ut irure occaecat incididunt id ea voluptate eu consequat eiusmod ex dolore ex.", user_id: @user.id, overtime_request: 2.5
end

puts '100 posts have been created'

AuditLog.create! user_id: @user.id, status: 0, start_date: (Date.today - 6.days)
AuditLog.create! user_id: @user.id, status: 0, start_date: (Date.today - 13.days)
AuditLog.create! user_id: @user.id, status: 0, start_date: (Date.today - 20.days)

puts '100 audit logs have been created'

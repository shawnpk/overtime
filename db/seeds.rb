@employee = Employee.create email: 'test@test.com',
                    password: 'password',
                    password_confirmation: 'password',
                    first_name: 'David',
                    last_name: 'Webb',
                    phone: '3108641460'

puts '1 employee created'

AdminUser.create email: 'admin@test.com',
                 password: 'password',
                 password_confirmation: 'password',
                 first_name: 'Admin',
                 last_name: 'Name',
                 phone: '2134567890'

puts '1 Admin user created'

AuditLog.create! user_id: @employee.id, status: 0, start_date: (Date.today - 6.days)
AuditLog.create! user_id: @employee.id, status: 0, start_date: (Date.today - 13.days)
AuditLog.create! user_id: @employee.id, status: 0, start_date: (Date.today - 20.days)

puts '3 audit logs have been created'

100.times do |post|
  Post.create! date: Date.today, rationale: "#{post} rationale content: Duis anim est aute excepteur aliqua culpa pariatur occaecat pariatur occaecat. Quis dolore id reprehenderit aute ipsum esse ut sunt non eiusmod veniam. Sit aute eu voluptate enim ut irure occaecat incididunt id ea voluptate eu consequat eiusmod ex dolore ex.", user_id: @employee.id, overtime_request: 2.5
end

puts '100 posts have been created'

@employee = Employee.create email: 'test@test.com',
                    password: 'password',
                    password_confirmation: 'password',
                    first_name: 'Tony',
                    last_name: 'Stark',
                    phone: '2028889999'

@employee2 = Employee.create email: 'test2@test.com',
                    password: 'password',
                    password_confirmation: 'password',
                    first_name: 'Bruce',
                    last_name: 'Wayne',
                    phone: '2028889999'

@employee3 = Employee.create email: 'test3@test.com',
                    password: 'password',
                    password_confirmation: 'password',
                    first_name: 'Clark',
                    last_name: 'Kent',
                    phone: '6095557777'

@employee4 = Employee.create email: 'test4@test.com',
                    password: 'password',
                    password_confirmation: 'password',
                    first_name: 'Peter',
                    last_name: 'Parker',
                    phone: '2123334444'

@employee5 = Employee.create email: 'test5@test.com',
                    password: 'password',
                    password_confirmation: 'password',
                    first_name: 'Bruce',
                    last_name: 'Banner',
                    phone: '2130003333'

puts '5 employees created'

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

AuditLog.create! user_id: @employee2.id, status: 0, start_date: (Date.today - 6.days)
AuditLog.create! user_id: @employee2.id, status: 0, start_date: (Date.today - 13.days)
AuditLog.create! user_id: @employee2.id, status: 0, start_date: (Date.today - 20.days)

AuditLog.create! user_id: @employee3.id, status: 0, start_date: (Date.today - 6.days)
AuditLog.create! user_id: @employee3.id, status: 0, start_date: (Date.today - 13.days)
AuditLog.create! user_id: @employee3.id, status: 0, start_date: (Date.today - 20.days)

AuditLog.create! user_id: @employee4.id, status: 0, start_date: (Date.today - 6.days)
AuditLog.create! user_id: @employee4.id, status: 0, start_date: (Date.today - 13.days)
AuditLog.create! user_id: @employee4.id, status: 0, start_date: (Date.today - 20.days)

AuditLog.create! user_id: @employee5.id, status: 0, start_date: (Date.today - 6.days)
AuditLog.create! user_id: @employee5.id, status: 0, start_date: (Date.today - 13.days)
AuditLog.create! user_id: @employee5.id, status: 0, start_date: (Date.today - 20.days)

puts '15 audit logs have been created'

20.times do |post|
  Post.create! date: Date.today, rationale: "#{post} rationale content: Duis anim est aute excepteur aliqua culpa pariatur occaecat pariatur occaecat. Quis dolore id reprehenderit aute ipsum esse ut sunt non eiusmod veniam. Sit aute eu voluptate enim ut irure occaecat incididunt id ea voluptate eu consequat eiusmod ex dolore ex.", user_id: @employee.id, overtime_request: 2.5
end

20.times do |post|
  Post.create! date: Date.today, rationale: "#{post} rationale content: Duis anim est aute excepteur aliqua culpa pariatur occaecat pariatur occaecat. Quis dolore id reprehenderit aute ipsum esse ut sunt non eiusmod veniam. Sit aute eu voluptate enim ut irure occaecat incididunt id ea voluptate eu consequat eiusmod ex dolore ex.", user_id: @employee2.id, overtime_request: 2.5
end

20.times do |post|
  Post.create! date: Date.today, rationale: "#{post} rationale content: Duis anim est aute excepteur aliqua culpa pariatur occaecat pariatur occaecat. Quis dolore id reprehenderit aute ipsum esse ut sunt non eiusmod veniam. Sit aute eu voluptate enim ut irure occaecat incididunt id ea voluptate eu consequat eiusmod ex dolore ex.", user_id: @employee3.id, overtime_request: 2.5
end

20.times do |post|
  Post.create! date: Date.today, rationale: "#{post} rationale content: Duis anim est aute excepteur aliqua culpa pariatur occaecat pariatur occaecat. Quis dolore id reprehenderit aute ipsum esse ut sunt non eiusmod veniam. Sit aute eu voluptate enim ut irure occaecat incididunt id ea voluptate eu consequat eiusmod ex dolore ex.", user_id: @employee4.id, overtime_request: 2.5
end

20.times do |post|
  Post.create! date: Date.today, rationale: "#{post} rationale content: Duis anim est aute excepteur aliqua culpa pariatur occaecat pariatur occaecat. Quis dolore id reprehenderit aute ipsum esse ut sunt non eiusmod veniam. Sit aute eu voluptate enim ut irure occaecat incididunt id ea voluptate eu consequat eiusmod ex dolore ex.", user_id: @employee5.id, overtime_request: 2.5
end

puts '100 posts have been created'

if Rails.env.development?
  User.create(
    first_name: 'Spencer',
    last_name: 'Dixon',
    email: 'test@test.com',
    password: 'test1234',
    password_confirmation: 'test1234',
  )
end

puts 'Create User'

5.times do
  user = FactoryGirl.create(:user)
end

puts 'Finished create users'
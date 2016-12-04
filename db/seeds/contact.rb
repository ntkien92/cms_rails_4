puts 'Create contact'

15.times do
  FactoryGirl.create(:contact)
end

puts 'Finished create contact'
puts 'Create Quote'

30.times do
  FactoryGirl.create(:quote)
end

puts 'Finished create quote'
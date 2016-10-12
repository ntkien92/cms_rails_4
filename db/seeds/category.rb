puts 'Create category'
name_category = ['Ruby', 'Ruby on Rails', 'Life']
name_category.each do |name|
  category = Category.create(name: name, show_menu: '0')
  category.update(user_id: 1)
  puts category.name
end

puts 'Finished create categories'
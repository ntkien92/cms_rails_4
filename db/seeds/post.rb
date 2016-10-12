puts 'Create Post'

category_ids = Category.all.map {|category| category.id}
images = ['http://c6.staticflickr.com/2/1459/24147001005_8da60f83a5_z.jpg',
          'http://c6.staticflickr.com/6/5764/24064383861_1391883493_b.jpg',
          'http://c7.staticflickr.com/2/1578/24038907022_ef6f47f9e6_z.jpg']
30.times do
  post = FactoryGirl.create(:post, category_id: category_ids.sample)
  post.update(user_id: 1, url_image: images[rand(images.size)])
end

puts 'Finished create posts'
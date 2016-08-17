namespace :categories do

	desc "Populate the database books"
	task populate: :environment do
		Category.destroy_all
		5.times do
			Category.create!(
			name: Faker::Book.genre,
			)
		end
	end
end
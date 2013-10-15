describe 'reviews' do

	before do
		@restaurant = Restaurant.create(name: 'McDonalds')
	end

	it 'can be added from a restaurants page' do

		visit restaurant_path(@restaurant)


		within '.new_review' do
			fill_in "Review", with: "Great food!"
			choose '5'
			click_button 'Add Review'
			#fill_in "Rating", with: "5"
		end

		expect(page).to have_content 'Great food'
		expect(page).to have_content '5'
	end
end
require 'spec_helper'

describe 'restaurants' do

     def create_restaurant(restaurant_name, restaurant_description)
          Restaurant.create(name: restaurant_name, description: restaurant_description)
     end

     describe 'can be added' do

          it 'should have a name and description' do
               
               visit new_restaurant_path # is the same as writing visit '/restaurants/new'
               
               fill_in 'Name', with: 'Timberyard'
               fill_in 'Description', with: 'A coffee shop on Old St.'
               click_button 'Create Restaurant'
               
               expect(page).to have_content 'A coffee shop on Old St.'
          end
     end



     describe 'the restaurants index page' do

          # context 'when there are no restaurants' do

          #      it 'should display a message saying "No restaurants"' do
          #      end

          # end

          it 'should show a list of restaurants and a description for each' do
               # setting up our test
               create_restaurant('Timberyard', 'A coffee shop on Old St.')
               
               visit '/restaurants'
               expect(page).to have_content 'Timberyard'
               expect(page).to have_content 'A coffee shop on Old St.'
          end   
     end
end
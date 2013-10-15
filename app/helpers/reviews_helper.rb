module ReviewsHelper

	def stars_for_rating(rating)
	stars = " "
	rating.times do 
		stars << image_tag('https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS2wtnUBj9EjZ5ITfdpF-URESuG-aBkP-0_bT6cW0qPTCkvYWoE', size: '20x20')
	end
	#insert below to tell program the image is from a safe source or may not work
	stars.html_safe
	end
end


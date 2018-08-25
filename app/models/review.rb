class Review < ApplicationRecord
	belongs_to :user
	belongs_to :restaurant

	validates :rating, :comment, presence: true

	#http://guides.rubyonrails.org/active_record_validations.html
	#2.8 numericalityを参考にvalidation
	validates :rating, numericality:{
		only_integer: true,
		greater_than_or_equal_to: 1,
		less_than_or_equal_to: 5,
		message: "This should be a number between 1 to 5"
	}

end

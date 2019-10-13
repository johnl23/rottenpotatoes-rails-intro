class Movie < ActiveRecord::Base
	@@all_ratings = ['G','PG','PG-13','R']
	mattr_accessor :all_ratings

	def self.with_ratings(rating_params)
		if rating_params
			upper = rating_params.keys.map { |rating| rating.upcase}
			lower = rating_params.keys.map { |rating| rating.downcase}
			Movie.where({rating: upper + lower})
		else
			Movie.all
		end
	end
end

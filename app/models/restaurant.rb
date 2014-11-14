class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :customers, through: :reservations

	def available?(date, time, size)
		occupied = reservations.where(:date => date, :time => time, :size => size).sum(:size)
		# occupied = reservations.all.sum(:size)
		size <= (capacity - occupied)
		# puts occupied
	end
end

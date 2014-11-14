require 'rails_helper'

RSpec.describe Restaurant, :type => :model do
	describe "#available?" do	
		let(:restaurant) {Restaurant.create(name: "Test Rest", capacity: 100)}

	    it "should return true if there's space available" do
	      expect(restaurant.available?('2014-11-21', 12, 8)).to be(true)
	    end

	    it "should return false if there's no space available" do
	      expect(restaurant.available?('2014-11-21', 12, 101)).to be(false)
	    end

	    it "should return true if there's exactly the capacity of the restaurant" do
	      expect(restaurant.available?('2014-11-21', 12, 100)).to be(true)
	    end

	    context "with one existing reservation" do
	      let!(:reservation) { Reservation.create(:date => '2014-11-21', :restaurant => restaurant, :time => 12, :size => 10)}

	      it "should return true if there's space available" do
	        expect(restaurant.available?('2014-11-21', 12, 10)).to be(true)
	      end


	      it "should return false if there's no space available" do
	        expect(restaurant.available?('2014-11-21', 12, 91)).to be(false)
	      end

	    #   it "should return true if the reservation is for a different time" do
	    #     expect(restaurant.available?(99, start_time + 1.hour)).to be(true)
	    end
	end
end
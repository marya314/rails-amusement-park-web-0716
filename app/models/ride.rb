require 'pry'
class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction



  def take_ride
      if (self.user.tickets < self.attraction.tickets) && (self.user.height < self.attraction.min_height)
          "Sorry. You do not have enough tickets the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
      else
          if self.user.tickets < self.attraction.tickets
              "Sorry. You do not have enough tickets the #{self.attraction.name}."
          elsif
              self.user.height < self.attraction.min_height
          "Sorry. You are not tall enough to ride the #{self.attraction.name}."
          else
              self.user.tickets -= attraction.tickets
              self.user.nausea += attraction.nausea_rating
              self.user.happiness += attraction.happiness_rating
              self.user.save

          end

     end
  end
end

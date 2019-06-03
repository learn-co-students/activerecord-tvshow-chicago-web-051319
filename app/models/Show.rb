require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum('rating')
  end

  def self.most_popular_show
    Show.all.select {|show| show.rating == self.highest_rating}[0]
  end

  def self.lowest_rating
    self.minimum('rating')
  end

  def self.least_popular_show
    Show.all.select {|show| show.rating == self.lowest_rating}[0]
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order("name")
  end

end

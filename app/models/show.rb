class Show < ActiveRecord::Base
    def self.highest_rating
        #maximum
        self.maximum('rating')
    end
    
    def self.most_popular_show
        self.where("rating = ?", self.highest_rating).first
    end
    
    def self.lowest_rating
        self.minimum('rating')
    end
    
    def self.least_popular_show
        #use lowest_rating as a helper!
        self.where("rating = ?", self.lowest_rating).first
    end
    
    def self.ratings_sum
        self.sum('rating')
    end
    
    def self.popular_shows
        #use where
        self.where("rating > 5")
    end
    
    def self.shows_by_alphabetical_order
        #use order
        self.order('name')
    end
end
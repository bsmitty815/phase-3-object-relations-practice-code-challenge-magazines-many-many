
require "pry"

class Reader < ActiveRecord::Base

    has_many :subscriptions
    has_many :magazines, through: :subscriptions

    #Object Relationship Methods are instance methods
    #aggregate and association methods are class methods


    def subscribe(magazine, price)
        #takes a magazine (an instance of the Magazine class) and a price (integer) as
        #arguments, and creates a new subscription in the database associated with the magazine and the reader
        Subscription.create(price: price, magazine_id: magazine.id, reader_id: self.id)

    end

    def total_subscription_price
        #returns the total price for all the reader's subscriptions
        self.subscriptions.sum {|p| p.price}
    end

    def cancel_subscription(magazine)
        #takes a magazine instance and removes the subscription for this reader
        #you will have to delete a row from the subscriptions table to get this to work!
        my_mags = self.subscriptions
        my_mags.where(magazine_id: magazine.id).destroy_all
    end

end


# p = Reader.new
# p.subscribe("a", "b")
# if there are arguments you have to put in arguments when entering into the pry

# read = Reader.first
# mag = read.subscriptions.first
# first.cancel_subscription(mag)


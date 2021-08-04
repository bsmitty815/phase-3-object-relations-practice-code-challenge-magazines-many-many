require "pry"

class Magazine < ActiveRecord::Base

    has_many :subscriptions
    has_many :readers, through: :subscriptions


    #Object Relationship Methods are instance methods
    #aggregate and association methods are class methods

    def email_list
        #returns a String of a semi-colon separated list of emails for all the readers subscribed to this magazine
        #the string should be formatted like this: email1@example.com;email2@example.com;email3@example.com
        self.readers.map {|r| r.email}.join(";")
    end


    def self.most_popular
        binding.pry
        mag = Magazine.all
        mag.max {|a, b| a.subscriptions.length <=> b.subscriptions.length}

    end

    
end

# pry
#create new magazine to variable
#call variable on method

# a = Magazine.first
# a.email_list
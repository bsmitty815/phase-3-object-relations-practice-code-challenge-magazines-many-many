require 'pry'

class Subscription < ActiveRecord::Base

    belongs_to :magazine
    belongs_to :reader
    
    #Object Relationship Methods are instance methods
    #aggregate and association methods are class methods


    def print_details
        #puts a string to the terminal to display the details of the subscription
        #the string should be formatted like this: {reader name} subscribed to {magazine title} for ${subscription price}
        reader = self.reader.name
        title = self.magazine.title
        price = self.price
        puts "#{reader} subscribed to #{title} for $#{price}"
    end
  
  
end

# how to run a method in the console
# set an instance to a variable
# then call it on the method

# ClassModel.first will get you the first instance in that database
# ClassModel.all.sample will get you a random one

# sub = Subscription.first
# sub.print_details


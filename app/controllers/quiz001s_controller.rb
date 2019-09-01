class Quiz001sController < ApplicationController
  def index
    @quiztab = Quiztab.first
  end
end

  class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
   
    def initialize
        @suits = ["Spades","Hearts","Diamonds","Clubs"]  
        @ranks = [1,2,3,4,5,6,7,8,9,10,11,12,13]
        @cards = []
        @suits.each do |suit|
            @ranks.each do |rank|
                @cards << Card.new(rank, suit)
            end
         end   
         @cards.shuffle!
         deck = Deck.new
    end
    
    def deal
        @cards.shift.output_card
    end
        
end





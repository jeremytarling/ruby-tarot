#!/usr/bin/ruby

@deck = ["The Fool", "The Magician", "The High Priestess", "The Empress", "The Emperor", "The Hierophant", "The Lovers", "The Chariot", "Strength", "The Hermit", "The Wheel of Fortune", "Justice", "The Hanged Man", "Death", "Temperance", "The Devil", "The Blasted Tower", "The Star", "The Moon", "The Sun", "Judgement", "The World", "Ace of Wands", "Two of Wands", "Three of Wands", "Four of Wands", "Five of Wands", "Six of Wands", "Seven of Wands", "Eight of Wands", "Nine of Wands", "Ten of Wands", "Page of Wands", "Knight of Wands", "Queen of Wands", "King of Wands", "Ace of Cups", "Two of Cups", "Three of Cups", "Four of Cups", "Five of Cups", "Six of Cups", "Seven of Cups", "Eight of Cups", "Nine of Cups", "Ten of Cups", "Page of Cups", "Knight of Cups", "Queen of Cups", "King of Cups", "Ace of Swords", "Two of Swords", "Three of Swords", "Four of Swords", "Five of Swords", "Six of Swords", "Seven of Swords", "Eight of Swords", "Nine of Swords", "Ten of Swords", "Page of Swords", "Knight of Swords", "Queen of Swords", "King of Swords", "Ace of Disks", "Two of Disks", "Three of Disks", "Four of Disks", "Five of Disks", "Six of Disks", "Seven of Disks", "Eight of Disks", "Nine of Disks", "Ten of Disks", "Page of Disks", "Knight of Disks", "Queen of Disks", "King of Disks"]

def getQuestion
  puts "type your question:"
  @question = gets
end

def getKeys
  # slice! so we don't get the same card twice
  @past = @deck.slice!(rand(78))
  @present = @deck.slice!(rand(77))
  @future = @deck.slice!(rand(76))
end

def giveAnswer
  puts "here are the cards realted to the question: #{@question}"
  puts " in the past:     #{@past}"
  puts " in the present:  #{@present}"
  puts " in the future:   #{@future}"
end

getQuestion
getKeys
giveAnswer


#!/usr/bin/ruby

require 'rubygems'
require 'sinatra'

before do
@deck = [
{ :name => "The Fool", :image => "images/00.jpg" },
{ :name => "The Magician", :image => "images/01.jpg" },
{ :name => "The High Priestess", :image => "images/02.jpg" },
{ :name => "The Empress", :image => "images/03.jpg" },
{ :name => "The Emperor", :image => "images/04.jpg" },
{ :name => "The Hierophant", :image => "images/05.jpg" },
{ :name => "The Lovers", :image => "images/06.jpg" },
{ :name => "The Chariot", :image => "images/07.jpg" },
{ :name => "Strength", :image => "images/08.jpg" },
{ :name => "The Hermit", :image => "images/09.jpg" },
{ :name => "The Wheel of Fortune", :image => "images/10.jpg" },
{ :name => "Justice", :image => "images/11.jpg" },
{ :name => "The Hanged Man", :image => "images/12.jpg" },
{ :name => "Death", :image => "images/13.jpg" },
{ :name => "Temperance", :image => "images/14.jpg" },
{ :name => "The Devil", :image => "images/15.jpg" },
{ :name => "The Blasted Tower", :image => "images/16.jpg" },
{ :name => "The Star", :image => "images/17.jpg" },
{ :name => "The Moon", :image => "images/18.jpg" },
{ :name => "The Sun", :image => "images/19.jpg" },
{ :name => "Judgement", :image => "images/20.jpg" },
{ :name => "The World", :image => "images/21.jpg" },
{ :name => "Ace of Wands", :image => "images/wa01.jpg" },
{ :name => "Two of Wands", :image => "images/wa02.jpg" },
{ :name => "Three of Wands", :image => "images/wa03.jpg" },
{ :name => "Four of Wands", :image => "images/wa04.jpg" },
{ :name => "Five of Wands", :image => "images/wa05.jpg" },
{ :name => "Six of Wands", :image => "images/wa06.jpg" },
{ :name => "Seven of Wands", :image => "images/wa07.jpg" },
{ :name => "Eight of Wands", :image => "images/wa08.jpg" },
{ :name => "Nine of Wands", :image => "images/wa09.jpg" },
{ :name => "Ten of Wands", :image => "images/wa10.jpg" },
{ :name => "Page of Wands", :image => "images/wapa.jpg" },
{ :name => "Knight of Wands", :image => "images/wakn.jpg" },
{ :name => "Queen of Wands", :image => "images/waqu.jpg" },
{ :name => "King of Wands", :image => "images/waki.jpg" },
{ :name => "Ace of Cups", :image => "images/cu01.jpg" },
{ :name => "Two of Cups", :image => "images/cu02.jpg" },
{ :name => "Three of Cups", :image => "images/cu03.jpg" },
{ :name => "Four of Cups", :image => "images/cu04.jpg" },
{ :name => "Five of Cups", :image => "images/cu05.jpg" },
{ :name => "Six of Cups", :image => "images/cu06.jpg" },
{ :name => "Seven of Cups", :image => "images/cu07.jpg" },
{ :name => "Eight of Cups", :image => "images/cu08.jpg" },
{ :name => "Nine of Cups", :image => "images/cu09.jpg" },
{ :name => "Ten of Cups", :image => "images/cu10.jpg" },
{ :name => "Page of Cups", :image => "images/cupa.jpg" },
{ :name => "Knight of Cups", :image => "images/cukn.jpg" },
{ :name => "Queen of Cups", :image => "images/cuqu.jpg" },
{ :name => "King of Cups", :image => "images/cuki.jpg" },
{ :name => "Ace of Swords", :image => "images/sw01.jpg" },
{ :name => "Two of Swords", :image => "images/sw02.jpg" },
{ :name => "Three of Swords", :image => "images/sw03.jpg" },
{ :name => "Four of Swords", :image => "images/sw04.jpg" },
{ :name => "Five of Swords", :image => "images/sw05.jpg" },
{ :name => "Six of Swords", :image => "images/sw06.jpg" },
{ :name => "Seven of Swords", :image => "images/sw07.jpg" },
{ :name => "Eight of Swords", :image => "images/sw08.jpg" },
{ :name => "Nine of Swords", :image => "images/sw09.jpg" },
{ :name => "Ten of Swords", :image => "images/sw10.jpg" },
{ :name => "Page of Swords", :image => "images/swpa.jpg" },
{ :name => "Knight of Swords", :image => "images/swkn.jpg" },
{ :name => "Queen of Swords", :image => "images/swqu.jpg" },
{ :name => "King of Swords", :image => "images/swki.jpg" },
{ :name => "Ace of Pentacles", :image => "images/pe01.jpg" },
{ :name => "Two of Pentacles", :image => "images/pe02.jpg" },
{ :name => "Three of Pentacles", :image => "images/pe03.jpg" },
{ :name => "Four of Pentacles", :image => "images/pe04.jpg" },
{ :name => "Five of Pentacles", :image => "images/pe05.jpg" },
{ :name => "Six of Pentacles", :image => "images/pe06.jpg" },
{ :name => "Seven of Pentacles", :image => "images/pe07.jpg" },
{ :name => "Eight of Pentacles", :image => "images/pe08.jpg" },
{ :name => "Nine of Pentacles", :image => "images/pe09.jpg" },
{ :name => "Ten of Pentacles", :image => "images/pe10.jpg" },
{ :name => "Page of Pentacles", :image => "images/pepa.jpg" },
{ :name => "Knight of Pentacles", :image => "images/pekn.jpg" },
{ :name => "Queen of Pentacles", :image => "images/pequ.jpg" },
{ :name => "King of Pentacles", :image => "images/peki.jpg" },
]
end

get '/' do
  erb %{
	<h1>a ruby tarot card reader</h1>
	<p>pick a random card: <a href="/tarot/card">/tarot/card</a></p>
	<p>pick three cards: <a href="/tarot/three-card">/tarot/three-card</a></p>
	<p>list all cards: <a href="/tarot">/tarot</a></p>
	<p>source code: <a href="https://github.com/jeremytarling/ruby-tarot">https://github.com/jeremytarling/ruby-tarot</a></p>
  }
end


get '/tarot/?' do
  erb %{
    <% @deck.each do |card| %>
    <h1><%= card[:name] %></h1> 
    <img src="<%= card[:image] %>" />
    <% end %>
  }
end

get '/tarot/card/?' do
  @card = @deck[(rand(78))] 
  erb %{
    <h1><%= @card[:name] %></h1> 
    <img src="<%= @card[:image] %>" />
	<p><a href="/tarot/card">get a card</a></p>
	<p><a href="/tarot/three-card">get three cards</a></p>
  }
end

get '/tarot/three-card/?' do
  past = @deck.slice!(rand(78))
  present = @deck.slice!(rand(77))
  future = @deck.slice!(rand(76))
  @spread = [past, present, future]
  erb %{
	<h1>the Three Card spread</h1>
    <% @spread.each do |card| %>
	<div style="display: inline; float:left; padding:11px">
      <h2><%= card[:name] %></h2> 
      <img src="<%= card[:image] %>" />
	</div>
    <% end %>
  }
end

#def getQuestion
#  puts "type your question:"
#  @question = gets
#end

#def giveAnswer
#  puts "here are the cards realted to the question: #{@question}"
#  puts " in the past:     #{@past}"
#  puts " in the present:  #{@present}"
#  puts " in the future:   #{@future}"
#end


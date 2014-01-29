require "pry"
require 'rubygems'
$:.unshift File.expand_path "../lib", File.dirname(__FILE__)

require "idea_card"

puts IdeaCard.draw


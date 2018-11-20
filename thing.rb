#!/usr/bin/env ruby

load "superlatives"
load "nouns"
load "adjectives"

def flip(bias = 0.5)
  return rand < bias
end

adjectives = [
  flip(0.25) ? " #{$adjectives.sample}" : "",
  flip(0.75) ? " #{$adjectives.sample}" : ""
]

puts "The #{$superlatives.sample}#{adjectives[0]} thing since#{adjectives[1]} #{$nouns.sample}."

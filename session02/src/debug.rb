#!/usr/bin/env ruby

require "json"
require_relative "lib/portfolio"

f = File.open("data/portfolio.json", "r").read()
j = JSON.parse(f)
p = Porfolio.new(j)
puts p.inspect

s = p.stocks
puts s.inspect
puts s.class
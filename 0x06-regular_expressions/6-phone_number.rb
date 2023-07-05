#!/usr/bin/env ruby

def match_school(text)
  matches = text.scan(/^\d{10,10}$/)
  if matches.empty?
    puts ""
  else
    puts matches.join
  end
end

match_school(ARGV[0])

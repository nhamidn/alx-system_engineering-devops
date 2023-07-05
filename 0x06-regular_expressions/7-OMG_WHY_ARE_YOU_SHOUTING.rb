#!/usr/bin/env ruby

def match_school(text)
  matches = text.scan(/[A-Z]*/)
  if matches.empty?
    puts ""
  else
    puts matches.join
  end
end

match_school(ARGV[0])

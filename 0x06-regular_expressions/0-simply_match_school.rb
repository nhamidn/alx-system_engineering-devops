#!/usr/bin/env ruby

def match_school(text)
  if text && text.match(/School/)
    puts "School"
  else
    puts ""
  end
end

match_school(ARGV[0])

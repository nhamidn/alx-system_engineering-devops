#!/usr/bin/env ruby

def match_school(text)
  matches = text.scan(/hbt{2,5}n/)
  if matches.empty?
    puts ""
  else
    puts matches.join
  end
end

match_school(ARGV[0])

#!/usr/bin/env ruby

def match_school(text)
  matches = text.scan(/^h.n$/)
  if matches.empty?
    puts ""
  else
    puts matches.join
  end
end

match_school(ARGV[0])

#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'
(1..396).each { |i|
	open("problem/p#{i}.k","w") { |wfile|
		wfile.write "/*\nhttp://projecteuler.net/problem=#{i}\n"
		doc = Nokogiri::HTML(open("http://projecteuler.net/problem=#{i}"))
		wfile.write doc.search("div.problem_content").text.delete("\r")
		wfile.write "*/"
	}
}

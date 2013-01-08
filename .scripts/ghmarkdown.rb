#!/usr/bin/env ruby
require 'rubygems'
require 'github/markdown'
puts GitHub::Markdown.render_gfm File.read(ARGV[0])

# -*- encoding: UTF-8 -*-
task :environment do
  require './app.rb'
end

desc "hello"
task :hello => :environment do
  puts "hello"
end


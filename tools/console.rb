require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

adam = Follower.new("Adam", 41, "Just keep dancing")
kelly = Follower.new("Kelly", 32, "YOLO")
hg = Cult.new("Heaven's Gate", "Los Angeles", 1974, "Look at the comet")
ne = Cult.new("Noah's Friends", "Seattle", 2020, "It can't get worse, can it?")
oath1 = BloodOath.new(adam, hg)
oath2 = BloodOath.new(kelly, hg)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
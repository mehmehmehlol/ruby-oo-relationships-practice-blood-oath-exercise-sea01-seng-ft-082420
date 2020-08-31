class Follower

    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize (name, age, motto)
        @name = name
        @age = age
        @life_motto = motto
        @@all << self
    end

    def self.all
        @@all
    end
end
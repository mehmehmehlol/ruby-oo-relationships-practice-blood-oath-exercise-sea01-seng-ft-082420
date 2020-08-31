class Cult

    attr_accessor :name, :location, :founding_year, :slogan
    @@all = []

    def initialize (name, location, year, slogan)
        @name = name
        @location = location
        @founding_year = year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOath.new(follower, self)
    end

    def cult_population
        BloodOath.all.select {|oath| oath.cult == self}.map {|cult| cult.follower}
    end
end
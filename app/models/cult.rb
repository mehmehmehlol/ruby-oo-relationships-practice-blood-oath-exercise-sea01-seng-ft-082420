class Cult

    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize (name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower)
        BloodOath.new(follower, self)
    end

    def cult_population
        BloodOath.all.select {|oath| oath.cult == self}.count
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find {|cult| cult.name == name}
    end

    def self.find_by_location(location)
        self.all.find {|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        self.all.find {|cult| cult.founding_year == year}
    end

    def average_age
        ages = BloodOath.all.select {|oath| oath.cult == self}.map {|oath| oath.follower.age}
        ages.sum.to_f / ages.count.to_f
    end

    def my_followers_mottos
        BloodOath.all.select {|oath| oath.cult == self}.map {|oath| oath.follower.life_motto}
    end
end
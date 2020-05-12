class Pirate
    attr_accessor :name, :weight, :height
    @@all = []
    def initialize(params)
        # params.each {|k, v| self.send(("#{k}="), v)}
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
        save
    end
    def save
        @@all << self
    end
    def self.all
        @@all
    end
end
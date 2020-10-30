class Performer
   
    @@performers = []
   
    def initialize(args)
      @name = args[:name]
      @role = args[:role]
      @@performers << self
    end
   
    def self.all
      @@performers
    end

end
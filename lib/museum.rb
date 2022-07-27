class Museum

  attr_reader :name,
              :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommended_exhibits = []
    patron.interests.each do |exhibit|
      recommended_exhibits << exhibit
      require "pry"; binding.pry
      
    end
    recommended_exhibits
  end
end

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []


  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @count_fish = 0
    @count_dog = 0
    @count_cat = 0
  end

  def say_species
    return "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def buy_fish(name)
    name = Fish.new(name)
    @pets[:fishes] << name
    @count_fish += 1
  end

  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
    @count_cat += 1
  end

  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name
    @count_dog += 1
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each_pair do |animal, list|
      list.each do |pet|
        pet.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    return "I have #{@count_fish} fish, #{@count_dog} dog(s), and #{@count_cat} cat(s)."
  end


end

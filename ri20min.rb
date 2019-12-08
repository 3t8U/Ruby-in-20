class MegaGreeter
  attr_accessor :names

  #create the object
  def initialize(names = "World")
    @names=names
  end

  #say hi to everybody
  def say_hi
    if @names.nil?
      puts "..."
      elseif @names.respond_to?("each)"
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  #say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      #Join the list elements with commas
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end
end

if _FILE_== $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  #change name to Zeke
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # change the name to an array of names
  mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  #Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end

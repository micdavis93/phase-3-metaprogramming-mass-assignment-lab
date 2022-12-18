# require pry

class Person

  def initialize(attributes=nil)
    if attributes
      attributes.each do |key, value|
        self.class.attr_accessor(key)
        self.send("#{key}=", value)
        # binding.pry
      end
    end
  end

end

# bob_attributes = { name: "Bob", hair_color: "Brown" }

# bob = Person.new(bob_attributes)
# puts bob.name
# puts bob.hair_color
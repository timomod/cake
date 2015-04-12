class Cake

  attr_accessor :filling, :topping, :flavour
  attr_reader:ingredients

   def initialize(ingredients,filling,topping,flavour)
    @ingredients = ingredients
    @filling = filling
    @topping = topping
    @flavour = flavour
    @cake_sliced = false
   end


   def slice(number)
    @cake_sliced = number.to_i
   end

   def purchase(paid = false)
    @paid = paid
   end

   # private

  def serve
    if @paid && @cake_sliced
      "Enjoy your 1/#{@cake_sliced} slice of cake!"
    elsif @paid
      "Enjoy the whole cake!"
    else
      "Sorry, you need to pay for the cake first"
   end
 end

end


baked = Cake.new(["egg" ,"flour", "sugar", "baking powder", "milk"], "strawberries", "chocholate sprinkles", "vanilla")
flavo = baked.flavour
topp = baked.topping
fill = baked.filling
puts "I would like a #{baked.flavour} cake, filled with #{fill} and covered in #{topp}!"
puts "The ingredients of the cake are: #{baked.ingredients.join(", ")}"

baked.topping = "whipcream"
baked.flavour = "chocholate"


puts baked.serve

puts "I would like a #{baked.flavour} cake, filled with #{baked.filling} and covered in #{baked.topping}!"
baked.slice(6)
baked.purchase(true)
puts baked.serve

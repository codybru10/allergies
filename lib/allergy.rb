class Fixnum
  define_method(:allergy) do

    allergen = {1 => "eggs", 2 => "peanuts", 4 => "shellfish", 8 => "strawberries", 16 => "tomatoes", 32 => "chocolate", 64 => "pollen", 128 => "cats"}

    numArray = [128, 64, 32, 16, 8, 4, 2, 1]
    outputArray = []
    finalArray = []
    outputString = ""
    total = self

    numArray.each() do |num|
      if total / num < 1
      else
        outputArray.push(num)
        total = total % num
      end
    end

    outputArray.each() do |element|
      finalArray.push(allergen.fetch(element))
    end

    outputString = finalArray.join(" ")
  end
end

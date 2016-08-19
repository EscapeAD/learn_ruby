

def translate(phrase)
  vowels         = ["a","e","i","o","u"]
  array          = phrase.split(" ")
  original_array = array
  output         = []

  array.each_with_index do | word , i|
    final          = ""
    check = word.split(//)
  if vowels.include? check[0]
    final = phrase + "ay"
    output.push(final)
    

  end
end

  translation = output.join
  return translation
end


# front = original_array.count {|vowel| vowels.include? vowel}
# collector = phrase2.first(front-1)
# if front > 0
#   phrase2 << collector
#   (front..1).each do |number|
#     phrase2.delete_at(number)
#   end
# end

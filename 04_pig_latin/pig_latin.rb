

def translate(sentence)
  vowels         = ["a","e","i","o"]
  alph           = ("a".."z").to_a - vowels
  array          = sentence.split(" ")
  output         = []
  translation    = ""
  # con            = alph.select { |con| con =~ /[aeiou]/ }
  # con            = alph.select { |v| v != vowels }
  if array.count == 1
    one          = array[0].split(//)
    if vowels.include? one[0]
      translation = sentence + "ay"
    elsif vowels.include? one[1]
      translation = one.drop(1).join + one.first + "ay"
    elsif vowels.include? one[2]
      translation = one.drop(2).join + one.first(2).join + "ay"
    elsif vowels.include? one[3]
      translation = one.drop(3).join + one.first(3).join + "ay"
    end
  else
    # array.each do |word|
    # final          = []
    # check = word.split(//)
    # output << check
    # if alph.include? word.check[0] && alph.include? word[1] && alph.include? word[2]
    #   output << check[0..2]
    # elsif alph.include? word[0] && alph.include? word[1]
    #   output << check[0..1]
    # elsif alph.include? word[0]
    #   output << check[0]
    # end
end


  #
  # translation = output.join
  # return translation
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

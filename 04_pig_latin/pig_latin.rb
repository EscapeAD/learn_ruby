

def translate(sentence)
  vowels         = ["a","e","i","o"]
  alph           = ("a".."z").to_a - vowels
  array          = sentence.split(" ")
  output         = []
  translation    = ""
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
    array.each do |word|
      one           = word.split(//)
      if vowels.include? one[0]
        finish      = one.join + "ay"
        output << finish
      elsif vowels.include? one[1]
        finish = one.drop(1).join + one.first + "ay"
        output << finish
      elsif vowels.include? one[2]
        finish = one.drop(2).join + one.first(2).join + "ay"
        output << finish
      elsif vowels.include? one[3]
        finish = one.drop(3).join + one.first(3).join + "ay"
        output << finish
      end
    end
      translation = output.join(" ")
end


  return translation
end

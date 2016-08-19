
def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(string, num = 2)
  array = []
  num.times do |x|
    array << string
  end
  final = array.join(" ")
  return final
end

def start_of_word(word, place)
words = word.split(//)
final = words.first(place).join
return final
end

def first_word(word)
  words = word.split(" ")
  final = words.first(1).join
  return final
end

def titleize(title)
  array = title.split(" ")
  words = ["and", "then", "over", "done", "the"]
    array.each do |word|
      if words.include? word
      else
        word.capitalize!
      end
    end
    array[0].capitalize!
final = array.join(" ")
return final
end

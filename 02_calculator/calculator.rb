def add(first, second)
  (first + second)
end

def subtract(first, second)
  (first - second)
end

def sum(array)
  total = 0
  array.each do | num |
    total += num
  end
  total
end


def multiply(array)
  total = 1
  array.each do | num |
    total = total * num
  end
  return total
end


def fact(number)
  total = 1
  if number > 0
  (1..number).each do |num|
  total = total * num
  end
  return total
  else
  return 0
  end
end

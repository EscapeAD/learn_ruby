  def ftoc(temp)
    return ((temp - 32)*(5.00/9.00)).round(2)
  end

  def ctof(temp)
    return ((temp * (9.00/5.00)) + 32).round(2)
  end

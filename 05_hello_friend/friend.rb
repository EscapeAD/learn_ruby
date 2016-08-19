class Friend

  def greet(name = "!")
    if name != "!"
      name = name + "!"
    end
    "Hello #{name}"
  end
end

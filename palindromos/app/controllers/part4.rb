class Dessert
attr_accessor:name
attr_accessor:calories

def initialize(name, calories)
  @name = name
  @calories = calories
end

def healthy?
  if calories <=  200
    return true
  else
    return false
  end
end

def delicious?
  return true
end

end

class JellyBean < Dessert
attr_accessor:flavor

def initialize(name, calories, flavor)
  super(name,calories)
  @flavor = flavor
end

def delicious?
  if flavor == 'black licorice'
    return false
  else
    return true
  end
end

end


module Ennui

  def Ennui.sometimes?
    random_number % 2 == 0
  end

  def Ennui.who_cares?
    random_number % 4 == 0
  end

  private 

  def Ennui.random_number
    Random.new.rand(0..1000)
  end

end

module Ennui

  def Ennui.sometimes?
    rand = Random.new.rand(0..1000)
    rand % 2 == 0
  end

  def Ennui.who_cares?
    rand = Random.new.rand(0..1000)
    rand % 4 == 0
  end

end

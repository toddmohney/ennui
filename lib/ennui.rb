module Ennui

  def sometimes?
    random_number % 2 == 0
  end

  def sometimes
    yield if sometimes? && block_given?
  end

  def whatever
    sometimes
  end

  def maybe
    sometimes
  end

  def who_cares?
    random_number % 4 == 0
  end

  private

  def random_number
    Random.new.rand(0..1000)
  end

end

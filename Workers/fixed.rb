require './workers'

class Fixed < Workers

  def calculate
    @salary
  end
end

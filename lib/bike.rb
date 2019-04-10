class Bike

  def broken?
    @broken
  end

  def working?
    fail 'Cannot release broken bike' if report_broken
    
    true
  end

  def report_broken
    @broken = true
  end


end
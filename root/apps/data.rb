class Data
  def initialize(datum)
    @datum = datum
  end

  def peak
    @datum.inspect
  end

  def interpret
    @datum
  end
end
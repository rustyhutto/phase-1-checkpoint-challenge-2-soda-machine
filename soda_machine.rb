

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    if @sodas.include?(soda_brand)
      return @sodas.brand[soda_brand]
    else
      return nil
    end
  end

  def sell(soda_brand)
    if @sodas.include?(soda_brand)
      @cash += soda_brand.price
    else
      return nil
    end
  end

end



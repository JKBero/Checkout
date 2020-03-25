class Shop

  def initialize
    @price = 0
    @item_list = []
    @price_list = {
      'A' => 50,
      'B' => 30,
      'C' => 20,
      'D' => 15
    }
    @deal_list = {
      'A' => {quantity: 3, price: 130},
      'B' => {quantity: 2, price: 45}
    }
  end

  def checkout(items)
    return -1 unless valid?(items)
    @item_list = items.split('')
    calculate_deal
    calculate_price
    @price
  end

  private

  def valid?(items)
    items == items.to_s.upcase
  end

  def calculate_deal
    @item_list.each { |i|
      if @deal_list.include? i
        while @item_list.count(i) % @deal_list[i][:quantity] == 0 && @item_list.count(i) > 0
          @price += @deal_list[i][:price]
          @deal_list[i][:quantity].times { @item_list.delete_at(@item_list.index(i)) }
        end
      end
    }
  end

  def calculate_price
    @item_list.each { |i|
      if @price_list[i]
        @price += @price_list[i]
      end
    }
  end

end

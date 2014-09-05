class BookInStock
  attr_reader :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    # I know, Float shouldn't be used for Money
    @price = Float price
  end
end

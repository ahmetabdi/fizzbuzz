class FizzBuzzPresenter < Struct.new(:page, :per_page)

  def current_page
    page.to_i
  end

  def items
    (start_range..end_range).map do |i|
      OpenStruct.new(number: i,
                     output: FizzBuzz.calculate(i),
                     favourite: Favourite.where(number: i).any?)
    end
  end

  def max_pages
    max_items / per_page
  end

  def max_items
    100_000_000_000
  end

  def previous_page
    current_page - 1
  end

  def next_page
    current_page + 1
  end

  def viewing_first_page?
    current_page == 1
  end

  def viewing_last_page?
    current_page == max_pages
  end

  private

  def start_range
    (current_page * per_page) - (per_page - 1)
  end

  def end_range
    (current_page * per_page)
  end
end

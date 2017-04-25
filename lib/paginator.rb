class Paginator
  def initialize(page)
    @page = Integer(page) rescue false
  end

  def paginate
    unless @page
      return 1, 100
    end

    return start, finish
  end

  private def start
    1 + ((@page - 1) * 100)
  end

  private def finish
    100 + ((@page - 1) * 100)
  end
end
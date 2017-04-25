class Paginator
  DEFAULT_LIMIT = 100

  def initialize(page, limit)
    @page = Integer(page) rescue false
    @limit = Integer(limit) rescue DEFAULT_LIMIT
  end

  def paginate
    unless @page
      return 1, @limit
    end

    return start, finish
  end

  private def start
    1 + ((@page - 1) * @limit)
  end

  private def finish
    @limit + ((@page - 1) * @limit)
  end
end
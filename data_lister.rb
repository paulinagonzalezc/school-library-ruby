require_relative 'base_lister'
class DataLister < BaseLister
  def initialize(lister)
    @lister = lister
    super()
  end

  def list_data(data)
    @lister.list_data(data)
  end
end

# A collection of helper methods

class Helper
  def convert_to_id(friendly)
    field = 'user_' + friendly.downcase.tr(' ', '_') # Convert friendly labels to IDs
    return field
  end
end

World do
  Helper.new
end
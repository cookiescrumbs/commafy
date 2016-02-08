class CommaService
  def self.commafied(params)
    string_parts = params[:string].split('.')
    first_part = self.format_first_part(string_parts[0], params[:interval])
    self.concatenate(first_part, string_parts)
  end

  def self.format_first_part(string, interval)
    string.reverse.scan(/.{1,#{interval}}/).join(",").reverse
  end

  def self.concatenate(first_part, string_parts)
    (string_parts.count == 2)? first_part + '.' + string_parts[1] : first_part
  end

end

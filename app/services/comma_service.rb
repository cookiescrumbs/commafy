class CommaService
  def self.commafied(string:, interval:)
    string_parts = string.split('.')
    first_part = self.format_first_part(string_parts[0], interval)
    self.concatenate(first_part, string_parts)
  end

  def self.format_first_part(string, interval)
    string.reverse.scan(/.{1,#{interval}}/).join(",").reverse
  end

  def self.concatenate(first_part, string_parts)
    (string_parts.count == 2)? first_part + '.' + string_parts[1] : first_part
  end
end

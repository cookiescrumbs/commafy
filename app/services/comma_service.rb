class CommaService
  def self.commafied(string:, interval:)
    string_parts = string.split('.')
    first_part = self.format_first_part(string_parts[0], interval)
    self.concatenate(first_part, string_parts[1])
  end

  def self.format_first_part(string, interval)
    string.reverse.scan(/.{1,#{interval}}/).join(",").reverse
  end

  def self.concatenate(first_part, second_part)
    ( second_part.nil? )? first_part : first_part + '.' + second_part
  end
end

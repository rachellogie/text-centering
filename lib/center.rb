
class Center

  def initialize(input)
    @input = input
  end

  def center_it
    max_length = @input.each_line.map { |line|  line.length - 1 }.max
    line_middle = max_length/2
    output = ""
    @input.each_line do |line|
      whitespace_amount = line_middle - ((line.length - 1)/2)
      whitespace = " " * whitespace_amount
      new_line = whitespace + line
      output << new_line
    end
    output
  end
end

class Center

  def initialize(input)
    @input = input
  end

  def center_it
    #go through each line
    #see which is the longest
    #get that length
    #we have the half_way marker
    #half_way - line.length/2
    #add that many whitespaces on the beginning

    max_length = @input.each_line.map { |line|  line.length - 1 }.max
    line_middle = max_length/2

    output = ""
    @input.each_line do |line|
      whitespace_amount = line_middle - (line.length/2 - 1)
      whitespace = " " * whitespace_amount
      new_line = whitespace + line
      output << new_line
    end
    output

  end
end
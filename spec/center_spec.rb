require_relative '../lib/center'

describe 'center' do
  it 'centers the text on the page' do
    input = <<INPUT
this is a short line
this is a really long line that has a lot of characters
and this is
short
INPUT

    actual = Center.new(input).center_it


    expected = <<INPUT
                 this is a short line
this is a really long line that has a lot of characters
                      and this is
                         short
INPUT

    expect(actual).to eq expected
  end
end
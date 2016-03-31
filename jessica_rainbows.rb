require 'rainbow/ext/string'

def find_color(red, green, blue)
  rainbow = [
    { red: { r: 255, g: 0, b: 0 } },
    { orange: { r: 255, g: 127, b: 0 } },
    { yellow: { r: 255, g: 255, b: 0 } },
    { green: { r: 0, g: 255, b: 0 } },
    { blue: { r: 0, g: 0, b: 255 } },
    { indigo: { r: 75, g: 0, b: 130 } },
    { violet: { r: 143, g: 0, b: 255 } },
  ]

  rainbow.each do |color|
    color.each do |key, value|
      return key.to_s if red == value[:r] && green == value[:g] && blue == value[:b]
    end
  end

end

puts find_color(255, 0, 0).color(:red)
puts find_color(255, 127, 0).color(:orange)
puts find_color(255, 255, 0).color(:yellow)
puts find_color(0, 255, 0).color(:green)
puts find_color(0, 0, 255).color(:blue)
puts find_color(75, 0, 130).color(:indigo)
puts find_color(143, 0, 255).color(:violet)

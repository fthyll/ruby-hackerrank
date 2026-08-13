# Your code here
def convert_temp(temp, input_scale:, output_scale: 'celsius')
    # Convert input to Celsius first
    case input_scale
    when 'celsius'
        celsius = temp
    when 'fahrenheit'
        celsius = (temp - 32) * 5.0 / 9.0
    when 'kelvin'
        celsius = temp - 273.15
    end

    # Convert Celsius to output scale
    case output_scale
    when 'celsius'
        celsius
    when 'fahrenheit'
        celsius * 9.0 / 5.0 + 32
    when 'kelvin'
        celsius + 273.15
    end
end

unless Object.respond_to?(:convert_temp, true)
    puts 'You must define the correct method!'
    exit(0)
end

o1 = convert_temp(0, input_scale: 'kelvin', output_scale: 'celsius')
o2 = convert_temp(393, input_scale: 'kelvin', output_scale: 'celsius')
o3 = convert_temp(400, input_scale: 'fahrenheit', output_scale: 'celsius')
o4 = convert_temp(333, input_scale: 'fahrenheit', output_scale: 'kelvin')

a1, a2, a3, a4 = -273.15, 119.85, 204.4444, 440.372

unless [o1 - a1, o2 - a2, o3 - a3, o4 - a4].all? { |x| x.abs < 0.001 }
    puts 'Something went wrong! Please check your answers!'
    exit(0)
end

puts 'You have successfully completed the challenge!'
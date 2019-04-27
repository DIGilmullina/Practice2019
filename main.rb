require_relative 'parcing.rb'

example = TakeInfo.new
puts "Погода в Дубае на cегодня:


"
puts"Температура воздуха:"
example.temp_scrap
example.sun_cond
puts " "
puts "Показатели:"
example.indicators
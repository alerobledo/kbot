class Factura
    def calcularPorcentajeDeImpuesto()
        "0.0825".to_f
    end

    def calcularPorcentajeDescuento(cant)
        case cant
        when 0 .. 999
            "0".to_f
        when 1000 .. 4999
            "0.03".to_f        
        when 5000 .. 6999
            "0.05".to_f    
        when 7000 .. 9999
            "0.07".to_f                
        end    
    end

end
cant = ARGV[0].to_i
precioUnitario = ARGV[1].to_f

factura=Factura.new()

subtotal = cant*precioUnitario
impuesto = subtotal*factura.calcularPorcentajeDeImpuesto()
totalBruto= subtotal+impuesto

PorcentajeDto = factura.calcularPorcentajeDescuento(cant)

totalFinal = totalBruto*(1-PorcentajeDto)

puts "Valar Morghulis"
puts "cant: #{cant}   -  precioUnitario: #{precioUnitario}"
puts "subtotal: #{subtotal}"
puts "Porcentaje De Impuesto: #{factura.calcularPorcentajeDeImpuesto()}"
puts "impuesto: #{impuesto}"
puts "totalBruto: #{totalBruto}"
puts "Porcentaje Descuento: #{PorcentajeDto}"
puts "totalFinal: #{totalFinal}"


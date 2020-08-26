class Factura
    def calcularPorcentajeDeImpuesto(estado)
        case estado
        when  "CA" 
            "0.0825".to_f
        when  "UT" 
            "0.0685".to_f    
        when  "NV" 
            "0.08".to_f            
        end          
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
        when 10000 .. 14999
            "0.1".to_f
        else
            "0.15".to_f
        end    
    end

end

cant = ARGV[0].to_i
precioUnitario = ARGV[1].to_f
estado= ARGV[2]

factura=Factura.new()

subtotal = cant*precioUnitario
porcentajeDeImpuesto = factura.calcularPorcentajeDeImpuesto(estado)
impuesto = subtotal*porcentajeDeImpuesto
totalBruto= subtotal+impuesto

PorcentajeDto = factura.calcularPorcentajeDescuento(cant)

totalFinal = totalBruto*(1-PorcentajeDto)

puts "Valar Morghulis"
puts "cant: #{cant}   -  precioUnitario: #{precioUnitario}  -  estado: #{estado}"
puts "subtotal: #{subtotal}"
puts "Porcentaje De Impuesto: #{porcentajeDeImpuesto}"
puts "impuesto: #{impuesto}"
puts "totalBruto: #{totalBruto}"
puts "Porcentaje Descuento: #{PorcentajeDto}"
puts "totalFinal: #{totalFinal}"


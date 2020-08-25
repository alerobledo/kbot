class Factura
    def calcularPorcentajeDeImpuesto()
        "0.0825".to_f
    end
end
cant = ARGV[0].to_i
precioUnitario = ARGV[1].to_f

factura=Factura.new()

subtotal = cant*precioUnitario
impuesto = subtotal*factura.calcularPorcentajeDeImpuesto()
totalBruto= subtotal+impuesto


puts "Valar Morghulis"
puts "cant: #{cant}   -  precioUnitario: #{precioUnitario}"
puts "subtotal: #{subtotal}"
puts "Porcentaje De Impuesto: #{factura.calcularPorcentajeDeImpuesto()}"
puts "impuesto: #{impuesto}"
puts "totalBruto: #{totalBruto}"


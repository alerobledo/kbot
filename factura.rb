class Factura
    def calcularImpuesto()
        "0.825".to_f
    end
end
cant = ARGV[0].to_i
precioUnitario = ARGV[1].to_f

subtotal = cant*precioUnitario

factura=Factura.new()
puts "Valar Morghulis"
puts "cant: #{cant}   -  precioUnitario: #{precioUnitario}"
puts "subtotal: #{subtotal}"
puts "impuesto: #{factura.calcularImpuesto()}"
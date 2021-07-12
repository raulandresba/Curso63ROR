def adivina_numero valor
    number = 25
    #tu codigo aquí
    if number == valor
        puts "¡lo conseguiste!"
    elsif number> valor
        puts "el número ingresado es mas pequeño"
    elsif number<valor
        puts "el número ingresado es mas grande"
    end
end

adivina_numero(25)

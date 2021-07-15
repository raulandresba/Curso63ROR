#1 1 al 255
#1.upto(255) { |i| print i, " " }

#2 impares del 1 al 255
#puts "#{(1..255).reject { |i| i % 2 == 0 }}\n"

#3 muestre la suma de 0 a 255
# suma=0
# (0..255).each do |dato|
#     puts "nuevo numero: #{dato} suma: #{suma =+dato}"
# end

#4 recorrer un arreglo
# x =[1, 3, 5, 7, 9, 13]
x = [2,10,3]
def recorrerArreglo(x)
    puts "los valores del arreglo son :"
    for i in x
        puts i
end
end

#5 encontrar maximo

def encontrarMaximo(x)
puts "el valor maximo es #{x.max}"
end
#6 encontrar promedio
def encontrarPromedio(x)
    puts "el promedio es #{x.sum/x.size}"
    end

#7 arreglo con numeros impares

y = (1..125).to_a.select{|i| i%2!=0}
puts y.class
puts "Numeros impares del 1 al 125: #{y.to_s}"

impar = 1
impares = []
for i in 1..128
    impares.push(impar)
    impar = impar + 2
end

puts impares.class

y = (1..255).to_a
puts y.class
puts y.find_all {|a| a.odd?}.to_s

#8 mayor que y
x = [1, 3, 5, 7]
y = 3
puts "Cantidad de numeros mayores a #{y} dentro del array #{x}: #{x.select{|i| i>y}.length}"

def mayorQueY valor, arr
    for i in 0..arr.length-1
        puts "El numero #{arr[i]} es mayor que #{valor}" if valor < arr[i]
    end
end
mayorQueY 5, x

puts "Cantidad de numeros mayores a #{y} dentro del array #{x}: #{x.find_all{|i| i>y}.size}"

#9 al cuadrado

y = [1, 5, 10, -2]
puts "El cuadrado de cada elemento del array #{y}: #{y.collect!{|i| i*i}}"

x = [1,3,5,7,9,13]
def alCuadrado arr
    cuadra = []
    for i in 0..arr.length-1
        cuadra.push(arr[i] * arr[i])
    end
    return cuadra
end
puts "Arreglo original : #{x.to_s}"
x = alCuadrado x
puts "Arreglo al cuadrado : #{x.to_s}"


#10 eliminar negativos, reemplazar por 0

x= [1, 5, 10, -2]
def reemplazar_negativos(x)
  x.each_with_index do |valor, indice|
    if valor < 0
      x[indice] = 0
    end
  end
end

reemplazar_negativos([1, 5, 10, -2])

x= [1, 5, 10, -2]
def noNegativo arr
    for i in 0..arr.length-1
        if arr[i] < 0
            arr[i] = 0
        end
    end
    return arr
end
puts "Arreglo original : #{x.to_s}"
x = noNegativo x
puts "Arreglo sin negativos : #{x.to_s}"

x = [1, 5, 10, -2]
def val_pos n
    if (n>0)
        n
    else
        0
    end
end
puts "El cuadrado de cada elemento del array #{x}: #{x.collect!{|i| val_pos i}}"

#11 max min y promedio
x =  [1, 5, 10, -2]
puts "maximo #{x.max}, minimo #{x.min}, y promedio #{x.sum/x.length} "

def max_min_prom arr
    {:max=>arr.max, :min=>arr.min, :prom=>arr.sum/arr.length.to_f}
end

puts "Elimina negativo del array #{x}: #{max_min_prom x}"


def maxYmin arr
    sum = 0
    max = arr[0]
    min = arr[0]
    for i in 0..arr.length-1
        sum = sum + arr[i]
        if arr[i] > max
            max = arr[i]
        end
        if arr[i] < min
            min = arr[i]
        end
    end
    return {:max=>max, :min=>min, :prom=>(sum/(i+1))}
end
x = [3,5,7,2,3]
puts "Notas : #{x.to_s}"
datos = maxYmin x
puts datos

#12 cambiar valores
x=  [1, 5, 10, 7, -2]
x.delete_at(0)
x.push(0)
puts x.to_s

x=  [1, 5, 10, 7, -2]
puts x.slice(1,x.length).push(0).to_s

x=  [1, 5, 10, 7, -2]
def cambioArr arr
    for i in 0..arr.length-2
        arr[i] = arr[i+1]
    end
    arr[i+1] = 0
    return arr  
end
puts "Arreglo original : #{x.to_s}"
puts "Con el cambio : #{(cambioArr x).to_s}"


#13 numeros a cadenas
#Escriba un programa que tome un arreglo de números y reemplace cualquier número negativo con la palabra "Dojo". Por ejemplo, dado el arreglo x = [-1, -3, 2], después que el programa haya terminado, ese arreglo debe ser ['Dojo', 'Dojo', 2].

def dojo(x)
    x.map! { |i| i < 0 ? "Dojo" : i }
    puts x.to_a.to_s
end

x = [-1, -3, 2]
dojo(x)

x = [-1, -3, 2]
def val_pos n
    if (n>0)
        n
    else
        "Dojo"
    end
end
puts "Elimina negativo del array #{x}: #{x.collect!{|i| val_pos i}}"


def negativoDojo arr
    for i in 0..arr.length-1
        if arr[i] < 0
            arr[i] = "Dojo"
        end
    end
    return arr
end
x = [1,-3,9,5,-2,-5,4,6]
puts "Arreglo original : #{x.to_s}"
puts "Con el cambio : #{(negativoDojo x).to_s}"
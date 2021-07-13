arreglo =  ['a','b','c','d','e','f','g','h','i']


# .at or .fetch
puts arreglo.at(3)
puts arreglo.fetch(3)

#.delete elimina 
arreglo.delete('i')

#.reverse devuelve al reves
puts arreglo.reverse.to_s

#.length entrega el largo
puts arreglo.length

# .sort ordena
puts arreglo.sort.to_s

# .slice define un rango
puts arreglo.slice(1,4).to_s

# .shuffle desordena
puts arreglo.shuffle.to_s

# .join agrega
puts arreglo.values_at(2,3).join(' and ').to_s

# .insert inserta
arreglo.insert(0,'z').to_s

# values_at() -> devuelve un arreglo con los valores específicados en los parametros. 
# ejemplo a = %w{gato perro oso}; puts a.values_at(1,2).join(' and ') #=> "perro y oso"


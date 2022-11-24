# El argumento nombre y edad tienen valores por defecto
# El argumento altura es obligatorio
# **, indica que se pueden pasar indefinida cantidad de argumentos adicionales, todos estos se guardaran en el opjeto 'options'
def hola(nombre:"", edad:0, altura: , **options)
    if edad == 30
        puts "Hola Joven #{nombre}"
    elsif edad == 40
        puts "Hola Señor #{nombre}"
    else
        puts "Hola Persona #{nombre}"
    end

    puts options
    puts options[:animal_favorito]
end

hola(edad:30, nombre:"Alexis", altura: 179, animal_favorito: "Tigre")
# Generara error porque el argumento altura es obligatorio
hola(edad:30, nombre:"Alexis", animal_favorito: "Tigre")
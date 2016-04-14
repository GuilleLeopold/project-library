# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

author1 = Author.create({name: 'Pedro', last_name: 'Alvarez'})
author2 = Author.create({name: 'Rodrigo', last_name: 'Martinez'})
author3 = Author.create({name: 'Martin', last_name: 'Rodriguez'})
author4 = Author.create({name: 'Gastonazo', last_name: 'Masssss'})


Book.create({title: 'Book 11', year: 1984, ISBN: 12345634, author: author1, description: "Libro prueba para probar la library 1"})
Book.create({title: 'Book 12', year: 1990, ISBN: 1234554, author: author2, description: "Libro prueba para probar la library 4"})
Book.create({title: 'Book 13', year: 2012, ISBN: 123345, author: author3, description: "Libro prueba para probar la library 4"})
Book.create({title: 'Book 14', year: 1000, ISBN: 12354345, author: author4, description: "Libro prueba para probar la library 4"})
Book.create({title: 'Book 20',  ISBN: 321, author: author2, description: "Libro prueba para probar la library 4"})
#Book.create({title: 'Book 33', year: 2013, ISBN: 1222, author: author4, description: 'Este libro es un libro de cuentos'})



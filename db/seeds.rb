# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DocumentType.delete_all

# Document Types

DocumentType.create(name: 'DNI', description: 'Documento Nacional de Identidad')
DocumentType.create(name: 'RUC', description: 'Registro Unico de Contribuyentes')
DocumentType.create(name: 'Pasaporte', description: 'Número de Pasaporte')
DocumentType.create(name: 'CE', description: 'Carné de Extranjería')

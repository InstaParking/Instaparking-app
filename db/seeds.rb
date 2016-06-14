# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DocumentType.delete_all
MemberType.delete_all
OwnerType.delete_all
ParkingType.delete_all
PaymentDocumentType.delete_all
PaymentType.delete_all
ParkingPlace.delete_all

# Document Types

DocumentType.create(id:1, name: 'DNI', description: 'Documento Nacional de Identidad')
DocumentType.create(id:2, name: 'RUC', description: 'Registro Unico de Contribuyentes')
DocumentType.create(id:3, name: 'Pasaporte', description: 'Número de Pasaporte')
DocumentType.create(id:4, name: 'CE', description: 'Carné de Extranjería')

# Member Types

MemberType.create(id:1, name: 'Administrador', description: 'Administrador de la Organización')
MemberType.create(id:2, name: 'Trabajador', description: 'Trabajador en la Organización')

# Owner Types

OwnerType.create(id:1, name: 'Persona Natural', description: 'Persona Natural')
OwnerType.create(id:2, name: 'Empresa/Organización', description: 'Empresa/Organización')

# Parking Types

ParkingType.create(id:1, name: 'Estacionamiento', description: 'Estacionamiento')
ParkingType.create(id:2, name: 'Garaje', description: 'Garaje')

# Payment Document Types

PaymentDocumentType.create(id:1, name: 'Boleta', description: 'Boleta')
PaymentDocumentType.create(id:2, name: 'Factura', description: 'Factura')

# Payment Types

PaymentType.create(id:1, name: 'Contado', description: 'Contado')
PaymentType.create(id:2, name: 'Tarjeta de Crédito', description: 'Tarjeta de Crédito')
PaymentType.create(id:3, name: 'Tarjeta de Débito', description: 'Tarjeta de Débito')


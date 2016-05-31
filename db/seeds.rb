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

# Document Types

DocumentType.create(name: 'DNI', description: 'Documento Nacional de Identidad')
DocumentType.create(name: 'RUC', description: 'Registro Unico de Contribuyentes')
DocumentType.create(name: 'Pasaporte', description: 'Número de Pasaporte')
DocumentType.create(name: 'CE', description: 'Carné de Extranjería')

# Member Types

MemberType.create(name: 'Administrador', description: 'Administrador de la Organización')
MemberType.create(name: 'Trabajador', description: 'Trabajador en la Organización')

# Owner Types

OwnerType.create(name: 'Persona Natural', description: 'Persona Natural')
OwnerType.create(name: 'Empresa/Organización', description: 'Empresa/Organización')

# Parking Types

ParkingType.create(name: 'Estacionamiento', description: 'Estacionamiento')
ParkingType.create(name: 'Garaje', description: 'Garaje')

# Payment Document Types

PaymentDocumentType.create(name: 'Boleta', description: 'Boleta')
PaymentDocumentType.create(name: 'Factura', description: 'Factura')

# Payment Types

PaymentType.create(name: 'Contado', description: 'Contado')
PaymentType.create(name: 'Tarjeta de Crédito', description: 'Tarjeta de Crédito')
PaymentType.create(name: 'Tarjeta de Débito', description: 'Tarjeta de Débito')


Profile: PacienteLactanteLactario
Parent: Patient
Id: paciente-lactante-lactario
Title: "Paciente Lactante - Lactario HDGF"
Description: "Perfil de paciente para representar al lactante hospitalizado, receptor de la leche extraída por la madre."

* identifier 1..1
* identifier ^short = "Identificador del lactante (ej: número de ficha clínica)"
* identifier.system 1..1
* identifier.value 1..1

* name 0..1
* name.given 0..*
* name.given ^short = "Nombre del lactante (si está registrado)"

* link 0..1
* link ^short = "Vínculo con la madre asociada"
* link.other only Reference(PacienteMadreLactario)
* link.type = #seealso

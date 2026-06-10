Profile: PacienteMadreLactario
Parent: Patient
Id: paciente-madre-lactario
Title: "Paciente Madre - Lactario HDGF"
Description: "Perfil de paciente para representar a la madre usuaria del Lactario, incluyendo su identificación (RUT), nombre completo (apellido paterno + materno) y vínculo con el lactante."

* identifier 1..1
* identifier ^short = "RUT de la madre"
* identifier.system 1..1
* identifier.system = "http://registrocivil.cl/rut"
* identifier.value 1..1

* name 1..1
* name.given 1..*
* name.given ^short = "Nombres de la madre"
* name.family 1..1
* name.family ^short = "Apellido paterno de la madre"
* name.extension contains ApellidoMaterno named apellidoMaterno 1..1
* name.extension[apellidoMaterno] ^short = "Apellido materno de la madre"

* link 1..1
* link ^short = "Vínculo con el lactante asociado"
* link.other 1..1
* link.other only Reference(PacienteLactanteLactario)
* link.type = #seealso

Profile: ProfesionalLactario
Parent: Practitioner
Id: profesional-lactario
Title: "Profesional - Lactario HDGF"
Description: "Perfil de Practitioner para representar al profesional (matrona, TENS, nutricionista) que realiza atenciones en el Lactario."

* identifier 1..1
* identifier ^short = "RUT del profesional"
* identifier.system 1..1
* identifier.system = "http://registrocivil.cl/rut"
* identifier.value 1..1

* qualification 1..1
* qualification ^short = "Especialidad del profesional (ej: Matronería)"
* qualification.code 1..1
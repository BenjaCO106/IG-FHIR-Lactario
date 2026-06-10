Extension: ApellidoMaterno
Id: apellido-materno
Title: "Apellido Materno"
Description: "Extensión para registrar el segundo apellido (materno) de una persona, según la convención chilena de nombres."
Context: Patient.name
* value[x] only string
* valueString 1..1
* valueString ^short = "Apellido materno"

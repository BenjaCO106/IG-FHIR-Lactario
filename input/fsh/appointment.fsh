Profile: CitaExtraccionLactario
Parent: Appointment
Id: cita-extraccion-lactario
Title: "Cita de Extracción - Lactario HDGF"
Description: "Perfil de Appointment para representar la cita agendada para la extracción de leche materna."

* status 1..1
* status from http://hl7.org/fhir/ValueSet/appointmentstatus (required)
* status ^short = "Estado de la cita (ej: booked, cancelled)"

* start 1..1
* start ^short = "Fecha y hora de inicio de la extracción"

* serviceType 1..1
* serviceType ^short = "Tipo de servicio (Procedimiento relacionado con lactancia materna)"
* serviceType.coding 1..1
* serviceType.coding.system = "http://snomed.info/sct"
* serviceType.coding.code = #440626008
* serviceType.coding.display = "Procedimiento relacionado con la lactancia materna (procedimiento)"

* participant 1..*
* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = "actor.resolve()"
* participant ^slicing.rules = #open
* participant ^short = "Participantes de la cita: madre y profesional"

* participant contains
    paciente 1..1 and
    profesional 1..1

* participant[paciente].actor 1..1
* participant[paciente].actor only Reference(PacienteMadreLactario)
* participant[paciente].actor ^short = "Madre que asiste a la cita"

* participant[profesional].actor 1..1
* participant[profesional].actor only Reference(ProfesionalLactario)
* participant[profesional].actor ^short = "Profesional que atiende la extracción"
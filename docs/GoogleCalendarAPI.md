# Integración Propuesta con Google Calendar API

## Objetivo

Permitir que los recordatorios académicos creados por el estudiante dentro de Class Max sean sincronizados automáticamente con Google Calendar.

## Funcionamiento

1. El usuario registra una actividad académica.
2. El sistema almacena la actividad en MySQL.
3. El usuario autoriza el acceso a Google mediante OAuth 2.0.
4. El sistema obtiene un token de acceso.
5. Se envía una solicitud HTTP POST a Google Calendar API.
6. El evento es creado en el calendario personal del estudiante.
7. Google envía recordatorios y notificaciones según la configuración del usuario.

## Endpoint utilizado

https://www.googleapis.com/calendar/v3/calendars/primary/events

## Método HTTP

POST

## Formato de intercambio

JSON
Ejemplo de Solicitud

{
"summary": "Entrega Proyecto Arquitectura",
"start": {
"dateTime": "2026-06-15T08:00:00"
},
"end": {
"dateTime": "2026-06-15T10:00:00"
}
}

Ejemplo de Respuesta

{
"id": "abc123",
"status": "confirmed",
"htmlLink": "https://calendar.google.com/..."
}

Flujo de Integración
Usuario registra actividad académica.
Sistema almacena la información en MySQL.
Usuario autoriza acceso mediante OAuth 2.0.
PHP obtiene Access Token.
PHP consume Google Calendar API.
Google crea el evento.
Usuario recibe recordatorio en Google Calendar.
Estado

Diseño técnico documentado.
Implementación pendiente por restricciones de tiempo del proyecto.

### (02) PHP Framework Interop Group

- Son un grupo de proyectos de PHP que se unieron para definir proposiciones de estandar
- Existen desde hace 8 años
- Entre otros estándares, han propuesto el estandar de mensajes HTTP (psr-7) que se aprobó hace un par de años, y el de middleware para servidores (psr-15), que aún está en fase de borrador.

#### (03) PSR-7 - HTTP Messages

- HTTP es un estándar de comunicación entre aplicaciones, cliente-servidor, que trabaja sobre TCP y define dos tipos de mensajes, el request y el response
- PHP es un lenguaje orientado al desarrollo de aplicaciones web, y como tal necesitaba una forma estándar de interactuar con el request y el response
- A diferencia de la forma en que los frameworks han estado tratando al request y al response hasta ahora, PSR-7 propone que estos dsean inmutables

### (04) Middleware

- La arquitectura de una aplicación basada en middleware define que el request se debe ir procesando por capas
- Ya no hay un ciclo de vida basdo en eventos
- Cada middleware recibe el request y el siguiente middleware, y decide si invoca o no a este
- Cada middleware debe emitir un response como resultado

### (05) Firmas del middleware

- El middleware double-pass recibe el request y el response.
- El middleware single-pass recibe sólo el request.

### (06) Arquitectura middleware

Explicar diferentes middlewares

### (07) Example middleware. Cache

### (09) Example middleware. Authorization

### (08) Example middleware. Routing

### (10) Middleware based frameworks

### (11) Links

- Link a artículo "scalability with zend expressive"

### (12) Questions

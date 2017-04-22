### Middleware

<br>

- Gestión del proceso de resolución de un request a través de capas o middlewares.
- Cada middleware decide si invocar al siguiente en la lista.

<aside class="notes">
    - La arquitectura de una aplicación basada en middleware define que el request se debe ir procesando por capas<br>
    - Ya no hay un ciclo de vida basdo en eventos<br>
    - Cada middleware recibe el request y el siguiente middleware, y decide si invoca o no a este<br>
    - Cada middleware debe emitir un response como resultado
</aside>

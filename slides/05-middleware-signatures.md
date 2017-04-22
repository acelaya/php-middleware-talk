### Firmas del middleware

<br>

Double-pass: Request + Response

```php
public function __invoke(
    Request $reqest, 
    Response $response, 
    callable $next
): Response;
```

Single pass: Request (**PSR-15**)

```php
public function process(Request $reqest, Delegate $next): Response;
```

El response debería modificarse sólo en el camino de salida.

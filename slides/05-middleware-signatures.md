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

<br>

Single pass: Request (**PSR-15**)

```php
public function process(Request $reqest, Delegate $next): Response;
```

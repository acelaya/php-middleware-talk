### Routing middleware

<br>

```php
public RoutingMiddleware implements MiddlewareInterface
{
    public function process(Request $request, DelegateInterface $delegate)
    {
        $route = $this->router->match($request);
        
        // If no route was found, return not found error
        if ($route === null) {
            return (new Response())->withStatus(404);
        }

        $request = $request->withAttribute('route', $route);
        return $delegate->process($request);
    }
}
```

### Authorization middleware

<br>

```php
public AuthorizationMiddleware implements MiddlewareInterface
{
    public function process(Request $request, DelegateInterface $delegate)
    {
        $route = $request->getAttribute('route');
        $resource = $route->getRouteName();
        $role = $this->determineCurrentUserRole();

        // If the role is allowed to access the resource, process next middleware
        if ($this->acl->isAllowed($role, $resource)) {
            return $delegate->process($request);
        }

        // If the role is not allowed to access the resource, return a forbidden response
        return (new Response())->withStatus(403);
    }
}
```

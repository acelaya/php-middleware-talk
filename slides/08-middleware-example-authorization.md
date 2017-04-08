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

        // If the ACL does not have the resource, the access is allowed by default
        if ($this->acl->isAllowed($role, $resource)) {
            return $delegate->process($request);
        }

        // If none of the roles is allowed to access the resource, return a forbidden response
        return (new Response())->withStatus(403);
    }
}
```

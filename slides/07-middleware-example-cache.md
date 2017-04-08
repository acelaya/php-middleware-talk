### Cache middleware

<br>

```php
public CacheMiddleware implements MiddlewareInterface
{
    public function process(RequestInterface $request, DelegateInterface $delegate)
    {
        // If this route is already cached, return cached content
        $cacheKey = (string) $request->getUri();
        if ($this->cache->contains($cacheKey)) {
            $body = new Stream('php://temp', 'rw');
            $body->write($this->cache->fetch($cacheKey))
            return (new Response())->withBody($body);
        }

        // If this route has not been cached yet, process it and cache the result
        $resp = $delegate->process($request);
        $this->cache->save($cacheKey, (string) $resp->getBody());

        return $resp;
    }
}
```

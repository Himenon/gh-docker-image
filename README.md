## Build

### Full set version

```bash
docker build -f ubuntu21.10.Dockerfile -t gh:2.1.0 .
docker run -it gh:2.1.0 bash
```

### Tiny Version

```
docker build -f tiny-ubuntu21.10.Dockerfile -t tiny-gh:2.1.0 .
docker run -it tiny-gh:2.1.0 sh
```
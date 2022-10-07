# FastAPI
- python fast web framework 
- ASGI (Asynchronous Server Gateway Interface)
- Rest API


**Pros**
- high performance
- supports asynchronous (concurrency)
- inbuilt documentation support


**Cons**
- Lack security System
- small community

### Pipenv
- Python virtualenv , pakage managing

```
$ brew install pipenv
```

- install python llibrary
```
$ pipenv install
```


## fastapi Installation 
- Python 3.7+
- MacOS

```
$ pip install fastapi
```

- ASGI install
```
$ pip install "uvicorn[standard]
```



## Run
```
$ uvicorn main:app --reload
```
- ```reload``` :  make the server restart after code chages.

- http://localhost:8000 

**Swagger Docs**
- http://localhost:8000/docs

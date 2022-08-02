from fastapi import FastAPI
from .book import Book

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "world"}


@app.post("/book/{book_title}")
def search_book(book_title: str, book: Book):
    return {"book_title": book_title, "Book": book}

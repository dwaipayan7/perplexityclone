from fastapi import FastAPI

from pydantic_models.chat_body import ChatBody
from services.search_service import SearchService

#Testing FastAPI
# print("Dwaipayan")
# @app.get("/")
# def Print():
#     return {"message": "Dwaipayan"}

app = FastAPI()
search_service = SearchService()


@app.post("/chat")
def chat_endpoint(body: ChatBody):
    #search web find sources
    search_service.web_search(body.query)
    #sort sources
    #generate the response
    
    return body.query

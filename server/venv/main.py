
from fastapi import FastAPI

from pydantic_models.chat_body import ChatBody
from service.search_service import SearchService

app = FastAPI()

search_service = SearchService()

#chatting

@app.post("/chat")
def chat_endpoint(body: ChatBody):
    # print(body.query)
    search_service.web_search()

    return body.query


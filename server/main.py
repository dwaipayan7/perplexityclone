from fastapi import FastAPI
from pydantic_models.chat_body import ChatBody
from services.search_service import SearchService
from services.sort_source_service import SortSourceService

#Testing FastAPI
# print("Dwaipayan")
# @app.get("/")
# def Print():
#     return {"message": "Dwaipayan"}

app = FastAPI()
search_service = SearchService()
sort_source_service = SortSourceService()


@app.post("/chat")
def chat_endpoint(body: ChatBody):
    #search web find sources
    search_results = search_service.web_search(body.query)
    # print(search_results)
    #sort sources
    sorted_results = sort_source_service.sort_sources(body.query, search_results)

    print(sorted_results)
    #generate the response
    
    return body.query

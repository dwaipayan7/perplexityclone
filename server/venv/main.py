from fastapi import FastAPI, HTTPException
from pydantic_models.chat_body import ChatBody
from service.search_service import SearchService
import logging

# Set up logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

app = FastAPI()
search_service = SearchService()

@app.post("/chat")
async def chat_endpoint(body: ChatBody):
    try:
        logger.info(f"Received chat request with query: {body.query}")
        search_results = search_service.web_search(body.query)
        logger.info("Successfully processed chat request")
        return search_results
    except Exception as e:
        logger.error(f"Error processing chat request: {str(e)}")
        raise HTTPException(status_code=500, detail=str(e))


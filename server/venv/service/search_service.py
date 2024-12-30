from config import Settings
from tavily import TavilyClient
import logging

# Set up logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

settings = Settings()
logger.info(f"Tavily API Key: {settings.TAVILY_API_KEY[:5]}...")  # Log first 5 chars of API key
tavily_client = TavilyClient(settings.TAVILY_API_KEY)

class SearchService:
    def web_search(self, query: str):
        try:
            logger.info(f"Searching for query: {query}")
            response = tavily_client.web_search(query)
            logger.info("Search completed successfully")
            return response
        except Exception as e:
            logger.error(f"Error in web search: {str(e)}")
            raise
        
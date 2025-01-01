
from config import Settings
from tavily import TavilyClient


settings = Settings()
tavily_client = TavilyClient(settings.TAVILY_API_KEY)

class SearchService:
    def web_search(self, query:str):
        # print(Settings().TAVILY_API_KEY)
        response = tavily_client.search("Who is Ronaldo?")
        print(response)

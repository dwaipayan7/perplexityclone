from dotenv import load_dotenv
from pydantic_settings import BaseSettings
import os

load_dotenv()

# Debug print
print("TAVILY_API_KEY from env:", os.getenv("TAVILY_API_KEY"))

class Settings(BaseSettings):
    TAVILY_API_KEY: str
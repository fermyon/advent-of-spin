from gift_suggestions_generator import exports
from gift_suggestions_generator.exports.generator import Suggestions
# from spin_sdk import llm

class Generator(exports.Generator):
    def suggest(self, name: str, age: int, likes: str):
        # Implement your gift suggestion here
        return Suggestions("John Doe", "I bet John would be super happy with a new mechanical keyboard.")
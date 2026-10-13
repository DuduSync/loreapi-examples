"""LoreAPI quickstart with the OpenAI Python SDK.

Install:
    pip install openai

Run:
    LOREAPI_KEY=sk-lore-... python examples/python.py
"""

import os

from openai import OpenAI

client = OpenAI(
    base_url="https://loreapi.online/v1",
    api_key=os.environ.get("LOREAPI_KEY", "sk-lore-..."),
)

messages = [
    {"role": "system", "content": "You are a creative roleplay assistant."},
    {"role": "user", "content": "Start a short cyberpunk story."},
]

# Non-streaming
response = client.chat.completions.create(
    model="loreapi-rp",
    messages=messages,
)
print(response.choices[0].message.content)

# Streaming
stream = client.chat.completions.create(
    model="loreapi-rp",
    messages=messages,
    stream=True,
)
for chunk in stream:
    delta = chunk.choices[0].delta.content or ""
    print(delta, end="", flush=True)
print()

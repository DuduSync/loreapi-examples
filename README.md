# LoreAPI Examples

Working examples and setup guides for [LoreAPI](https://loreapi.online), an OpenAI-compatible AI API for roleplay and creative apps.

- 1M token context
- ~100 tokens/s
- Unfiltered
- From $2 per 200 credits

## Quickstart: just change the base_url

If you already use the OpenAI SDK, you are three lines away from LoreAPI:

```python
from openai import OpenAI

client = OpenAI(
    base_url="https://loreapi.online/v1",   # <- only this changes
    api_key="sk-lore-...",                  # <- your key
)

response = client.chat.completions.create(
    model="loreapi-rp",
    messages=[{"role": "user", "content": "Hello!"}],
)
print(response.choices[0].message.content)
```

Get your key at [loreapi.online](https://loreapi.online) and start building.

## Endpoints

| Method | Path | Description |
| --- | --- | --- |
| POST | `/v1/chat/completions` | Chat completions (streaming and non-streaming) |
| GET | `/v1/models` | List available models |
| GET | `/v1/account` | Balance, limits and usage for the current key |

Base URL: `https://loreapi.online/v1`
Model: `loreapi-rp`
Auth: `Authorization: Bearer sk-lore-...`

## Examples

| File | Description |
| --- | --- |
| [`examples/python.py`](examples/python.py) | OpenAI Python SDK, streaming and non-streaming |
| [`examples/node.js`](examples/node.js) | OpenAI Node SDK, streaming and non-streaming |
| [`examples/curl.sh`](examples/curl.sh) | Plain curl |

## Integrations

| Guide | App |
| --- | --- |
| [`integrations/sillytavern.md`](integrations/sillytavern.md) | SillyTavern |
| [`integrations/janitor-ai.md`](integrations/janitor-ai.md) | Janitor AI |
| [`integrations/agnai.md`](integrations/agnai.md) | Agnai |

## License

[MIT](LICENSE)

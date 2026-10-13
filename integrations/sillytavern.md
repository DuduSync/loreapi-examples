# SillyTavern

1. Open SillyTavern and go to **API Connections** (plug icon).
2. Set **API** to `Chat Completion`.
3. Set **Chat Completion Source** to `Custom (OpenAI-compatible)`.
4. Fill in:
   - **Custom Endpoint**: `https://loreapi.online/v1`
   - **API Key**: your `sk-lore-...` key
   - **Model**: `loreapi-rp`
5. Click **Connect**.

Tips:

- Leave the model list empty if you want and type `loreapi-rp` manually. The backend always serves the LoreAPI model.
- Streaming is supported, keep it enabled for the best experience.
- If you get an authentication error, double check the key was copied completely.

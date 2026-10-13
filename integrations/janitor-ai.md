# Janitor AI

1. Log in to [Janitor AI](https://janitorai.com) and open **Settings** > **API Settings**.
2. Set **API Type** to `Custom`.
3. Fill in:
   - **API URL**: `https://loreapi.online/v1/chat/completions`
   - **API Key**: your `sk-lore-...` key
   - **Model**: `loreapi-rp`
4. Save.

Notes:

- Janitor AI requires the **full endpoint path**. Make sure it ends with `/v1/chat/completions`, not just `/v1`.
- No extra headers are needed.
- If you see `Failed to fetch`, confirm the URL is exactly `https://loreapi.online/v1/chat/completions`.

// LoreAPI quickstart with the OpenAI Node SDK.
//
// Install:
//   npm install openai
//
// Run:
//   LOREAPI_KEY=sk-lore-... node examples/node.js

import OpenAI from "openai";

const client = new OpenAI({
  baseURL: "https://loreapi.online/v1",
  apiKey: process.env.LOREAPI_KEY ?? "sk-lore-...",
});

const messages = [
  { role: "system", content: "You are a creative roleplay assistant." },
  { role: "user", content: "Start a short cyberpunk story." },
];

// Non-streaming
const response = await client.chat.completions.create({
  model: "loreapi-rp",
  messages,
});
console.log(response.choices[0].message.content);

// Streaming
const stream = await client.chat.completions.create({
  model: "loreapi-rp",
  messages,
  stream: true,
});
for await (const chunk of stream) {
  process.stdout.write(chunk.choices[0]?.delta?.content ?? "");
}
process.stdout.write("\n");

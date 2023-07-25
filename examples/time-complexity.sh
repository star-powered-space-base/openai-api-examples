#!/bin/bash

curl https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d '{
  "model": "gpt-3.5-turbo",
  "messages": [
    {
      "role": "system",
      "content": "You will be provided with Python code, and your task is to calculate its time complexity."
    },
    {
      "role": "user",
      "content": "def foo(n, k):\n    accum = 0\n    for i in range(n):\n        for l in range(k):\n            accum += i\n    return accum"
    }
  ],
  "temperature": 0,
  "max_tokens": 256
}'


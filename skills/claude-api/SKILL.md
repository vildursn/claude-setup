---
name: claude-api
description: Best practices and current model info for building with the Anthropic Claude API and SDK. Load when working with anthropic SDK, prompt caching, tool use, streaming, or model selection.
---

## Models (as of 2025)

- `claude-sonnet-4-6` — default for most tasks
- `claude-opus-4-7` — complex reasoning, agentic tasks
- `claude-haiku-4-5-20251001` — fast, cheap, high-throughput

## Prompt Caching

Apply `cache_control: {type: "ephemeral"}` to large static content — system prompts, reference docs, tool definitions. Cache TTL is 5 minutes. Saves significant tokens on repeated calls.

```python
{"role": "user", "content": [
    {"type": "text", "text": long_static_content, "cache_control": {"type": "ephemeral"}},
    {"type": "text", "text": dynamic_query}
]}
```

## Streaming

Always prefer streaming for user-facing responses. Handle `message_start`, `content_block_delta`, and `message_stop` events.

## Tool Use

Check `stop_reason == "tool_use"` before processing tool calls. Always return tool results in the next message with `role: "user"` and `type: "tool_result"`.

## Extended Thinking

Enable with `thinking: {type: "enabled", budget_tokens: N}`. Requires `betas=["interleaved-thinking-2025-05-14"]` for interleaved mode. Do not cache thinking blocks.

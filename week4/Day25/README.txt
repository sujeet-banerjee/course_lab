LangFuse WEB: http://localhost:3000/
Sujeet.banerjee@gmail.com / Popp...5

LangFuse ORG:
{
name: "agentic-crew"
id: "cmraieitl0001p9076de9z4vf"
}


============================


LangFuse LLM config (for 'llm-as-a-judge') CONFIG
---------
LLM Adapter: openAI

Name: Groq-bootcamp

API Base URL
https://api.groq.com/openai/v1

** <<Graq secret key>>

Custom models:
- openai/gpt-oss-20b
- openai/gpt-oss-120b


INVocation:
---------------------
Invoke-RestMethod -Uri "http://host.docker.internal:5678/webhook-test/retrieve" -Method POST -ContentType "application/json" -Body '{"query":"As a new joiniee how many leaves am I entitled to, in a year?", "sessionId": "ABC123"}'
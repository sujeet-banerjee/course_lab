Although you originally suggested introducing LiteLLM on Day 20, I would defer it to Week 4. For Day 20, your learning objective is RAG evaluation, not model routing. Adding LiteLLM introduces another moving part (proxy configuration, credentials, routing) that doesn't change the evaluation concepts. You can evaluate your HR workflow exactly as it is today using Groq, then, in Week 4, swap Groq for LiteLLM without changing the workflow. That becomes a powerful demonstration of separation of concerns: evaluation is independent of the underlying model provider, while LiteLLM addresses operational concerns such as routing, failover, cost control, and observability. This also keeps Day 20 tightly focused and makes the transition into LLMOps much cleaner.


Read file:
/home/node/.n8n-files/day20/data/RAG_Ground_Truth.csv
/home/node/.n8n-files/day20/data/Test_Questions.csv

Write to file:
/home/node/.n8n-files/day20/data/RAG_Ground_Truth_Eval.csv
/home/node/.n8n-files/day20/data/Test_Questions_Eval.csv
echo '[OLLAMA] Checking the Host Access:'
docker run --rm curlimages/curl http://host.docker.internal:11434/
echo ' ------------- ' 

echo '[OLLAMA] Checking the Embedding:'
docker run --rm curlimages/curl -s -X POST http://host.docker.internal:11434/api/embeddings -H "Content-Type: application/json" -d '{\"model\": \"nomic-embed-text\", \"prompt\": \"This is a test to verify embeddings are working.\"}'
echo ' ------------- ' 


echo '[OLLAMA] Checking the Generation:'
docker run --rm curlimages/curl -s -X POST http://host.docker.internal:11434/api/generate -H "Content-Type: application/json" -d '{\"model\": \"llama3\", \"prompt\": \"Hello, are you working?\", \"stream\": false}'
echo ' ------------- ' 
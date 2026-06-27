curl http://localhost:4000/embeddings \
-H "Content-Type: application/json" \
-d '{
  "model":"nomic-embed-text",
  "input":"What is Kubernetes?"
}'
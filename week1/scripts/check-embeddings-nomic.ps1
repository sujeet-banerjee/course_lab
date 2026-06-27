$body = @{
    model = "ollama/nomic-embed-text"
    input = "Kubernetes is a container orchestration platform"
} | ConvertTo-Json

$response = Invoke-RestMethod `
    -Uri "http://localhost:4000/embeddings" `
    -Method Post `
    -ContentType "application/json" `
    -Body $body

$response.data[0].embedding.Length
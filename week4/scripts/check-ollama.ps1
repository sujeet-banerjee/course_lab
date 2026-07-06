$body = @{
    model  = "llama3"
    prompt = "What is Kubernetes?"
    stream = $false
} | ConvertTo-Json

$response = Invoke-RestMethod `
    -Uri "http://localhost:11434/api/generate" `
    -Method Post `
    -ContentType "application/json" `
    -Body $body

$response.response
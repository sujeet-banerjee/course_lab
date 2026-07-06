$response = Invoke-RestMethod `
    -Method POST `
    -Uri http://localhost:4000/chat/completions `
    -Headers @{
        "Content-Type"="application/json"
        "Authorization"="Bearer anything"
    } `
    -Body (@{
        model="gpt4o"
        messages=@(
            @{
                role="user"
                content="Explain RAG."
            }
        )
    } | ConvertTo-Json -Depth 5)

$response.choices[0].message.content
$response = Invoke-RestMethod `
    -Uri "http://localhost:4000/models"

$response.data |
    Select-Object id
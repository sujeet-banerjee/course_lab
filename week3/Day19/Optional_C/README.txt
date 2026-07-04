Qdrant
----------------

## Run sample queries on qdrant
http://host.docker.internal:6333/dashboard#/console


## Use of Filter
POST collections/mini_rag_hr_enriched/points/scroll
{
  "limit": 10,
  "filter": {
    "must": [
      {
        "key": "metadata.file_metadata.department",
        "match": {
          "any": [
            "Legal"
          ]
        }
      }
    ]
  }
}

OR,

POST collections/mini_rag_hr_enriched/points/scroll
{
  "filter": {
    "must": [
      {
        "key": "metadata.file_metadata.department",
        "match": {
          "any": [
            "HR"
          ]
        }
      }
    ]
  }
}
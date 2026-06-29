# POSTGres details:
    image: pgvector/pgvector:pg15
    container_name: postgres_db
    environment:
      - HOST=host.docker.internal #(Not localhost!)
      - POSTGRES_USER=ai_user
      - POSTGRES_PASSWORD=ai_password
      - POSTGRES_DB=ai_database
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data


# Commands

| Task                  | Command          |
| --------------------- | ---------------- |
| List databases        | `\l`             |
| Connect to a database | `\c ai_database` |
| List tables           | `\dt`            |
| Describe a table      | `\d table_name`  |
| List schemas          | `\dn`            |
| Quit                  | `\q`             |

# 
SELECT * FROM n8n_day12_chat_histories;


# Insert into test_sujeet."TEST_PERSISTENCE" (name, date)
VALUES ('Sujeet', CURRENT_TIMESTAMP);
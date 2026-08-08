For N8N Ecosystem, use the agentic-crew docker compose:
...


Qdrant dashboard
http://host.docker.internal:6333/dashboard


N8N:
http://localhost:5678/


PGadmin:
---Conn ---
(host.docker.internal:5432)
localhost:5432
ai_user / ai_password 
--- databases (each has one credential) ---
CHAT_MEM: chat_mem_day12
LITELLM: ai_database
INFERENCE LOGS: week4

CockroachDB
===========

cloud name: wise-bootcamper
Cloud login: sujeet / 3xqjqWXdxn-UBj-OHDk2yg 

CONN:
Connection login: sujeet / YiYQsdHuwiJs-JGdr8EWSA

Schema: public
Maintenance DB: defaultdb
DB: week2
Host: wise-bootcamper-18741.jxf.gcp-asia-south1.cockroachlabs.cloud
port: 26257


Create the table:

CREATE TABLE REGISTER (
  NAME  VARCHAR(50) PRIMARY KEY,
  EXPERIENCE INT8,
  COURSE VARCHAR(50),
  TIME  VARCHAR(50),
  CATEGORY  VARCHAR(50) ,
  ASSIGNED_TRACK  VARCHAR(50)
)

==================================








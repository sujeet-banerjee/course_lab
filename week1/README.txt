# Already done: 
#  python -m venv venv

# Activate:
.\venv\Scripts\activate

# Already done Installs:
# pip install openai pandas litellm jupyter

# If incorrect versions installed
# pip uninstall ragas langchain langchain-community -y

pip install openai pandas litellm jupyter datasets 

# Correct versions: langchain_openai  langchain_community ragas
# pip install ragas==0.2.15 langchain==0.3.26 langchain-community==0.3.27
# pip install --force-reinstall langchain-community==0.3.27


# Check/Verify
python -c "from langchain_community.chat_models.vertexai import ChatVertexAI; print('OK')"
python -c "from ragas.metrics import faithfulness, answer_relevancy; print('RAGAS OK')"


import streamlit as st
import pandas as pd
import plotly.express as px


df = pd.read_csv(
    "evaluation_results.csv"
)

st.title(
    "AI Evaluation Dashboard"
)

col1,col2 = st.columns(2)

with col1:
    st.metric(
        "Faithfulness",
        round(
            df["faithfulness"].mean(),
            2
        )
    )

with col2:
    st.metric(
        "Answer Relevance",
        round(
            df["answer_relevancy"].mean(),
            2
        )
    )

fig = px.bar(
    df,
    x="user_input",
    y="faithfulness",
    title="Faithfulness by Question"
)

st.plotly_chart(fig)

st.subheader(
    "Detailed Results"
)

st.dataframe(df)

st.subheader(
    "Potential Hallucinations"
)

hallucinations = df[
    df["faithfulness"] < 0.7
]

st.dataframe(
    hallucinations
)
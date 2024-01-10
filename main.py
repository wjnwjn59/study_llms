from langchain.llms import OpenLLM

llm = OpenLLM(model_name="dolly-v2", model_id='databricks/dolly-v2-7b')
res = llm("Create a self introduction for me.")

print(res)
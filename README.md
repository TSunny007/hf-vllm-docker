# hf-vllm-docker
 Docker image to serve a LLM on vLLM using Huggingface inference endpoints.
 Docker image is https://hub.docker.com/r/tsunkaraneni/vllm-openai-hf

 Example usage:
 Model Configuration
<img width="916" alt="Screenshot 2024-08-07 at 10 32 37 AM" src="https://github.com/user-attachments/assets/d2dc9c06-ecb6-4812-8221-861db5ea0827">

Advanced configuration:
<img width="897" alt="Screenshot 2024-08-07 at 11 15 01 AM" src="https://github.com/user-attachments/assets/324fd8b4-92e2-4bfd-9897-b0ec9fa31971">

After your deploy this image on a model such as https://huggingface.co/neuralmagic/Meta-Llama-3.1-8B-Instruct-FP8⁠, you can run the following:

```python
from openai import OpenAI
client = OpenAI(
    base_url="https://<hf instance details>.endpoints.huggingface.cloud/v1",
    api_key="<hf_token>",
)

completion = client.chat.completions.create(
  model="/repository",
  messages=[
    {"role": "user", "content": "Hello!"}
  ]
)

print(completion.choices[0].message)
```

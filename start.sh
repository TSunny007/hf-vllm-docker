#!/bin/sh

# Default values for environment variables
: ${DTYPE:=auto}
: ${MAX_MODEL_LEN:=819}
# https://huggingface.co/docs/inference-endpoints/guides/custom_container
: ${MODEL_DIR:=/repository}

# Run the vllm serve command with the specified parameters
vllm serve $MODEL_DIR --dtype $DTYPE --max_model_len $MAX_MODEL_LEN

# ChatGPT Retrieval Plugin

> **Join the [ChatGPT plugins waitlist here](https://openai.com/waitlist/plugins)!**

Este es un ajuste para ejecutar el ChatGPT Retrieval Plugin en un contenedor local.
La configuracion esta hecha para usar un como base de datos de vector Pinecode.

#### General Environment Variables

The API requires the following environment variables to work:

| Name             | Required | Description                                                                                                                                                                                |
| ---------------- | -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `DATASTORE`      | Yes      | This specifies the vector database provider you want to use to store and query embeddings. You can choose from `pinecone`, `weaviate`, `zilliz`, `milvus`, `qdrant`, or `redis`.           |
| `BEARER_TOKEN`   | Yes      | This is a secret token that you need to authenticate your requests to the API. You can generate one using any tool or method you prefer, such as [jwt.io](https://jwt.io/).                |
| `OPENAI_API_KEY` | Yes      | This is your OpenAI API key that you need to generate embeddings using the `text-embedding-ada-002` model. You can get an API key by creating an account on [OpenAI](https://openai.com/). |
| `PINECONE_API_KEY` | Yes      | Este es el API Key para conectarse a la base de datos de PineCone|
| `PINECONE_INDEX` | Yes      | El nombre que tendra el indice de PineCone a crear PineCone|
| `PINECONE_ENVIRONMENT` | Yes      | Al crear el ambiente en PineCode se debe obtener este valor que es necesario para crear el indice|



1. Construir la imagen del contendor

  make build



2. Setear las variables de ambiente requeridas

   ```
  export MY_APP = chatgpt
  export BAREN_TOKEN = <your_baren_token_api_key>
  export OPENAI_API_KEY = <your_openai_api_key>
  export PINECONE_API_KEY = <your_pinecone_api_key>
  export PINECONE_INDEX = chatgpt-ret
  export PINECONE_ENVIRONMENT = us-west1-gcp-free

   ```

3. Run the API locally: `make run`


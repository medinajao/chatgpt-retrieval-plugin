# Heroku
# make heroku-login
# make heroku-push

build:
	docker build -t ${MY_APP} .

run:
	docker run -ti -e DATASTORE=pinecone \
	-e BEARER_TOKEN=${BEARER_TOKEN} \
	-e OPENAI_API_KEY=${OPENAI_API_KEY} \
	-e PINECONE_API_KEY=${PINECONE_API_KEY} \
	-e PINECONE_INDEX=${PINECONE_INDEX} \
	-e PINECONE_ENVIRONMENT=${PINECONE_ENVIRONMENT} \
	--network="host" \
	--name mychatgpt ${MY_APP}

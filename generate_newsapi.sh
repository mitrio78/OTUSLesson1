# generate newsAPI script

MODULE="Modules/NewsAPINetworking/Sources/NewsAPINetworking/"

openapi-generator generate -i "newsapi.yml" -g swift5 -o "newsapigen"
rm -r $MODULE""*
cp -R "newsapi/OpenAPIClient/Classes/OpenAPIs/". $MODULE
rm -r "newsapi"

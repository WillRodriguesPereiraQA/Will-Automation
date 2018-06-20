# require 'rest-client'
# require 'json-schema'
#
# url = "http://www.testdatamanagerhlg.net/skus?request.sku.qtdeRegistros=1"
# api = RestClient.get(url)
# json = JSON.parse(api)
#
# MD = {
#   tag:{
#     normal:[json['skus'][0]['idSku']]
#   }
# }

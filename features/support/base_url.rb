module Employee 
    include HTTParty
    # @token = HTTParty.post("Url Da Api De Token")
    base_uri 'http://dummy.restapiexample.com/api/v1'
    format :json
    headers 'Content-type': 'application/json'
    # se tiver token fixo  (...json', 'Authorization': 'Bearer Valor Do Token' )
    # caso ele seja dinamico vai ser feito um post com as informações que eu
    # pra pegar o msm com: (...json', 'Authorization': 'Bearer ' + @token.parsef_response['Campo Do Response Que Retorne o Token']) 
end


#Senderos UN
## SOAP SERVICE 

Se ingresa el id de un user y se retorna el mail, la cantiad de rutas, y un mensaje.

- Request: 
~~~
<soapenv:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:urn="urn:WashOutBank">
   <soapenv:Header/>
   <soapenv:Body>
      <urn:getCountPlaces soapenv:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">
         <idUser xsi:type="xsd:int">1</idUser>
      </urn:getCountPlaces>
   </soapenv:Body>
</soapenv:Envelope>
~~~

- Response:
~~~
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tns="urn:WashOutBank">
   <soap:Body>
      <tns:getCountPlacesResponse>
         <user xsi:type="xsd:string">dacherreragu@unal.edu.co</user>
         <countPlaces xsi:type="xsd:int">-1</countPlaces>
         <message xsi:type="xsd:string">User has been obtained successfully</message>
      </tns:getCountPlacesResponse>
   </soap:Body>
</soap:Envelope>
~~~

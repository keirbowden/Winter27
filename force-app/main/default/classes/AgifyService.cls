public class AgifyService {
    private static String AGIFY_API_URL = 'https://api.agify.io/';
    
    public class AgifyResponse {
        public Integer count;
        public String name;
        public Integer age;
    }

    public static AgifyResponse getAge(String name) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint(
            AGIFY_API_URL + '?name=' +
            EncodingUtil.urlEncode(name, 'UTF-8')
        );

        req.setMethod('GET');
        Http http = new Http();
        HttpResponse res = http.send(req);
        if (res.getStatusCode() == 200) {
            return (AgifyResponse) JSON.deserialize(
                res.getBody(),
                AgifyResponse.class
            );
        }
        else {
            throw new CalloutException(
                'Callout failed: ' +
                res.getStatusCode() +
                ' ' +
                res.getStatus()
            );
        }
    }
}
public class RESTLimitResource {

    public String JSONtext {get;set;}

    public RESTLimitResource() {
        HttpRequest req = new HttpRequest();
        Http http = new Http();
        req.setMethod('GET');
        String url = System.URL.getSalesforceBaseURL().toExternalForm() +'/services/data/v37.0/limits';
        req.setHeader('Authorization', 'OAuth ' + UserInfo.getSessionId());
        req.setEndpoint(url);
        HTTPResponse resp = http.send(req);
        JSONtext = resp.getBody();
    }
 
}

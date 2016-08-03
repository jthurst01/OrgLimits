public class RESTLimitResource {
    
    public static String JSONtext {get;set;}

    public RESTLimitResource() {
        JSONtext = getLimitsResp().getBody();
    }
 
    public static HttpResponse getLimitsResp() {
        HttpRequest req = new HttpRequest();
        Http http = new Http();
        req.setMethod('GET');
        String url = System.URL.getSalesforceBaseURL().toExternalForm() +'/services/data/v37.0/limits';
        req.setHeader('Authorization', 'OAuth ' + UserInfo.getSessionId());
        req.setEndpoint(url);
        return http.send(req);
    }
<<<<<<< HEAD
}
=======
 
}
>>>>>>> jthurst01/master

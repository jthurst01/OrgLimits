@isTest
global class RESTLimitResourceMock implements HttpCalloutMock  {

    global HTTPResponse respond(HTTPRequest req) {
        System.assertEquals(System.URL.getSalesforceBaseURL().toExternalForm() +'/services/data/v35.0/limits', req.getEndpoint());
        System.assertEquals('GET', req.getMethod());
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"foo":"bar"}');
        res.setStatusCode(200);
        return res;
    }
}
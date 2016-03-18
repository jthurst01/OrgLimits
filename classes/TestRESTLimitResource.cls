@isTest(OnInstall=true)
public class TestRESTLimitResource {

    @isTest
    public static void testRESTLimitResource() {
       	PageReference pageRef = Page.OrgLimits;
       	Test.setCurrentPage(pageRef);
       	Test.setMock(HttpCalloutMock.class, new RESTLimitResourceMock());
				String output = RESTLimitResource.JSONtext;
       	System.assertEquals(output, null);
        output = 'Testing a string';
        RESTLimitResource.JSONtext = output;
        output = RESTLimitResource.JSONtext;
        System.assertEquals(output, 'Testing a string');
        HttpResponse res = RESTLimitResource.getLimitsResp();
        String contentType = res.getHeader('Content-Type');
        System.assert(contentType == 'application/json');
        String actualValue = res.getBody();
        String expectedValue = '{"foo":"bar"}';
        System.assertEquals(actualValue, expectedValue);
        System.assertEquals(200, res.getStatusCode());
    }
}

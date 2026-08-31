@IntegrationTest
public with sharing class AgifyServiceIntegrationTest {
    @IntegrationTest
    public static void testServiceInteraction() {
        AgifyService.AgifyResponse resp=AgifyService.getAge('Keir Bowden');
        Assert.areEqual('Keir Bowden', resp.name, 
            'The name returned from the service should match the input name.');
    }
}
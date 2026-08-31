@IntegrationTest
public with sharing class AgifyServiceIntegrationTest {
    @IntegrationTest
    public static void testServiceInteraction() {
        AgifyService.AgifyResponse resp=AgifyService.getAge('Keir Bowden');
        System.debug('Age estimate = ' + resp.age);    
    }
}
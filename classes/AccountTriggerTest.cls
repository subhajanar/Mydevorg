@isTest
public class AccountTriggerTest {

    @isTest static void TestCreate200Records(){
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i, BillingState = 'CA');
            
            Test.startTest();
            insert acct;
            accts.add(acct);
            Test.stopTest();
            for (Account a:accts){
                System.assertEquals('CA', a.ShippingState, 'ERROR');
            }

    }
}
}
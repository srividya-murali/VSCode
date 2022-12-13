@isTest
    public with sharing class TestAccountController {
        @isTest
            public static void testGetAllActiveAccounts() {
                Account account = new Account(Name = 'Test Account', Active__c = 'Yes');
                insert account;

                List<Account> accList = AccountController.getAllActiveAccounts();
                system.assertequals(1,accList.size());
    }
}

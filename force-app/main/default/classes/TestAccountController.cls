@isTest
    public with sharing class TestAccountController {
        @isTest
            public static void TestGetAllActiveAccounts() {
                Account account = new Account(Name = 'Test Account', Active__c = 'Yes');
                insert account;

                List<Account> accList = AccountController.GetAllActiveAccounts();
                system.assertequals(1,accList.size());
    }
}

// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

List<Account> accounts = [SELECT name,Active__c FROM Account WHERE Active__c = 'No' LIMIT 2];
for(Account acc : accounts){
    acc.Active__c = 'Yes';
}
Database.update(accounts);
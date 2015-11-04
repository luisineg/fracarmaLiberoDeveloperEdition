@IsTest
public class triggerTest {

    private static void dataPreparation () {
            Account testAccount = new Account(Name = 'Test Account ');
            insert testAccount;
            Order testOrder = new Order(Name = 'Test Order ',EffectiveDate=system.today(),status='draft');
            testOrder.AccountId = testAccount.Id;
            system.debug('@@order ' + testOrder);
            insert testOrder;
            
            testAccount = [Select Id FROM Account LIMIT 1];
            testOrder = [Select Id FROM Order LIMIT 1];
            Damage__c testDamage = new Damage__c();
            testDamage.Account__c = testAccount.Id;
            testDamage.Order__c = testOrder.Id;
            testDamage.Description__c = 'Description';
            testDamage.Entity_Cost__c = 100;
            testDamage.Stage__c = null;
            insert testDamage;
    }
    @isTest
    public static void testTriggerStage()
    {
            dataPreparation();
            Test.startTest();
            Damage__c testDamage = [SELECT Id, Stage__c FROM Damage__c LIMIT 1];
            testDamage.Stage__c = 'Internal Assessment';
            update testDamage;
            
                     
            testDamage.Stage__c = 'Insurance Company';
            update testDamage;
            testDamage.Stage__c = 'Awaiting Compensation';
            update testDamage;
            testDamage.Stage__c = 'Completed';
            update testDamage;
             try{
                testDamage.Stage__c = 'Insurance Company';
                update testDamage;
            } catch (Exception e){} 
            testDamage = [SELECT Id, Stage__c FROM Damage__c WHERE Id =:testDamage.Id];
            Test.stopTest();
            
    }
}
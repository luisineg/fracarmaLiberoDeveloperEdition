trigger Position on Object__c (before insert, before update) {
    
    Object__c[] listO =  Trigger.New;
    System.debug('Sono entrato nel trigger');
    for(Object__c O : listO){
        o.Max_payment__c *= 0.5;
    }
    
    if(Trigger.isUpdate){
        Position_TriggerHandler.checkStatus();
    }
	
}
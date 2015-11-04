public class Position_TriggerHandler {
    
    public static void checkStatus(){
    	Map<Id, Object__c> oldMap = (Map<Id, Object__c>) Trigger.OldMap;
        Map<Id, Object__c> newMap =  (Map<Id, Object__c>) Trigger.newMap;
        
        for(Id key : oldMap.keySet()){
            Object__c old = oldMap.get(key);
            Object__c newO = newMap.get(key);
            if(old.Approved__c && !newO.Approved__c ){
                newO.addError('Non puoi riaprire una posizione già chiusa!!');
                newO.Approved__c = true;
            }
        }
        
    }
}
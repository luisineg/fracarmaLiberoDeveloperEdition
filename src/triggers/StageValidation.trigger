trigger StageValidation on Damage__c (before update) {

  

    for (Integer x = 0; x < Trigger.New.size(); x++) {

        Damage__c dNew = Trigger.new[x];
        Damage__c dOld = Trigger.old[x];

        String stageNext
            = (dOld.Stage__c == null) ? 'Internal Assessment'
              : (dOld.Stage__c == 'Internal Assessment') ? 'Insurance Company'
              : (dOld.Stage__c == 'Insurance Company') ? 'Awaiting Compensation'
              : (dOld.Stage__c == 'Awaiting Compensation') ? 'Completed'
              : (dOld.Stage__c == 'Completed') ? 'Completed' : 'Caso non gestito';

        if (dNew.Stage__c != stageNext) {
            dNew.addError('The new stage ' + dNew.Stage__c + ' is not permitted. The next stage have to be ' + stageNext);

        }
    }
}


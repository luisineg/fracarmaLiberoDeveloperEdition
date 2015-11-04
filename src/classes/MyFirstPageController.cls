public with sharing class MyFirstPageController {

	private final sObject mysObject;

    public String helloWorld {
        get {
            if(checkBox){
                return 'ON';
            } else {
                return 'OFF';
            }
        }

        private set;}
    public Boolean checkBox {get;set;}



    // The extension constructor initializes the private member
    // variable mysObject by using the getRecord method from the standard
    // controller.
    public MyFirstPageController(ApexPages.StandardController stdController) {
        this.mysObject = (sObject)stdController.getRecord();
        checkBox = false;
    }

    //public String getHelloWorld(){
    //    return helloWorld;
    //}

    //public void setHelloWord(String par){
    //    this.helloWorld = par;
    //}

}
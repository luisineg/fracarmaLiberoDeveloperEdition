public class SecondaClasse {
    
    String res;
    
    Integer a;
    Integer b;
    
    public SecondaClasse(){
        
    }
    
    public SecondaClasse(Integer a, Integer b){
        this.a = a;
        this.b = b;
    }
    
    public String sayHelloWorld(){
        return 'Hello World';
    }
    
    public Integer aPiuB(){
        return a+b;
    }
    
    public static List<String> createRandomList(Integer l){
        List<String> lS = new List<String>();
        for(Integer i=0; i<l;i++){
            lS.add('Stringa '+i);
        }
        
        return lS;
    }
    

}
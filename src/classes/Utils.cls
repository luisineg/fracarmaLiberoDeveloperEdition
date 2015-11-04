public class Utils {
    
     public static List<String> createRandomList(Integer l){
        List<String> lS = new List<String>();
        for(Integer i=0; i<l;i++){
            lS.add('Stringa '+i);
        }
        
        return lS;
    }

}
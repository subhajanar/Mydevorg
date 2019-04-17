public class AccountHandler {
    public static Account insertNewAccount(String name) {
        Account act = new Account(Name=name);   
        try { 
        insert act;
        return act;
        }
        catch(DmlException e) {
        
        }
        return null;
    }
}
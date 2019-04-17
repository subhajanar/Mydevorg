public class ContactSearch {
    public static List<Contact> searchForContacts(String lstname,String mpc ) {
    List<Contact> cnt = new List<Contact>();
    cnt = [Select Id,name from Contact where LastName = :lstname and MailingPostalCode=:mpc];    
    return cnt;       
    }
}
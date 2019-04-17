public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String Smith) {
        Contact cnt = new Contact(LastName='Smith');
        insert cnt;
        Lead ld = new Lead(LastName = 'Smith',Company='ActioNet');
        insert ld;
        List<List<SObject>> searchList = [FIND 'Smith' IN ALL FIELDS RETURNING Contact(FirstName,LastName) ,Lead(FirstName,LastName)];
        return searchList;
    }
}
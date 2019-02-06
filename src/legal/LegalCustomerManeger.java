package legal;

public class LegalCustomerManeger {
    public void legal(LegalCustomer legalCustomer){
        LegalCustomerCRUD legalCustomerCRUD=new LegalCustomerCRUD();
        legalCustomerCRUD.insert(legalCustomer);
        legalCustomerCRUD.close();
    }

}

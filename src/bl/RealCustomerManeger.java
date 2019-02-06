package bl;

import da.RealCustomerDA;
import to.RealCustomer;

public class RealCustomerManeger {
    public void rgisterPerson(RealCustomer realCustomer){
        RealCustomerDA realCustomerDA = new RealCustomerDA();
        realCustomerDA.insert(realCustomer);
        realCustomerDA.close();

    }
}

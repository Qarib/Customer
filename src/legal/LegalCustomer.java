package legal;

public class LegalCustomer {
    private int customerNumber;
    private String companyName;
    private String companyRegistrationDate;
    private String economicalNumber;

    public long getCustomerNumber() {
        return customerNumber;
    }

    public void setCustomerNumber(int customerNumber) {
        this.customerNumber = customerNumber;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyRegistrationDate() {
        return companyRegistrationDate;
    }

    public void setCompanyRegistrationDate(String companyRegistrationDate) {
        this.companyRegistrationDate = companyRegistrationDate;
    }

    public String getEconomicalNumber() {
        return economicalNumber;
    }

    public void setEconomicalNumber(String economicalNumber) {
        this.economicalNumber = economicalNumber;
    }
}

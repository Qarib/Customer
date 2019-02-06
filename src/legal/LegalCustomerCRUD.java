package legal;

import java.sql.*;
import java.util.ArrayList;

public class LegalCustomerCRUD {
    private Connection connection;
    private PreparedStatement statement;

    public void insert(LegalCustomer legalCustomer){
        try {

            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/da_3?user=root&password=12345");
            statement=connection.prepareStatement("insert into legalcustomer (companyName, companyRegistrationDate, economicalNumber) VALUES (?,?,?)");
            statement.setString(1,legalCustomer.getCompanyName());
            statement.setString(2,legalCustomer.getCompanyRegistrationDate());
            statement.setString(3,legalCustomer.getEconomicalNumber());
            statement.executeUpdate();

        }catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        }
    }public void close(){
        try {
            connection.close();
            statement.close();
        }catch (SQLException e){
            e.printStackTrace();

        }
    }
public ArrayList<LegalCustomer> select(String customerNumber , String companyName , String companyRegistrationDate , String economicalNumber) {
    String sql = "";
    int num = 0;
    StringBuilder sb = new StringBuilder("select * from legalcustomer where ");
    if (customerNumber != null && !customerNumber.equals("")) {
        sb.append("customerNumber = ?");
        sql = customerNumber;
    }
    if (companyName != null && !companyName.equals("")) {
        if (num > 0) {
            sb.append(" && companyName = ?");

        } else {

            sb.append("companyName = ?");
            sql = companyName;
        }
    }
    if (companyRegistrationDate != null && !companyRegistrationDate.equals("")) {
        if (num > 0) {
            sb.append("&& companyRegistrationDate = ?");

        } else {
            sb.append("companyRegistrationDate = ?");
            sql = companyRegistrationDate;
        }
    }
    if (economicalNumber != null && !economicalNumber.equals("")) {

        sb.append("economicalNumber = ?");
        sql = economicalNumber;
    }

    ArrayList<LegalCustomer> legalCustomers = new ArrayList<>();
    try {

        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/da_3?user=root&password=12345");
        if (customerNumber.equals("") && companyName.equals("") && companyRegistrationDate.equals("") && economicalNumber.equals("")) {
            statement = connection.prepareStatement("select * from legalcustomer");
        }else {
            statement = connection.prepareStatement(String.valueOf(sb));
            statement.setString(1,sql);
        }
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()){
            LegalCustomer legalCustomer = new LegalCustomer();
            legalCustomer.setCustomerNumber(resultSet.getInt("customerNumber"));
            legalCustomer.setCompanyName(resultSet.getString("companyName"));
            legalCustomer.setCompanyRegistrationDate(resultSet.getString("companyRegistrationDate"));
            legalCustomer.setEconomicalNumber(("economicalNumber"));
            legalCustomers.add(legalCustomer);
        }

    }catch (ClassNotFoundException | SQLException e){
        e.printStackTrace();
    }
 return legalCustomers;
}
public void Update(int customerNumber, LegalCustomer legalCustomer){
    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/da_3?user=root&password=12345");
        StringBuilder update = new StringBuilder("Update legalcustomer set ");
        if (legalCustomer.getCompanyName() != null && !legalCustomer.getCompanyName().equals("")) {
            update= new StringBuilder("Update legalcustomer set ");
            update.append("companyName=? where customerNumber =? ");
            statement = connection.prepareStatement(String.valueOf(update));
            statement.setInt(2,(customerNumber));
            statement.setString(1, legalCustomer.getCompanyName());
            statement.executeUpdate();
        }
        if (legalCustomer.getCompanyRegistrationDate() !=null && !legalCustomer.getCompanyRegistrationDate().equals("")){
            update= new StringBuilder("Update legalcustomer set ");
            update.append("companyRegistrationDate =? where customerNumber =?");
            statement = connection.prepareStatement(String.valueOf(update));
            statement.setInt(2,(customerNumber) );
            statement.setString(1,legalCustomer.getCompanyRegistrationDate());
            statement.executeUpdate();
        }
        if (legalCustomer.getEconomicalNumber() !=null && !legalCustomer.getEconomicalNumber().equals("")){
            update= new StringBuilder("Update legalcustomer set ");
            update.append("economicalNumber =? where customerNumber =?");
            statement=connection.prepareStatement(String.valueOf(update));
            statement.setInt(2, (customerNumber));
            statement.setString(1,(legalCustomer.getEconomicalNumber()));
            statement.executeUpdate();

        }
    }catch (ClassNotFoundException | SQLException e){
        e.printStackTrace();
    }
}
 public ArrayList<LegalCustomer> selectForUpdate(int customerNumber){
        ArrayList<LegalCustomer> legalCustomers = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/da_3?user=root&password=12345");
            statement=connection.prepareStatement("select * from legalcustomer where customerNumber =?");
            statement.setInt(1,(customerNumber));
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                LegalCustomer legalCustomer = new LegalCustomer();
                legalCustomer.setCustomerNumber(resultSet.getInt("customerNumber"));
                legalCustomer.setCompanyName(resultSet.getString("companyName"));
                legalCustomer.setCompanyRegistrationDate(resultSet.getString("companyRegistrationDate"));
                legalCustomer.setEconomicalNumber(resultSet.getString("economicalNumber"));
                legalCustomers.add(legalCustomer);
            }
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
        return legalCustomers;
}
public void Delete(int customerNumber){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/da_3?user=root&password=12345");
            statement=connection.prepareStatement("delete from legalcustomer where customerNumber =?");
            statement.setInt(1, (customerNumber));
            statement.executeUpdate();
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }

}
}

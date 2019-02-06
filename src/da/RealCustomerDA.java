package da;

import to.RealCustomer;

import java.sql.*;
import java.util.ArrayList;

public class RealCustomerDA {
    private Connection connection;
    private PreparedStatement statement;
    RealCustomer realCustomer = new RealCustomer();


    public void insert(RealCustomer realCustomer) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/da_3?user=root&password=12345");
            statement = connection.prepareStatement("insert into realcustomer(name, family, fatherName, dateOfBirth, nationalCode) values (?,?,?,?,?)");
            statement.setString(1, realCustomer.getName());
            statement.setString(2, realCustomer.getFamily());
            statement.setString(3, realCustomer.getFatherName());
            statement.setString(4, realCustomer.getDateOfBirth());
            statement.setString(5, realCustomer.getNationalCode());
            statement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void close() {
        try {

            connection.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();

        }
    }

    public ArrayList<RealCustomer> select(String customerNumber, String name, String family, String fatherName, String dateOfBirth, String nationalCode) {
        int num=0;
        int index=1;
        String str = "";
        StringBuilder sb = new StringBuilder("select * from person where ");
        if (customerNumber != null && !customerNumber.equals("")) {
            sb.append("customerNumber = ?");
            str = customerNumber;
        }
        if (name != null && !name.equals("")) {
            if (num>0){
                sb.append("&& name = ?");
            }else {
                sb.append("name = ?");
                str = name;
            }

        }
        if (family != null && !family.equals("")) {
            if (num>0){
                sb.append("&& family = ?");
            }else {
                sb.append("family= ?");
                str = family;
            }
        }
        if (fatherName != null && !fatherName.equals("")) {
            if (num>0){
                sb.append("&& fatherName = ?");
            }else {
                sb.append("fatherName= ?");
                str = fatherName;
            }
        }
        if (dateOfBirth != null && !dateOfBirth.equals("")) {
            if (num>0){
                sb.append("&& dateOfBirth = ?" );
            }else {
                sb.append("dateOfBirth");
                str = dateOfBirth;
            }
        }
        if (nationalCode != null && !nationalCode.equals("")) {
            sb.append("meliCod=?");
            str = nationalCode;

        }
        ArrayList<RealCustomer> personTos = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/da_3?user=root&password=12345");
            if (customerNumber.equals("") && name.equals("") && family.equals("") && fatherName.equals("") && dateOfBirth.equals("") && nationalCode.equals("")) {

                statement=connection.prepareStatement("select *from realcustomer");

//            } if(index>=2){
//                statement=connection.prepareStatement(String.valueOf(sb));
//                int parameter=1;
//                for (int i=1;i<=num;i++){
//
//
//
//
//                }
            }
            else {
            statement = connection.prepareStatement(String.valueOf(sb));
            statement.setString(1, str);}


            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                realCustomer = new RealCustomer();
                realCustomer.setId(resultSet.getLong("customerNumber"));
                realCustomer.setName(resultSet.getString("name"));
                realCustomer.setFamily(resultSet.getString("family"));
                realCustomer.setFatherName(resultSet.getString("fatherName"));
                realCustomer.setDateOfBirth(resultSet.getString("dateOfBirth"));
                realCustomer.setNationalCode(resultSet.getString("nationalCode"));

                personTos.add(realCustomer);

            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return personTos;
    }
    public void Update(long customerNumber, RealCustomer realCustomer ){
        try {


            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/da_3?user=root&password=12345");
            StringBuilder update =new StringBuilder("Update realcustomer Set ");
            if (realCustomer.getName() !=null && !realCustomer.getName().equals("")){
                update.append("name =? where customerNumber =?");
                statement=connection.prepareStatement(String.valueOf(update));
                statement.setLong(2, customerNumber);
                statement.setString(1,realCustomer.getName());
                statement.executeUpdate();

            }
            if (realCustomer.getFamily() !=null && !realCustomer.getFamily().equals("")){
                update=new StringBuilder("Update realcustomer Set ");
            update.append("family =? where customerNumber =?");
            statement= connection.prepareStatement(String.valueOf(update));
            statement.setLong(2,customerNumber);
            statement.setString(1,realCustomer.getFamily());
            statement.executeUpdate();
            }
            if (realCustomer.getFatherName() !=null && !realCustomer.getFatherName().equals("")){
                update=new StringBuilder("Update realcustomer Set ");
                update.append("fatherName =? where customerNumber = ?");
                statement.setLong(2,customerNumber);
                statement.setString(1,realCustomer.getFatherName());
                statement.executeUpdate();

            }
            if (realCustomer.getDateOfBirth() != null && !realCustomer.getDateOfBirth().equals("")) {
                update=new StringBuilder("Update realcustomer Set ");
                update.append("dateOfBirth = ? where customerNumber = ?");
                statement.setLong(2, customerNumber);
                statement.setString(1, realCustomer.getDateOfBirth());
                statement.executeUpdate();
            }
            if (realCustomer.getNationalCode() !=null && !realCustomer.getNationalCode().equals("")){
                update=new StringBuilder("Update realcustomer Set ");
                update.append("meliCod =? where customerNumber = ?");
                statement.setLong(2,customerNumber);
                statement.setString(1,realCustomer.getNationalCode());
                statement.executeUpdate();
            }
        }catch (ClassNotFoundException |SQLException e){
            e.printStackTrace();
        }

    }
    public void Delete( long customerNumber){
        try {


            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/da_3?user=root&password=12345");
            statement= connection.prepareStatement("delete from realcustomer where customerNumber = ? ");
            statement.setLong(1,customerNumber);
            statement.executeUpdate();

        }catch (SQLException |ClassNotFoundException e){
            e.printStackTrace();
        }

    }
    public ArrayList<RealCustomer> UpdateResult(long customerNumber){
       ArrayList<RealCustomer>realCustomers=new ArrayList<>();
       try {
           Class.forName("com.mysql.jdbc.Driver");
           connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/da_3?user=root&password=12345");
           statement=connection.prepareStatement("select *from realcustomer where customerNumber = ? " );
           statement.setLong(1,customerNumber);
           ResultSet resultSet=statement.executeQuery();
           while (resultSet.next()){
           realCustomer  = new RealCustomer();
           realCustomer.setId(resultSet.getLong("customerNumber"));
           realCustomer.setName(resultSet.getString("name"));
           realCustomer.setFamily(resultSet.getString("family"));
           realCustomer.setFatherName(resultSet.getString("fatherName"));
           realCustomer.setDateOfBirth(resultSet.getString("dateOfBirth"));
           realCustomer.setNationalCode(resultSet.getString("nationalCode"));
           realCustomers.add(realCustomer);}


       }catch (SQLException | ClassNotFoundException e){
           e.printStackTrace();
       }
       return realCustomers;
    }

}

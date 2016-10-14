package examples.chapter6;

//Listing 6-3. The complete Account class

class Account {
    var accountNumber : Integer ;
    var accountHolderName : String;
    var balance : Number;
    function printAccountHolderInformation( ) {
        println("Account Number = {accountNumber} Account Holder Name = {accountHolderName} Balance : {balance} ");
    }
}
var account1 : Account = Account{ /*create an instance and initialize the object */
    accountNumber : 121
    accountHolderName : "Praveen"
    balance : 56434.34
};
var account2 = Account{} ; // create an instance

account1.printAccountHolderInformation( ); // calling the member function
account2.printAccountHolderInformation( ); // calling the member function

/*
output
------

*/
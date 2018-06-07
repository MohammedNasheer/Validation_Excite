pragma solidity ^0.4.16;
 
 

contract minister{
 

 
 
    address sbibank;  
    bool _switch=false;  
     

function minister1() public{     
   
     sbibank =msg.sender; 
  
  } 
   modifier ifOwner(){ 
 
      require(sbibank!=msg.sender);
      
  _; 
 
   } 
   
   
    function depositFunds() public payable{ 
         
  
  } 
    function withDrawFunds(uint amount) public ifOwner{ 
   
     if(sbibank.send(amount)){ 
  
          _switch=true; 
   
     } 
        else { 
      
      _switch=false; 
        } 
    }
 
    function getfunds()public constant ifOwner returns(uint){ 

        return this.balance; 

    } 
} 
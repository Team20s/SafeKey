pragma solidity ^0.4.24;

contract Key{

   // Variables
   mapping (address => bool) keyStatus; //키 존재의 상태 변수
   mapping (address => bool) requestStatus; //요청에 대한 상태 변수
   mapping (address => bool) responseStatus; //요청에 대한 응답 상태 변수
   mapping (address => bool) responseCheck; //요청의 수락, 거절에 대한 응답 상태 변수
   address owner;
   address requester;

    // Events
   event OpeningDoor (address _sender, bool _res);
   event Requested (address _from, address _to, bool _res);
   event Responded (address _from, address _to);
   event Confirmed (address _sender);

    // Constructor - 최초 배포자에게 열쇠가 주어짐
   constructor() public{
      owner = msg.sender;
      keyStatus[owner] = true;
   }

   // Get Method
   function getOwner() public constant returns (address) {
        return owner;
   }
   function getRequester() public constant returns (address) {
        return requester;
   }
   function getRequestStatus() public constant returns (bool) {
      return requestStatus[msg.sender];
   }

   function getResponseStatus() public view returns (bool) {
       return responseStatus[msg.sender];
   }

   function getResponseCheck() public constant returns (bool) {
       return responseCheck[msg.sender];
   }

    // Methods
   function request() public {
       require(!responseStatus[msg.sender]);

      if (keyStatus[msg.sender]){
         emit Requested(msg.sender, owner, false);
      } else{
          requestStatus[owner] = true;
          requester = msg.sender;
          emit Requested(msg.sender, owner, true);
      }
   }

   function response(address _to, bool ans) public{
      requestStatus[owner] = false;
      responseStatus[_to] = true;
      requester = 0x0;

       if(ans){
           responseCheck[_to] = true;
           keyStatus[owner] = false;
          keyStatus[_to] = true;
          emit Responded(owner,_to);
          owner = _to;
          return;
       }else{
           responseCheck[_to] = false;
           emit Responded(owner,_to);
           return;
       }
   }

   function confirm() public {
       responseCheck[msg.sender] = false;
       responseStatus[msg.sender] = false;
       emit Confirmed(msg.sender);
   }

   function openDoor() public returns(bool) {
       require(!responseStatus[msg.sender]);

      if (!keyStatus[msg.sender]){
         emit OpeningDoor(msg.sender, false);
         return false;
      }else{
          emit OpeningDoor(msg.sender, true);
         return true;
      }
   }

}
pragma solidity ^0.7.0;

/**
 * @title example  
 *
 */
contract Anchor { 
    string private _name;
   

    /**
     * @dev Sets the values for `name`, `symbol`, and `decimals`. All three of
     * these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name)   {
       
        _name = name;
       
      
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view returns (string memory) {
        return _name;
    }

   
}

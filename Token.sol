pragma solidity 0.8.18;

contract MyToken {
    string public tokenName;
    string public tokenAbbrv;
    uint public totalSupply;

    mapping(address => uint) public balances;

    // Mint function
    function mint(address _receiver, uint _value) public {
        totalSupply += _value;
        balances[_receiver] += _value;
    }

    // Burn function
    function burn(address _sender, uint _value) public {
        require(balances[_sender] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_sender] -= _value;
    }
}

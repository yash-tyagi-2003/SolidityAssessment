# <span style="font-size:20px;">MyToken Project</span>


This project is a basic implementation of a token contract on the Ethereum blockchain. The contract, named MyToken, adheres to certain requirements outlined below:

## <span style="font-size:16px;">Requirements</span>

1. The contract includes public variables to store details about the coin, such as Token Name (tokenName), Token Abbreviation (tokenAbbrv), and Total Supply (totalSupply).
2. It maintains a mapping of addresses to balances (balances).
3. The contract has a mint function, accepting an address and a value as parameters. This function increases the total supply by the given value and augments the balance of the specified address accordingly.
4. A burn function is implemented to destroy tokens. Similar to mint, it accepts an address and a value, deducting the value from both the total supply and the balance of the specified address.
5. The burn function incorporates conditionals to ensure that the balance of the sender is greater than or equal to the amount intended to be burned.
Smart Contract Details

## <span style="font-size:16px;">Public Variables</span>

1. tokenName: A string representing the name of the token.
2. tokenAbbrv: A string representing the abbreviation of the token.
3. totalSupply: An unsigned integer representing the total supply of the token.

## <span style="font-size:16px;">Mappings</span>
balances: A mapping of addresses to unsigned integers, storing the balance of each address.

## <span style="font-size:16px;">Mint Function</span>

function mint(address _receiver, uint _value) public {
    totalSupply += _value;
    balances[_receiver] += _value;
}

The mint function increases the total supply by _value and adds the same value to the balance of the specified address (_receiver).

## <span style="font-size:16px;">Burn Function</span>

function burn(address _sender, uint _value) public {
    require(balances[_sender] >= _value, "Insufficient balance");
    totalSupply -= _value;
    balances[_sender] -= _value;
}
The burn function checks if the sender's balance is sufficient, and if so, it deducts the specified value from both the total supply and the sender's balance.

## <span style="font-size:16px;">Usage</span>

Deploy the contract on the Ethereum blockchain.
Interact with the contract using the mint and burn functions to manage token creation and destruction.

Note: Ensure that you comply with the conditions specified in the requirements, especially when using the burn function to prevent burning more tokens than available in the sender's balance.

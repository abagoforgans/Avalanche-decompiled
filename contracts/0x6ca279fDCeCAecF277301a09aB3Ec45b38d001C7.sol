contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function _fallback() payable {
    require not calldata.size
    require msg.value >= stor1
    if block.timestamp > -block.difficulty - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty > -sha3(block.coinbase) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + sha3(block.coinbase) > -block.gas_limit - 1:
        revert with 'NH{q', 17
    if block.timestamp > -block.difficulty - 1:
        revert with 'NH{q', 17
    if sha3(block.coinbase) > -block.gas_limit - 1:
        revert with 'NH{q', 17
    if sha3(msg.sender) > -block.number - 1:
        revert with 'NH{q', 17
    if sha3(block.coinbase) > -block.number - 1:
        revert with 'NH{q', 17
    if block.difficulty > -sha3(block.coinbase) - 1:
        revert with 'NH{q', 17
    if block.difficulty + sha3(block.coinbase) > -block.gas_limit - 1:
        revert with 'NH{q', 17
    if block.timestamp > -block.difficulty - 1:
        revert with 'NH{q', 17
    if sha3(block.timestamp + block.difficulty + sha3(block.coinbase) + block.gas_limit, block.timestamp + block.difficulty, sha3(block.coinbase) + block.gas_limit, sha3(msg.sender) + block.number, sha3(stor0), sha3(block.coinbase) + block.number, block.difficulty + sha3(block.coinbase) + block.gas_limit, block.timestamp + block.difficulty) / 10^9 and 10^9 > -1 / sha3(block.timestamp + block.difficulty + sha3(block.coinbase) + block.gas_limit, block.timestamp + block.difficulty, sha3(block.coinbase) + block.gas_limit, sha3(msg.sender) + block.number, sha3(stor0), sha3(block.coinbase) + block.number, block.difficulty + sha3(block.coinbase) + block.gas_limit, block.timestamp + block.difficulty) / 10^9:
        revert with 'NH{q', 17
    if sha3(block.timestamp + block.difficulty + sha3(block.coinbase) + block.gas_limit, block.timestamp + block.difficulty, sha3(block.coinbase) + block.gas_limit, sha3(msg.sender) + block.number, sha3(stor0), sha3(block.coinbase) + block.number, block.difficulty + sha3(block.coinbase) + block.gas_limit, block.timestamp + block.difficulty) < 10^9 * sha3(block.timestamp + block.difficulty + sha3(block.coinbase) + block.gas_limit, block.timestamp + block.difficulty, sha3(block.coinbase) + block.gas_limit, sha3(msg.sender) + block.number, sha3(stor0), sha3(block.coinbase) + block.number, block.difficulty + sha3(block.coinbase) + block.gas_limit, block.timestamp + block.difficulty) / 10^9:
        revert with 'NH{q', 17
    if sha3(block.timestamp + block.difficulty + sha3(block.coinbase) + block.gas_limit, block.timestamp + block.difficulty, sha3(block.coinbase) + block.gas_limit, sha3(msg.sender) + block.number, sha3(stor0), sha3(block.coinbase) + block.number, block.difficulty + sha3(block.coinbase) + block.gas_limit, block.timestamp + block.difficulty) - (10^9 * sha3(block.timestamp + block.difficulty + sha3(block.coinbase) + block.gas_limit, block.timestamp + block.difficulty, sha3(block.coinbase) + block.gas_limit, sha3(msg.sender) + block.number, sha3(stor0), sha3(block.coinbase) + block.number, block.difficulty + sha3(block.coinbase) + block.gas_limit, block.timestamp + block.difficulty) / 10^9) >= 100 * 10^6:
        if msg.sender == stor0:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            if msg.value and 15 > -1 / msg.value:
                revert with 'NH{q', 17
            call stor0 with:
               value 15 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.value and 50 > -1 / msg.value:
            revert with 'NH{q', 17
        if 50 * msg.value and 2 > -1 / 50 * msg.value:
            revert with 'NH{q', 17
        if eth.balance(this.address) >= 2 * 50 * msg.value:
            if msg.value and 5000 > -1 / msg.value:
                revert with 'NH{q', 17
            call stor0 with:
               value 5000 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value and 5000 > -1 / msg.value:
                revert with 'NH{q', 17
            call msg.sender with:
               value 5000 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}

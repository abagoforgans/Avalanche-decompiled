contract main {




// =====================  Runtime code  =====================


address owner;
uint256 totalFundValue;
mapping of uint256 invested;
mapping of uint256 balances;
array of address stor4;
uint8 stor5;
uint256 stor6;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function invested(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return invested[arg1]
}

function owner() {
    return owner
}

function totalFundValue() {
    return totalFundValue
}

function _fallback() payable {
    revert
}

function withdraw() {
    if stor5:
        revert with 0, 'No re-entrancy'
    stor5 = 1
    require balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas gas_remaining wei
    if ext_call.success:
        emit LogWithdrawal(msg.sender, balances[address(msg.sender)]);
    stor5 = 0
}

function reinvest() {
    if stor5:
        revert with 0, 'No re-entrancy'
    stor5 = 1
    require balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    idx = 0
    while idx < stor4.length:
        if not totalFundValue:
            revert with 'NH{q', 18
        if balances[address(msg.sender)] and invested[stor4[idx]] / totalFundValue > -1 / balances[address(msg.sender)]:
            revert with 'NH{q', 17
        if idx >= stor4.length:
            revert with 'NH{q', 50
        mem[0] = stor4[idx]
        mem[32] = 3
        if balances[stor4[idx]] > (-1 * balances[address(msg.sender)] * invested[stor4[idx]] / totalFundValue) - 1:
            revert with 'NH{q', 17
        balances[stor4[idx]] += balances[address(msg.sender)] * invested[stor4[idx]] / totalFundValue
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if invested[address(msg.sender)] > -balances[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    invested[address(msg.sender)] += balances[address(msg.sender)]
    emit LogInvestment(msg.sender, balances[address(msg.sender)]);
    stor5 = 0
}

function invest() payable {
    if msg.value and stor6 > -1 / msg.value:
        revert with 'NH{q', 17
    if balances[stor0] > -(msg.value * stor6 / 100) - 1:
        revert with 'NH{q', 17
    balances[stor0] += msg.value * stor6 / 100
    if msg.value and stor6 > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value < msg.value * stor6 / 100:
        revert with 'NH{q', 17
    idx = 0
    while idx < stor4.length:
        if not totalFundValue:
            revert with 'NH{q', 18
        if msg.value - (msg.value * stor6 / 100) and invested[stor4[idx]] / totalFundValue > -1 / msg.value - (msg.value * stor6 / 100):
            revert with 'NH{q', 17
        if idx >= stor4.length:
            revert with 'NH{q', 50
        mem[0] = stor4[idx]
        mem[32] = 3
        if balances[stor4[idx]] > (-1 * msg.value * invested[stor4[idx]] / totalFundValue) + (msg.value * stor6 / 100 * invested[stor4[idx]] / totalFundValue) - 1:
            revert with 'NH{q', 17
        balances[stor4[idx]] = balances[stor4[idx]] + (msg.value * invested[stor4[idx]] / totalFundValue) - (msg.value * stor6 / 100 * invested[stor4[idx]] / totalFundValue)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not invested[address(msg.sender)]:
        stor4.length++
        stor4[stor4.length] = msg.sender
    if invested[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    invested[address(msg.sender)] += msg.value
    if totalFundValue > -msg.value - 1:
        revert with 'NH{q', 17
    totalFundValue += msg.value
    emit LogInvestment(msg.sender, msg.value);
}



}

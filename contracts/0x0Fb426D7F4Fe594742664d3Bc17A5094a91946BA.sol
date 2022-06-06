contract main {




// =====================  Runtime code  =====================


array of address players;
uint8 currentState;
uint256 betCount;
uint256 sub_5d1d3e26;
uint256 houseFee;
address adminAddress;

function currentState() {
    if currentState >= 2:
        revert with 'NH{q', 33
    return currentState
}

function houseFee() {
    return houseFee
}

function sub_5d1d3e26(?) {
    return sub_5d1d3e26
}

function betCount() {
    return betCount
}

function players(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < players.length
    return address(players[arg1])
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function createBet(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if currentState > 1:
        revert with 'NH{q', 33
    if currentState != 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'current state does not allow this'
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    betCount = arg1
    sub_5d1d3e26 = arg2
    currentState = 1
}

function cancel() {
    if currentState > 1:
        revert with 'NH{q', 33
    if currentState != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'current state does not allow this'
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    idx = 0
    while idx < players.length:
        mem[0] = 0
        call address(players[idx]) with:
           value sub_5d1d3e26 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    players.length = 0
    idx = 0
    while players.length > idx:
        uint256(players[idx]) = 0
        idx = idx + 1
        continue 
    currentState = 0
}

function bet() payable {
    if currentState > 1:
        revert with 'NH{q', 33
    if currentState != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'current state does not allow this'
    if sub_5d1d3e26 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only bet exactly the bet size'
    players.length++
    address(players[players.length]) = msg.sender
    if players.length == betCount:
        if not betCount:
            revert with 'NH{q', 18
        if sha3(block.timestamp, block.difficulty) % betCount >= players.length:
            revert with 'NH{q', 50
        if 100 < houseFee:
            revert with 'NH{q', 17
        if sub_5d1d3e26 and betCount > -1 / sub_5d1d3e26:
            revert with 'NH{q', 17
        if sub_5d1d3e26 * betCount and -houseFee + 100 > -1 / sub_5d1d3e26 * betCount:
            revert with 'NH{q', 17
        call address(players[('map', 'timestamp', 'difficulty') % stor2]) with:
           value (100 * sub_5d1d3e26 * betCount) - (houseFee * sub_5d1d3e26 * betCount) / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        currentState = 0
        players.length = 0
        idx = 0
        while players.length > idx:
            uint256(players[idx]) = 0
            idx = idx + 1
            continue 
}



}

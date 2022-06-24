contract main {




// =====================  Runtime code  =====================


address owner;
array of address oracles;
uint256 lastUpdate;
uint256 period;

function oracles(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < oracles.length
    return oracles[arg1]
}

function owner() {
    return owner
}

function lastUpdate() {
    return lastUpdate
}

function period() {
    return period
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    period = arg1
}

function addOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    oracles.length++
    oracles[oracles.length] = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function update() {
    if lastUpdate > !period:
        revert with 0, 17
    require block.timestamp >= lastUpdate + period
    lastUpdate = block.timestamp
    idx = 0
    while idx < oracles.length:
        mem[0] = 1
        mem[96] = 0xa2e6204500000000000000000000000000000000000000000000000000000000
        require ext_code.size(oracles[idx])
        call oracles[idx].0xa2e62045 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function call(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not ext_call.success:
        revert with 0, 'external call failed'
    if not return_data.size:
        return ' '
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function removeOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < oracles.length:
        mem[0] = 1
        if oracles[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if oracles.length < 1:
            revert with 0, 17
        if oracles.length - 1 >= oracles.length:
            revert with 0, 50
        if idx >= oracles.length:
            revert with 0, 50
        oracles[idx] = oracles[oracles.length]
        if not oracles.length:
            revert with 0, 49
        oracles[oracles.length] = 0
        oracles.length--
}



}

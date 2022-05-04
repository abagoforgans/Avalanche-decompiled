contract main {




// =====================  Runtime code  =====================


#
#  - sub_a24eb15d(?)
#
address owner;
address poolManagerAddress;
address sub_a81bcf1fAddress;
address poolImplementationAddress;
address governanceAddress;
uint256 tokenFeePercent;
uint256 ethFeePercent;
uint256 fixedEthFee;
array of struct stor9;
mapping of uint256 stor10;

function tokenFeePercent() {
    return tokenFeePercent
}

function governance() {
    return governanceAddress
}

function owner() {
    return owner
}

function sub_8ec39f48(?) {
    return sub_a81bcf1fAddress
}

function fixedEthFee() {
    return fixedEthFee
}

function sub_a81bcf1f(?) {
    return sub_a81bcf1fAddress
}

function poolImplementation() {
    return poolImplementationAddress
}

function poolManager() {
    return poolManagerAddress
}

function ethFeePercent() {
    return ethFeePercent
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_2c4d7ab2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_a81bcf1fAddress = arg1
}

function setFixedFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    fixedEthFee = arg1
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    governanceAddress = arg1
}

function setImplementation(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    poolImplementationAddress = arg1
}

function setEthFeePercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 100:
        revert with 0, 'Invalid percentage'
    ethFeePercent = arg1
}

function setTokenFeePercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 100:
        revert with 0, 'Invalid percentage'
    tokenFeePercent = arg1
}

function addRouter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor10[address(arg1)]:
        stor9.length++
        stor9[stor9.length].field_0 = arg1
        stor9[stor9.length].field_160 = 0
        stor10[address(arg1)] = stor9.length
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeRouter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor10[address(arg1)]:
        require stor9.length - 1 < stor9.length
        require stor10[address(arg1)] - 1 < stor9.length
        stor9[stor10[address(arg1)]].field_0 = stor9[stor9.length].field_0
        stor10[stor9[stor9.length].field_0] = stor10[address(arg1)]
        require stor9.length
        stor9[stor9.length].field_0 = 0
        stor9.length--
        stor10[address(arg1)] = 0
}

function increaseTotalValueLocked(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(poolManagerAddress)
    staticcall poolManagerAddress.isPoolGenerated(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not generated pool'
    require ext_code.size(poolManagerAddress)
    call poolManagerAddress.0x87e56d04 with:
         gas gas_remaining wei
        args arg1
}

function decreaseTotalValueLocked(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(poolManagerAddress)
    staticcall poolManagerAddress.isPoolGenerated(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not generated pool'
    require ext_code.size(poolManagerAddress)
    call poolManagerAddress.0x93037672 with:
         gas gas_remaining wei
        args arg1
}

function recordContribution(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(poolManagerAddress)
    staticcall poolManagerAddress.isPoolGenerated(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not generated pool'
    require ext_code.size(poolManagerAddress)
    call poolManagerAddress.0xe9aae536 with:
         gas gas_remaining wei
        args address(arg1), arg2
}

function getSupportedRouters() {
    require stor9.length <= test266151307()
    if stor9.length:
        mem[128 len 32 * stor9.length] = call.data[calldata.size len 32 * stor9.length]
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        require idx < stor9.length
        mem[(32 * idx) + 128] = stor9[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor9.length) + 192 len floor32(stor9.length)] = mem[128 len floor32(stor9.length)]
    return Array(len=stor9.length, data=mem[128 len floor32(stor9.length)], mem[(32 * stor9.length) + floor32(stor9.length) + 192 len (32 * stor9.length) - floor32(stor9.length)]), 
}

function removePoolForToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(poolManagerAddress)
    staticcall poolManagerAddress.isPoolGenerated(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not generated pool'
    require ext_code.size(poolManagerAddress)
    call poolManagerAddress.0xbefaf8a6 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addRouters(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        if not stor10[mem[(32 * idx) + 140 len 20]]:
            require idx < arg1.length
            if owner != msg.sender:
                revert with 0, 'wOwnable: caller is not the owne'
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 10
            if not stor10[mem[(32 * idx) + 140 len 20]]:
                stor9.length++
                stor9[stor9.length].field_0 = mem[(32 * idx) + 140 len 20]
                stor9[stor9.length].field_160 = 0
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 10
                stor10[address(mem[(32 * idx) + 128])] = stor9.length
        idx = idx + 1
        continue 
}

function sub_9bbb3b4b(?) {
    require calldata.size - 4 >= 96
    if not arg1:
        if not arg1:
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            return (arg3 + arg1)
        if arg2 * arg1 / arg1 != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if (arg2 * arg1 / 100) + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg3 + (arg2 * arg1 / 100) + arg1)
    if tokenFeePercent * arg1 / arg1 != tokenFeePercent:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg1:
        if (tokenFeePercent * arg1 / 100) + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg3 + (tokenFeePercent * arg1 / 100) + arg1)
    if arg2 * arg1 / arg1 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (tokenFeePercent * arg1 / 100) + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 * arg1 / 100 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (arg3 + (arg2 * arg1 / 100) + (tokenFeePercent * arg1 / 100) + arg1)
}



}

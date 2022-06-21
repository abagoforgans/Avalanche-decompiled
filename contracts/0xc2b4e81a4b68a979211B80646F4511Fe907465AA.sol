contract main {




// =====================  Runtime code  =====================


#
#  - sub_943eaa8b(?)
#
address owner;
address routerAddress;
address baseTokenAddress;
address ETHAddress;
address sub_c0b6201cAddress;
uint256 sub_43ff02f6;
uint256 sub_cb523a14;
mapping of uint8 stor7;
mapping of uint8 stor8;
array of address wallets;
uint256 sub_1ef782ba;
uint256 sub_ab731cfa;
uint256 buyValue;
uint256 endingBalance;
uint256 mode;
uint8 sub_b3f6490f;
uint256 sub_adcdc67c;
uint256 sub_fce62d8f;
uint256 minLp;

function sub_1ef782ba(?) {
    return sub_1ef782ba
}

function mode() {
    return mode
}

function sub_43ff02f6(?) {
    return sub_43ff02f6
}

function sub_49e54865(?) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function wallets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < wallets.length
    return wallets[arg1]
}

function ETH() {
    return ETHAddress
}

function owner() {
    return owner
}

function buyValue() {
    return buyValue
}

function sub_ab731cfa(?) {
    return sub_ab731cfa
}

function sub_adcdc67c(?) {
    return sub_adcdc67c
}

function sub_b3f6490f(?) {
    return bool(sub_b3f6490f)
}

function endingBalance() {
    return endingBalance
}

function sub_c0b6201c(?) {
    return sub_c0b6201cAddress
}

function minLp() {
    return minLp
}

function baseToken() {
    return baseTokenAddress
}

function sub_cb523a14(?) {
    return sub_cb523a14
}

function sub_ebcf822c(?) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function router() {
    return routerAddress
}

function sub_fce62d8f(?) {
    return sub_fce62d8f
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_80cba278(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 1
}

function deposit() payable {
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                    mem[220 len 8]
}

function removeSecondaryOwner(address arg1) {
    require calldata.size - 4 >= 32
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                    mem[220 len 8]
    stor8[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6f4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c3b91dc2(?) {
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                    mem[220 len 8]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1b97acde(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sub_2d4077d3(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0, 
                    32,
                    56,
                    0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                    mem[(32 * arg1.length) + 252 len 8]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_81caead4(?) {
    require calldata.size - 4 >= 64
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                    mem[220 len 8]
    require ext_code.size(arg2)
    if arg1 > 0:
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
    else:
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_2fdffc1c(?) {
    require calldata.size - 4 >= 288
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = 0
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0, 
                    32,
                    56,
                    0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                    mem[(32 * arg6.length) + 252 len 8]
    if arg4 < 0:
        revert with 0, 'errou algo ai ein'
    if arg4 > 5:
        revert with 0, 'errou algo ai ein'
    if arg3 <= 0:
        revert with 0, 'errou algo ai ein'
    sub_ab731cfa = 0
    baseTokenAddress = arg1
    sub_c0b6201cAddress = arg2
    sub_43ff02f6 = arg3
    mode = arg4
    routerAddress = arg5
    wallets.length = arg6.length
    if not arg6.length:
        idx = 0
        while wallets.length > idx:
            wallets[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg6.length) + 128 > idx:
            wallets[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
        while wallets.length > idx:
            wallets[idx] = 0
            idx = idx + 1
            continue 
    sub_cb523a14 = arg7
    ETHAddress = arg8
    minLp = arg9
}

function sub_285352e1(?) payable {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[0] = msg.sender
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0, 
                    32,
                    56,
                    0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                    mem[(32 * arg2.length) + 252 len 8]
    if arg3 == arg1:
        mem[(32 * arg2.length) + 128] = 2
        mem[64] = (32 * arg2.length) + 224
        mem[(32 * arg2.length) + 160] = arg3
        mem[(32 * arg2.length) + 192] = arg4
        require arg5 * arg2.length
        sub_1ef782ba = eth.balance(this.address) / arg5 * arg2.length
        idx = 0
        while idx < arg2.length:
            s = 0
            while s < arg5:
                require idx < mem[96]
                _52 = mem[(32 * idx) + 128]
                _53 = mem[64]
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 68] = address(_52)
                mem[mem[64] + 100] = block.timestamp
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = mem[(32 * arg2.length) + 128]
                _55 = mem[(32 * arg2.length) + 128]
                idx = 0
                while idx < 32 * _55:
                    mem[mem[64] + idx + 164] = mem[(32 * arg2.length) + idx + 160]
                    idx = idx + 32
                    continue 
                require ext_code.size(arg6)
                call arg6.mem[mem[64] len 4] with:
                   value sub_1ef782ba wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * _55) + _53 + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 128] = 3
        mem[64] = (32 * arg2.length) + 256
        mem[(32 * arg2.length) + 160] = arg1
        mem[(32 * arg2.length) + 192] = arg3
        mem[(32 * arg2.length) + 224] = arg4
        require arg5 * arg2.length
        sub_1ef782ba = eth.balance(this.address) / arg5 * arg2.length
        idx = 0
        while idx < arg2.length:
            s = 0
            while s < arg5:
                require idx < mem[96]
                _48 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 68] = address(_48)
                mem[mem[64] + 100] = block.timestamp
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = mem[(32 * arg2.length) + 128]
                _51 = mem[(32 * arg2.length) + 128]
                idx = 0
                while idx < 32 * _51:
                    mem[mem[64] + idx + 164] = mem[(32 * arg2.length) + idx + 160]
                    idx = idx + 32
                    continue 
                require ext_code.size(arg6)
                call arg6.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value sub_1ef782ba wei
                     gas gas_remaining wei
                    args 0, 128, address(_48), block.timestamp, mem[mem[64] + 132 len (32 * _51) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
}

function sub_76061e2c(?) payable {
    require calldata.size - 4 >= 224
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                    mem[220 len 8]
    if arg3 != arg1:
        mem[388 len 0] = None
        require ext_code.size(arg6)
        call arg6.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg2 / 1000 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp + 30, 3, mem[388 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg4)
        staticcall arg4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg4)
        call arg4.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg6), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg6), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 != arg1:
            mem[548 len 0] = None
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[548 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            endingBalance = ext_call.return_data[0]
            if arg7 == 2:
                require arg2 / 1000 / 10000
                if -(endingBalance / arg2 / 1000 / 10000) + 10000 > arg5:
                    revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args this.address, 0, msg.sender, ext_call.return_data[0]
        else:
            mem[516 len 0] = None
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            endingBalance = ext_call.return_data[0]
            if arg7 == 2:
                require arg2 / 1000 / 10000
                if -(endingBalance / arg2 / 1000 / 10000) + 10000 > arg5:
                    revert with 0, '', 'taxa ta alta pra caralhoooo'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, 0, ext_call.return_data[0]
    else:
        mem[356 len 0] = None
        require ext_code.size(arg6)
        call arg6.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg2 / 1000 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp + 30, 2, mem[356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg4)
        staticcall arg4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg4)
        call arg4.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg6), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg6), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 != arg1:
            mem[516 len 0] = None
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[516 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            endingBalance = ext_call.return_data[0]
            if arg7 == 2:
                require arg2 / 1000 / 10000
                if -(endingBalance / arg2 / 1000 / 10000) + 10000 > arg5:
                    revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args this.address, 0, msg.sender, ext_call.return_data[0]
        else:
            mem[484 len 0] = None
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[484 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            endingBalance = ext_call.return_data[0]
            if arg7 == 2:
                require arg2 / 1000 / 10000
                if -(endingBalance / arg2 / 1000 / 10000) + 10000 > arg5:
                    revert with 0, '', 'taxa ta alta pra caralhoooo'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_6ad42679(?) payable {
    require calldata.size - 4 >= 288
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0, 
                    32,
                    56,
                    0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                    mem[(32 * arg5.length) + 252 len 8]
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'nem criaram o par ainda carai'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg2:
        if Mask(112, 0, ext_call.return_data[0]) <= arg7:
            revert with 0, 
                        32,
                        53,
                        0xfe74612073656d206c6971756964657a206f7520747520626f746f752061206d6f65646120626173652065727261646120616d6967,
                        mem[(32 * arg5.length) + 249 len 11]
        if not arg9:
            mem[0] = msg.sender
            if bool(stor8[address(msg.sender)]) != 1:
                revert with 0, 
                            32,
                            56,
                            0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                            mem[(32 * arg5.length) + 252 len 8]
            if arg2 == arg8:
                mem[(32 * arg5.length) + 128] = 2
                mem[64] = (32 * arg5.length) + 224
                mem[(32 * arg5.length) + 160] = arg2
                mem[(32 * arg5.length) + 192] = arg3
                require arg4 * arg5.length
                sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                idx = 0
                while idx < arg5.length:
                    s = 0
                    while s < arg4:
                        require idx < arg5.length
                        _1669 = mem[(32 * idx) + 128]
                        mem[(32 * arg5.length) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 228] = 0
                        mem[(32 * arg5.length) + 292] = address(_1669)
                        mem[(32 * arg5.length) + 324] = block.timestamp
                        mem[(32 * arg5.length) + 260] = 128
                        mem[(32 * arg5.length) + 356] = mem[(32 * arg5.length) + 128]
                        _1672 = mem[(32 * arg5.length) + 128]
                        idx = 0
                        while idx < 32 * _1672:
                            mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 160]
                            idx = idx + 32
                            continue 
                        require ext_code.size(arg1)
                        call arg1.mem[mem[64] len 4] with:
                           value sub_1ef782ba wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _1672) + (32 * arg5.length) + -mem[64] + 384]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
            else:
                mem[(32 * arg5.length) + 128] = 3
                mem[64] = (32 * arg5.length) + 256
                mem[(32 * arg5.length) + 160] = arg8
                mem[(32 * arg5.length) + 192] = arg2
                mem[(32 * arg5.length) + 224] = arg3
                require arg4 * arg5.length
                sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                idx = 0
                while idx < arg5.length:
                    s = 0
                    while s < arg4:
                        require idx < arg5.length
                        _1665 = mem[(32 * idx) + 128]
                        mem[(32 * arg5.length) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 260] = 0
                        mem[(32 * arg5.length) + 324] = address(_1665)
                        mem[(32 * arg5.length) + 356] = block.timestamp
                        mem[(32 * arg5.length) + 292] = 128
                        mem[(32 * arg5.length) + 388] = mem[(32 * arg5.length) + 128]
                        _1668 = mem[(32 * arg5.length) + 128]
                        idx = 0
                        while idx < 32 * _1668:
                            mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 160]
                            idx = idx + 32
                            continue 
                        require ext_code.size(arg1)
                        call arg1.mem[mem[64] len 4] with:
                           value sub_1ef782ba wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _1668) + (32 * arg5.length) + -mem[64] + 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
        else:
            if bool(stor8[address(msg.sender)]) != 1:
                revert with 0, 
                            32,
                            56,
                            0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                            mem[(32 * arg5.length) + 252 len 8]
            if arg2 == arg8:
                mem[(32 * arg5.length) + 128] = 2
                mem[(32 * arg5.length) + 160] = arg2
                mem[(32 * arg5.length) + 192] = arg3
                mem[(32 * arg5.length) + 388 len 0] = None
                require ext_code.size(arg1)
                call arg1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value / 1000 / 1000 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 30, 2, mem[(32 * arg5.length) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg3)
                staticcall arg3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg3)
                call arg3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 == arg8:
                    mem[(32 * arg5.length) + 224] = 2
                    mem[(32 * arg5.length) + 256] = arg3
                    mem[(32 * arg5.length) + 288] = arg2
                    mem[(32 * arg5.length) + 420] = this.address
                    mem[(32 * arg5.length) + 452] = block.timestamp + 30
                    mem[(32 * arg5.length) + 484] = 2
                    mem[(32 * arg5.length) + 516 len 0] = None
                    require ext_code.size(arg1)
                    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[(32 * arg5.length) + 516 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg8)
                    staticcall arg8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    endingBalance = ext_call.return_data[0]
                    if arg9 != 2:
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 388] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 'e100 bnbs and i whitelist you, contact psilva - PsilvaBo', 0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 320] = 2
                            mem[64] = (32 * arg5.length) + 416
                            mem[(32 * arg5.length) + 352] = arg2
                            mem[(32 * arg5.length) + 384] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < arg5.length
                                    _2661 = mem[(32 * idx) + 128]
                                    mem[(32 * arg5.length) + 416] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 420] = 0
                                    mem[(32 * arg5.length) + 484] = address(_2661)
                                    mem[(32 * arg5.length) + 516] = block.timestamp
                                    mem[(32 * arg5.length) + 452] = 128
                                    mem[(32 * arg5.length) + 548] = mem[(32 * arg5.length) + 320]
                                    _2664 = mem[(32 * arg5.length) + 320]
                                    idx = 0
                                    while idx < 32 * _2664:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 352]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2664) + (32 * arg5.length) + -mem[64] + 576]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 320] = 3
                            mem[64] = (32 * arg5.length) + 448
                            mem[(32 * arg5.length) + 352] = arg8
                            mem[(32 * arg5.length) + 384] = arg2
                            mem[(32 * arg5.length) + 416] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2657 = mem[(32 * idx) + 128]
                                    _2658 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2657)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 320]
                                    _2660 = mem[(32 * arg5.length) + 320]
                                    idx = 0
                                    while idx < 32 * _2660:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 352]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2660) + _2658 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                    else:
                        require msg.value / 1000 / 1000 / 10000
                        if -(endingBalance / msg.value / 1000 / 1000 / 10000) + 10000 > arg6:
                            revert with 0, '', 'taxa ta alta pra caralhoooo'
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 388] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 'e100 bnbs and i whitelist you, contact psilva - PsilvaBo', 0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 320] = 2
                            mem[64] = (32 * arg5.length) + 416
                            mem[(32 * arg5.length) + 352] = arg2
                            mem[(32 * arg5.length) + 384] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2669 = mem[(32 * idx) + 128]
                                    _2670 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2669)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 320]
                                    _2672 = mem[(32 * arg5.length) + 320]
                                    idx = 0
                                    while idx < 32 * _2672:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 352]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2672) + _2670 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 320] = 3
                            mem[64] = (32 * arg5.length) + 448
                            mem[(32 * arg5.length) + 352] = arg8
                            mem[(32 * arg5.length) + 384] = arg2
                            mem[(32 * arg5.length) + 416] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < arg5.length
                                    _2665 = mem[(32 * idx) + 128]
                                    mem[(32 * arg5.length) + 448] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 452] = 0
                                    mem[(32 * arg5.length) + 516] = address(_2665)
                                    mem[(32 * arg5.length) + 548] = block.timestamp
                                    mem[(32 * arg5.length) + 484] = 128
                                    mem[(32 * arg5.length) + 580] = mem[(32 * arg5.length) + 320]
                                    _2668 = mem[(32 * arg5.length) + 320]
                                    idx = 0
                                    while idx < 32 * _2668:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 352]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2668) + (32 * arg5.length) + -mem[64] + 608]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                else:
                    mem[(32 * arg5.length) + 224] = 3
                    mem[(32 * arg5.length) + 256] = arg3
                    mem[(32 * arg5.length) + 288] = arg2
                    mem[(32 * arg5.length) + 320] = arg8
                    mem[(32 * arg5.length) + 452] = this.address
                    mem[(32 * arg5.length) + 484] = block.timestamp + 30
                    mem[(32 * arg5.length) + 516] = 3
                    mem[(32 * arg5.length) + 548 len 0] = None
                    require ext_code.size(arg1)
                    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[(32 * arg5.length) + 548 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg8)
                    staticcall arg8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    endingBalance = ext_call.return_data[0]
                    if arg9 != 2:
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 420] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, 0, msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 
                                        '',
                                        56,
                                        0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                                        0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 352] = 2
                            mem[64] = (32 * arg5.length) + 448
                            mem[(32 * arg5.length) + 384] = arg2
                            mem[(32 * arg5.length) + 416] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2645 = mem[(32 * idx) + 128]
                                    _2646 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2645)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 352]
                                    _2648 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2648:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2648) + _2646 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 352] = 3
                            mem[64] = (32 * arg5.length) + 480
                            mem[(32 * arg5.length) + 384] = arg8
                            mem[(32 * arg5.length) + 416] = arg2
                            mem[(32 * arg5.length) + 448] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2641 = mem[(32 * idx) + 128]
                                    _2642 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2641)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 352]
                                    _2644 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2644:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2644) + _2642 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                    else:
                        require msg.value / 1000 / 1000 / 10000
                        if -(endingBalance / msg.value / 1000 / 1000 / 10000) + 10000 > arg6:
                            revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 420] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, 0, msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 
                                        '',
                                        56,
                                        0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                                        0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 352] = 2
                            mem[64] = (32 * arg5.length) + 448
                            mem[(32 * arg5.length) + 384] = arg2
                            mem[(32 * arg5.length) + 416] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < arg5.length
                                    _2653 = mem[(32 * idx) + 128]
                                    mem[(32 * arg5.length) + 448] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 452] = 0
                                    mem[(32 * arg5.length) + 516] = address(_2653)
                                    mem[(32 * arg5.length) + 548] = block.timestamp
                                    mem[(32 * arg5.length) + 484] = 128
                                    mem[(32 * arg5.length) + 580] = mem[(32 * arg5.length) + 352]
                                    _2656 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2656:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2656) + (32 * arg5.length) + -mem[64] + 608]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 352] = 3
                            mem[64] = (32 * arg5.length) + 480
                            mem[(32 * arg5.length) + 384] = arg8
                            mem[(32 * arg5.length) + 416] = arg2
                            mem[(32 * arg5.length) + 448] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2649 = mem[(32 * idx) + 128]
                                    _2650 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2649)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 352]
                                    _2652 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2652:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2652) + _2650 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
            else:
                mem[(32 * arg5.length) + 128] = 3
                mem[(32 * arg5.length) + 160] = arg8
                mem[(32 * arg5.length) + 192] = arg2
                mem[(32 * arg5.length) + 224] = arg3
                mem[(32 * arg5.length) + 420 len 0] = None
                require ext_code.size(arg1)
                call arg1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value / 1000 / 1000 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 30, 3, mem[(32 * arg5.length) + 420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg3)
                staticcall arg3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg3)
                call arg3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 == arg8:
                    mem[(32 * arg5.length) + 256] = 2
                    mem[(32 * arg5.length) + 288] = arg3
                    mem[(32 * arg5.length) + 320] = arg2
                    mem[(32 * arg5.length) + 452] = this.address
                    mem[(32 * arg5.length) + 484] = block.timestamp + 30
                    mem[(32 * arg5.length) + 516] = 2
                    mem[(32 * arg5.length) + 548 len 0] = None
                    require ext_code.size(arg1)
                    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[(32 * arg5.length) + 548 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg8)
                    staticcall arg8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    endingBalance = ext_call.return_data[0]
                    if arg9 != 2:
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 420] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 'e100 bnbs and i whitelist you, contact psilva - PsilvaBo', 0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 352] = 2
                            mem[64] = (32 * arg5.length) + 448
                            mem[(32 * arg5.length) + 384] = arg2
                            mem[(32 * arg5.length) + 416] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2629 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2629)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 352]
                                    _2632 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2632:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args 0, 128, address(_2629), block.timestamp, mem[mem[64] + 132 len (32 * _2632) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 352] = 3
                            mem[64] = (32 * arg5.length) + 480
                            mem[(32 * arg5.length) + 384] = arg8
                            mem[(32 * arg5.length) + 416] = arg2
                            mem[(32 * arg5.length) + 448] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2625 = mem[(32 * idx) + 128]
                                    _2626 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2625)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 352]
                                    _2628 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2628:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2628) + _2626 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                    else:
                        require msg.value / 1000 / 1000 / 10000
                        if -(endingBalance / msg.value / 1000 / 1000 / 10000) + 10000 > arg6:
                            revert with 0, '', 'taxa ta alta pra caralhoooo'
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 420] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 'e100 bnbs and i whitelist you, contact psilva - PsilvaBo', 0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 352] = 2
                            mem[64] = (32 * arg5.length) + 448
                            mem[(32 * arg5.length) + 384] = arg2
                            mem[(32 * arg5.length) + 416] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < arg5.length
                                    _2637 = mem[(32 * idx) + 128]
                                    mem[(32 * arg5.length) + 448] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 452] = 0
                                    mem[(32 * arg5.length) + 516] = address(_2637)
                                    mem[(32 * arg5.length) + 548] = block.timestamp
                                    mem[(32 * arg5.length) + 484] = 128
                                    mem[(32 * arg5.length) + 580] = mem[(32 * arg5.length) + 352]
                                    _2640 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2640:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2640) + (32 * arg5.length) + -mem[64] + 608]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 352] = 3
                            mem[64] = (32 * arg5.length) + 480
                            mem[(32 * arg5.length) + 384] = arg8
                            mem[(32 * arg5.length) + 416] = arg2
                            mem[(32 * arg5.length) + 448] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2633 = mem[(32 * idx) + 128]
                                    _2634 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2633)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 352]
                                    _2636 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2636:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2636) + _2634 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                else:
                    mem[(32 * arg5.length) + 256] = 3
                    mem[(32 * arg5.length) + 288] = arg3
                    mem[(32 * arg5.length) + 320] = arg2
                    mem[(32 * arg5.length) + 352] = arg8
                    mem[(32 * arg5.length) + 484] = this.address
                    mem[(32 * arg5.length) + 516] = block.timestamp + 30
                    mem[(32 * arg5.length) + 548] = 3
                    mem[(32 * arg5.length) + 580 len 0] = None
                    require ext_code.size(arg1)
                    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[(32 * arg5.length) + 580 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg8)
                    staticcall arg8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    endingBalance = ext_call.return_data[0]
                    if arg9 != 2:
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 452] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, 0, msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 
                                        '',
                                        56,
                                        0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                                        0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 384] = 2
                            mem[64] = (32 * arg5.length) + 480
                            mem[(32 * arg5.length) + 416] = arg2
                            mem[(32 * arg5.length) + 448] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2613 = mem[(32 * idx) + 128]
                                    _2614 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2613)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 384]
                                    _2616 = mem[(32 * arg5.length) + 384]
                                    idx = 0
                                    while idx < 32 * _2616:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 416]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2616) + _2614 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 384] = 3
                            mem[64] = (32 * arg5.length) + 512
                            mem[(32 * arg5.length) + 416] = arg8
                            mem[(32 * arg5.length) + 448] = arg2
                            mem[(32 * arg5.length) + 480] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2609 = mem[(32 * idx) + 128]
                                    _2610 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2609)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 384]
                                    _2612 = mem[(32 * arg5.length) + 384]
                                    idx = 0
                                    while idx < 32 * _2612:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 416]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2612) + _2610 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                    else:
                        require msg.value / 1000 / 1000 / 10000
                        if -(endingBalance / msg.value / 1000 / 1000 / 10000) + 10000 > arg6:
                            revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 452] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, 0, msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 
                                        '',
                                        56,
                                        0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                                        0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 384] = 2
                            mem[64] = (32 * arg5.length) + 480
                            mem[(32 * arg5.length) + 416] = arg2
                            mem[(32 * arg5.length) + 448] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2621 = mem[(32 * idx) + 128]
                                    _2622 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2621)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 384]
                                    _2624 = mem[(32 * arg5.length) + 384]
                                    idx = 0
                                    while idx < 32 * _2624:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 416]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2624) + _2622 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 384] = 3
                            mem[64] = (32 * arg5.length) + 512
                            mem[(32 * arg5.length) + 416] = arg8
                            mem[(32 * arg5.length) + 448] = arg2
                            mem[(32 * arg5.length) + 480] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2617 = mem[(32 * idx) + 128]
                                    _2618 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2617)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 384]
                                    _2620 = mem[(32 * arg5.length) + 384]
                                    idx = 0
                                    while idx < 32 * _2620:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 416]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2620) + _2618 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
    else:
        if Mask(112, 0, ext_call.return_data[32]) <= arg7:
            revert with 0, 
                        32,
                        53,
                        0xfe74612073656d206c6971756964657a206f7520747520626f746f752061206d6f65646120626173652065727261646120616d6967,
                        mem[(32 * arg5.length) + 249 len 11]
        if not arg9:
            mem[0] = msg.sender
            if bool(stor8[address(msg.sender)]) != 1:
                revert with 0, 
                            32,
                            56,
                            0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                            mem[(32 * arg5.length) + 252 len 8]
            if arg2 != arg8:
                mem[(32 * arg5.length) + 128] = 3
                mem[(32 * arg5.length) + 160] = arg8
                mem[(32 * arg5.length) + 192] = arg2
                mem[(32 * arg5.length) + 224] = arg3
                require arg4 * arg5.length
                sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                idx = 0
                while idx < arg5.length:
                    s = 0
                    while s < arg4:
                        require idx < arg5.length
                        _1673 = mem[(32 * idx) + 128]
                        mem[(32 * arg5.length) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 260] = 0
                        mem[(32 * arg5.length) + 324] = address(_1673)
                        mem[(32 * arg5.length) + 356] = block.timestamp
                        mem[(32 * arg5.length) + 292] = 128
                        mem[(32 * arg5.length) + 388] = 3
                        idx = 0
                        while idx < 96:
                            mem[(32 * arg5.length) + idx + 420] = mem[(32 * arg5.length) + idx + 160]
                            idx = idx + 32
                            continue 
                        require ext_code.size(arg1)
                        call arg1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value sub_1ef782ba wei
                             gas gas_remaining wei
                            args 0, 128, address(_1673), block.timestamp, 3, mem[(32 * arg5.length) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
            else:
                mem[(32 * arg5.length) + 128] = 2
                mem[64] = (32 * arg5.length) + 224
                mem[(32 * arg5.length) + 160] = arg2
                mem[(32 * arg5.length) + 192] = arg3
                require arg4 * arg5.length
                sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                idx = 0
                while idx < arg5.length:
                    s = 0
                    while s < arg4:
                        require idx < arg5.length
                        _1677 = mem[(32 * idx) + 128]
                        mem[(32 * arg5.length) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 228] = 0
                        mem[(32 * arg5.length) + 292] = address(_1677)
                        mem[(32 * arg5.length) + 324] = block.timestamp
                        mem[(32 * arg5.length) + 260] = 128
                        mem[(32 * arg5.length) + 356] = mem[(32 * arg5.length) + 128]
                        _1680 = mem[(32 * arg5.length) + 128]
                        idx = 0
                        while idx < 32 * _1680:
                            mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 160]
                            idx = idx + 32
                            continue 
                        require ext_code.size(arg1)
                        call arg1.mem[mem[64] len 4] with:
                           value sub_1ef782ba wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _1680) + (32 * arg5.length) + -mem[64] + 384]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
        else:
            if bool(stor8[address(msg.sender)]) != 1:
                revert with 0, 
                            32,
                            56,
                            0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                            mem[(32 * arg5.length) + 252 len 8]
            if arg2 == arg8:
                mem[(32 * arg5.length) + 128] = 2
                mem[(32 * arg5.length) + 160] = arg2
                mem[(32 * arg5.length) + 192] = arg3
                mem[(32 * arg5.length) + 388 len 0] = None
                require ext_code.size(arg1)
                call arg1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value / 1000 / 1000 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 30, 2, mem[(32 * arg5.length) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg3)
                staticcall arg3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg3)
                call arg3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 == arg8:
                    mem[(32 * arg5.length) + 224] = 2
                    mem[(32 * arg5.length) + 256] = arg3
                    mem[(32 * arg5.length) + 288] = arg2
                    mem[(32 * arg5.length) + 420] = this.address
                    mem[(32 * arg5.length) + 452] = block.timestamp + 30
                    mem[(32 * arg5.length) + 484] = 2
                    mem[(32 * arg5.length) + 516 len 0] = None
                    require ext_code.size(arg1)
                    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[(32 * arg5.length) + 516 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg8)
                    staticcall arg8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    endingBalance = ext_call.return_data[0]
                    if arg9 != 2:
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 388] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 'e100 bnbs and i whitelist you, contact psilva - PsilvaBo', 0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 320] = 2
                            mem[64] = (32 * arg5.length) + 416
                            mem[(32 * arg5.length) + 352] = arg2
                            mem[(32 * arg5.length) + 384] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < arg5.length
                                    _2725 = mem[(32 * idx) + 128]
                                    mem[(32 * arg5.length) + 416] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 420] = 0
                                    mem[(32 * arg5.length) + 484] = address(_2725)
                                    mem[(32 * arg5.length) + 516] = block.timestamp
                                    mem[(32 * arg5.length) + 452] = 128
                                    mem[(32 * arg5.length) + 548] = mem[(32 * arg5.length) + 320]
                                    _2728 = mem[(32 * arg5.length) + 320]
                                    idx = 0
                                    while idx < 32 * _2728:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 352]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2728) + (32 * arg5.length) + -mem[64] + 576]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 320] = 3
                            mem[64] = (32 * arg5.length) + 448
                            mem[(32 * arg5.length) + 352] = arg8
                            mem[(32 * arg5.length) + 384] = arg2
                            mem[(32 * arg5.length) + 416] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2721 = mem[(32 * idx) + 128]
                                    _2722 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2721)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 320]
                                    _2724 = mem[(32 * arg5.length) + 320]
                                    idx = 0
                                    while idx < 32 * _2724:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 352]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2724) + _2722 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                    else:
                        require msg.value / 1000 / 1000 / 10000
                        if -(endingBalance / msg.value / 1000 / 1000 / 10000) + 10000 > arg6:
                            revert with 0, '', 'taxa ta alta pra caralhoooo'
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 388] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 'e100 bnbs and i whitelist you, contact psilva - PsilvaBo', 0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 320] = 2
                            mem[64] = (32 * arg5.length) + 416
                            mem[(32 * arg5.length) + 352] = arg2
                            mem[(32 * arg5.length) + 384] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2733 = mem[(32 * idx) + 128]
                                    _2734 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2733)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 320]
                                    _2736 = mem[(32 * arg5.length) + 320]
                                    idx = 0
                                    while idx < 32 * _2736:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 352]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2736) + _2734 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 320] = 3
                            mem[64] = (32 * arg5.length) + 448
                            mem[(32 * arg5.length) + 352] = arg8
                            mem[(32 * arg5.length) + 384] = arg2
                            mem[(32 * arg5.length) + 416] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < arg5.length
                                    _2729 = mem[(32 * idx) + 128]
                                    mem[(32 * arg5.length) + 448] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 452] = 0
                                    mem[(32 * arg5.length) + 516] = address(_2729)
                                    mem[(32 * arg5.length) + 548] = block.timestamp
                                    mem[(32 * arg5.length) + 484] = 128
                                    mem[(32 * arg5.length) + 580] = mem[(32 * arg5.length) + 320]
                                    _2732 = mem[(32 * arg5.length) + 320]
                                    idx = 0
                                    while idx < 32 * _2732:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 352]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2732) + (32 * arg5.length) + -mem[64] + 608]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                else:
                    mem[(32 * arg5.length) + 224] = 3
                    mem[(32 * arg5.length) + 256] = arg3
                    mem[(32 * arg5.length) + 288] = arg2
                    mem[(32 * arg5.length) + 320] = arg8
                    mem[(32 * arg5.length) + 452] = this.address
                    mem[(32 * arg5.length) + 484] = block.timestamp + 30
                    mem[(32 * arg5.length) + 516] = 3
                    mem[(32 * arg5.length) + 548 len 0] = None
                    require ext_code.size(arg1)
                    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[(32 * arg5.length) + 548 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg8)
                    staticcall arg8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    endingBalance = ext_call.return_data[0]
                    if arg9 != 2:
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 420] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, 0, msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 
                                        '',
                                        56,
                                        0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                                        0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 352] = 2
                            mem[64] = (32 * arg5.length) + 448
                            mem[(32 * arg5.length) + 384] = arg2
                            mem[(32 * arg5.length) + 416] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2709 = mem[(32 * idx) + 128]
                                    _2710 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2709)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 352]
                                    _2712 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2712:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2712) + _2710 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 352] = 3
                            mem[64] = (32 * arg5.length) + 480
                            mem[(32 * arg5.length) + 384] = arg8
                            mem[(32 * arg5.length) + 416] = arg2
                            mem[(32 * arg5.length) + 448] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2705 = mem[(32 * idx) + 128]
                                    _2706 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2705)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 352]
                                    _2708 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2708:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2708) + _2706 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                    else:
                        require msg.value / 1000 / 1000 / 10000
                        if -(endingBalance / msg.value / 1000 / 1000 / 10000) + 10000 > arg6:
                            revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 420] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, 0, msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 
                                        '',
                                        56,
                                        0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                                        0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 352] = 2
                            mem[64] = (32 * arg5.length) + 448
                            mem[(32 * arg5.length) + 384] = arg2
                            mem[(32 * arg5.length) + 416] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < arg5.length
                                    _2717 = mem[(32 * idx) + 128]
                                    mem[(32 * arg5.length) + 448] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 452] = 0
                                    mem[(32 * arg5.length) + 516] = address(_2717)
                                    mem[(32 * arg5.length) + 548] = block.timestamp
                                    mem[(32 * arg5.length) + 484] = 128
                                    mem[(32 * arg5.length) + 580] = mem[(32 * arg5.length) + 352]
                                    _2720 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2720:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2720) + (32 * arg5.length) + -mem[64] + 608]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 352] = 3
                            mem[64] = (32 * arg5.length) + 480
                            mem[(32 * arg5.length) + 384] = arg8
                            mem[(32 * arg5.length) + 416] = arg2
                            mem[(32 * arg5.length) + 448] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2713 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2713)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 352]
                                    _2716 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2716:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args 0, 128, address(_2713), block.timestamp, mem[mem[64] + 132 len (32 * _2716) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
            else:
                mem[(32 * arg5.length) + 128] = 3
                mem[(32 * arg5.length) + 160] = arg8
                mem[(32 * arg5.length) + 192] = arg2
                mem[(32 * arg5.length) + 224] = arg3
                mem[(32 * arg5.length) + 420 len 0] = None
                require ext_code.size(arg1)
                call arg1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value / 1000 / 1000 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 30, 3, mem[(32 * arg5.length) + 420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg3)
                staticcall arg3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg3)
                call arg3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 == arg8:
                    mem[(32 * arg5.length) + 256] = 2
                    mem[(32 * arg5.length) + 288] = arg3
                    mem[(32 * arg5.length) + 320] = arg2
                    mem[(32 * arg5.length) + 452] = this.address
                    mem[(32 * arg5.length) + 484] = block.timestamp + 30
                    mem[(32 * arg5.length) + 516] = 2
                    mem[(32 * arg5.length) + 548 len 0] = None
                    require ext_code.size(arg1)
                    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[(32 * arg5.length) + 548 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg8)
                    staticcall arg8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    endingBalance = ext_call.return_data[0]
                    if arg9 != 2:
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 420] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 'e100 bnbs and i whitelist you, contact psilva - PsilvaBo', 0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 352] = 2
                            mem[64] = (32 * arg5.length) + 448
                            mem[(32 * arg5.length) + 384] = arg2
                            mem[(32 * arg5.length) + 416] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2693 = mem[(32 * idx) + 128]
                                    _2694 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2693)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 352]
                                    _2696 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2696:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2696) + _2694 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 352] = 3
                            mem[64] = (32 * arg5.length) + 480
                            mem[(32 * arg5.length) + 384] = arg8
                            mem[(32 * arg5.length) + 416] = arg2
                            mem[(32 * arg5.length) + 448] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2689 = mem[(32 * idx) + 128]
                                    _2690 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2689)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 352]
                                    _2692 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2692:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2692) + _2690 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                    else:
                        require msg.value / 1000 / 1000 / 10000
                        if -(endingBalance / msg.value / 1000 / 1000 / 10000) + 10000 > arg6:
                            revert with 0, '', 'taxa ta alta pra caralhoooo'
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 420] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 'e100 bnbs and i whitelist you, contact psilva - PsilvaBo', 0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 352] = 2
                            mem[(32 * arg5.length) + 384] = arg2
                            mem[(32 * arg5.length) + 416] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < arg5.length
                                    _2701 = mem[(32 * idx) + 128]
                                    mem[(32 * arg5.length) + 448] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 452] = 0
                                    mem[(32 * arg5.length) + 516] = address(_2701)
                                    mem[(32 * arg5.length) + 548] = block.timestamp
                                    mem[(32 * arg5.length) + 484] = 128
                                    mem[(32 * arg5.length) + 580] = 2
                                    idx = 0
                                    while idx < 64:
                                        mem[(32 * arg5.length) + idx + 612] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args 0, 128, address(_2701), block.timestamp, 2, mem[(32 * arg5.length) + 612 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 352] = 3
                            mem[64] = (32 * arg5.length) + 480
                            mem[(32 * arg5.length) + 384] = arg8
                            mem[(32 * arg5.length) + 416] = arg2
                            mem[(32 * arg5.length) + 448] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2697 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2697)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 352]
                                    _2700 = mem[(32 * arg5.length) + 352]
                                    idx = 0
                                    while idx < 32 * _2700:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 384]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args 0, 128, address(_2697), block.timestamp, mem[mem[64] + 132 len (32 * _2700) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                else:
                    mem[(32 * arg5.length) + 256] = 3
                    mem[(32 * arg5.length) + 288] = arg3
                    mem[(32 * arg5.length) + 320] = arg2
                    mem[(32 * arg5.length) + 352] = arg8
                    mem[(32 * arg5.length) + 484] = this.address
                    mem[(32 * arg5.length) + 516] = block.timestamp + 30
                    mem[(32 * arg5.length) + 548] = 3
                    mem[(32 * arg5.length) + 580 len 0] = None
                    require ext_code.size(arg1)
                    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[(32 * arg5.length) + 580 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg8)
                    staticcall arg8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    endingBalance = ext_call.return_data[0]
                    if arg9 != 2:
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 452] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, 0, msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 
                                        '',
                                        56,
                                        0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                                        0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 384] = 2
                            mem[64] = (32 * arg5.length) + 480
                            mem[(32 * arg5.length) + 416] = arg2
                            mem[(32 * arg5.length) + 448] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2677 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2677)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 384]
                                    _2680 = mem[(32 * arg5.length) + 384]
                                    idx = 0
                                    while idx < 32 * _2680:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 416]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args 0, 128, address(_2677), block.timestamp, mem[mem[64] + 132 len (32 * _2680) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 384] = 3
                            mem[64] = (32 * arg5.length) + 512
                            mem[(32 * arg5.length) + 416] = arg8
                            mem[(32 * arg5.length) + 448] = arg2
                            mem[(32 * arg5.length) + 480] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2673 = mem[(32 * idx) + 128]
                                    _2674 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2673)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 384]
                                    _2676 = mem[(32 * arg5.length) + 384]
                                    idx = 0
                                    while idx < 32 * _2676:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 416]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2676) + _2674 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                    else:
                        require msg.value / 1000 / 1000 / 10000
                        if -(endingBalance / msg.value / 1000 / 1000 / 10000) + 10000 > arg6:
                            revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                        require ext_code.size(arg8)
                        staticcall arg8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * arg5.length) + 452] = ext_call.return_data[0]
                        require ext_code.size(arg8)
                        call arg8.0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, 0, msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = msg.sender
                        if bool(stor8[address(msg.sender)]) != 1:
                            revert with 0, 
                                        '',
                                        56,
                                        0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                                        0
                        if arg2 == arg8:
                            mem[(32 * arg5.length) + 384] = 2
                            mem[64] = (32 * arg5.length) + 480
                            mem[(32 * arg5.length) + 416] = arg2
                            mem[(32 * arg5.length) + 448] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2685 = mem[(32 * idx) + 128]
                                    _2686 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2685)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 384]
                                    _2688 = mem[(32 * arg5.length) + 384]
                                    idx = 0
                                    while idx < 32 * _2688:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 416]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2688) + _2686 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg5.length) + 384] = 3
                            mem[64] = (32 * arg5.length) + 512
                            mem[(32 * arg5.length) + 416] = arg8
                            mem[(32 * arg5.length) + 448] = arg2
                            mem[(32 * arg5.length) + 480] = arg3
                            require arg4 * arg5.length
                            sub_1ef782ba = eth.balance(this.address) / arg4 * arg5.length
                            idx = 0
                            while idx < arg5.length:
                                s = 0
                                while s < arg4:
                                    require idx < mem[96]
                                    _2681 = mem[(32 * idx) + 128]
                                    _2682 = mem[64]
                                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(_2681)
                                    mem[mem[64] + 100] = block.timestamp
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = mem[(32 * arg5.length) + 384]
                                    _2684 = mem[(32 * arg5.length) + 384]
                                    idx = 0
                                    while idx < 32 * _2684:
                                        mem[mem[64] + idx + 164] = mem[(32 * arg5.length) + idx + 416]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.mem[mem[64] len 4] with:
                                       value sub_1ef782ba wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2684) + _2682 + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
}

function sub_c78db3f0(?) {
    mem[0] = msg.sender
    mem[32] = 7
    if bool(stor7[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6531303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d205073696c7661426f,
                    mem[220 len 8]
    if eth.balance(this.address) <= 0:
        revert with 0, 'ja foi psojado'
    if wallets.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x73616d69676f2c20636f6d7072617220656d20766172696173206361727465697261732073656d20636f6e6669677572617220616e74657320656820666f6461206e,
                    mem[230 len 30]
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args baseTokenAddress, sub_c0b6201cAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'nem criaram o par ainda carai'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    sub_fce62d8f = ext_call.return_data[50 len 14]
    sub_adcdc67c = ext_call.return_data[18 len 14]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == baseTokenAddress:
        if sub_adcdc67c <= minLp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0xfe74612073656d206c6971756964657a206f7520747520626f746f752061206d6f65646120626173652065727261646120616d6967,
                        mem[217 len 11]
        if not mode:
            require ext_code.size(baseTokenAddress)
            call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if baseTokenAddress == ETHAddress:
                mem[96] = 2
                mem[64] = 192
                mem[128] = baseTokenAddress
                mem[160] = sub_c0b6201cAddress
                require sub_43ff02f6 * wallets.length
                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                idx = 0
                while idx < wallets.length:
                    s = 0
                    while s < sub_43ff02f6:
                        require idx < wallets.length
                        mem[0] = 9
                        _5247 = mem[64]
                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 68] = wallets[idx]
                        mem[mem[64] + 100] = block.timestamp
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = mem[96]
                        idx = 0
                        while idx < 32 * mem[96]:
                            mem[mem[64] + idx + 164] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                           value sub_1ef782ba wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _5247 + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7539 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7736 = mem[_7539]
                        require mem[_7539] <= 4294967296
                        require mem[_7539] + 32 <= return_data.size
                        require mem[mem[_7539] + _7539] <= 4294967296 and mem[_7539] + (32 * mem[mem[_7539] + _7539]) + 32 <= return_data.size
                        mem[_7539 + ceil32(return_data.size)] = mem[mem[_7539] + _7539]
                        _8131 = mem[_7736 + _7539]
                        idx = 0
                        while idx < 32 * _8131:
                            mem[_7539 + ceil32(return_data.size) + idx + 32] = mem[_7736 + _7539 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _8131) + _7539 + ceil32(return_data.size) + 32
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
            else:
                mem[96] = 3
                mem[64] = 224
                mem[128] = ETHAddress
                mem[160] = baseTokenAddress
                mem[192] = sub_c0b6201cAddress
                require sub_43ff02f6 * wallets.length
                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                idx = 0
                while idx < wallets.length:
                    s = 0
                    while s < sub_43ff02f6:
                        require idx < wallets.length
                        mem[0] = 9
                        _5243 = mem[64]
                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 68] = wallets[idx]
                        mem[mem[64] + 100] = block.timestamp
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = mem[96]
                        idx = 0
                        while idx < 32 * mem[96]:
                            mem[mem[64] + idx + 164] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                           value sub_1ef782ba wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _5243 + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7538 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7734 = mem[_7538]
                        require mem[_7538] <= 4294967296
                        require mem[_7538] + 32 <= return_data.size
                        require mem[mem[_7538] + _7538] <= 4294967296 and mem[_7538] + (32 * mem[mem[_7538] + _7538]) + 32 <= return_data.size
                        mem[_7538 + ceil32(return_data.size)] = mem[mem[_7538] + _7538]
                        _8130 = mem[_7734 + _7538]
                        idx = 0
                        while idx < 32 * _8130:
                            mem[_7538 + ceil32(return_data.size) + idx + 32] = mem[_7734 + _7538 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _8130) + _7538 + ceil32(return_data.size) + 32
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
        else:
            if mode == 1:
                require ext_code.size(ETHAddress)
                call ETHAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(baseTokenAddress)
                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if baseTokenAddress == ETHAddress:
                    mem[96] = 2
                    mem[128] = baseTokenAddress
                    mem[160] = sub_c0b6201cAddress
                    mem[356 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) / 1000 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 30, 2, mem[356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_c0b6201cAddress)
                    staticcall sub_c0b6201cAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c0b6201cAddress)
                    call sub_c0b6201cAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(baseTokenAddress)
                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if baseTokenAddress == ETHAddress:
                        mem[192] = 2
                        mem[224] = sub_c0b6201cAddress
                        mem[256] = baseTokenAddress
                        mem[388] = this.address
                        mem[420] = block.timestamp + 30
                        mem[452] = 2
                        mem[484 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[484 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(ETHAddress)
                        staticcall ETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        endingBalance = ext_call.return_data[0]
                        if mode == 5:
                            require eth.balance(this.address) / 1000 / 10000
                            sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                            if sub_ab731cfa > sub_cb523a14:
                                revert with 0, '', 'taxa ta alta pra caralhoooo'
                            require 0 < wallets.length
                            mem[0] = 9
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[356] = ext_call.return_data[0]
                            require ext_code.size(ETHAddress)
                            call ETHAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), wallets, 0, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(baseTokenAddress)
                            call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if baseTokenAddress == ETHAddress:
                                mem[288] = 2
                                mem[64] = 384
                                mem[320] = baseTokenAddress
                                mem[352] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[288]
                                        _8893 = mem[288]
                                        t = 0
                                        while t < 32 * _8893:
                                            mem[mem[64] + t + 164] = mem[t + 320]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8893) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10105 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10244 = mem[_10105]
                                        require mem[_10105] <= 4294967296
                                        require mem[_10105] + 32 <= return_data.size
                                        require mem[mem[_10105] + _10105] <= 4294967296 and mem[_10105] + (32 * mem[mem[_10105] + _10105]) + 32 <= return_data.size
                                        mem[_10105 + ceil32(return_data.size)] = mem[mem[_10105] + _10105]
                                        _10489 = mem[_10244 + _10105]
                                        idx = 0
                                        while idx < 32 * _10489:
                                            mem[_10105 + ceil32(return_data.size) + idx + 32] = mem[_10244 + _10105 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10489) + _10105 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[288] = 3
                                mem[64] = 416
                                mem[320] = ETHAddress
                                mem[352] = baseTokenAddress
                                mem[384] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _8887 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[288]
                                        _8889 = mem[288]
                                        idx = 0
                                        while idx < 32 * _8889:
                                            mem[mem[64] + idx + 164] = mem[idx + 320]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _8889) + _8887 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10104 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10242 = mem[_10104]
                                        require mem[_10104] <= 4294967296
                                        require mem[_10104] + 32 <= return_data.size
                                        require mem[mem[_10104] + _10104] <= 4294967296 and mem[_10104] + (32 * mem[mem[_10104] + _10104]) + 32 <= return_data.size
                                        mem[_10104 + ceil32(return_data.size)] = mem[mem[_10104] + _10104]
                                        _10488 = mem[_10242 + _10104]
                                        idx = 0
                                        while idx < 32 * _10488:
                                            mem[_10104 + ceil32(return_data.size) + idx + 32] = mem[_10242 + _10104 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10488) + _10104 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            if mode != 2:
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[356] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), wallets, 0, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[288] = 2
                                    mem[64] = 384
                                    mem[320] = baseTokenAddress
                                    mem[352] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8899 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[288]
                                            _8901 = mem[288]
                                            idx = 0
                                            while idx < 32 * _8901:
                                                mem[mem[64] + idx + 164] = mem[idx + 320]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8901) + _8899 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10107 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10248 = mem[_10107]
                                            require mem[_10107] <= 4294967296
                                            require mem[_10107] + 32 <= return_data.size
                                            require mem[mem[_10107] + _10107] <= 4294967296 and mem[_10107] + (32 * mem[mem[_10107] + _10107]) + 32 <= return_data.size
                                            mem[_10107 + ceil32(return_data.size)] = mem[mem[_10107] + _10107]
                                            _10491 = mem[_10248 + _10107]
                                            idx = 0
                                            while idx < 32 * _10491:
                                                mem[_10107 + ceil32(return_data.size) + idx + 32] = mem[_10248 + _10107 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10491) + _10107 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[288] = 3
                                    mem[64] = 416
                                    mem[320] = ETHAddress
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8895 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[288]
                                            _8897 = mem[288]
                                            idx = 0
                                            while idx < 32 * _8897:
                                                mem[mem[64] + idx + 164] = mem[idx + 320]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8897) + _8895 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10106 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10246 = mem[_10106]
                                            require mem[_10106] <= 4294967296
                                            require mem[_10106] + 32 <= return_data.size
                                            require mem[mem[_10106] + _10106] <= 4294967296 and mem[_10106] + (32 * mem[mem[_10106] + _10106]) + 32 <= return_data.size
                                            mem[_10106 + ceil32(return_data.size)] = mem[mem[_10106] + _10106]
                                            _10490 = mem[_10246 + _10106]
                                            idx = 0
                                            while idx < 32 * _10490:
                                                mem[_10106 + ceil32(return_data.size) + idx + 32] = mem[_10246 + _10106 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10490) + _10106 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[356] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), wallets, 0, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[288] = 2
                                    mem[64] = 384
                                    mem[320] = baseTokenAddress
                                    mem[352] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8907 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[288]
                                            _8909 = mem[288]
                                            idx = 0
                                            while idx < 32 * _8909:
                                                mem[mem[64] + idx + 164] = mem[idx + 320]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8909) + _8907 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10109 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10252 = mem[_10109]
                                            require mem[_10109] <= 4294967296
                                            require mem[_10109] + 32 <= return_data.size
                                            require mem[mem[_10109] + _10109] <= 4294967296 and mem[_10109] + (32 * mem[mem[_10109] + _10109]) + 32 <= return_data.size
                                            mem[_10109 + ceil32(return_data.size)] = mem[mem[_10109] + _10109]
                                            _10493 = mem[_10252 + _10109]
                                            idx = 0
                                            while idx < 32 * _10493:
                                                mem[_10109 + ceil32(return_data.size) + idx + 32] = mem[_10252 + _10109 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10493) + _10109 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[288] = 3
                                    mem[64] = 416
                                    mem[320] = ETHAddress
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8903 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[288]
                                            _8905 = mem[288]
                                            idx = 0
                                            while idx < 32 * _8905:
                                                mem[mem[64] + idx + 164] = mem[idx + 320]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8905) + _8903 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10108 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10250 = mem[_10108]
                                            require mem[_10108] <= 4294967296
                                            require mem[_10108] + 32 <= return_data.size
                                            require mem[mem[_10108] + _10108] <= 4294967296 and mem[_10108] + (32 * mem[mem[_10108] + _10108]) + 32 <= return_data.size
                                            mem[_10108 + ceil32(return_data.size)] = mem[mem[_10108] + _10108]
                                            _10492 = mem[_10250 + _10108]
                                            idx = 0
                                            while idx < 32 * _10492:
                                                mem[_10108 + ceil32(return_data.size) + idx + 32] = mem[_10250 + _10108 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10492) + _10108 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[192] = 3
                        mem[224] = sub_c0b6201cAddress
                        mem[256] = baseTokenAddress
                        mem[288] = ETHAddress
                        mem[420] = this.address
                        mem[452] = block.timestamp + 30
                        mem[484] = 3
                        mem[516 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[516 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(ETHAddress)
                        staticcall ETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        endingBalance = ext_call.return_data[0]
                        if mode == 5:
                            require eth.balance(this.address) / 1000 / 10000
                            sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                            if sub_ab731cfa > sub_cb523a14:
                                revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                            require 0 < wallets.length
                            mem[0] = 9
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[388] = ext_call.return_data[0]
                            require ext_code.size(ETHAddress)
                            call ETHAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args this.address, 0, wallets, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(baseTokenAddress)
                            call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, 0, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if baseTokenAddress == ETHAddress:
                                mem[320] = 2
                                mem[64] = 416
                                mem[352] = baseTokenAddress
                                mem[384] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _8867 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[320]
                                        _8869 = mem[320]
                                        idx = 0
                                        while idx < 32 * _8869:
                                            mem[mem[64] + idx + 164] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _8869) + _8867 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10099 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10232 = mem[_10099]
                                        require mem[_10099] <= 4294967296
                                        require mem[_10099] + 32 <= return_data.size
                                        require mem[mem[_10099] + _10099] <= 4294967296 and mem[_10099] + (32 * mem[mem[_10099] + _10099]) + 32 <= return_data.size
                                        mem[_10099 + ceil32(return_data.size)] = mem[mem[_10099] + _10099]
                                        _10483 = mem[_10232 + _10099]
                                        idx = 0
                                        while idx < 32 * _10483:
                                            mem[_10099 + ceil32(return_data.size) + idx + 32] = mem[_10232 + _10099 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10483) + _10099 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[320] = 3
                                mem[64] = 448
                                mem[352] = ETHAddress
                                mem[384] = baseTokenAddress
                                mem[416] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _8863 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[320]
                                        _8865 = mem[320]
                                        idx = 0
                                        while idx < 32 * _8865:
                                            mem[mem[64] + idx + 164] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _8865) + _8863 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10098 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10230 = mem[_10098]
                                        require mem[_10098] <= 4294967296
                                        require mem[_10098] + 32 <= return_data.size
                                        require mem[mem[_10098] + _10098] <= 4294967296 and mem[_10098] + (32 * mem[mem[_10098] + _10098]) + 32 <= return_data.size
                                        mem[_10098 + ceil32(return_data.size)] = mem[mem[_10098] + _10098]
                                        _10482 = mem[_10230 + _10098]
                                        idx = 0
                                        while idx < 32 * _10482:
                                            mem[_10098 + ceil32(return_data.size) + idx + 32] = mem[_10230 + _10098 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10482) + _10098 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            if mode != 2:
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[388] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args this.address, 0, wallets, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, 0, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[320] = 2
                                    mem[64] = 416
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8877 = mem[320]
                                            t = 0
                                            while t < 32 * _8877:
                                                mem[mem[64] + t + 164] = mem[t + 352]
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8877) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10101 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10236 = mem[_10101]
                                            require mem[_10101] <= 4294967296
                                            require mem[_10101] + 32 <= return_data.size
                                            require mem[mem[_10101] + _10101] <= 4294967296 and mem[_10101] + (32 * mem[mem[_10101] + _10101]) + 32 <= return_data.size
                                            mem[_10101 + ceil32(return_data.size)] = mem[mem[_10101] + _10101]
                                            _10485 = mem[_10236 + _10101]
                                            idx = 0
                                            while idx < 32 * _10485:
                                                mem[_10101 + ceil32(return_data.size) + idx + 32] = mem[_10236 + _10101 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10485) + _10101 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[320] = 3
                                    mem[64] = 448
                                    mem[352] = ETHAddress
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8871 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8873 = mem[320]
                                            idx = 0
                                            while idx < 32 * _8873:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8873) + _8871 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10100 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10234 = mem[_10100]
                                            require mem[_10100] <= 4294967296
                                            require mem[_10100] + 32 <= return_data.size
                                            require mem[mem[_10100] + _10100] <= 4294967296 and mem[_10100] + (32 * mem[mem[_10100] + _10100]) + 32 <= return_data.size
                                            mem[_10100 + ceil32(return_data.size)] = mem[mem[_10100] + _10100]
                                            _10484 = mem[_10234 + _10100]
                                            idx = 0
                                            while idx < 32 * _10484:
                                                mem[_10100 + ceil32(return_data.size) + idx + 32] = mem[_10234 + _10100 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10484) + _10100 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[388] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args this.address, 0, wallets, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, 0, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[320] = 2
                                    mem[64] = 416
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8883 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8885 = mem[320]
                                            idx = 0
                                            while idx < 32 * _8885:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8885) + _8883 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10103 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10240 = mem[_10103]
                                            require mem[_10103] <= 4294967296
                                            require mem[_10103] + 32 <= return_data.size
                                            require mem[mem[_10103] + _10103] <= 4294967296 and mem[_10103] + (32 * mem[mem[_10103] + _10103]) + 32 <= return_data.size
                                            mem[_10103 + ceil32(return_data.size)] = mem[mem[_10103] + _10103]
                                            _10487 = mem[_10240 + _10103]
                                            idx = 0
                                            while idx < 32 * _10487:
                                                mem[_10103 + ceil32(return_data.size) + idx + 32] = mem[_10240 + _10103 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10487) + _10103 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[320] = 3
                                    mem[64] = 448
                                    mem[352] = ETHAddress
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8879 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8881 = mem[320]
                                            idx = 0
                                            while idx < 32 * _8881:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8881) + _8879 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10102 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10238 = mem[_10102]
                                            require mem[_10102] <= 4294967296
                                            require mem[_10102] + 32 <= return_data.size
                                            require mem[mem[_10102] + _10102] <= 4294967296 and mem[_10102] + (32 * mem[mem[_10102] + _10102]) + 32 <= return_data.size
                                            mem[_10102 + ceil32(return_data.size)] = mem[mem[_10102] + _10102]
                                            _10486 = mem[_10238 + _10102]
                                            idx = 0
                                            while idx < 32 * _10486:
                                                mem[_10102 + ceil32(return_data.size) + idx + 32] = mem[_10238 + _10102 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10486) + _10102 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                else:
                    mem[96] = 3
                    mem[128] = ETHAddress
                    mem[160] = baseTokenAddress
                    mem[192] = sub_c0b6201cAddress
                    mem[388 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) / 1000 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 30, 3, mem[388 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_c0b6201cAddress)
                    staticcall sub_c0b6201cAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c0b6201cAddress)
                    call sub_c0b6201cAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(baseTokenAddress)
                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if baseTokenAddress == ETHAddress:
                        mem[224] = 2
                        mem[256] = sub_c0b6201cAddress
                        mem[288] = baseTokenAddress
                        mem[420] = this.address
                        mem[452] = block.timestamp + 30
                        mem[484] = 2
                        mem[516 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[516 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(ETHAddress)
                        staticcall ETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        endingBalance = ext_call.return_data[0]
                        if mode == 5:
                            require eth.balance(this.address) / 1000 / 10000
                            sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                            if sub_ab731cfa > sub_cb523a14:
                                revert with 0, '', 'taxa ta alta pra caralhoooo'
                            require 0 < wallets.length
                            mem[0] = 9
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[388] = ext_call.return_data[0]
                            require ext_code.size(ETHAddress)
                            call ETHAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), wallets, 0, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(baseTokenAddress)
                            call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if baseTokenAddress == ETHAddress:
                                mem[320] = 2
                                mem[64] = 416
                                mem[352] = baseTokenAddress
                                mem[384] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _8843 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[320]
                                        _8845 = mem[320]
                                        idx = 0
                                        while idx < 32 * _8845:
                                            mem[mem[64] + idx + 164] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _8845) + _8843 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10093 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10220 = mem[_10093]
                                        require mem[_10093] <= 4294967296
                                        require mem[_10093] + 32 <= return_data.size
                                        require mem[mem[_10093] + _10093] <= 4294967296 and mem[_10093] + (32 * mem[mem[_10093] + _10093]) + 32 <= return_data.size
                                        mem[_10093 + ceil32(return_data.size)] = mem[mem[_10093] + _10093]
                                        _10477 = mem[_10220 + _10093]
                                        idx = 0
                                        while idx < 32 * _10477:
                                            mem[_10093 + ceil32(return_data.size) + idx + 32] = mem[_10220 + _10093 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10477) + _10093 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[320] = 3
                                mem[64] = 448
                                mem[352] = ETHAddress
                                mem[384] = baseTokenAddress
                                mem[416] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _8839 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[320]
                                        _8841 = mem[320]
                                        idx = 0
                                        while idx < 32 * _8841:
                                            mem[mem[64] + idx + 164] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _8841) + _8839 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10092 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10218 = mem[_10092]
                                        require mem[_10092] <= 4294967296
                                        require mem[_10092] + 32 <= return_data.size
                                        require mem[mem[_10092] + _10092] <= 4294967296 and mem[_10092] + (32 * mem[mem[_10092] + _10092]) + 32 <= return_data.size
                                        mem[_10092 + ceil32(return_data.size)] = mem[mem[_10092] + _10092]
                                        _10476 = mem[_10218 + _10092]
                                        idx = 0
                                        while idx < 32 * _10476:
                                            mem[_10092 + ceil32(return_data.size) + idx + 32] = mem[_10218 + _10092 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10476) + _10092 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            if mode != 2:
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[388] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), wallets, 0, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[320] = 2
                                    mem[64] = 416
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8851 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8853 = mem[320]
                                            idx = 0
                                            while idx < 32 * _8853:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8853) + _8851 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10095 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10224 = mem[_10095]
                                            require mem[_10095] <= 4294967296
                                            require mem[_10095] + 32 <= return_data.size
                                            require mem[mem[_10095] + _10095] <= 4294967296 and mem[_10095] + (32 * mem[mem[_10095] + _10095]) + 32 <= return_data.size
                                            mem[_10095 + ceil32(return_data.size)] = mem[mem[_10095] + _10095]
                                            _10479 = mem[_10224 + _10095]
                                            idx = 0
                                            while idx < 32 * _10479:
                                                mem[_10095 + ceil32(return_data.size) + idx + 32] = mem[_10224 + _10095 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10479) + _10095 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[320] = 3
                                    mem[64] = 448
                                    mem[352] = ETHAddress
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8847 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8849 = mem[320]
                                            idx = 0
                                            while idx < 32 * _8849:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8849) + _8847 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10094 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10222 = mem[_10094]
                                            require mem[_10094] <= 4294967296
                                            require mem[_10094] + 32 <= return_data.size
                                            require mem[mem[_10094] + _10094] <= 4294967296 and mem[_10094] + (32 * mem[mem[_10094] + _10094]) + 32 <= return_data.size
                                            mem[_10094 + ceil32(return_data.size)] = mem[mem[_10094] + _10094]
                                            _10478 = mem[_10222 + _10094]
                                            idx = 0
                                            while idx < 32 * _10478:
                                                mem[_10094 + ceil32(return_data.size) + idx + 32] = mem[_10222 + _10094 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10478) + _10094 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[388] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), wallets, 0, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[320] = 2
                                    mem[64] = 416
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8859 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8861 = mem[320]
                                            idx = 0
                                            while idx < 32 * _8861:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8861) + _8859 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10097 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10228 = mem[_10097]
                                            require mem[_10097] <= 4294967296
                                            require mem[_10097] + 32 <= return_data.size
                                            require mem[mem[_10097] + _10097] <= 4294967296 and mem[_10097] + (32 * mem[mem[_10097] + _10097]) + 32 <= return_data.size
                                            mem[_10097 + ceil32(return_data.size)] = mem[mem[_10097] + _10097]
                                            _10481 = mem[_10228 + _10097]
                                            idx = 0
                                            while idx < 32 * _10481:
                                                mem[_10097 + ceil32(return_data.size) + idx + 32] = mem[_10228 + _10097 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10481) + _10097 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[320] = 3
                                    mem[64] = 448
                                    mem[352] = ETHAddress
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8857 = mem[320]
                                            t = 0
                                            while t < 32 * _8857:
                                                mem[mem[64] + t + 164] = mem[t + 352]
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8857) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10096 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10226 = mem[_10096]
                                            require mem[_10096] <= 4294967296
                                            require mem[_10096] + 32 <= return_data.size
                                            require mem[mem[_10096] + _10096] <= 4294967296 and mem[_10096] + (32 * mem[mem[_10096] + _10096]) + 32 <= return_data.size
                                            mem[_10096 + ceil32(return_data.size)] = mem[mem[_10096] + _10096]
                                            _10480 = mem[_10226 + _10096]
                                            idx = 0
                                            while idx < 32 * _10480:
                                                mem[_10096 + ceil32(return_data.size) + idx + 32] = mem[_10226 + _10096 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10480) + _10096 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[224] = 3
                        mem[256] = sub_c0b6201cAddress
                        mem[288] = baseTokenAddress
                        mem[320] = ETHAddress
                        mem[452] = this.address
                        mem[484] = block.timestamp + 30
                        mem[516] = 3
                        mem[548 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[548 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(ETHAddress)
                        staticcall ETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        endingBalance = ext_call.return_data[0]
                        if mode == 5:
                            require eth.balance(this.address) / 1000 / 10000
                            sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                            if sub_ab731cfa > sub_cb523a14:
                                revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                            require 0 < wallets.length
                            mem[0] = 9
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[420] = ext_call.return_data[0]
                            require ext_code.size(ETHAddress)
                            call ETHAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args this.address, 0, wallets, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(baseTokenAddress)
                            call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, 0, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if baseTokenAddress == ETHAddress:
                                mem[352] = 2
                                mem[64] = 448
                                mem[384] = baseTokenAddress
                                mem[416] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[352]
                                        _8821 = mem[352]
                                        t = 0
                                        while t < 32 * _8821:
                                            mem[mem[64] + t + 164] = mem[t + 384]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8821) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10087 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10208 = mem[_10087]
                                        require mem[_10087] <= 4294967296
                                        require mem[_10087] + 32 <= return_data.size
                                        require mem[mem[_10087] + _10087] <= 4294967296 and mem[_10087] + (32 * mem[mem[_10087] + _10087]) + 32 <= return_data.size
                                        mem[_10087 + ceil32(return_data.size)] = mem[mem[_10087] + _10087]
                                        _10471 = mem[_10208 + _10087]
                                        idx = 0
                                        while idx < 32 * _10471:
                                            mem[_10087 + ceil32(return_data.size) + idx + 32] = mem[_10208 + _10087 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10471) + _10087 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[352] = 3
                                mem[64] = 480
                                mem[384] = ETHAddress
                                mem[416] = baseTokenAddress
                                mem[448] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _8815 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[352]
                                        _8817 = mem[352]
                                        idx = 0
                                        while idx < 32 * _8817:
                                            mem[mem[64] + idx + 164] = mem[idx + 384]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _8817) + _8815 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10086 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10206 = mem[_10086]
                                        require mem[_10086] <= 4294967296
                                        require mem[_10086] + 32 <= return_data.size
                                        require mem[mem[_10086] + _10086] <= 4294967296 and mem[_10086] + (32 * mem[mem[_10086] + _10086]) + 32 <= return_data.size
                                        mem[_10086 + ceil32(return_data.size)] = mem[mem[_10086] + _10086]
                                        _10470 = mem[_10206 + _10086]
                                        idx = 0
                                        while idx < 32 * _10470:
                                            mem[_10086 + ceil32(return_data.size) + idx + 32] = mem[_10206 + _10086 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10470) + _10086 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            if mode != 2:
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[420] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args this.address, 0, wallets, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, 0, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[352] = 2
                                    mem[64] = 448
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8827 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[352]
                                            _8829 = mem[352]
                                            idx = 0
                                            while idx < 32 * _8829:
                                                mem[mem[64] + idx + 164] = mem[idx + 384]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8829) + _8827 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10089 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10212 = mem[_10089]
                                            require mem[_10089] <= 4294967296
                                            require mem[_10089] + 32 <= return_data.size
                                            require mem[mem[_10089] + _10089] <= 4294967296 and mem[_10089] + (32 * mem[mem[_10089] + _10089]) + 32 <= return_data.size
                                            mem[_10089 + ceil32(return_data.size)] = mem[mem[_10089] + _10089]
                                            _10473 = mem[_10212 + _10089]
                                            idx = 0
                                            while idx < 32 * _10473:
                                                mem[_10089 + ceil32(return_data.size) + idx + 32] = mem[_10212 + _10089 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10473) + _10089 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[352] = 3
                                    mem[64] = 480
                                    mem[384] = ETHAddress
                                    mem[416] = baseTokenAddress
                                    mem[448] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8823 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[352]
                                            _8825 = mem[352]
                                            idx = 0
                                            while idx < 32 * _8825:
                                                mem[mem[64] + idx + 164] = mem[idx + 384]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8825) + _8823 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10088 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10210 = mem[_10088]
                                            require mem[_10088] <= 4294967296
                                            require mem[_10088] + 32 <= return_data.size
                                            require mem[mem[_10088] + _10088] <= 4294967296 and mem[_10088] + (32 * mem[mem[_10088] + _10088]) + 32 <= return_data.size
                                            mem[_10088 + ceil32(return_data.size)] = mem[mem[_10088] + _10088]
                                            _10472 = mem[_10210 + _10088]
                                            idx = 0
                                            while idx < 32 * _10472:
                                                mem[_10088 + ceil32(return_data.size) + idx + 32] = mem[_10210 + _10088 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10472) + _10088 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[420] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args this.address, 0, wallets, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, 0, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[352] = 2
                                    mem[64] = 448
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[352]
                                            _8837 = mem[352]
                                            t = 0
                                            while t < 32 * _8837:
                                                mem[mem[64] + t + 164] = mem[t + 384]
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8837) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10091 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10216 = mem[_10091]
                                            require mem[_10091] <= 4294967296
                                            require mem[_10091] + 32 <= return_data.size
                                            require mem[mem[_10091] + _10091] <= 4294967296 and mem[_10091] + (32 * mem[mem[_10091] + _10091]) + 32 <= return_data.size
                                            mem[_10091 + ceil32(return_data.size)] = mem[mem[_10091] + _10091]
                                            _10475 = mem[_10216 + _10091]
                                            idx = 0
                                            while idx < 32 * _10475:
                                                mem[_10091 + ceil32(return_data.size) + idx + 32] = mem[_10216 + _10091 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10475) + _10091 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[352] = 3
                                    mem[64] = 480
                                    mem[384] = ETHAddress
                                    mem[416] = baseTokenAddress
                                    mem[448] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8831 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[352]
                                            _8833 = mem[352]
                                            idx = 0
                                            while idx < 32 * _8833:
                                                mem[mem[64] + idx + 164] = mem[idx + 384]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8833) + _8831 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10090 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10214 = mem[_10090]
                                            require mem[_10090] <= 4294967296
                                            require mem[_10090] + 32 <= return_data.size
                                            require mem[mem[_10090] + _10090] <= 4294967296 and mem[_10090] + (32 * mem[mem[_10090] + _10090]) + 32 <= return_data.size
                                            mem[_10090 + ceil32(return_data.size)] = mem[mem[_10090] + _10090]
                                            _10474 = mem[_10214 + _10090]
                                            idx = 0
                                            while idx < 32 * _10474:
                                                mem[_10090 + ceil32(return_data.size) + idx + 32] = mem[_10214 + _10090 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10474) + _10090 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
            else:
                if mode == 2:
                    require ext_code.size(ETHAddress)
                    call ETHAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(baseTokenAddress)
                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if baseTokenAddress == ETHAddress:
                        mem[96] = 2
                        mem[128] = baseTokenAddress
                        mem[160] = sub_c0b6201cAddress
                        mem[356 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) / 1000 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 30, 2, mem[356 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c0b6201cAddress)
                        staticcall sub_c0b6201cAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c0b6201cAddress)
                        call sub_c0b6201cAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(baseTokenAddress)
                        call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if baseTokenAddress == ETHAddress:
                            mem[192] = 2
                            mem[224] = sub_c0b6201cAddress
                            mem[256] = baseTokenAddress
                            mem[388] = this.address
                            mem[420] = block.timestamp + 30
                            mem[452] = 2
                            mem[484 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[484 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            endingBalance = ext_call.return_data[0]
                            if mode == 5:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[356] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), wallets, 0, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[288] = 2
                                    mem[64] = 384
                                    mem[320] = baseTokenAddress
                                    mem[352] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8795 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[288]
                                            _8797 = mem[288]
                                            idx = 0
                                            while idx < 32 * _8797:
                                                mem[mem[64] + idx + 164] = mem[idx + 320]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8797) + _8795 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10081 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10196 = mem[_10081]
                                            require mem[_10081] <= 4294967296
                                            require mem[_10081] + 32 <= return_data.size
                                            require mem[mem[_10081] + _10081] <= 4294967296 and mem[_10081] + (32 * mem[mem[_10081] + _10081]) + 32 <= return_data.size
                                            mem[_10081 + ceil32(return_data.size)] = mem[mem[_10081] + _10081]
                                            _10465 = mem[_10196 + _10081]
                                            idx = 0
                                            while idx < 32 * _10465:
                                                mem[_10081 + ceil32(return_data.size) + idx + 32] = mem[_10196 + _10081 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10465) + _10081 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[288] = 3
                                    mem[64] = 416
                                    mem[320] = ETHAddress
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[288]
                                            _8793 = mem[288]
                                            t = 0
                                            while t < 32 * _8793:
                                                mem[mem[64] + t + 164] = mem[t + 320]
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8793) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10080 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10194 = mem[_10080]
                                            require mem[_10080] <= 4294967296
                                            require mem[_10080] + 32 <= return_data.size
                                            require mem[mem[_10080] + _10080] <= 4294967296 and mem[_10080] + (32 * mem[mem[_10080] + _10080]) + 32 <= return_data.size
                                            mem[_10080 + ceil32(return_data.size)] = mem[mem[_10080] + _10080]
                                            _10464 = mem[_10194 + _10080]
                                            idx = 0
                                            while idx < 32 * _10464:
                                                mem[_10080 + ceil32(return_data.size) + idx + 32] = mem[_10194 + _10080 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10464) + _10080 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                if mode != 2:
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[356] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), wallets, 0, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[288] = 2
                                        mem[64] = 384
                                        mem[320] = baseTokenAddress
                                        mem[352] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[288]
                                                _8805 = mem[288]
                                                t = 0
                                                while t < 32 * _8805:
                                                    mem[mem[64] + t + 164] = mem[t + 320]
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8805) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10083 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10200 = mem[_10083]
                                                require mem[_10083] <= 4294967296
                                                require mem[_10083] + 32 <= return_data.size
                                                require mem[mem[_10083] + _10083] <= 4294967296 and mem[_10083] + (32 * mem[mem[_10083] + _10083]) + 32 <= return_data.size
                                                mem[_10083 + ceil32(return_data.size)] = mem[mem[_10083] + _10083]
                                                _10467 = mem[_10200 + _10083]
                                                idx = 0
                                                while idx < 32 * _10467:
                                                    mem[_10083 + ceil32(return_data.size) + idx + 32] = mem[_10200 + _10083 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10467) + _10083 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[288] = 3
                                        mem[64] = 416
                                        mem[320] = ETHAddress
                                        mem[352] = baseTokenAddress
                                        mem[384] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[288]
                                                _8801 = mem[288]
                                                t = 0
                                                while t < 32 * _8801:
                                                    mem[mem[64] + t + 164] = mem[t + 320]
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8801) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10082 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10198 = mem[_10082]
                                                require mem[_10082] <= 4294967296
                                                require mem[_10082] + 32 <= return_data.size
                                                require mem[mem[_10082] + _10082] <= 4294967296 and mem[_10082] + (32 * mem[mem[_10082] + _10082]) + 32 <= return_data.size
                                                mem[_10082 + ceil32(return_data.size)] = mem[mem[_10082] + _10082]
                                                _10466 = mem[_10198 + _10082]
                                                idx = 0
                                                while idx < 32 * _10466:
                                                    mem[_10082 + ceil32(return_data.size) + idx + 32] = mem[_10198 + _10082 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10466) + _10082 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                else:
                                    require eth.balance(this.address) / 1000 / 10000
                                    sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                    if sub_ab731cfa > sub_cb523a14:
                                        revert with 0, '', 'taxa ta alta pra caralhoooo'
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[356] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), wallets, 0, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[288] = 2
                                        mem[64] = 384
                                        mem[320] = baseTokenAddress
                                        mem[352] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8811 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[288]
                                                _8813 = mem[288]
                                                idx = 0
                                                while idx < 32 * _8813:
                                                    mem[mem[64] + idx + 164] = mem[idx + 320]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8813) + _8811 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10085 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10204 = mem[_10085]
                                                require mem[_10085] <= 4294967296
                                                require mem[_10085] + 32 <= return_data.size
                                                require mem[mem[_10085] + _10085] <= 4294967296 and mem[_10085] + (32 * mem[mem[_10085] + _10085]) + 32 <= return_data.size
                                                mem[_10085 + ceil32(return_data.size)] = mem[mem[_10085] + _10085]
                                                _10469 = mem[_10204 + _10085]
                                                idx = 0
                                                while idx < 32 * _10469:
                                                    mem[_10085 + ceil32(return_data.size) + idx + 32] = mem[_10204 + _10085 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10469) + _10085 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[288] = 3
                                        mem[64] = 416
                                        mem[320] = ETHAddress
                                        mem[352] = baseTokenAddress
                                        mem[384] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8807 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[288]
                                                _8809 = mem[288]
                                                idx = 0
                                                while idx < 32 * _8809:
                                                    mem[mem[64] + idx + 164] = mem[idx + 320]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8809) + _8807 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10084 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10202 = mem[_10084]
                                                require mem[_10084] <= 4294967296
                                                require mem[_10084] + 32 <= return_data.size
                                                require mem[mem[_10084] + _10084] <= 4294967296 and mem[_10084] + (32 * mem[mem[_10084] + _10084]) + 32 <= return_data.size
                                                mem[_10084 + ceil32(return_data.size)] = mem[mem[_10084] + _10084]
                                                _10468 = mem[_10202 + _10084]
                                                idx = 0
                                                while idx < 32 * _10468:
                                                    mem[_10084 + ceil32(return_data.size) + idx + 32] = mem[_10202 + _10084 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10468) + _10084 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[192] = 3
                            mem[224] = sub_c0b6201cAddress
                            mem[256] = baseTokenAddress
                            mem[288] = ETHAddress
                            mem[420] = this.address
                            mem[452] = block.timestamp + 30
                            mem[484] = 3
                            mem[516 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[516 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            endingBalance = ext_call.return_data[0]
                            if mode == 5:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[388] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args this.address, 0, wallets, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, 0, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[320] = 2
                                    mem[64] = 416
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8773 = mem[320]
                                            t = 0
                                            while t < 32 * _8773:
                                                mem[mem[64] + t + 164] = mem[t + 352]
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8773) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10075 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10184 = mem[_10075]
                                            require mem[_10075] <= 4294967296
                                            require mem[_10075] + 32 <= return_data.size
                                            require mem[mem[_10075] + _10075] <= 4294967296 and mem[_10075] + (32 * mem[mem[_10075] + _10075]) + 32 <= return_data.size
                                            mem[_10075 + ceil32(return_data.size)] = mem[mem[_10075] + _10075]
                                            _10459 = mem[_10184 + _10075]
                                            idx = 0
                                            while idx < 32 * _10459:
                                                mem[_10075 + ceil32(return_data.size) + idx + 32] = mem[_10184 + _10075 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10459) + _10075 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[320] = 3
                                    mem[64] = 448
                                    mem[352] = ETHAddress
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8767 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8769 = mem[320]
                                            idx = 0
                                            while idx < 32 * _8769:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8769) + _8767 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10074 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10182 = mem[_10074]
                                            require mem[_10074] <= 4294967296
                                            require mem[_10074] + 32 <= return_data.size
                                            require mem[mem[_10074] + _10074] <= 4294967296 and mem[_10074] + (32 * mem[mem[_10074] + _10074]) + 32 <= return_data.size
                                            mem[_10074 + ceil32(return_data.size)] = mem[mem[_10074] + _10074]
                                            _10458 = mem[_10182 + _10074]
                                            idx = 0
                                            while idx < 32 * _10458:
                                                mem[_10074 + ceil32(return_data.size) + idx + 32] = mem[_10182 + _10074 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10458) + _10074 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                if mode != 2:
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[388] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args this.address, 0, wallets, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, 0, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[320] = 2
                                        mem[64] = 416
                                        mem[352] = baseTokenAddress
                                        mem[384] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8779 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8781 = mem[320]
                                                idx = 0
                                                while idx < 32 * _8781:
                                                    mem[mem[64] + idx + 164] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8781) + _8779 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10077 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10188 = mem[_10077]
                                                require mem[_10077] <= 4294967296
                                                require mem[_10077] + 32 <= return_data.size
                                                require mem[mem[_10077] + _10077] <= 4294967296 and mem[_10077] + (32 * mem[mem[_10077] + _10077]) + 32 <= return_data.size
                                                mem[_10077 + ceil32(return_data.size)] = mem[mem[_10077] + _10077]
                                                _10461 = mem[_10188 + _10077]
                                                idx = 0
                                                while idx < 32 * _10461:
                                                    mem[_10077 + ceil32(return_data.size) + idx + 32] = mem[_10188 + _10077 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10461) + _10077 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[320] = 3
                                        mem[64] = 448
                                        mem[352] = ETHAddress
                                        mem[384] = baseTokenAddress
                                        mem[416] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8777 = mem[320]
                                                t = 0
                                                while t < 32 * _8777:
                                                    mem[mem[64] + t + 164] = mem[t + 352]
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8777) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10076 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10186 = mem[_10076]
                                                require mem[_10076] <= 4294967296
                                                require mem[_10076] + 32 <= return_data.size
                                                require mem[mem[_10076] + _10076] <= 4294967296 and mem[_10076] + (32 * mem[mem[_10076] + _10076]) + 32 <= return_data.size
                                                mem[_10076 + ceil32(return_data.size)] = mem[mem[_10076] + _10076]
                                                _10460 = mem[_10186 + _10076]
                                                idx = 0
                                                while idx < 32 * _10460:
                                                    mem[_10076 + ceil32(return_data.size) + idx + 32] = mem[_10186 + _10076 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10460) + _10076 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                else:
                                    require eth.balance(this.address) / 1000 / 10000
                                    sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                    if sub_ab731cfa > sub_cb523a14:
                                        revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[388] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args this.address, 0, wallets, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, 0, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[320] = 2
                                        mem[64] = 416
                                        mem[352] = baseTokenAddress
                                        mem[384] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8787 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8789 = mem[320]
                                                idx = 0
                                                while idx < 32 * _8789:
                                                    mem[mem[64] + idx + 164] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8789) + _8787 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10079 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10192 = mem[_10079]
                                                require mem[_10079] <= 4294967296
                                                require mem[_10079] + 32 <= return_data.size
                                                require mem[mem[_10079] + _10079] <= 4294967296 and mem[_10079] + (32 * mem[mem[_10079] + _10079]) + 32 <= return_data.size
                                                mem[_10079 + ceil32(return_data.size)] = mem[mem[_10079] + _10079]
                                                _10463 = mem[_10192 + _10079]
                                                idx = 0
                                                while idx < 32 * _10463:
                                                    mem[_10079 + ceil32(return_data.size) + idx + 32] = mem[_10192 + _10079 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10463) + _10079 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[320] = 3
                                        mem[64] = 448
                                        mem[352] = ETHAddress
                                        mem[384] = baseTokenAddress
                                        mem[416] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8783 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8785 = mem[320]
                                                idx = 0
                                                while idx < 32 * _8785:
                                                    mem[mem[64] + idx + 164] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8785) + _8783 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10078 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10190 = mem[_10078]
                                                require mem[_10078] <= 4294967296
                                                require mem[_10078] + 32 <= return_data.size
                                                require mem[mem[_10078] + _10078] <= 4294967296 and mem[_10078] + (32 * mem[mem[_10078] + _10078]) + 32 <= return_data.size
                                                mem[_10078 + ceil32(return_data.size)] = mem[mem[_10078] + _10078]
                                                _10462 = mem[_10190 + _10078]
                                                idx = 0
                                                while idx < 32 * _10462:
                                                    mem[_10078 + ceil32(return_data.size) + idx + 32] = mem[_10190 + _10078 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10462) + _10078 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                    else:
                        mem[96] = 3
                        mem[128] = ETHAddress
                        mem[160] = baseTokenAddress
                        mem[192] = sub_c0b6201cAddress
                        mem[388 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) / 1000 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 30, 3, mem[388 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c0b6201cAddress)
                        staticcall sub_c0b6201cAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c0b6201cAddress)
                        call sub_c0b6201cAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(baseTokenAddress)
                        call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if baseTokenAddress == ETHAddress:
                            mem[224] = 2
                            mem[256] = sub_c0b6201cAddress
                            mem[288] = baseTokenAddress
                            mem[420] = this.address
                            mem[452] = block.timestamp + 30
                            mem[484] = 2
                            mem[516 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[516 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            endingBalance = ext_call.return_data[0]
                            if mode == 5:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[388] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), wallets, 0, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[320] = 2
                                    mem[64] = 416
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8747 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8749 = mem[320]
                                            idx = 0
                                            while idx < 32 * _8749:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8749) + _8747 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10069 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10172 = mem[_10069]
                                            require mem[_10069] <= 4294967296
                                            require mem[_10069] + 32 <= return_data.size
                                            require mem[mem[_10069] + _10069] <= 4294967296 and mem[_10069] + (32 * mem[mem[_10069] + _10069]) + 32 <= return_data.size
                                            mem[_10069 + ceil32(return_data.size)] = mem[mem[_10069] + _10069]
                                            _10453 = mem[_10172 + _10069]
                                            idx = 0
                                            while idx < 32 * _10453:
                                                mem[_10069 + ceil32(return_data.size) + idx + 32] = mem[_10172 + _10069 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10453) + _10069 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[320] = 3
                                    mem[64] = 448
                                    mem[352] = ETHAddress
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8745 = mem[320]
                                            t = 0
                                            while t < 32 * _8745:
                                                mem[mem[64] + t + 164] = mem[t + 352]
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8745) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10068 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10170 = mem[_10068]
                                            require mem[_10068] <= 4294967296
                                            require mem[_10068] + 32 <= return_data.size
                                            require mem[mem[_10068] + _10068] <= 4294967296 and mem[_10068] + (32 * mem[mem[_10068] + _10068]) + 32 <= return_data.size
                                            mem[_10068 + ceil32(return_data.size)] = mem[mem[_10068] + _10068]
                                            _10452 = mem[_10170 + _10068]
                                            idx = 0
                                            while idx < 32 * _10452:
                                                mem[_10068 + ceil32(return_data.size) + idx + 32] = mem[_10170 + _10068 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10452) + _10068 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                if mode != 2:
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[388] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), wallets, 0, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[320] = 2
                                        mem[64] = 416
                                        mem[352] = baseTokenAddress
                                        mem[384] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8757 = mem[320]
                                                t = 0
                                                while t < 32 * _8757:
                                                    mem[mem[64] + t + 164] = mem[t + 352]
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8757) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10071 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10176 = mem[_10071]
                                                require mem[_10071] <= 4294967296
                                                require mem[_10071] + 32 <= return_data.size
                                                require mem[mem[_10071] + _10071] <= 4294967296 and mem[_10071] + (32 * mem[mem[_10071] + _10071]) + 32 <= return_data.size
                                                mem[_10071 + ceil32(return_data.size)] = mem[mem[_10071] + _10071]
                                                _10455 = mem[_10176 + _10071]
                                                idx = 0
                                                while idx < 32 * _10455:
                                                    mem[_10071 + ceil32(return_data.size) + idx + 32] = mem[_10176 + _10071 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10455) + _10071 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[320] = 3
                                        mem[64] = 448
                                        mem[352] = ETHAddress
                                        mem[384] = baseTokenAddress
                                        mem[416] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8751 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8753 = mem[320]
                                                idx = 0
                                                while idx < 32 * _8753:
                                                    mem[mem[64] + idx + 164] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8753) + _8751 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10070 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10174 = mem[_10070]
                                                require mem[_10070] <= 4294967296
                                                require mem[_10070] + 32 <= return_data.size
                                                require mem[mem[_10070] + _10070] <= 4294967296 and mem[_10070] + (32 * mem[mem[_10070] + _10070]) + 32 <= return_data.size
                                                mem[_10070 + ceil32(return_data.size)] = mem[mem[_10070] + _10070]
                                                _10454 = mem[_10174 + _10070]
                                                idx = 0
                                                while idx < 32 * _10454:
                                                    mem[_10070 + ceil32(return_data.size) + idx + 32] = mem[_10174 + _10070 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10454) + _10070 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                else:
                                    require eth.balance(this.address) / 1000 / 10000
                                    sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                    if sub_ab731cfa > sub_cb523a14:
                                        revert with 0, '', 'taxa ta alta pra caralhoooo'
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[388] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), wallets, 0, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[320] = 2
                                        mem[64] = 416
                                        mem[352] = baseTokenAddress
                                        mem[384] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8763 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8765 = mem[320]
                                                idx = 0
                                                while idx < 32 * _8765:
                                                    mem[mem[64] + idx + 164] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8765) + _8763 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10073 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10180 = mem[_10073]
                                                require mem[_10073] <= 4294967296
                                                require mem[_10073] + 32 <= return_data.size
                                                require mem[mem[_10073] + _10073] <= 4294967296 and mem[_10073] + (32 * mem[mem[_10073] + _10073]) + 32 <= return_data.size
                                                mem[_10073 + ceil32(return_data.size)] = mem[mem[_10073] + _10073]
                                                _10457 = mem[_10180 + _10073]
                                                idx = 0
                                                while idx < 32 * _10457:
                                                    mem[_10073 + ceil32(return_data.size) + idx + 32] = mem[_10180 + _10073 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10457) + _10073 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[320] = 3
                                        mem[64] = 448
                                        mem[352] = ETHAddress
                                        mem[384] = baseTokenAddress
                                        mem[416] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8761 = mem[320]
                                                t = 0
                                                while t < 32 * _8761:
                                                    mem[mem[64] + t + 164] = mem[t + 352]
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8761) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10072 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10178 = mem[_10072]
                                                require mem[_10072] <= 4294967296
                                                require mem[_10072] + 32 <= return_data.size
                                                require mem[mem[_10072] + _10072] <= 4294967296 and mem[_10072] + (32 * mem[mem[_10072] + _10072]) + 32 <= return_data.size
                                                mem[_10072 + ceil32(return_data.size)] = mem[mem[_10072] + _10072]
                                                _10456 = mem[_10178 + _10072]
                                                idx = 0
                                                while idx < 32 * _10456:
                                                    mem[_10072 + ceil32(return_data.size) + idx + 32] = mem[_10178 + _10072 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10456) + _10072 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[224] = 3
                            mem[256] = sub_c0b6201cAddress
                            mem[288] = baseTokenAddress
                            mem[320] = ETHAddress
                            mem[452] = this.address
                            mem[484] = block.timestamp + 30
                            mem[516] = 3
                            mem[548 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[548 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            endingBalance = ext_call.return_data[0]
                            if mode == 5:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[420] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args this.address, 0, wallets, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, 0, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[352] = 2
                                    mem[64] = 448
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[352]
                                            _8725 = mem[352]
                                            t = 0
                                            while t < 32 * _8725:
                                                mem[mem[64] + t + 164] = mem[t + 384]
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8725) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10063 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10160 = mem[_10063]
                                            require mem[_10063] <= 4294967296
                                            require mem[_10063] + 32 <= return_data.size
                                            require mem[mem[_10063] + _10063] <= 4294967296 and mem[_10063] + (32 * mem[mem[_10063] + _10063]) + 32 <= return_data.size
                                            mem[_10063 + ceil32(return_data.size)] = mem[mem[_10063] + _10063]
                                            _10447 = mem[_10160 + _10063]
                                            idx = 0
                                            while idx < 32 * _10447:
                                                mem[_10063 + ceil32(return_data.size) + idx + 32] = mem[_10160 + _10063 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10447) + _10063 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[352] = 3
                                    mem[64] = 480
                                    mem[384] = ETHAddress
                                    mem[416] = baseTokenAddress
                                    mem[448] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8719 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[352]
                                            _8721 = mem[352]
                                            idx = 0
                                            while idx < 32 * _8721:
                                                mem[mem[64] + idx + 164] = mem[idx + 384]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8721) + _8719 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10062 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10158 = mem[_10062]
                                            require mem[_10062] <= 4294967296
                                            require mem[_10062] + 32 <= return_data.size
                                            require mem[mem[_10062] + _10062] <= 4294967296 and mem[_10062] + (32 * mem[mem[_10062] + _10062]) + 32 <= return_data.size
                                            mem[_10062 + ceil32(return_data.size)] = mem[mem[_10062] + _10062]
                                            _10446 = mem[_10158 + _10062]
                                            idx = 0
                                            while idx < 32 * _10446:
                                                mem[_10062 + ceil32(return_data.size) + idx + 32] = mem[_10158 + _10062 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10446) + _10062 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                if mode != 2:
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[420] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args this.address, 0, wallets, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, 0, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[352] = 2
                                        mem[64] = 448
                                        mem[384] = baseTokenAddress
                                        mem[416] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8731 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[352]
                                                _8733 = mem[352]
                                                idx = 0
                                                while idx < 32 * _8733:
                                                    mem[mem[64] + idx + 164] = mem[idx + 384]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8733) + _8731 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10065 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10164 = mem[_10065]
                                                require mem[_10065] <= 4294967296
                                                require mem[_10065] + 32 <= return_data.size
                                                require mem[mem[_10065] + _10065] <= 4294967296 and mem[_10065] + (32 * mem[mem[_10065] + _10065]) + 32 <= return_data.size
                                                mem[_10065 + ceil32(return_data.size)] = mem[mem[_10065] + _10065]
                                                _10449 = mem[_10164 + _10065]
                                                idx = 0
                                                while idx < 32 * _10449:
                                                    mem[_10065 + ceil32(return_data.size) + idx + 32] = mem[_10164 + _10065 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10449) + _10065 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[352] = 3
                                        mem[64] = 480
                                        mem[384] = ETHAddress
                                        mem[416] = baseTokenAddress
                                        mem[448] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8727 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[352]
                                                _8729 = mem[352]
                                                idx = 0
                                                while idx < 32 * _8729:
                                                    mem[mem[64] + idx + 164] = mem[idx + 384]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8729) + _8727 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10064 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10162 = mem[_10064]
                                                require mem[_10064] <= 4294967296
                                                require mem[_10064] + 32 <= return_data.size
                                                require mem[mem[_10064] + _10064] <= 4294967296 and mem[_10064] + (32 * mem[mem[_10064] + _10064]) + 32 <= return_data.size
                                                mem[_10064 + ceil32(return_data.size)] = mem[mem[_10064] + _10064]
                                                _10448 = mem[_10162 + _10064]
                                                idx = 0
                                                while idx < 32 * _10448:
                                                    mem[_10064 + ceil32(return_data.size) + idx + 32] = mem[_10162 + _10064 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10448) + _10064 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                else:
                                    require eth.balance(this.address) / 1000 / 10000
                                    sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                    if sub_ab731cfa > sub_cb523a14:
                                        revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[420] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args this.address, 0, wallets, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, 0, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[352] = 2
                                        mem[64] = 448
                                        mem[384] = baseTokenAddress
                                        mem[416] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8739 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[352]
                                                _8741 = mem[352]
                                                idx = 0
                                                while idx < 32 * _8741:
                                                    mem[mem[64] + idx + 164] = mem[idx + 384]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8741) + _8739 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10067 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10168 = mem[_10067]
                                                require mem[_10067] <= 4294967296
                                                require mem[_10067] + 32 <= return_data.size
                                                require mem[mem[_10067] + _10067] <= 4294967296 and mem[_10067] + (32 * mem[mem[_10067] + _10067]) + 32 <= return_data.size
                                                mem[_10067 + ceil32(return_data.size)] = mem[mem[_10067] + _10067]
                                                _10451 = mem[_10168 + _10067]
                                                idx = 0
                                                while idx < 32 * _10451:
                                                    mem[_10067 + ceil32(return_data.size) + idx + 32] = mem[_10168 + _10067 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10451) + _10067 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[352] = 3
                                        mem[64] = 480
                                        mem[384] = ETHAddress
                                        mem[416] = baseTokenAddress
                                        mem[448] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8735 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[352]
                                                _8737 = mem[352]
                                                idx = 0
                                                while idx < 32 * _8737:
                                                    mem[mem[64] + idx + 164] = mem[idx + 384]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8737) + _8735 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10066 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10166 = mem[_10066]
                                                require mem[_10066] <= 4294967296
                                                require mem[_10066] + 32 <= return_data.size
                                                require mem[mem[_10066] + _10066] <= 4294967296 and mem[_10066] + (32 * mem[mem[_10066] + _10066]) + 32 <= return_data.size
                                                mem[_10066 + ceil32(return_data.size)] = mem[mem[_10066] + _10066]
                                                _10450 = mem[_10166 + _10066]
                                                idx = 0
                                                while idx < 32 * _10450:
                                                    mem[_10066 + ceil32(return_data.size) + idx + 32] = mem[_10166 + _10066 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10450) + _10066 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
    else:
        if sub_fce62d8f <= minLp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0xfe74612073656d206c6971756964657a206f7520747520626f746f752061206d6f65646120626173652065727261646120616d6967,
                        mem[217 len 11]
        if not mode:
            require ext_code.size(baseTokenAddress)
            call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if baseTokenAddress == ETHAddress:
                mem[96] = 2
                mem[64] = 192
                mem[128] = baseTokenAddress
                mem[160] = sub_c0b6201cAddress
                require sub_43ff02f6 * wallets.length
                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                idx = 0
                while idx < wallets.length:
                    s = 0
                    while s < sub_43ff02f6:
                        require idx < wallets.length
                        mem[0] = 9
                        _5255 = mem[64]
                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 68] = wallets[idx]
                        mem[mem[64] + 100] = block.timestamp
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = mem[96]
                        idx = 0
                        while idx < 32 * mem[96]:
                            mem[mem[64] + idx + 164] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                           value sub_1ef782ba wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _5255 + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7541 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7932 = mem[_7541]
                        require mem[_7541] <= 4294967296
                        require mem[_7541] + 32 <= return_data.size
                        require mem[mem[_7541] + _7541] <= 4294967296 and mem[_7541] + (32 * mem[mem[_7541] + _7541]) + 32 <= return_data.size
                        mem[_7541 + ceil32(return_data.size)] = mem[mem[_7541] + _7541]
                        _8133 = mem[_7932 + _7541]
                        idx = 0
                        while idx < 32 * _8133:
                            mem[_7541 + ceil32(return_data.size) + idx + 32] = mem[_7932 + _7541 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _8133) + _7541 + ceil32(return_data.size) + 32
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
            else:
                mem[96] = 3
                mem[64] = 224
                mem[128] = ETHAddress
                mem[160] = baseTokenAddress
                mem[192] = sub_c0b6201cAddress
                require sub_43ff02f6 * wallets.length
                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                idx = 0
                while idx < wallets.length:
                    s = 0
                    while s < sub_43ff02f6:
                        require idx < wallets.length
                        mem[0] = 9
                        _5251 = mem[64]
                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 68] = wallets[idx]
                        mem[mem[64] + 100] = block.timestamp
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = mem[96]
                        idx = 0
                        while idx < 32 * mem[96]:
                            mem[mem[64] + idx + 164] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                           value sub_1ef782ba wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _5251 + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7540 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7930 = mem[_7540]
                        require mem[_7540] <= 4294967296
                        require mem[_7540] + 32 <= return_data.size
                        require mem[mem[_7540] + _7540] <= 4294967296 and mem[_7540] + (32 * mem[mem[_7540] + _7540]) + 32 <= return_data.size
                        mem[_7540 + ceil32(return_data.size)] = mem[mem[_7540] + _7540]
                        _8132 = mem[_7930 + _7540]
                        idx = 0
                        while idx < 32 * _8132:
                            mem[_7540 + ceil32(return_data.size) + idx + 32] = mem[_7930 + _7540 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _8132) + _7540 + ceil32(return_data.size) + 32
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
        else:
            if mode == 1:
                require ext_code.size(ETHAddress)
                call ETHAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(baseTokenAddress)
                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if baseTokenAddress == ETHAddress:
                    mem[96] = 2
                    mem[128] = baseTokenAddress
                    mem[160] = sub_c0b6201cAddress
                    mem[356 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) / 1000 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 30, 2, mem[356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_c0b6201cAddress)
                    staticcall sub_c0b6201cAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c0b6201cAddress)
                    call sub_c0b6201cAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(baseTokenAddress)
                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if baseTokenAddress == ETHAddress:
                        mem[192] = 2
                        mem[224] = sub_c0b6201cAddress
                        mem[256] = baseTokenAddress
                        mem[388] = this.address
                        mem[420] = block.timestamp + 30
                        mem[452] = 2
                        mem[484 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[484 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(ETHAddress)
                        staticcall ETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        endingBalance = ext_call.return_data[0]
                        if mode == 5:
                            require eth.balance(this.address) / 1000 / 10000
                            sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                            if sub_ab731cfa > sub_cb523a14:
                                revert with 0, '', 'taxa ta alta pra caralhoooo'
                            require 0 < wallets.length
                            mem[0] = 9
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[356] = ext_call.return_data[0]
                            require ext_code.size(ETHAddress)
                            call ETHAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), wallets, 0, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(baseTokenAddress)
                            call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if baseTokenAddress == ETHAddress:
                                mem[288] = 2
                                mem[64] = 384
                                mem[320] = baseTokenAddress
                                mem[352] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _9083 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[288]
                                        _9085 = mem[288]
                                        idx = 0
                                        while idx < 32 * _9085:
                                            mem[mem[64] + idx + 164] = mem[idx + 320]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _9085) + _9083 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10153 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10340 = mem[_10153]
                                        require mem[_10153] <= 4294967296
                                        require mem[_10153] + 32 <= return_data.size
                                        require mem[mem[_10153] + _10153] <= 4294967296 and mem[_10153] + (32 * mem[mem[_10153] + _10153]) + 32 <= return_data.size
                                        mem[_10153 + ceil32(return_data.size)] = mem[mem[_10153] + _10153]
                                        _10537 = mem[_10340 + _10153]
                                        idx = 0
                                        while idx < 32 * _10537:
                                            mem[_10153 + ceil32(return_data.size) + idx + 32] = mem[_10340 + _10153 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10537) + _10153 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[288] = 3
                                mem[64] = 416
                                mem[320] = ETHAddress
                                mem[352] = baseTokenAddress
                                mem[384] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _9079 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[288]
                                        _9081 = mem[288]
                                        idx = 0
                                        while idx < 32 * _9081:
                                            mem[mem[64] + idx + 164] = mem[idx + 320]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _9081) + _9079 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10152 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10338 = mem[_10152]
                                        require mem[_10152] <= 4294967296
                                        require mem[_10152] + 32 <= return_data.size
                                        require mem[mem[_10152] + _10152] <= 4294967296 and mem[_10152] + (32 * mem[mem[_10152] + _10152]) + 32 <= return_data.size
                                        mem[_10152 + ceil32(return_data.size)] = mem[mem[_10152] + _10152]
                                        _10536 = mem[_10338 + _10152]
                                        idx = 0
                                        while idx < 32 * _10536:
                                            mem[_10152 + ceil32(return_data.size) + idx + 32] = mem[_10338 + _10152 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10536) + _10152 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            if mode != 2:
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[356] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), wallets, 0, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[288] = 2
                                    mem[64] = 384
                                    mem[320] = baseTokenAddress
                                    mem[352] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _9091 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[288]
                                            _9093 = mem[288]
                                            idx = 0
                                            while idx < 32 * _9093:
                                                mem[mem[64] + idx + 164] = mem[idx + 320]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _9093) + _9091 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10155 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10344 = mem[_10155]
                                            require mem[_10155] <= 4294967296
                                            require mem[_10155] + 32 <= return_data.size
                                            require mem[mem[_10155] + _10155] <= 4294967296 and mem[_10155] + (32 * mem[mem[_10155] + _10155]) + 32 <= return_data.size
                                            mem[_10155 + ceil32(return_data.size)] = mem[mem[_10155] + _10155]
                                            _10539 = mem[_10344 + _10155]
                                            idx = 0
                                            while idx < 32 * _10539:
                                                mem[_10155 + ceil32(return_data.size) + idx + 32] = mem[_10344 + _10155 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10539) + _10155 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[288] = 3
                                    mem[64] = 416
                                    mem[320] = ETHAddress
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[288]
                                            _9089 = mem[288]
                                            t = 0
                                            while t < 32 * _9089:
                                                mem[mem[64] + t + 164] = mem[t + 320]
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _9089) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10154 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10342 = mem[_10154]
                                            require mem[_10154] <= 4294967296
                                            require mem[_10154] + 32 <= return_data.size
                                            require mem[mem[_10154] + _10154] <= 4294967296 and mem[_10154] + (32 * mem[mem[_10154] + _10154]) + 32 <= return_data.size
                                            mem[_10154 + ceil32(return_data.size)] = mem[mem[_10154] + _10154]
                                            _10538 = mem[_10342 + _10154]
                                            idx = 0
                                            while idx < 32 * _10538:
                                                mem[_10154 + ceil32(return_data.size) + idx + 32] = mem[_10342 + _10154 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10538) + _10154 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[356] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), wallets, 0, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[288] = 2
                                    mem[64] = 384
                                    mem[320] = baseTokenAddress
                                    mem[352] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _9099 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[288]
                                            _9101 = mem[288]
                                            idx = 0
                                            while idx < 32 * _9101:
                                                mem[mem[64] + idx + 164] = mem[idx + 320]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _9101) + _9099 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10157 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10348 = mem[_10157]
                                            require mem[_10157] <= 4294967296
                                            require mem[_10157] + 32 <= return_data.size
                                            require mem[mem[_10157] + _10157] <= 4294967296 and mem[_10157] + (32 * mem[mem[_10157] + _10157]) + 32 <= return_data.size
                                            mem[_10157 + ceil32(return_data.size)] = mem[mem[_10157] + _10157]
                                            _10541 = mem[_10348 + _10157]
                                            idx = 0
                                            while idx < 32 * _10541:
                                                mem[_10157 + ceil32(return_data.size) + idx + 32] = mem[_10348 + _10157 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10541) + _10157 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[288] = 3
                                    mem[64] = 416
                                    mem[320] = ETHAddress
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _9095 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[288]
                                            _9097 = mem[288]
                                            idx = 0
                                            while idx < 32 * _9097:
                                                mem[mem[64] + idx + 164] = mem[idx + 320]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _9097) + _9095 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10156 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10346 = mem[_10156]
                                            require mem[_10156] <= 4294967296
                                            require mem[_10156] + 32 <= return_data.size
                                            require mem[mem[_10156] + _10156] <= 4294967296 and mem[_10156] + (32 * mem[mem[_10156] + _10156]) + 32 <= return_data.size
                                            mem[_10156 + ceil32(return_data.size)] = mem[mem[_10156] + _10156]
                                            _10540 = mem[_10346 + _10156]
                                            idx = 0
                                            while idx < 32 * _10540:
                                                mem[_10156 + ceil32(return_data.size) + idx + 32] = mem[_10346 + _10156 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10540) + _10156 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[192] = 3
                        mem[224] = sub_c0b6201cAddress
                        mem[256] = baseTokenAddress
                        mem[288] = ETHAddress
                        mem[420] = this.address
                        mem[452] = block.timestamp + 30
                        mem[484] = 3
                        mem[516 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[516 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(ETHAddress)
                        staticcall ETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        endingBalance = ext_call.return_data[0]
                        if mode == 5:
                            require eth.balance(this.address) / 1000 / 10000
                            sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                            if sub_ab731cfa > sub_cb523a14:
                                revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                            require 0 < wallets.length
                            mem[0] = 9
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[388] = ext_call.return_data[0]
                            require ext_code.size(ETHAddress)
                            call ETHAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args this.address, 0, wallets, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(baseTokenAddress)
                            call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, 0, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if baseTokenAddress == ETHAddress:
                                mem[320] = 2
                                mem[64] = 416
                                mem[352] = baseTokenAddress
                                mem[384] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _9059 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[320]
                                        _9061 = mem[320]
                                        idx = 0
                                        while idx < 32 * _9061:
                                            mem[mem[64] + idx + 164] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _9061) + _9059 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10147 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10328 = mem[_10147]
                                        require mem[_10147] <= 4294967296
                                        require mem[_10147] + 32 <= return_data.size
                                        require mem[mem[_10147] + _10147] <= 4294967296 and mem[_10147] + (32 * mem[mem[_10147] + _10147]) + 32 <= return_data.size
                                        mem[_10147 + ceil32(return_data.size)] = mem[mem[_10147] + _10147]
                                        _10531 = mem[_10328 + _10147]
                                        idx = 0
                                        while idx < 32 * _10531:
                                            mem[_10147 + ceil32(return_data.size) + idx + 32] = mem[_10328 + _10147 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10531) + _10147 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[320] = 3
                                mem[64] = 448
                                mem[352] = ETHAddress
                                mem[384] = baseTokenAddress
                                mem[416] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _9055 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[320]
                                        _9057 = mem[320]
                                        idx = 0
                                        while idx < 32 * _9057:
                                            mem[mem[64] + idx + 164] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _9057) + _9055 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10146 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10326 = mem[_10146]
                                        require mem[_10146] <= 4294967296
                                        require mem[_10146] + 32 <= return_data.size
                                        require mem[mem[_10146] + _10146] <= 4294967296 and mem[_10146] + (32 * mem[mem[_10146] + _10146]) + 32 <= return_data.size
                                        mem[_10146 + ceil32(return_data.size)] = mem[mem[_10146] + _10146]
                                        _10530 = mem[_10326 + _10146]
                                        idx = 0
                                        while idx < 32 * _10530:
                                            mem[_10146 + ceil32(return_data.size) + idx + 32] = mem[_10326 + _10146 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10530) + _10146 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            if mode != 2:
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[388] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args this.address, 0, wallets, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, 0, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[320] = 2
                                    mem[64] = 416
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _9067 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _9069 = mem[320]
                                            idx = 0
                                            while idx < 32 * _9069:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _9069) + _9067 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10149 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10332 = mem[_10149]
                                            require mem[_10149] <= 4294967296
                                            require mem[_10149] + 32 <= return_data.size
                                            require mem[mem[_10149] + _10149] <= 4294967296 and mem[_10149] + (32 * mem[mem[_10149] + _10149]) + 32 <= return_data.size
                                            mem[_10149 + ceil32(return_data.size)] = mem[mem[_10149] + _10149]
                                            _10533 = mem[_10332 + _10149]
                                            idx = 0
                                            while idx < 32 * _10533:
                                                mem[_10149 + ceil32(return_data.size) + idx + 32] = mem[_10332 + _10149 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10533) + _10149 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[320] = 3
                                    mem[64] = 448
                                    mem[352] = ETHAddress
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _9065 = mem[320]
                                            t = 0
                                            while t < 32 * _9065:
                                                mem[mem[64] + t + 164] = mem[t + 352]
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _9065) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10148 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10330 = mem[_10148]
                                            require mem[_10148] <= 4294967296
                                            require mem[_10148] + 32 <= return_data.size
                                            require mem[mem[_10148] + _10148] <= 4294967296 and mem[_10148] + (32 * mem[mem[_10148] + _10148]) + 32 <= return_data.size
                                            mem[_10148 + ceil32(return_data.size)] = mem[mem[_10148] + _10148]
                                            _10532 = mem[_10330 + _10148]
                                            idx = 0
                                            while idx < 32 * _10532:
                                                mem[_10148 + ceil32(return_data.size) + idx + 32] = mem[_10330 + _10148 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10532) + _10148 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[388] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args this.address, 0, wallets, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, 0, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[320] = 2
                                    mem[64] = 416
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _9075 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _9077 = mem[320]
                                            idx = 0
                                            while idx < 32 * _9077:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _9077) + _9075 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10151 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10336 = mem[_10151]
                                            require mem[_10151] <= 4294967296
                                            require mem[_10151] + 32 <= return_data.size
                                            require mem[mem[_10151] + _10151] <= 4294967296 and mem[_10151] + (32 * mem[mem[_10151] + _10151]) + 32 <= return_data.size
                                            mem[_10151 + ceil32(return_data.size)] = mem[mem[_10151] + _10151]
                                            _10535 = mem[_10336 + _10151]
                                            idx = 0
                                            while idx < 32 * _10535:
                                                mem[_10151 + ceil32(return_data.size) + idx + 32] = mem[_10336 + _10151 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10535) + _10151 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[320] = 3
                                    mem[64] = 448
                                    mem[352] = ETHAddress
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _9071 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _9073 = mem[320]
                                            idx = 0
                                            while idx < 32 * _9073:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _9073) + _9071 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10150 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10334 = mem[_10150]
                                            require mem[_10150] <= 4294967296
                                            require mem[_10150] + 32 <= return_data.size
                                            require mem[mem[_10150] + _10150] <= 4294967296 and mem[_10150] + (32 * mem[mem[_10150] + _10150]) + 32 <= return_data.size
                                            mem[_10150 + ceil32(return_data.size)] = mem[mem[_10150] + _10150]
                                            _10534 = mem[_10334 + _10150]
                                            idx = 0
                                            while idx < 32 * _10534:
                                                mem[_10150 + ceil32(return_data.size) + idx + 32] = mem[_10334 + _10150 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10534) + _10150 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                else:
                    mem[96] = 3
                    mem[128] = ETHAddress
                    mem[160] = baseTokenAddress
                    mem[192] = sub_c0b6201cAddress
                    mem[388 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) / 1000 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 30, 3, mem[388 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_c0b6201cAddress)
                    staticcall sub_c0b6201cAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c0b6201cAddress)
                    call sub_c0b6201cAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(baseTokenAddress)
                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if baseTokenAddress == ETHAddress:
                        mem[224] = 2
                        mem[256] = sub_c0b6201cAddress
                        mem[288] = baseTokenAddress
                        mem[420] = this.address
                        mem[452] = block.timestamp + 30
                        mem[484] = 2
                        mem[516 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[516 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(ETHAddress)
                        staticcall ETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        endingBalance = ext_call.return_data[0]
                        if mode == 5:
                            require eth.balance(this.address) / 1000 / 10000
                            sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                            if sub_ab731cfa > sub_cb523a14:
                                revert with 0, '', 'taxa ta alta pra caralhoooo'
                            require 0 < wallets.length
                            mem[0] = 9
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[388] = ext_call.return_data[0]
                            require ext_code.size(ETHAddress)
                            call ETHAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), wallets, 0, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(baseTokenAddress)
                            call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if baseTokenAddress == ETHAddress:
                                mem[320] = 2
                                mem[64] = 416
                                mem[352] = baseTokenAddress
                                mem[384] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _9035 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[320]
                                        _9037 = mem[320]
                                        idx = 0
                                        while idx < 32 * _9037:
                                            mem[mem[64] + idx + 164] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _9037) + _9035 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10141 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10316 = mem[_10141]
                                        require mem[_10141] <= 4294967296
                                        require mem[_10141] + 32 <= return_data.size
                                        require mem[mem[_10141] + _10141] <= 4294967296 and mem[_10141] + (32 * mem[mem[_10141] + _10141]) + 32 <= return_data.size
                                        mem[_10141 + ceil32(return_data.size)] = mem[mem[_10141] + _10141]
                                        _10525 = mem[_10316 + _10141]
                                        idx = 0
                                        while idx < 32 * _10525:
                                            mem[_10141 + ceil32(return_data.size) + idx + 32] = mem[_10316 + _10141 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10525) + _10141 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[320] = 3
                                mem[64] = 448
                                mem[352] = ETHAddress
                                mem[384] = baseTokenAddress
                                mem[416] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _9031 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[320]
                                        _9033 = mem[320]
                                        idx = 0
                                        while idx < 32 * _9033:
                                            mem[mem[64] + idx + 164] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _9033) + _9031 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10140 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10314 = mem[_10140]
                                        require mem[_10140] <= 4294967296
                                        require mem[_10140] + 32 <= return_data.size
                                        require mem[mem[_10140] + _10140] <= 4294967296 and mem[_10140] + (32 * mem[mem[_10140] + _10140]) + 32 <= return_data.size
                                        mem[_10140 + ceil32(return_data.size)] = mem[mem[_10140] + _10140]
                                        _10524 = mem[_10314 + _10140]
                                        idx = 0
                                        while idx < 32 * _10524:
                                            mem[_10140 + ceil32(return_data.size) + idx + 32] = mem[_10314 + _10140 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10524) + _10140 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            if mode != 2:
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[388] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), wallets, 0, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[320] = 2
                                    mem[64] = 416
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _9043 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _9045 = mem[320]
                                            idx = 0
                                            while idx < 32 * _9045:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _9045) + _9043 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10143 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10320 = mem[_10143]
                                            require mem[_10143] <= 4294967296
                                            require mem[_10143] + 32 <= return_data.size
                                            require mem[mem[_10143] + _10143] <= 4294967296 and mem[_10143] + (32 * mem[mem[_10143] + _10143]) + 32 <= return_data.size
                                            mem[_10143 + ceil32(return_data.size)] = mem[mem[_10143] + _10143]
                                            _10527 = mem[_10320 + _10143]
                                            idx = 0
                                            while idx < 32 * _10527:
                                                mem[_10143 + ceil32(return_data.size) + idx + 32] = mem[_10320 + _10143 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10527) + _10143 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[320] = 3
                                    mem[64] = 448
                                    mem[352] = ETHAddress
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _9041 = mem[320]
                                            t = 0
                                            while t < 32 * _9041:
                                                mem[mem[64] + t + 164] = mem[t + 352]
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _9041) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10142 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10318 = mem[_10142]
                                            require mem[_10142] <= 4294967296
                                            require mem[_10142] + 32 <= return_data.size
                                            require mem[mem[_10142] + _10142] <= 4294967296 and mem[_10142] + (32 * mem[mem[_10142] + _10142]) + 32 <= return_data.size
                                            mem[_10142 + ceil32(return_data.size)] = mem[mem[_10142] + _10142]
                                            _10526 = mem[_10318 + _10142]
                                            idx = 0
                                            while idx < 32 * _10526:
                                                mem[_10142 + ceil32(return_data.size) + idx + 32] = mem[_10318 + _10142 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10526) + _10142 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[388] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), wallets, 0, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[320] = 2
                                    mem[64] = 416
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _9051 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _9053 = mem[320]
                                            idx = 0
                                            while idx < 32 * _9053:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _9053) + _9051 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10145 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10324 = mem[_10145]
                                            require mem[_10145] <= 4294967296
                                            require mem[_10145] + 32 <= return_data.size
                                            require mem[mem[_10145] + _10145] <= 4294967296 and mem[_10145] + (32 * mem[mem[_10145] + _10145]) + 32 <= return_data.size
                                            mem[_10145 + ceil32(return_data.size)] = mem[mem[_10145] + _10145]
                                            _10529 = mem[_10324 + _10145]
                                            idx = 0
                                            while idx < 32 * _10529:
                                                mem[_10145 + ceil32(return_data.size) + idx + 32] = mem[_10324 + _10145 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10529) + _10145 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[320] = 3
                                    mem[64] = 448
                                    mem[352] = ETHAddress
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _9049 = mem[320]
                                            t = 0
                                            while t < 32 * _9049:
                                                mem[mem[64] + t + 164] = mem[t + 352]
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _9049) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10144 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10322 = mem[_10144]
                                            require mem[_10144] <= 4294967296
                                            require mem[_10144] + 32 <= return_data.size
                                            require mem[mem[_10144] + _10144] <= 4294967296 and mem[_10144] + (32 * mem[mem[_10144] + _10144]) + 32 <= return_data.size
                                            mem[_10144 + ceil32(return_data.size)] = mem[mem[_10144] + _10144]
                                            _10528 = mem[_10322 + _10144]
                                            idx = 0
                                            while idx < 32 * _10528:
                                                mem[_10144 + ceil32(return_data.size) + idx + 32] = mem[_10322 + _10144 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10528) + _10144 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[224] = 3
                        mem[256] = sub_c0b6201cAddress
                        mem[288] = baseTokenAddress
                        mem[320] = ETHAddress
                        mem[452] = this.address
                        mem[484] = block.timestamp + 30
                        mem[516] = 3
                        mem[548 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[548 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(ETHAddress)
                        staticcall ETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        endingBalance = ext_call.return_data[0]
                        if mode == 5:
                            require eth.balance(this.address) / 1000 / 10000
                            sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                            if sub_ab731cfa > sub_cb523a14:
                                revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                            require 0 < wallets.length
                            mem[0] = 9
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[420] = ext_call.return_data[0]
                            require ext_code.size(ETHAddress)
                            call ETHAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args this.address, 0, wallets, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(baseTokenAddress)
                            call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, 0, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if baseTokenAddress == ETHAddress:
                                mem[352] = 2
                                mem[64] = 448
                                mem[384] = baseTokenAddress
                                mem[416] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _9011 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[352]
                                        _9013 = mem[352]
                                        idx = 0
                                        while idx < 32 * _9013:
                                            mem[mem[64] + idx + 164] = mem[idx + 384]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _9013) + _9011 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10135 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10304 = mem[_10135]
                                        require mem[_10135] <= 4294967296
                                        require mem[_10135] + 32 <= return_data.size
                                        require mem[mem[_10135] + _10135] <= 4294967296 and mem[_10135] + (32 * mem[mem[_10135] + _10135]) + 32 <= return_data.size
                                        mem[_10135 + ceil32(return_data.size)] = mem[mem[_10135] + _10135]
                                        _10519 = mem[_10304 + _10135]
                                        idx = 0
                                        while idx < 32 * _10519:
                                            mem[_10135 + ceil32(return_data.size) + idx + 32] = mem[_10304 + _10135 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10519) + _10135 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[352] = 3
                                mem[64] = 480
                                mem[384] = ETHAddress
                                mem[416] = baseTokenAddress
                                mem[448] = sub_c0b6201cAddress
                                require sub_43ff02f6 * wallets.length
                                sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                idx = 0
                                while idx < wallets.length:
                                    s = 0
                                    while s < sub_43ff02f6:
                                        require idx < wallets.length
                                        mem[0] = 9
                                        _9007 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = wallets[idx]
                                        mem[mem[64] + 100] = block.timestamp
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = mem[352]
                                        _9009 = mem[352]
                                        idx = 0
                                        while idx < 32 * _9009:
                                            mem[mem[64] + idx + 164] = mem[idx + 384]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                           value sub_1ef782ba wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (32 * _9009) + _9007 + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10134 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _10302 = mem[_10134]
                                        require mem[_10134] <= 4294967296
                                        require mem[_10134] + 32 <= return_data.size
                                        require mem[mem[_10134] + _10134] <= 4294967296 and mem[_10134] + (32 * mem[mem[_10134] + _10134]) + 32 <= return_data.size
                                        mem[_10134 + ceil32(return_data.size)] = mem[mem[_10134] + _10134]
                                        _10518 = mem[_10302 + _10134]
                                        idx = 0
                                        while idx < 32 * _10518:
                                            mem[_10134 + ceil32(return_data.size) + idx + 32] = mem[_10302 + _10134 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _10518) + _10134 + ceil32(return_data.size) + 32
                                        s = s + 1
                                        continue 
                                    idx = idx + 1
                                    continue 
                        else:
                            if mode != 2:
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[420] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args this.address, 0, wallets, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, 0, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[352] = 2
                                    mem[64] = 448
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _9019 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[352]
                                            _9021 = mem[352]
                                            idx = 0
                                            while idx < 32 * _9021:
                                                mem[mem[64] + idx + 164] = mem[idx + 384]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _9021) + _9019 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10137 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10308 = mem[_10137]
                                            require mem[_10137] <= 4294967296
                                            require mem[_10137] + 32 <= return_data.size
                                            require mem[mem[_10137] + _10137] <= 4294967296 and mem[_10137] + (32 * mem[mem[_10137] + _10137]) + 32 <= return_data.size
                                            mem[_10137 + ceil32(return_data.size)] = mem[mem[_10137] + _10137]
                                            _10521 = mem[_10308 + _10137]
                                            idx = 0
                                            while idx < 32 * _10521:
                                                mem[_10137 + ceil32(return_data.size) + idx + 32] = mem[_10308 + _10137 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10521) + _10137 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[352] = 3
                                    mem[64] = 480
                                    mem[384] = ETHAddress
                                    mem[416] = baseTokenAddress
                                    mem[448] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[352]
                                            _9017 = mem[352]
                                            t = 0
                                            while t < 32 * _9017:
                                                mem[mem[64] + t + 164] = mem[t + 384]
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _9017) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10136 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10306 = mem[_10136]
                                            require mem[_10136] <= 4294967296
                                            require mem[_10136] + 32 <= return_data.size
                                            require mem[mem[_10136] + _10136] <= 4294967296 and mem[_10136] + (32 * mem[mem[_10136] + _10136]) + 32 <= return_data.size
                                            mem[_10136 + ceil32(return_data.size)] = mem[mem[_10136] + _10136]
                                            _10520 = mem[_10306 + _10136]
                                            idx = 0
                                            while idx < 32 * _10520:
                                                mem[_10136 + ceil32(return_data.size) + idx + 32] = mem[_10306 + _10136 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10520) + _10136 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[420] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args this.address, 0, wallets, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, 0, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[352] = 2
                                    mem[64] = 448
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _9027 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[352]
                                            _9029 = mem[352]
                                            idx = 0
                                            while idx < 32 * _9029:
                                                mem[mem[64] + idx + 164] = mem[idx + 384]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _9029) + _9027 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10139 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10312 = mem[_10139]
                                            require mem[_10139] <= 4294967296
                                            require mem[_10139] + 32 <= return_data.size
                                            require mem[mem[_10139] + _10139] <= 4294967296 and mem[_10139] + (32 * mem[mem[_10139] + _10139]) + 32 <= return_data.size
                                            mem[_10139 + ceil32(return_data.size)] = mem[mem[_10139] + _10139]
                                            _10523 = mem[_10312 + _10139]
                                            idx = 0
                                            while idx < 32 * _10523:
                                                mem[_10139 + ceil32(return_data.size) + idx + 32] = mem[_10312 + _10139 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10523) + _10139 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[352] = 3
                                    mem[64] = 480
                                    mem[384] = ETHAddress
                                    mem[416] = baseTokenAddress
                                    mem[448] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _9023 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[352]
                                            _9025 = mem[352]
                                            idx = 0
                                            while idx < 32 * _9025:
                                                mem[mem[64] + idx + 164] = mem[idx + 384]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _9025) + _9023 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10138 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10310 = mem[_10138]
                                            require mem[_10138] <= 4294967296
                                            require mem[_10138] + 32 <= return_data.size
                                            require mem[mem[_10138] + _10138] <= 4294967296 and mem[_10138] + (32 * mem[mem[_10138] + _10138]) + 32 <= return_data.size
                                            mem[_10138 + ceil32(return_data.size)] = mem[mem[_10138] + _10138]
                                            _10522 = mem[_10310 + _10138]
                                            idx = 0
                                            while idx < 32 * _10522:
                                                mem[_10138 + ceil32(return_data.size) + idx + 32] = mem[_10310 + _10138 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10522) + _10138 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
            else:
                if mode == 2:
                    require ext_code.size(ETHAddress)
                    call ETHAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(baseTokenAddress)
                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if baseTokenAddress == ETHAddress:
                        mem[96] = 2
                        mem[128] = baseTokenAddress
                        mem[160] = sub_c0b6201cAddress
                        mem[356 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) / 1000 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 30, 2, mem[356 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c0b6201cAddress)
                        staticcall sub_c0b6201cAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c0b6201cAddress)
                        call sub_c0b6201cAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(baseTokenAddress)
                        call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if baseTokenAddress == ETHAddress:
                            mem[192] = 2
                            mem[224] = sub_c0b6201cAddress
                            mem[256] = baseTokenAddress
                            mem[388] = this.address
                            mem[420] = block.timestamp + 30
                            mem[452] = 2
                            mem[484 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[484 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            endingBalance = ext_call.return_data[0]
                            if mode == 5:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[356] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), wallets, 0, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[288] = 2
                                    mem[64] = 384
                                    mem[320] = baseTokenAddress
                                    mem[352] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[288]
                                            _8989 = mem[288]
                                            t = 0
                                            while t < 32 * _8989:
                                                mem[mem[64] + t + 164] = mem[t + 320]
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8989) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10129 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10292 = mem[_10129]
                                            require mem[_10129] <= 4294967296
                                            require mem[_10129] + 32 <= return_data.size
                                            require mem[mem[_10129] + _10129] <= 4294967296 and mem[_10129] + (32 * mem[mem[_10129] + _10129]) + 32 <= return_data.size
                                            mem[_10129 + ceil32(return_data.size)] = mem[mem[_10129] + _10129]
                                            _10513 = mem[_10292 + _10129]
                                            idx = 0
                                            while idx < 32 * _10513:
                                                mem[_10129 + ceil32(return_data.size) + idx + 32] = mem[_10292 + _10129 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10513) + _10129 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[288] = 3
                                    mem[64] = 416
                                    mem[320] = ETHAddress
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8983 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[288]
                                            _8985 = mem[288]
                                            idx = 0
                                            while idx < 32 * _8985:
                                                mem[mem[64] + idx + 164] = mem[idx + 320]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8985) + _8983 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10128 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10290 = mem[_10128]
                                            require mem[_10128] <= 4294967296
                                            require mem[_10128] + 32 <= return_data.size
                                            require mem[mem[_10128] + _10128] <= 4294967296 and mem[_10128] + (32 * mem[mem[_10128] + _10128]) + 32 <= return_data.size
                                            mem[_10128 + ceil32(return_data.size)] = mem[mem[_10128] + _10128]
                                            _10512 = mem[_10290 + _10128]
                                            idx = 0
                                            while idx < 32 * _10512:
                                                mem[_10128 + ceil32(return_data.size) + idx + 32] = mem[_10290 + _10128 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10512) + _10128 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                if mode != 2:
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[356] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), wallets, 0, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[288] = 2
                                        mem[64] = 384
                                        mem[320] = baseTokenAddress
                                        mem[352] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8995 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[288]
                                                _8997 = mem[288]
                                                idx = 0
                                                while idx < 32 * _8997:
                                                    mem[mem[64] + idx + 164] = mem[idx + 320]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8997) + _8995 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10131 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10296 = mem[_10131]
                                                require mem[_10131] <= 4294967296
                                                require mem[_10131] + 32 <= return_data.size
                                                require mem[mem[_10131] + _10131] <= 4294967296 and mem[_10131] + (32 * mem[mem[_10131] + _10131]) + 32 <= return_data.size
                                                mem[_10131 + ceil32(return_data.size)] = mem[mem[_10131] + _10131]
                                                _10515 = mem[_10296 + _10131]
                                                idx = 0
                                                while idx < 32 * _10515:
                                                    mem[_10131 + ceil32(return_data.size) + idx + 32] = mem[_10296 + _10131 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10515) + _10131 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[288] = 3
                                        mem[64] = 416
                                        mem[320] = ETHAddress
                                        mem[352] = baseTokenAddress
                                        mem[384] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[288]
                                                _8993 = mem[288]
                                                t = 0
                                                while t < 32 * _8993:
                                                    mem[mem[64] + t + 164] = mem[t + 320]
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8993) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10130 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10294 = mem[_10130]
                                                require mem[_10130] <= 4294967296
                                                require mem[_10130] + 32 <= return_data.size
                                                require mem[mem[_10130] + _10130] <= 4294967296 and mem[_10130] + (32 * mem[mem[_10130] + _10130]) + 32 <= return_data.size
                                                mem[_10130 + ceil32(return_data.size)] = mem[mem[_10130] + _10130]
                                                _10514 = mem[_10294 + _10130]
                                                idx = 0
                                                while idx < 32 * _10514:
                                                    mem[_10130 + ceil32(return_data.size) + idx + 32] = mem[_10294 + _10130 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10514) + _10130 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                else:
                                    require eth.balance(this.address) / 1000 / 10000
                                    sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                    if sub_ab731cfa > sub_cb523a14:
                                        revert with 0, '', 'taxa ta alta pra caralhoooo'
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[356] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), wallets, 0, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[288] = 2
                                        mem[64] = 384
                                        mem[320] = baseTokenAddress
                                        mem[352] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _9003 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[288]
                                                _9005 = mem[288]
                                                idx = 0
                                                while idx < 32 * _9005:
                                                    mem[mem[64] + idx + 164] = mem[idx + 320]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _9005) + _9003 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10133 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10300 = mem[_10133]
                                                require mem[_10133] <= 4294967296
                                                require mem[_10133] + 32 <= return_data.size
                                                require mem[mem[_10133] + _10133] <= 4294967296 and mem[_10133] + (32 * mem[mem[_10133] + _10133]) + 32 <= return_data.size
                                                mem[_10133 + ceil32(return_data.size)] = mem[mem[_10133] + _10133]
                                                _10517 = mem[_10300 + _10133]
                                                idx = 0
                                                while idx < 32 * _10517:
                                                    mem[_10133 + ceil32(return_data.size) + idx + 32] = mem[_10300 + _10133 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10517) + _10133 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[288] = 3
                                        mem[64] = 416
                                        mem[320] = ETHAddress
                                        mem[352] = baseTokenAddress
                                        mem[384] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8999 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[288]
                                                _9001 = mem[288]
                                                idx = 0
                                                while idx < 32 * _9001:
                                                    mem[mem[64] + idx + 164] = mem[idx + 320]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _9001) + _8999 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10132 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10298 = mem[_10132]
                                                require mem[_10132] <= 4294967296
                                                require mem[_10132] + 32 <= return_data.size
                                                require mem[mem[_10132] + _10132] <= 4294967296 and mem[_10132] + (32 * mem[mem[_10132] + _10132]) + 32 <= return_data.size
                                                mem[_10132 + ceil32(return_data.size)] = mem[mem[_10132] + _10132]
                                                _10516 = mem[_10298 + _10132]
                                                idx = 0
                                                while idx < 32 * _10516:
                                                    mem[_10132 + ceil32(return_data.size) + idx + 32] = mem[_10298 + _10132 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10516) + _10132 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[192] = 3
                            mem[224] = sub_c0b6201cAddress
                            mem[256] = baseTokenAddress
                            mem[288] = ETHAddress
                            mem[420] = this.address
                            mem[452] = block.timestamp + 30
                            mem[484] = 3
                            mem[516 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[516 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            endingBalance = ext_call.return_data[0]
                            if mode == 5:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[388] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args this.address, 0, wallets, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, 0, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[320] = 2
                                    mem[64] = 416
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8963 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8965 = mem[320]
                                            idx = 0
                                            while idx < 32 * _8965:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8965) + _8963 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10123 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10280 = mem[_10123]
                                            require mem[_10123] <= 4294967296
                                            require mem[_10123] + 32 <= return_data.size
                                            require mem[mem[_10123] + _10123] <= 4294967296 and mem[_10123] + (32 * mem[mem[_10123] + _10123]) + 32 <= return_data.size
                                            mem[_10123 + ceil32(return_data.size)] = mem[mem[_10123] + _10123]
                                            _10507 = mem[_10280 + _10123]
                                            idx = 0
                                            while idx < 32 * _10507:
                                                mem[_10123 + ceil32(return_data.size) + idx + 32] = mem[_10280 + _10123 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10507) + _10123 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[320] = 3
                                    mem[64] = 448
                                    mem[352] = ETHAddress
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8959 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8961 = mem[320]
                                            idx = 0
                                            while idx < 32 * _8961:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8961) + _8959 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10122 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10278 = mem[_10122]
                                            require mem[_10122] <= 4294967296
                                            require mem[_10122] + 32 <= return_data.size
                                            require mem[mem[_10122] + _10122] <= 4294967296 and mem[_10122] + (32 * mem[mem[_10122] + _10122]) + 32 <= return_data.size
                                            mem[_10122 + ceil32(return_data.size)] = mem[mem[_10122] + _10122]
                                            _10506 = mem[_10278 + _10122]
                                            idx = 0
                                            while idx < 32 * _10506:
                                                mem[_10122 + ceil32(return_data.size) + idx + 32] = mem[_10278 + _10122 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10506) + _10122 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                if mode != 2:
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[388] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args this.address, 0, wallets, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, 0, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[320] = 2
                                        mem[64] = 416
                                        mem[352] = baseTokenAddress
                                        mem[384] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8971 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8973 = mem[320]
                                                idx = 0
                                                while idx < 32 * _8973:
                                                    mem[mem[64] + idx + 164] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8973) + _8971 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10125 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10284 = mem[_10125]
                                                require mem[_10125] <= 4294967296
                                                require mem[_10125] + 32 <= return_data.size
                                                require mem[mem[_10125] + _10125] <= 4294967296 and mem[_10125] + (32 * mem[mem[_10125] + _10125]) + 32 <= return_data.size
                                                mem[_10125 + ceil32(return_data.size)] = mem[mem[_10125] + _10125]
                                                _10509 = mem[_10284 + _10125]
                                                idx = 0
                                                while idx < 32 * _10509:
                                                    mem[_10125 + ceil32(return_data.size) + idx + 32] = mem[_10284 + _10125 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10509) + _10125 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[320] = 3
                                        mem[64] = 448
                                        mem[352] = ETHAddress
                                        mem[384] = baseTokenAddress
                                        mem[416] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8967 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8969 = mem[320]
                                                idx = 0
                                                while idx < 32 * _8969:
                                                    mem[mem[64] + idx + 164] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8969) + _8967 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10124 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10282 = mem[_10124]
                                                require mem[_10124] <= 4294967296
                                                require mem[_10124] + 32 <= return_data.size
                                                require mem[mem[_10124] + _10124] <= 4294967296 and mem[_10124] + (32 * mem[mem[_10124] + _10124]) + 32 <= return_data.size
                                                mem[_10124 + ceil32(return_data.size)] = mem[mem[_10124] + _10124]
                                                _10508 = mem[_10282 + _10124]
                                                idx = 0
                                                while idx < 32 * _10508:
                                                    mem[_10124 + ceil32(return_data.size) + idx + 32] = mem[_10282 + _10124 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10508) + _10124 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                else:
                                    require eth.balance(this.address) / 1000 / 10000
                                    sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                    if sub_ab731cfa > sub_cb523a14:
                                        revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[388] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args this.address, 0, wallets, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, 0, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[320] = 2
                                        mem[64] = 416
                                        mem[352] = baseTokenAddress
                                        mem[384] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8979 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8981 = mem[320]
                                                idx = 0
                                                while idx < 32 * _8981:
                                                    mem[mem[64] + idx + 164] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8981) + _8979 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10127 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10288 = mem[_10127]
                                                require mem[_10127] <= 4294967296
                                                require mem[_10127] + 32 <= return_data.size
                                                require mem[mem[_10127] + _10127] <= 4294967296 and mem[_10127] + (32 * mem[mem[_10127] + _10127]) + 32 <= return_data.size
                                                mem[_10127 + ceil32(return_data.size)] = mem[mem[_10127] + _10127]
                                                _10511 = mem[_10288 + _10127]
                                                idx = 0
                                                while idx < 32 * _10511:
                                                    mem[_10127 + ceil32(return_data.size) + idx + 32] = mem[_10288 + _10127 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10511) + _10127 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[320] = 3
                                        mem[64] = 448
                                        mem[352] = ETHAddress
                                        mem[384] = baseTokenAddress
                                        mem[416] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8977 = mem[320]
                                                t = 0
                                                while t < 32 * _8977:
                                                    mem[mem[64] + t + 164] = mem[t + 352]
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8977) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10126 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10286 = mem[_10126]
                                                require mem[_10126] <= 4294967296
                                                require mem[_10126] + 32 <= return_data.size
                                                require mem[mem[_10126] + _10126] <= 4294967296 and mem[_10126] + (32 * mem[mem[_10126] + _10126]) + 32 <= return_data.size
                                                mem[_10126 + ceil32(return_data.size)] = mem[mem[_10126] + _10126]
                                                _10510 = mem[_10286 + _10126]
                                                idx = 0
                                                while idx < 32 * _10510:
                                                    mem[_10126 + ceil32(return_data.size) + idx + 32] = mem[_10286 + _10126 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10510) + _10126 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                    else:
                        mem[96] = 3
                        mem[128] = ETHAddress
                        mem[160] = baseTokenAddress
                        mem[192] = sub_c0b6201cAddress
                        mem[388 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) / 1000 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 30, 3, mem[388 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c0b6201cAddress)
                        staticcall sub_c0b6201cAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c0b6201cAddress)
                        call sub_c0b6201cAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(baseTokenAddress)
                        call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if baseTokenAddress == ETHAddress:
                            mem[224] = 2
                            mem[256] = sub_c0b6201cAddress
                            mem[288] = baseTokenAddress
                            mem[420] = this.address
                            mem[452] = block.timestamp + 30
                            mem[484] = 2
                            mem[516 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[516 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            endingBalance = ext_call.return_data[0]
                            if mode == 5:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[388] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), wallets, 0, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[320] = 2
                                    mem[64] = 416
                                    mem[352] = baseTokenAddress
                                    mem[384] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8939 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8941 = mem[320]
                                            idx = 0
                                            while idx < 32 * _8941:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8941) + _8939 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10117 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10268 = mem[_10117]
                                            require mem[_10117] <= 4294967296
                                            require mem[_10117] + 32 <= return_data.size
                                            require mem[mem[_10117] + _10117] <= 4294967296 and mem[_10117] + (32 * mem[mem[_10117] + _10117]) + 32 <= return_data.size
                                            mem[_10117 + ceil32(return_data.size)] = mem[mem[_10117] + _10117]
                                            _10501 = mem[_10268 + _10117]
                                            idx = 0
                                            while idx < 32 * _10501:
                                                mem[_10117 + ceil32(return_data.size) + idx + 32] = mem[_10268 + _10117 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10501) + _10117 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[320] = 3
                                    mem[64] = 448
                                    mem[352] = ETHAddress
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8935 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[320]
                                            _8937 = mem[320]
                                            idx = 0
                                            while idx < 32 * _8937:
                                                mem[mem[64] + idx + 164] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8937) + _8935 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10116 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10266 = mem[_10116]
                                            require mem[_10116] <= 4294967296
                                            require mem[_10116] + 32 <= return_data.size
                                            require mem[mem[_10116] + _10116] <= 4294967296 and mem[_10116] + (32 * mem[mem[_10116] + _10116]) + 32 <= return_data.size
                                            mem[_10116 + ceil32(return_data.size)] = mem[mem[_10116] + _10116]
                                            _10500 = mem[_10266 + _10116]
                                            idx = 0
                                            while idx < 32 * _10500:
                                                mem[_10116 + ceil32(return_data.size) + idx + 32] = mem[_10266 + _10116 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10500) + _10116 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                if mode != 2:
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[388] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), wallets, 0, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[320] = 2
                                        mem[64] = 416
                                        mem[352] = baseTokenAddress
                                        mem[384] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8947 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8949 = mem[320]
                                                idx = 0
                                                while idx < 32 * _8949:
                                                    mem[mem[64] + idx + 164] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8949) + _8947 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10119 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10272 = mem[_10119]
                                                require mem[_10119] <= 4294967296
                                                require mem[_10119] + 32 <= return_data.size
                                                require mem[mem[_10119] + _10119] <= 4294967296 and mem[_10119] + (32 * mem[mem[_10119] + _10119]) + 32 <= return_data.size
                                                mem[_10119 + ceil32(return_data.size)] = mem[mem[_10119] + _10119]
                                                _10503 = mem[_10272 + _10119]
                                                idx = 0
                                                while idx < 32 * _10503:
                                                    mem[_10119 + ceil32(return_data.size) + idx + 32] = mem[_10272 + _10119 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10503) + _10119 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[320] = 3
                                        mem[64] = 448
                                        mem[352] = ETHAddress
                                        mem[384] = baseTokenAddress
                                        mem[416] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8943 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8945 = mem[320]
                                                idx = 0
                                                while idx < 32 * _8945:
                                                    mem[mem[64] + idx + 164] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8945) + _8943 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10118 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10270 = mem[_10118]
                                                require mem[_10118] <= 4294967296
                                                require mem[_10118] + 32 <= return_data.size
                                                require mem[mem[_10118] + _10118] <= 4294967296 and mem[_10118] + (32 * mem[mem[_10118] + _10118]) + 32 <= return_data.size
                                                mem[_10118 + ceil32(return_data.size)] = mem[mem[_10118] + _10118]
                                                _10502 = mem[_10270 + _10118]
                                                idx = 0
                                                while idx < 32 * _10502:
                                                    mem[_10118 + ceil32(return_data.size) + idx + 32] = mem[_10270 + _10118 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10502) + _10118 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                else:
                                    require eth.balance(this.address) / 1000 / 10000
                                    sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                    if sub_ab731cfa > sub_cb523a14:
                                        revert with 0, '', 'taxa ta alta pra caralhoooo'
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[388] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), wallets, 0, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[320] = 2
                                        mem[64] = 416
                                        mem[352] = baseTokenAddress
                                        mem[384] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8957 = mem[320]
                                                t = 0
                                                while t < 32 * _8957:
                                                    mem[mem[64] + t + 164] = mem[t + 352]
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args 0, 128, wallets[idx], block.timestamp, mem[mem[64] + 132 len (32 * _8957) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10121 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10276 = mem[_10121]
                                                require mem[_10121] <= 4294967296
                                                require mem[_10121] + 32 <= return_data.size
                                                require mem[mem[_10121] + _10121] <= 4294967296 and mem[_10121] + (32 * mem[mem[_10121] + _10121]) + 32 <= return_data.size
                                                mem[_10121 + ceil32(return_data.size)] = mem[mem[_10121] + _10121]
                                                _10505 = mem[_10276 + _10121]
                                                idx = 0
                                                while idx < 32 * _10505:
                                                    mem[_10121 + ceil32(return_data.size) + idx + 32] = mem[_10276 + _10121 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10505) + _10121 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[320] = 3
                                        mem[64] = 448
                                        mem[352] = ETHAddress
                                        mem[384] = baseTokenAddress
                                        mem[416] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8951 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[320]
                                                _8953 = mem[320]
                                                idx = 0
                                                while idx < 32 * _8953:
                                                    mem[mem[64] + idx + 164] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8953) + _8951 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10120 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10274 = mem[_10120]
                                                require mem[_10120] <= 4294967296
                                                require mem[_10120] + 32 <= return_data.size
                                                require mem[mem[_10120] + _10120] <= 4294967296 and mem[_10120] + (32 * mem[mem[_10120] + _10120]) + 32 <= return_data.size
                                                mem[_10120 + ceil32(return_data.size)] = mem[mem[_10120] + _10120]
                                                _10504 = mem[_10274 + _10120]
                                                idx = 0
                                                while idx < 32 * _10504:
                                                    mem[_10120 + ceil32(return_data.size) + idx + 32] = mem[_10274 + _10120 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10504) + _10120 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[224] = 3
                            mem[256] = sub_c0b6201cAddress
                            mem[288] = baseTokenAddress
                            mem[320] = ETHAddress
                            mem[452] = this.address
                            mem[484] = block.timestamp + 30
                            mem[516] = 3
                            mem[548 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[548 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(ETHAddress)
                            staticcall ETHAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            endingBalance = ext_call.return_data[0]
                            if mode == 5:
                                require eth.balance(this.address) / 1000 / 10000
                                sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                if sub_ab731cfa > sub_cb523a14:
                                    revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                                require 0 < wallets.length
                                mem[0] = 9
                                require ext_code.size(ETHAddress)
                                staticcall ETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[420] = ext_call.return_data[0]
                                require ext_code.size(ETHAddress)
                                call ETHAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args this.address, 0, wallets, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(baseTokenAddress)
                                call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, 0, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if baseTokenAddress == ETHAddress:
                                    mem[352] = 2
                                    mem[64] = 448
                                    mem[384] = baseTokenAddress
                                    mem[416] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8915 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[352]
                                            _8917 = mem[352]
                                            idx = 0
                                            while idx < 32 * _8917:
                                                mem[mem[64] + idx + 164] = mem[idx + 384]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8917) + _8915 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10111 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10256 = mem[_10111]
                                            require mem[_10111] <= 4294967296
                                            require mem[_10111] + 32 <= return_data.size
                                            require mem[mem[_10111] + _10111] <= 4294967296 and mem[_10111] + (32 * mem[mem[_10111] + _10111]) + 32 <= return_data.size
                                            mem[_10111 + ceil32(return_data.size)] = mem[mem[_10111] + _10111]
                                            _10495 = mem[_10256 + _10111]
                                            idx = 0
                                            while idx < 32 * _10495:
                                                mem[_10111 + ceil32(return_data.size) + idx + 32] = mem[_10256 + _10111 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10495) + _10111 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[352] = 3
                                    mem[64] = 480
                                    mem[384] = ETHAddress
                                    mem[416] = baseTokenAddress
                                    mem[448] = sub_c0b6201cAddress
                                    require sub_43ff02f6 * wallets.length
                                    sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                    idx = 0
                                    while idx < wallets.length:
                                        s = 0
                                        while s < sub_43ff02f6:
                                            require idx < wallets.length
                                            mem[0] = 9
                                            _8911 = mem[64]
                                            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 68] = wallets[idx]
                                            mem[mem[64] + 100] = block.timestamp
                                            mem[mem[64] + 36] = 128
                                            mem[mem[64] + 132] = mem[352]
                                            _8913 = mem[352]
                                            idx = 0
                                            while idx < 32 * _8913:
                                                mem[mem[64] + idx + 164] = mem[idx + 384]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                               value sub_1ef782ba wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (32 * _8913) + _8911 + -mem[64] + 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10110 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _10254 = mem[_10110]
                                            require mem[_10110] <= 4294967296
                                            require mem[_10110] + 32 <= return_data.size
                                            require mem[mem[_10110] + _10110] <= 4294967296 and mem[_10110] + (32 * mem[mem[_10110] + _10110]) + 32 <= return_data.size
                                            mem[_10110 + ceil32(return_data.size)] = mem[mem[_10110] + _10110]
                                            _10494 = mem[_10254 + _10110]
                                            idx = 0
                                            while idx < 32 * _10494:
                                                mem[_10110 + ceil32(return_data.size) + idx + 32] = mem[_10254 + _10110 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[64] = (32 * _10494) + _10110 + ceil32(return_data.size) + 32
                                            s = s + 1
                                            continue 
                                        idx = idx + 1
                                        continue 
                            else:
                                if mode != 2:
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[420] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args this.address, 0, wallets, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, 0, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[352] = 2
                                        mem[64] = 448
                                        mem[384] = baseTokenAddress
                                        mem[416] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8923 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[352]
                                                _8925 = mem[352]
                                                idx = 0
                                                while idx < 32 * _8925:
                                                    mem[mem[64] + idx + 164] = mem[idx + 384]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8925) + _8923 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10113 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10260 = mem[_10113]
                                                require mem[_10113] <= 4294967296
                                                require mem[_10113] + 32 <= return_data.size
                                                require mem[mem[_10113] + _10113] <= 4294967296 and mem[_10113] + (32 * mem[mem[_10113] + _10113]) + 32 <= return_data.size
                                                mem[_10113 + ceil32(return_data.size)] = mem[mem[_10113] + _10113]
                                                _10497 = mem[_10260 + _10113]
                                                idx = 0
                                                while idx < 32 * _10497:
                                                    mem[_10113 + ceil32(return_data.size) + idx + 32] = mem[_10260 + _10113 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10497) + _10113 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[352] = 3
                                        mem[64] = 480
                                        mem[384] = ETHAddress
                                        mem[416] = baseTokenAddress
                                        mem[448] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8919 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[352]
                                                _8921 = mem[352]
                                                idx = 0
                                                while idx < 32 * _8921:
                                                    mem[mem[64] + idx + 164] = mem[idx + 384]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8921) + _8919 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10112 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10258 = mem[_10112]
                                                require mem[_10112] <= 4294967296
                                                require mem[_10112] + 32 <= return_data.size
                                                require mem[mem[_10112] + _10112] <= 4294967296 and mem[_10112] + (32 * mem[mem[_10112] + _10112]) + 32 <= return_data.size
                                                mem[_10112 + ceil32(return_data.size)] = mem[mem[_10112] + _10112]
                                                _10496 = mem[_10258 + _10112]
                                                idx = 0
                                                while idx < 32 * _10496:
                                                    mem[_10112 + ceil32(return_data.size) + idx + 32] = mem[_10258 + _10112 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10496) + _10112 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                else:
                                    require eth.balance(this.address) / 1000 / 10000
                                    sub_ab731cfa = -(endingBalance / eth.balance(this.address) / 1000 / 10000) + 10000
                                    if sub_ab731cfa > sub_cb523a14:
                                        revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
                                    require 0 < wallets.length
                                    mem[0] = 9
                                    require ext_code.size(ETHAddress)
                                    staticcall ETHAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[420] = ext_call.return_data[0]
                                    require ext_code.size(ETHAddress)
                                    call ETHAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args this.address, 0, wallets, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(baseTokenAddress)
                                    call baseTokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, 0, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if baseTokenAddress == ETHAddress:
                                        mem[352] = 2
                                        mem[64] = 448
                                        mem[384] = baseTokenAddress
                                        mem[416] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8931 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[352]
                                                _8933 = mem[352]
                                                idx = 0
                                                while idx < 32 * _8933:
                                                    mem[mem[64] + idx + 164] = mem[idx + 384]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8933) + _8931 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10115 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10264 = mem[_10115]
                                                require mem[_10115] <= 4294967296
                                                require mem[_10115] + 32 <= return_data.size
                                                require mem[mem[_10115] + _10115] <= 4294967296 and mem[_10115] + (32 * mem[mem[_10115] + _10115]) + 32 <= return_data.size
                                                mem[_10115 + ceil32(return_data.size)] = mem[mem[_10115] + _10115]
                                                _10499 = mem[_10264 + _10115]
                                                idx = 0
                                                while idx < 32 * _10499:
                                                    mem[_10115 + ceil32(return_data.size) + idx + 32] = mem[_10264 + _10115 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10499) + _10115 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[352] = 3
                                        mem[64] = 480
                                        mem[384] = ETHAddress
                                        mem[416] = baseTokenAddress
                                        mem[448] = sub_c0b6201cAddress
                                        require sub_43ff02f6 * wallets.length
                                        sub_1ef782ba = eth.balance(this.address) / sub_43ff02f6 * wallets.length
                                        idx = 0
                                        while idx < wallets.length:
                                            s = 0
                                            while s < sub_43ff02f6:
                                                require idx < wallets.length
                                                mem[0] = 9
                                                _8927 = mem[64]
                                                mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 68] = wallets[idx]
                                                mem[mem[64] + 100] = block.timestamp
                                                mem[mem[64] + 36] = 128
                                                mem[mem[64] + 132] = mem[352]
                                                _8929 = mem[352]
                                                idx = 0
                                                while idx < 32 * _8929:
                                                    mem[mem[64] + idx + 164] = mem[idx + 384]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                   value sub_1ef782ba wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (32 * _8929) + _8927 + -mem[64] + 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10114 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _10262 = mem[_10114]
                                                require mem[_10114] <= 4294967296
                                                require mem[_10114] + 32 <= return_data.size
                                                require mem[mem[_10114] + _10114] <= 4294967296 and mem[_10114] + (32 * mem[mem[_10114] + _10114]) + 32 <= return_data.size
                                                mem[_10114 + ceil32(return_data.size)] = mem[mem[_10114] + _10114]
                                                _10498 = mem[_10262 + _10114]
                                                idx = 0
                                                while idx < 32 * _10498:
                                                    mem[_10114 + ceil32(return_data.size) + idx + 32] = mem[_10262 + _10114 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[64] = (32 * _10498) + _10114 + ceil32(return_data.size) + 32
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
}



}

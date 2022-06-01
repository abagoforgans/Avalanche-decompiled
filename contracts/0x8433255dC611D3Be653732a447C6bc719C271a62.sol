contract main {




// =====================  Runtime code  =====================


#
#  - swap(address arg1)
#  - sub_80b52e8f(?)
#  - swap()
#  - sub_b13140d2(?)
#  - sub_bc5cf624(?)
#
address uniswapAddress;
address factoryAddress;
address wethAddress;
address sub_7ab982a1Address;
address usdcAddress;
address chiAddress;
address usdtAddress;
uint8 sub_41f7613b; offset 160
uint8 sub_3a89a89e; offset 168
address sub_9d3c8cc4Address;
address owner1;
address tokenAddress;
address sellerAddress;
address sub_31b2b8caAddress;
uint256 min_pool_bal;
uint256 sub_14374f27;
uint256 loop_times;
uint256 max_price;
uint256 eth_buy_amt;
uint256 eth_price;
uint256 sc;
uint8 sub_c99d09d2;
uint8 sub_1b132356; offset 8
uint256 stor19; offset 16
uint256 stor19; offset 8
uint256 sub_6a5e4ef4;
uint256 sub_e343679a;
uint256 sub_2cb53c4a;
uint256 sub_9b7e613a;
address sub_45fc8a62Address;
uint8 sub_c2f6d6bc; offset 160
uint8 sub_99e31893; offset 168
uint128 stor25; offset 176
uint128 stor25; offset 168
address sub_fdd98088Address;
address processorAddress;
address sub_047cf5b8Address;

function sub_047cf5b8(?) {
    return sub_047cf5b8Address
}

function seller() {
    return sellerAddress
}

function sub_14374f27(?) {
    return sub_14374f27
}

function sub_1b132356(?) {
    return bool(sub_1b132356)
}

function uniswap() {
    return uniswapAddress
}

function max_price() {
    return max_price
}

function eth_price() {
    return eth_price
}

function sub_2cb53c4a(?) {
    return sub_2cb53c4a
}

function usdt() {
    return usdtAddress
}

function loop_times() {
    return loop_times
}

function sub_31b2b8ca(?) {
    return sub_31b2b8caAddress
}

function sub_3a89a89e(?) {
    return bool(sub_3a89a89e)
}

function usdc() {
    return usdcAddress
}

function weth() {
    return wethAddress
}

function sub_41f7613b(?) {
    return bool(sub_41f7613b)
}

function sub_45fc8a62(?) {
    return sub_45fc8a62Address
}

function min_pool_bal() {
    return min_pool_bal
}

function sub_6a5e4ef4(?) {
    return sub_6a5e4ef4
}

function owner1() {
    return owner1
}

function sub_7ab982a1(?) {
    return sub_7ab982a1Address
}

function sub_99e31893(?) {
    return bool(sub_99e31893)
}

function sub_9b7e613a(?) {
    return sub_9b7e613a
}

function sub_9d3c8cc4(?) {
    return sub_9d3c8cc4Address
}

function sub_c2f6d6bc(?) {
    return bool(sub_c2f6d6bc)
}

function eth_buy_amt() {
    return eth_buy_amt
}

function factory() {
    return factoryAddress
}

function chi() {
    return chiAddress
}

function sub_c99d09d2(?) {
    return bool(sub_c99d09d2)
}

function processor() {
    return processorAddress
}

function sc() {
    return sc
}

function sub_e343679a(?) {
    return sub_e343679a
}

function token() {
    return tokenAddress
}

function sub_fdd98088(?) {
    return sub_fdd98088Address
}

function sub_547b17c4(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner1
    sc = arg1
}

function set_price(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner1
    max_price = arg1
}

function set_eth_buy_amt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner1
    eth_buy_amt = arg1
}

function sub_470eb612(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner1
    sellerAddress = address(arg1)
}

function set_token(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner1
    tokenAddress = arg1
    sc = 0
}

function sub_f3a7951c(?) {
    require msg.sender == owner1
    call owner1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e28d993f(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    require msg.sender == owner1
    sub_c2f6d6bc = uint8(bool(arg2))
    Mask(88, 0, stor25.field_168) = Mask(88, 0, bool(arg3))
    Mask(80, 0, stor25.field_176) = Mask(80, 16, bool(arg2)) >> 16
    processorAddress = address(arg1)
}

function uni() {
    require msg.sender == owner1
    uniswapAddress = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d
    factoryAddress = 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f
    require ext_code.size(wethAddress)
    call wethAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function set_router(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner1
    uniswapAddress = arg1
    factoryAddress = arg2
    require ext_code.size(wethAddress)
    call wethAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    if wethAddress != msg.sender:
        if chainid != 42220:
            require ext_code.size(wethAddress)
            call wethAddress.0xd0e30db0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.sender == owner1:
                require ext_code.size(wethAddress)
                staticcall wethAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                eth_buy_amt = ext_call.return_data[0]
}

function exectue(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require msg.sender == owner1
    mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(ceil32(arg3.length)) + arg3.length + 97] = 0
    call arg1.mem[ceil32(ceil32(arg3.length)) + 97 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg3.length)) + 101 len arg3.length - 4]
}

function sushi() {
    require msg.sender == owner1
    require msg.sender == owner1
    if chainid != 137:
        uniswapAddress = 0xd9e1ce17f2641f24ae83637ab66a2cca9c378b9f
        factoryAddress = 0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac
        require ext_code.size(wethAddress)
        call wethAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xd9e1ce17f2641f24ae83637ab66a2cca9c378b9f, -1
    else:
        uniswapAddress = 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506
        factoryAddress = 0xc35dadb65012ec5796536bd9864ed8773abc74c4
        require ext_code.size(wethAddress)
        call wethAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawTokens() {
    require msg.sender == owner1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args owner1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 9 * ext_call.return_data[0] / 10
}

function withdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner1
    require ext_code.size(wethAddress)
    if sub_31b2b8caAddress == wethAddress:
        call wethAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call owner1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call wethAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner1, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    eth_buy_amt = ext_call.return_data[0]
}

function withdrawEther() {
    require msg.sender == owner1
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    if sub_31b2b8caAddress == wethAddress:
        call wethAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call owner1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call wethAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    eth_buy_amt = ext_call.return_data[0]
}

function sub_0cf1ff9b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require msg.sender == owner1
    usdcAddress = address(arg1)
    eth_price = arg2
    if 1 == chainid:
        if sub_7ab982a1Address != address(arg1):
            require ext_code.size(usdcAddress)
            call usdcAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_45fc8a62Address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_45fc8a62Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_45fc8a62Address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if 137 == chainid:
            if sub_7ab982a1Address != address(arg1):
                require ext_code.size(usdcAddress)
                call usdcAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_45fc8a62Address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_45fc8a62Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_45fc8a62Address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_bb0b896c(?) payable {
    require calldata.size - 4 >= 352
    require arg1 == address(arg1)
    require arg6 == bool(arg6)
    require arg7 == bool(arg7)
    require msg.sender == owner1
    require ext_code.size(wethAddress)
    if chainid != 42220:
        if sub_31b2b8caAddress == wethAddress:
            call wethAddress.0xd0e30db0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            staticcall wethAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if msg.value and 1 > -1 / msg.value:
                    revert with 0, 17
                require ext_code.size(wethAddress)
                call wethAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args owner1, address(this.address), msg.value
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if msg.value and 10^ext_call.return_data[31 len 1] > -1 / msg.value:
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner1, address(this.address), msg.value * 10^uint8(ext_call.return_data[0])
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if msg.value and s * t > -1 / msg.value:
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner1, address(this.address), msg.value * s * t
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    eth_buy_amt = ext_call.return_data[0]
    tokenAddress = address(arg1)
    max_price = arg2
    loop_times = arg3
    min_pool_bal = arg4
    sub_14374f27 = arg5
    sub_c99d09d2 = uint8(bool(arg6))
    Mask(248, 0, stor19.field_8) = Mask(248, 0, bool(arg7))
    Mask(240, 0, stor19.field_16) = Mask(240, 16, bool(arg6)) >> 16
    sub_e343679a = arg8
    sc = 0
    sub_2cb53c4a = arg9
    sub_9b7e613a = arg10
    sub_6a5e4ef4 = arg11
}

function sub_94e4c2c8(?) {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    require arg5 == bool(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    require msg.sender == owner1
    usdcAddress = address(arg1)
    eth_price = arg2
    if 1 == chainid:
        if sub_7ab982a1Address != address(arg1):
            require ext_code.size(usdcAddress)
            call usdcAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_45fc8a62Address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_45fc8a62Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_45fc8a62Address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if 137 == chainid:
            if sub_7ab982a1Address != address(arg1):
                require ext_code.size(usdcAddress)
                call usdcAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_45fc8a62Address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_45fc8a62Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_45fc8a62Address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner1
    sub_c2f6d6bc = uint8(bool(arg4))
    Mask(88, 0, stor25.field_168) = Mask(88, 0, bool(arg5))
    Mask(80, 0, stor25.field_176) = Mask(80, 16, bool(arg4)) >> 16
    processorAddress = address(arg3)
    uniswapAddress = address(arg6)
    factoryAddress = address(arg7)
    require ext_code.size(wethAddress)
    call wethAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg6), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if wethAddress != address(arg8):
        wethAddress = address(arg8)
        require ext_code.size(address(arg8))
        call address(arg8).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 1 == chainid:
            require ext_code.size(wethAddress)
            call wethAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_45fc8a62Address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if 137 == chainid:
                require ext_code.size(wethAddress)
                call wethAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_45fc8a62Address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8f970261(?) {
    if not sub_3a89a89e:
        revert with 0, '2'
    mem[132] = sub_9d3c8cc4Address
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args tokenAddress, sub_9d3c8cc4Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        if eth_buy_amt > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not max_price:
            revert with 0, 18
        mem[(2 * ceil32(return_data.size)) + 128] = wethAddress
        mem[(2 * ceil32(return_data.size)) + 160] = sub_9d3c8cc4Address
        mem[(2 * ceil32(return_data.size)) + 192] = tokenAddress
        mem[(2 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = eth_buy_amt
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapAddress)
        call uniswapAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args eth_buy_amt, 10^18 * eth_buy_amt / max_price, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), sellerAddress, block.timestamp
    else:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if eth_buy_amt > -1:
                revert with 0, 17
            if not max_price:
                revert with 0, 18
            mem[(4 * ceil32(return_data.size)) + 128] = wethAddress
            mem[(4 * ceil32(return_data.size)) + 160] = sub_9d3c8cc4Address
            mem[(4 * ceil32(return_data.size)) + 192] = tokenAddress
            mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 228] = eth_buy_amt
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapAddress)
            call uniswapAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args eth_buy_amt, eth_buy_amt / max_price, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96]), sellerAddress, block.timestamp
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] and eth_buy_amt > -1 / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not max_price:
                    revert with 0, 18
                mem[(4 * ceil32(return_data.size)) + 128] = wethAddress
                mem[(4 * ceil32(return_data.size)) + 160] = sub_9d3c8cc4Address
                mem[(4 * ceil32(return_data.size)) + 192] = tokenAddress
                mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 228] = eth_buy_amt
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapAddress)
                call uniswapAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args eth_buy_amt, 10^uint8(ext_call.return_data[0]) * eth_buy_amt / max_price, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96]), sellerAddress, block.timestamp
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if s * t and eth_buy_amt > -1 / s * t:
                    revert with 0, 17
                if not max_price:
                    revert with 0, 18
                mem[(4 * ceil32(return_data.size)) + 128] = wethAddress
                mem[(4 * ceil32(return_data.size)) + 160] = sub_9d3c8cc4Address
                mem[(4 * ceil32(return_data.size)) + 192] = tokenAddress
                mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 228] = eth_buy_amt
                idx = 0
                u = (4 * ceil32(return_data.size)) + 128
                v = (4 * ceil32(return_data.size)) + 420
                while idx < 3:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(uniswapAddress)
                call uniswapAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args eth_buy_amt, s * t * eth_buy_amt / max_price, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96]), sellerAddress, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

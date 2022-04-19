contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    revert
}

function sub_535132d5(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c035327c(?) payable {
    if stor1 != msg.sender:
        revert with 0, 'only admin can retrieve AVAX'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_33b352f9(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'only admin can retrieve AVAX'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_6bdaf974(?) {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, 'only admin can borrow'
    require ext_code.size(arg1)
    call arg1.borrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_07484233(?) {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, 'only admin can repay'
    require ext_code.size(arg1)
    call arg1.repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_566e95d6(?) {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, 'only admin can retrieve erc20'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_ec093fc4(?) payable {
    require calldata.size - 4 >= 96
    if stor1 != msg.sender:
        revert with 0, 'only admin can liquidate'
    require ext_code.size(arg2)
    call arg2.liquidateBorrow(address rg1, address rg2) with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_b1ab393d(?) {
    require calldata.size - 4 >= 128
    if stor1 != msg.sender:
        revert with 0, 'only admin can liquidate'
    require ext_code.size(arg2)
    call arg2.liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args address(arg1), arg4, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_18142b79(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.redeem(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f22b3235(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.redeem(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f08cf07f(?) {
    require calldata.size - 4 >= 64
    require msg.sender == stor1
    require ext_code.size(arg2)
    staticcall arg2.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_062a26b8(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor1 != msg.sender:
        revert with 0, 'only admin can retrieve erc20'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_48ad690f(?) payable {
    require calldata.size - 4 >= 96
    require msg.sender == stor1
    emit 0x581b0755: address(arg2), address(arg3), arg1
    emit 0xdda245be: 12345
    mem[128] = arg2
    mem[160] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[164] = 32
    mem[196] = 1
    mem[228 len 0] = None
    require ext_code.size(arg3)
    call arg3.enterMarkets(address[] rg1) with:
         gas gas_remaining wei
        args Array(len=1, data=mem[228])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    require mem[160 len 4], 0 <= 4294967296
    require mem[160 len 4], 0 + 32 <= return_data.size
    require mem[mem[160 len 4], 0 + 160] <= 4294967296 and mem[160 len 4], 0 + (32 * mem[mem[160 len 4], 0 + 160]) + 32 <= return_data.size
    require ext_code.size(arg2)
    call arg2.mint(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x62cbecda: arg1
    return ext_call.return_data[0]
}

function sub_f368bd7c(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor1
    emit CurrentBalance(eth.balance(this.address));
    emit 0x581b0755: address(arg1), address(arg2), msg.value
    emit 0xdda245be: 12345
    mem[128] = arg1
    mem[160] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[164] = 32
    mem[196] = 1
    mem[228 len 0] = None
    require ext_code.size(arg2)
    call arg2.enterMarkets(address[] rg1) with:
         gas gas_remaining wei
        args Array(len=1, data=mem[228])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    require mem[160 len 4], 0 <= 4294967296
    require mem[160 len 4], 0 + 32 <= return_data.size
    require mem[mem[160 len 4], 0 + 160] <= 4294967296 and mem[160 len 4], 0 + (32 * mem[mem[160 len 4], 0 + 160]) + 32 <= return_data.size
    require ext_code.size(arg1)
    call arg1.mint() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa057336a: msg.value
    return 0
}

function sub_0ebe9582(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_d6980c45(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x7182d300: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], eth.balance(msg.sender)
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           eth.balance(msg.sender),
           eth.balance(this.address)
}

function sub_b8f51a55(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args arg1
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(arg2)
    staticcall arg2.getAssetsIn(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    _13 = mem[_10 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_10 + 96])] = mem[_10 + 128 len floor32(mem[_10 + 96])]
    mem[64] = (32 * _13) + ceil32(return_data.size) + 128
    _138 = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = 0
    while idx < _138:
        require idx < mem[ceil32(return_data.size) + 96]
        _142 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].borrowBalanceStored(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.oracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(_142)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _155 = mem[64]
        mem[64] = mem[64] + 32
        mem[_155] = ext_call.return_data[0]
        _156 = mem[64]
        mem[64] = mem[64] + 32
        mem[_156] = 0
        _157 = mem[64]
        mem[64] = mem[64] + 32
        mem[_157] = 0
        _158 = mem[64]
        mem[64] = mem[64] + 32
        _160 = mem[64]
        mem[64] = mem[64] + 64
        mem[_160] = 23
        mem[_160 + 32] = 'multiplication overflow'
        if not ext_call.return_data[0]:
            mem[_158] = 0
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 17
            mem[_171 + 32] = 'addition overflow' << 120
            if s + (0 / 10^18) >= 0 / 10^18:
                idx = idx + 1
                s = s + (0 / 10^18)
                continue 
            _177 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 17
            idx = 0
            while idx < 17:
                mem[idx + _177 + 68] = mem[idx + _171 + 32]
                idx = idx + 32
                continue 
            mem[_177 + 68] = mem[_177 + 83 len 17]
            revert with memory
              from mem[64]
               len _177 + -mem[64] + 100
        if not ext_call.return_data[0]:
            mem[_158] = 0
            _176 = mem[64]
            mem[64] = mem[64] + 64
            mem[_176] = 17
            mem[_176 + 32] = 'addition overflow' << 120
            if s + (0 / 10^18) >= 0 / 10^18:
                idx = idx + 1
                s = s + (0 / 10^18)
                continue 
            _181 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 17
            s = 0
            while s < 17:
                mem[s + _181 + 68] = mem[s + _176 + 32]
                s = s + 32
                continue 
            mem[_181 + 68] = mem[_181 + 83 len 17]
            revert with memory
              from mem[64]
               len _181 + -mem[64] + 100
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            mem[mem[64] + 68] = 'multiplication overflow'
            idx = 32
            while idx < 23:
                mem[idx + mem[64] + 68] = mem[idx + _160 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'multiplication overflow'
        mem[_158] = ext_call.return_data[0] * ext_call.return_data[0]
        _180 = mem[64]
        mem[64] = mem[64] + 64
        mem[_180] = 17
        mem[_180 + 32] = 'addition overflow' << 120
        if s + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            idx = idx + 1
            s = s + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            continue 
        _185 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 17
        idx = 0
        while idx < 17:
            mem[idx + _185 + 68] = mem[idx + _180 + 32]
            idx = idx + 32
            continue 
        mem[_185 + 68] = mem[_185 + 83 len 17]
        revert with memory
          from mem[64]
           len _185 + -mem[64] + 100
    return ext_call.return_data[32], ext_call.return_data[64], s
}



}

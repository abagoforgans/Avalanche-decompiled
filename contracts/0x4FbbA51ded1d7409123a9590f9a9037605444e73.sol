contract main {




// =====================  Runtime code  =====================


#
#  - sub_b5fd0fad(?)
#
uint32 stor0;
address stor0;
uint256 stor0;
address stor1;
uint256 stor2;
uint8 stor3;
address comptrollerAddress;
address priceOracleAddress;
address liquidityPoolAddress;
uint256 sub_a8e9b46f;
uint256 stor8;
uint256 stor9;

function priceOracle() {
    return priceOracleAddress
}

function comptroller() {
    return comptrollerAddress
}

function liquidityPool() {
    return liquidityPoolAddress
}

function sub_a8e9b46f(?) {
    return sub_a8e9b46f
}

function kill() {
    if address(stor0) != msg.sender:
        revert with 0, 'Unauthorized'
    selfdestruct(address(stor0))
}

function _fallback() payable {
    revert
}

function recipientChange() {
    return stor1, stor2, bool(stor3)
}

function sub_fb10f3bd(?) {
    require calldata.size - 4 >= 32
    if address(stor0) != msg.sender:
        revert with 0, 'Unauthorized'
    sub_a8e9b46f = arg1
}

function setLiquidityPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0) != msg.sender:
        revert with 0, 'Unauthorized'
    liquidityPoolAddress = arg1
}

function initiateRecipientChange(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0) != msg.sender:
        revert with 0, 'Unauthorized'
    stor1 = arg1
    stor2 = block.timestamp + (24 * 3600)
    stor3 = 1
    return arg1
}

function confirmRecipientChange() {
    if address(stor0) != msg.sender:
        revert with 0, 'Unauthorized'
    if not stor3:
        revert with 0, 'Initiate change first'
    if block.timestamp <= stor2:
        revert with 0, 'Wait longer'
    address(stor0) = stor1
    emit RecipientChanged(stor1);
    stor1 = 0
    stor2 = 0
    stor3 = 0
}

function liquidate(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg2)
    staticcall arg2.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(liquidityPoolAddress)
    call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg4, 96, 132, unknown_0xb5fd0fad(?????), address(arg1) << 64, 0, address(arg2), address(arg3), arg4, 0, address(ext_call.return_data[0]) << 32 >> 800, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setComptroller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0) != msg.sender:
        revert with 0, 'Unauthorized'
    comptrollerAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    priceOracleAddress = ext_call.return_data[12 len 20]
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.closeFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor8 = ext_call.return_data[0]
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.liquidationIncentiveMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor9 = ext_call.return_data[0]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        call address(stor0) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RevenueWithdrawn(address(stor0), address(arg1), eth.balance(this.address));
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = address(stor0)
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RevenueWithdrawn(address(stor0), address(arg1), ext_call.return_data[0]);
}

function liquidateS(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[32]:
        require ext_code.size(arg2)
        call arg2.borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        call arg3.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor9
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(arg2)
        staticcall arg2.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(liquidityPoolAddress)
        if ext_call.return_data[0] * ext_call.return_data[0] * stor8 / 10^18 < 10^18 * ext_call.return_data[0] / stor9 * ext_call.return_data[0]:
            call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0] * ext_call.return_data[0] * stor8 / 10^18 / ext_call.return_data[0], 96, 132, unknown_0xb5fd0fad(?????), address(arg1) << 64, 0, address(arg2), address(arg3), ext_call.return_data[0] * ext_call.return_data[0] * stor8 / 10^18 / ext_call.return_data[0], 0, address(ext_call.return_data[0]) << 32 >> 800, 0
        else:
            call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 10^18 * ext_call.return_data[0] / stor9 * ext_call.return_data[0] / ext_call.return_data[0], 96, 132, unknown_0xb5fd0fad(?????), address(arg1) << 64, 0, address(arg2), address(arg3), 10^18 * ext_call.return_data[0] / stor9 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(ext_call.return_data[0]) << 32 >> 800, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function liquidateSN(address[] arg1, address[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require 2 * idx < arg2.length
        require cd[((64 * idx) + arg2 + 36)] == address(cd[((64 * idx) + arg2 + 36)])
        require (2 * idx) + 1 < arg2.length
        require cd[((32 * (2 * idx) + 1) + arg2 + 36)] == address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        if not mem[_49 + 32]:
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((64 * idx) + arg2 + 36)]))
            call address(cd[((64 * idx) + arg2 + 36)]).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _55 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _56 = mem[_55]
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]))
            call address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _60 = mem[_59]
            require stor9
            mem[mem[64] + 4] = address(cd[((64 * idx) + arg2 + 36)])
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _64 = mem[_63]
            mem[mem[64] + 4] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _68 = mem[_67]
            require _64
            require ext_code.size(address(cd[((64 * idx) + arg2 + 36)]))
            staticcall address(cd[((64 * idx) + arg2 + 36)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _64 * _56 * stor8 / 10^18 < 10^18 * _60 / stor9 * mem[_67]:
                _73 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _75 = mem[_73]
                require mem[_73] == mem[_73 + 12 len 20]
                _77 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 68] = address(cd[((64 * idx) + arg2 + 36)])
                mem[mem[64] + 100] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                mem[mem[64] + 132] = _64 * _56 * stor8 / 10^18 / _64
                _79 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_79 + 32] = 0xb5fd0fad00000000000000000000000000000000000000000000000000000000 or mem[_79 + 36 len 28]
                mem[_77 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                mem[_77 + 168] = address(_75)
                mem[_77 + 200] = _64 * _56 * stor8 / 10^18 / _64
                mem[_77 + 232] = 96
                _85 = mem[_79]
                mem[_77 + 264] = mem[_79]
                s = 0
                while s < _85:
                    mem[s + _77 + 296] = mem[s + _79 + 32]
                    s = s + 32
                    continue 
                if ceil32(_85) > _85:
                    mem[_85 + _77 + 296] = 0
                require ext_code.size(liquidityPoolAddress)
                call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                     gas gas_remaining wei
                    args address(_75), _64 * _56 * stor8 / 10^18 / _64, 96, mem[_77 + 264 len ceil32(_85) + 32]
            else:
                _74 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _76 = mem[_74]
                require mem[_74] == mem[_74 + 12 len 20]
                _78 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 68] = address(cd[((64 * idx) + arg2 + 36)])
                mem[mem[64] + 100] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                mem[mem[64] + 132] = 10^18 * _60 / stor9 * _68 / _64
                _82 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_82 + 32] = 0xb5fd0fad00000000000000000000000000000000000000000000000000000000 or mem[_82 + 36 len 28]
                mem[_78 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                mem[_78 + 168] = address(_76)
                mem[_78 + 200] = 10^18 * _60 / stor9 * _68 / _64
                mem[_78 + 232] = 96
                _86 = mem[_82]
                mem[_78 + 264] = mem[_82]
                s = 0
                while s < _86:
                    mem[s + _78 + 296] = mem[s + _82 + 32]
                    s = s + 32
                    continue 
                if ceil32(_86) > _86:
                    mem[_86 + _78 + 296] = 0
                require ext_code.size(liquidityPoolAddress)
                call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                     gas gas_remaining wei
                    args address(_76), 10^18 * _60 / stor9 * _68 / _64, 96, mem[_78 + 264 len ceil32(_86) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function liquidateSWithPrice(bytes[] arg1, bytes[] arg2, string[] arg3, address arg4, address arg5, address arg6) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    mem[96] = 0xecc1e98400000000000000000000000000000000000000000000000000000000
    mem[100] = 96
    mem[196] = arg1.length
    idx = 0
    s = arg1 + 36
    t = (32 * arg1.length) + 228
    u = 228
    while idx < arg1.length:
        mem[u] = t - 228
        require cd[s] < calldata.size + -arg1 - 67
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        require arg1 + 36 <= calldata.size - cd[(arg1 + cd[s] + 36)]
        mem[t] = cd[(arg1 + cd[s] + 36)]
        mem[t + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[t + cd[(arg1 + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg1 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    mem[132] = (64 * arg1.length) + 128
    mem[(64 * arg1.length) + 228] = arg2.length
    idx = 0
    s = arg2 + 36
    t = (32 * arg2.length) + (64 * arg1.length) + 260
    u = (64 * arg1.length) + 260
    while idx < arg2.length:
        mem[u] = t + -(64 * arg1.length) - 260
        require cd[s] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[s] + 36)] <= test266151307()
        require arg2 + 36 <= calldata.size - cd[(arg2 + cd[s] + 36)]
        mem[t] = cd[(arg2 + cd[s] + 36)]
        mem[t + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[t + cd[(arg2 + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg2 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    mem[164] = (64 * arg2.length) + (64 * arg1.length) + 160
    mem[(64 * arg2.length) + (64 * arg1.length) + 260] = arg3.length
    idx = 0
    s = arg3 + 36
    t = (64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 292
    u = (64 * arg2.length) + (64 * arg1.length) + 292
    while idx < arg3.length:
        mem[u] = t + -(64 * arg2.length) + -(64 * arg1.length) - 292
        require cd[s] < calldata.size + -arg3 - 67
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
        mem[t] = cd[(arg3 + cd[s] + 36)]
        mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    require ext_code.size(priceOracleAddress)
    call priceOracleAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (64 * arg2.length) + (64 * arg1.length) + (64 * arg3.length) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args address(arg4)
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _146 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    if not mem[_146 + 32]:
        mem[mem[64] + 4] = arg4
        require ext_code.size(arg5)
        call arg5.borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _153 = mem[_152]
        mem[mem[64] + 4] = arg4
        require ext_code.size(arg6)
        call arg6.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _156 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _157 = mem[_156]
        require stor9
        mem[mem[64] + 4] = arg5
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg5)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _161 = mem[_160]
        mem[mem[64] + 4] = arg6
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg6)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _164 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _165 = mem[_164]
        require _161
        require ext_code.size(arg5)
        staticcall arg5.underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if _161 * _153 * stor8 / 10^18 < 10^18 * _157 / stor9 * mem[_164]:
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _172 = mem[_170]
            require mem[_170] == mem[_170 + 12 len 20]
            _174 = mem[64]
            mem[mem[64] + 36] = arg4
            mem[mem[64] + 68] = arg5
            mem[mem[64] + 100] = arg6
            mem[mem[64] + 132] = _161 * _153 * stor8 / 10^18 / _161
            _176 = mem[64]
            mem[mem[64]] = 132
            mem[64] = mem[64] + 164
            mem[_176 + 32 len 4] = unknown_0xb5fd0fad(?????)
            mem[_174 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
            mem[_174 + 168] = address(_172)
            mem[_174 + 200] = _161 * _153 * stor8 / 10^18 / _161
            mem[_174 + 232] = 96
            _182 = mem[_176]
            mem[_174 + 264] = mem[_176]
            mem[_174 + 296 len ceil32(_182)] = mem[_176 + 32 len ceil32(_182)]
            if ceil32(_182) > _182:
                mem[_182 + _174 + 296] = 0
            require ext_code.size(liquidityPoolAddress)
            call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                 gas gas_remaining wei
                args address(_172), _161 * _153 * stor8 / 10^18 / _161, 96, mem[_174 + 264 len ceil32(_182) + 32]
        else:
            _171 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _173 = mem[_171]
            require mem[_171] == mem[_171 + 12 len 20]
            _175 = mem[64]
            mem[mem[64] + 36] = arg4
            mem[mem[64] + 68] = arg5
            mem[mem[64] + 100] = arg6
            mem[mem[64] + 132] = 10^18 * _157 / stor9 * _165 / _161
            _179 = mem[64]
            mem[mem[64]] = 132
            mem[64] = mem[64] + 164
            mem[_179 + 32 len 4] = unknown_0xb5fd0fad(?????)
            mem[_175 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
            mem[_175 + 168] = address(_173)
            mem[_175 + 200] = 10^18 * _157 / stor9 * _165 / _161
            mem[_175 + 232] = 96
            _183 = mem[_179]
            mem[_175 + 264] = mem[_179]
            mem[_175 + 296 len ceil32(_183)] = mem[_179 + 32 len ceil32(_183)]
            if ceil32(_183) > _183:
                mem[_183 + _175 + 296] = 0
            require ext_code.size(liquidityPoolAddress)
            call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                 gas gas_remaining wei
                args address(_173), 10^18 * _157 / stor9 * _165 / _161, 96, mem[_175 + 264 len ceil32(_183) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function liquidateSNWithPrice(bytes[] arg1, bytes[] arg2, string[] arg3, address[] arg4, address[] arg5) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = 0xecc1e98400000000000000000000000000000000000000000000000000000000
    mem[100] = 96
    mem[196] = arg1.length
    idx = 0
    s = arg1 + 36
    t = (32 * arg1.length) + 228
    u = 228
    while idx < arg1.length:
        mem[u] = t - 228
        require cd[s] < calldata.size + -arg1 - 67
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        require arg1 + 36 <= calldata.size - cd[(arg1 + cd[s] + 36)]
        mem[t] = cd[(arg1 + cd[s] + 36)]
        mem[t + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[t + cd[(arg1 + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg1 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    mem[132] = (64 * arg1.length) + 128
    mem[(64 * arg1.length) + 228] = arg2.length
    idx = 0
    s = arg2 + 36
    t = (32 * arg2.length) + (64 * arg1.length) + 260
    u = (64 * arg1.length) + 260
    while idx < arg2.length:
        mem[u] = t + -(64 * arg1.length) - 260
        require cd[s] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[s] + 36)] <= test266151307()
        require arg2 + 36 <= calldata.size - cd[(arg2 + cd[s] + 36)]
        mem[t] = cd[(arg2 + cd[s] + 36)]
        mem[t + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[t + cd[(arg2 + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg2 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    mem[164] = (64 * arg2.length) + (64 * arg1.length) + 160
    mem[(64 * arg2.length) + (64 * arg1.length) + 260] = arg3.length
    idx = 0
    s = arg3 + 36
    t = (64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 292
    u = (64 * arg2.length) + (64 * arg1.length) + 292
    while idx < arg3.length:
        mem[u] = t + -(64 * arg2.length) + -(64 * arg1.length) - 292
        require cd[s] < calldata.size + -arg3 - 67
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
        mem[t] = cd[(arg3 + cd[s] + 36)]
        mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    require ext_code.size(priceOracleAddress)
    call priceOracleAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (64 * arg2.length) + (64 * arg1.length) + (64 * arg3.length) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg4.length:
        require cd[((32 * idx) + arg4 + 36)] == address(cd[((32 * idx) + arg4 + 36)])
        require 2 * idx < arg5.length
        require cd[((64 * idx) + arg5 + 36)] == address(cd[((64 * idx) + arg5 + 36)])
        require (2 * idx) + 1 < arg5.length
        require cd[((32 * (2 * idx) + 1) + arg5 + 36)] == address(cd[((32 * (2 * idx) + 1) + arg5 + 36)])
        require ext_code.size(comptrollerAddress)
        staticcall comptrollerAddress.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg4 + 36)])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        if not mem[_192 + 32]:
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg4 + 36)])
            require ext_code.size(address(cd[((64 * idx) + arg5 + 36)]))
            call address(cd[((64 * idx) + arg5 + 36)]).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg4 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _198 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _199 = mem[_198]
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg4 + 36)])
            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + arg5 + 36)]))
            call address(cd[((32 * (2 * idx) + 1) + arg5 + 36)]).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg4 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _202 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _203 = mem[_202]
            require stor9
            mem[mem[64] + 4] = address(cd[((64 * idx) + arg5 + 36)])
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + arg5 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _206 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _207 = mem[_206]
            mem[mem[64] + 4] = address(cd[((32 * (2 * idx) + 1) + arg5 + 36)])
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * (2 * idx) + 1) + arg5 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _211 = mem[_210]
            require _207
            require ext_code.size(address(cd[((64 * idx) + arg5 + 36)]))
            staticcall address(cd[((64 * idx) + arg5 + 36)]).underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _207 * _199 * stor8 / 10^18 < 10^18 * _203 / stor9 * mem[_210]:
                _216 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _218 = mem[_216]
                require mem[_216] == mem[_216 + 12 len 20]
                _220 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                mem[mem[64] + 68] = address(cd[((64 * idx) + arg5 + 36)])
                mem[mem[64] + 100] = address(cd[((32 * (2 * idx) + 1) + arg5 + 36)])
                mem[mem[64] + 132] = _207 * _199 * stor8 / 10^18 / _207
                _222 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_222 + 32] = 0xb5fd0fad00000000000000000000000000000000000000000000000000000000 or mem[_222 + 36 len 28]
                mem[_220 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                mem[_220 + 168] = address(_218)
                mem[_220 + 200] = _207 * _199 * stor8 / 10^18 / _207
                mem[_220 + 232] = 96
                _228 = mem[_222]
                mem[_220 + 264] = mem[_222]
                s = 0
                while s < _228:
                    mem[s + _220 + 296] = mem[s + _222 + 32]
                    s = s + 32
                    continue 
                if ceil32(_228) > _228:
                    mem[_228 + _220 + 296] = 0
                require ext_code.size(liquidityPoolAddress)
                call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                     gas gas_remaining wei
                    args address(_218), _207 * _199 * stor8 / 10^18 / _207, 96, mem[_220 + 264 len ceil32(_228) + 32]
            else:
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _219 = mem[_217]
                require mem[_217] == mem[_217 + 12 len 20]
                _221 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                mem[mem[64] + 68] = address(cd[((64 * idx) + arg5 + 36)])
                mem[mem[64] + 100] = address(cd[((32 * (2 * idx) + 1) + arg5 + 36)])
                mem[mem[64] + 132] = 10^18 * _203 / stor9 * _211 / _207
                _225 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_225 + 32] = 0xb5fd0fad00000000000000000000000000000000000000000000000000000000 or mem[_225 + 36 len 28]
                mem[_221 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                mem[_221 + 168] = address(_219)
                mem[_221 + 200] = 10^18 * _203 / stor9 * _211 / _207
                mem[_221 + 232] = 96
                _229 = mem[_225]
                mem[_221 + 264] = mem[_225]
                s = 0
                while s < _229:
                    mem[s + _221 + 296] = mem[s + _225 + 32]
                    s = s + 32
                    continue 
                if ceil32(_229) > _229:
                    mem[_229 + _221 + 296] = 0
                require ext_code.size(liquidityPoolAddress)
                call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                     gas gas_remaining wei
                    args address(_219), 10^18 * _203 / stor9 * _211 / _207, 96, mem[_221 + 264 len ceil32(_229) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}

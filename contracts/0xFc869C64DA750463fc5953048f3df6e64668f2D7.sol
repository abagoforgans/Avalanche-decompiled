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
    if arg2 != 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
        require ext_code.size(arg2)
        staticcall arg2.underlying() with:
                gas gas_remaining wei
    else:
        require ext_code.size(liquidityPoolAddress)
        staticcall liquidityPoolAddress.AVAX() with:
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
        if arg2 != 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
            require ext_code.size(arg2)
            staticcall arg2.underlying() with:
                    gas gas_remaining wei
        else:
            require ext_code.size(liquidityPoolAddress)
            staticcall liquidityPoolAddress.AVAX() with:
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
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        if not mem[_73 + 32]:
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((64 * idx) + arg2 + 36)]))
            call address(cd[((64 * idx) + arg2 + 36)]).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _80 = mem[_79]
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]))
            call address(cd[((32 * (2 * idx) + 1) + arg2 + 36)]).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _84 = mem[_83]
            require stor9
            mem[mem[64] + 4] = address(cd[((64 * idx) + arg2 + 36)])
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _88 = mem[_87]
            mem[mem[64] + 4] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _92 = mem[_91]
            require _88
            if _88 * _80 * stor8 / 10^18 < 10^18 * _84 / stor9 * mem[_91]:
                if address(cd[((64 * idx) + arg2 + 36)]) != 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                    require ext_code.size(address(cd[((64 * idx) + arg2 + 36)]))
                    staticcall address(cd[((64 * idx) + arg2 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _101 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _105 = mem[_101]
                    require mem[_101] == mem[_101 + 12 len 20]
                    _109 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 68] = address(cd[((64 * idx) + arg2 + 36)])
                    mem[mem[64] + 100] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                    mem[mem[64] + 132] = _88 * _80 * stor8 / 10^18 / _88
                    _113 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_113 + 32] = 0xb5fd0fad00000000000000000000000000000000000000000000000000000000 or mem[_113 + 36 len 28]
                    mem[_109 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                    mem[_109 + 168] = address(_105)
                    mem[_109 + 200] = _88 * _80 * stor8 / 10^18 / _88
                    mem[_109 + 232] = 96
                    _125 = mem[_113]
                    mem[_109 + 264] = mem[_113]
                    s = 0
                    while s < _125:
                        mem[s + _109 + 296] = mem[s + _113 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_125) > _125:
                        mem[_125 + _109 + 296] = 0
                    require ext_code.size(liquidityPoolAddress)
                    call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(_105), _88 * _80 * stor8 / 10^18 / _88, 96, mem[_109 + 264 len ceil32(_125) + 32]
                else:
                    require ext_code.size(liquidityPoolAddress)
                    staticcall liquidityPoolAddress.AVAX() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _102 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _106 = mem[_102]
                    require mem[_102] == mem[_102 + 12 len 20]
                    _110 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 68] = address(cd[((64 * idx) + arg2 + 36)])
                    mem[mem[64] + 100] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                    mem[mem[64] + 132] = _88 * _80 * stor8 / 10^18 / _88
                    _116 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_116 + 32] = 0xb5fd0fad00000000000000000000000000000000000000000000000000000000 or mem[_116 + 36 len 28]
                    mem[_110 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                    mem[_110 + 168] = address(_106)
                    mem[_110 + 200] = _88 * _80 * stor8 / 10^18 / _88
                    mem[_110 + 232] = 96
                    _126 = mem[_116]
                    mem[_110 + 264] = mem[_116]
                    s = 0
                    while s < _126:
                        mem[s + _110 + 296] = mem[s + _116 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_126) > _126:
                        mem[_126 + _110 + 296] = 0
                    require ext_code.size(liquidityPoolAddress)
                    call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(_106), _88 * _80 * stor8 / 10^18 / _88, 96, mem[_110 + 264 len ceil32(_126) + 32]
            else:
                if address(cd[((64 * idx) + arg2 + 36)]) != 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                    require ext_code.size(address(cd[((64 * idx) + arg2 + 36)]))
                    staticcall address(cd[((64 * idx) + arg2 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _103 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _107 = mem[_103]
                    require mem[_103] == mem[_103 + 12 len 20]
                    _111 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 68] = address(cd[((64 * idx) + arg2 + 36)])
                    mem[mem[64] + 100] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                    mem[mem[64] + 132] = 10^18 * _84 / stor9 * _92 / _88
                    _119 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_119 + 32] = 0xb5fd0fad00000000000000000000000000000000000000000000000000000000 or mem[_119 + 36 len 28]
                    mem[_111 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                    mem[_111 + 168] = address(_107)
                    mem[_111 + 200] = 10^18 * _84 / stor9 * _92 / _88
                    mem[_111 + 232] = 96
                    _127 = mem[_119]
                    mem[_111 + 264] = mem[_119]
                    s = 0
                    while s < _127:
                        mem[s + _111 + 296] = mem[s + _119 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_127) > _127:
                        mem[_127 + _111 + 296] = 0
                    require ext_code.size(liquidityPoolAddress)
                    call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(_107), 10^18 * _84 / stor9 * _92 / _88, 96, mem[_111 + 264 len ceil32(_127) + 32]
                else:
                    require ext_code.size(liquidityPoolAddress)
                    staticcall liquidityPoolAddress.AVAX() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _104 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _108 = mem[_104]
                    require mem[_104] == mem[_104 + 12 len 20]
                    _112 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 68] = address(cd[((64 * idx) + arg2 + 36)])
                    mem[mem[64] + 100] = address(cd[((32 * (2 * idx) + 1) + arg2 + 36)])
                    mem[mem[64] + 132] = 10^18 * _84 / stor9 * _92 / _88
                    _122 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_122 + 32] = 0xb5fd0fad00000000000000000000000000000000000000000000000000000000 or mem[_122 + 36 len 28]
                    mem[_112 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                    mem[_112 + 168] = address(_108)
                    mem[_112 + 200] = 10^18 * _84 / stor9 * _92 / _88
                    mem[_112 + 232] = 96
                    _128 = mem[_122]
                    mem[_112 + 264] = mem[_122]
                    s = 0
                    while s < _128:
                        mem[s + _112 + 296] = mem[s + _122 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_128) > _128:
                        mem[_128 + _112 + 296] = 0
                    require ext_code.size(liquidityPoolAddress)
                    call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(_108), 10^18 * _84 / stor9 * _92 / _88, 96, mem[_112 + 264 len ceil32(_128) + 32]
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
    _218 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    if not mem[_218 + 32]:
        mem[mem[64] + 4] = arg4
        require ext_code.size(arg5)
        call arg5.borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _224 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _225 = mem[_224]
        mem[mem[64] + 4] = arg4
        require ext_code.size(arg6)
        call arg6.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args address(arg4)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _228 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _229 = mem[_228]
        require stor9
        mem[mem[64] + 4] = arg5
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg5)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _232 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _233 = mem[_232]
        mem[mem[64] + 4] = arg6
        require ext_code.size(priceOracleAddress)
        staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg6)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _236 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _237 = mem[_236]
        require _233
        if _233 * _225 * stor8 / 10^18 < 10^18 * _229 / stor9 * mem[_236]:
            if arg5 != 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                require ext_code.size(arg5)
                staticcall arg5.underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _246 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _250 = mem[_246]
                require mem[_246] == mem[_246 + 12 len 20]
                _254 = mem[64]
                mem[mem[64] + 36] = arg4
                mem[mem[64] + 68] = arg5
                mem[mem[64] + 100] = arg6
                mem[mem[64] + 132] = _233 * _225 * stor8 / 10^18 / _233
                _258 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_258 + 32 len 4] = unknown_0xb5fd0fad(?????)
                mem[_254 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                mem[_254 + 168] = address(_250)
                mem[_254 + 200] = _233 * _225 * stor8 / 10^18 / _233
                mem[_254 + 232] = 96
                _270 = mem[_258]
                mem[_254 + 264] = mem[_258]
                mem[_254 + 296 len ceil32(_270)] = mem[_258 + 32 len ceil32(_270)]
                if ceil32(_270) > _270:
                    mem[_270 + _254 + 296] = 0
                require ext_code.size(liquidityPoolAddress)
                call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                     gas gas_remaining wei
                    args address(_250), _233 * _225 * stor8 / 10^18 / _233, 96, mem[_254 + 264 len ceil32(_270) + 32]
            else:
                require ext_code.size(liquidityPoolAddress)
                staticcall liquidityPoolAddress.AVAX() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _247 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _251 = mem[_247]
                require mem[_247] == mem[_247 + 12 len 20]
                _255 = mem[64]
                mem[mem[64] + 36] = arg4
                mem[mem[64] + 68] = arg5
                mem[mem[64] + 100] = arg6
                mem[mem[64] + 132] = _233 * _225 * stor8 / 10^18 / _233
                _261 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_261 + 32 len 4] = unknown_0xb5fd0fad(?????)
                mem[_255 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                mem[_255 + 168] = address(_251)
                mem[_255 + 200] = _233 * _225 * stor8 / 10^18 / _233
                mem[_255 + 232] = 96
                _271 = mem[_261]
                mem[_255 + 264] = mem[_261]
                mem[_255 + 296 len ceil32(_271)] = mem[_261 + 32 len ceil32(_271)]
                if ceil32(_271) > _271:
                    mem[_271 + _255 + 296] = 0
                require ext_code.size(liquidityPoolAddress)
                call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                     gas gas_remaining wei
                    args address(_251), _233 * _225 * stor8 / 10^18 / _233, 96, mem[_255 + 264 len ceil32(_271) + 32]
        else:
            if arg5 != 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                require ext_code.size(arg5)
                staticcall arg5.underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _248 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _252 = mem[_248]
                require mem[_248] == mem[_248 + 12 len 20]
                _256 = mem[64]
                mem[mem[64] + 36] = arg4
                mem[mem[64] + 68] = arg5
                mem[mem[64] + 100] = arg6
                mem[mem[64] + 132] = 10^18 * _229 / stor9 * _237 / _233
                _264 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_264 + 32 len 4] = unknown_0xb5fd0fad(?????)
                mem[_256 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                mem[_256 + 168] = address(_252)
                mem[_256 + 200] = 10^18 * _229 / stor9 * _237 / _233
                mem[_256 + 232] = 96
                _272 = mem[_264]
                mem[_256 + 264] = mem[_264]
                mem[_256 + 296 len ceil32(_272)] = mem[_264 + 32 len ceil32(_272)]
                if ceil32(_272) > _272:
                    mem[_272 + _256 + 296] = 0
                require ext_code.size(liquidityPoolAddress)
                call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                     gas gas_remaining wei
                    args address(_252), 10^18 * _229 / stor9 * _237 / _233, 96, mem[_256 + 264 len ceil32(_272) + 32]
            else:
                require ext_code.size(liquidityPoolAddress)
                staticcall liquidityPoolAddress.AVAX() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _249 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _253 = mem[_249]
                require mem[_249] == mem[_249 + 12 len 20]
                _257 = mem[64]
                mem[mem[64] + 36] = arg4
                mem[mem[64] + 68] = arg5
                mem[mem[64] + 100] = arg6
                mem[mem[64] + 132] = 10^18 * _229 / stor9 * _237 / _233
                _267 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_267 + 32 len 4] = unknown_0xb5fd0fad(?????)
                mem[_257 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                mem[_257 + 168] = address(_253)
                mem[_257 + 200] = 10^18 * _229 / stor9 * _237 / _233
                mem[_257 + 232] = 96
                _273 = mem[_267]
                mem[_257 + 264] = mem[_267]
                mem[_257 + 296 len ceil32(_273)] = mem[_267 + 32 len ceil32(_273)]
                if ceil32(_273) > _273:
                    mem[_273 + _257 + 296] = 0
                require ext_code.size(liquidityPoolAddress)
                call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                     gas gas_remaining wei
                    args address(_253), 10^18 * _229 / stor9 * _237 / _233, 96, mem[_257 + 264 len ceil32(_273) + 32]
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
        _288 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        if not mem[_288 + 32]:
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg4 + 36)])
            require ext_code.size(address(cd[((64 * idx) + arg5 + 36)]))
            call address(cd[((64 * idx) + arg5 + 36)]).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg4 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _294 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _295 = mem[_294]
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg4 + 36)])
            require ext_code.size(address(cd[((32 * (2 * idx) + 1) + arg5 + 36)]))
            call address(cd[((32 * (2 * idx) + 1) + arg5 + 36)]).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg4 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _298 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _299 = mem[_298]
            require stor9
            mem[mem[64] + 4] = address(cd[((64 * idx) + arg5 + 36)])
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + arg5 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _302 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _303 = mem[_302]
            mem[mem[64] + 4] = address(cd[((32 * (2 * idx) + 1) + arg5 + 36)])
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * (2 * idx) + 1) + arg5 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _306 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _307 = mem[_306]
            require _303
            if _303 * _295 * stor8 / 10^18 < 10^18 * _299 / stor9 * mem[_306]:
                if address(cd[((64 * idx) + arg5 + 36)]) != 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                    require ext_code.size(address(cd[((64 * idx) + arg5 + 36)]))
                    staticcall address(cd[((64 * idx) + arg5 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _316 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _320 = mem[_316]
                    require mem[_316] == mem[_316 + 12 len 20]
                    _324 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = address(cd[((64 * idx) + arg5 + 36)])
                    mem[mem[64] + 100] = address(cd[((32 * (2 * idx) + 1) + arg5 + 36)])
                    mem[mem[64] + 132] = _303 * _295 * stor8 / 10^18 / _303
                    _328 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_328 + 32] = 0xb5fd0fad00000000000000000000000000000000000000000000000000000000 or mem[_328 + 36 len 28]
                    mem[_324 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                    mem[_324 + 168] = address(_320)
                    mem[_324 + 200] = _303 * _295 * stor8 / 10^18 / _303
                    mem[_324 + 232] = 96
                    _340 = mem[_328]
                    mem[_324 + 264] = mem[_328]
                    s = 0
                    while s < _340:
                        mem[s + _324 + 296] = mem[s + _328 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_340) > _340:
                        mem[_340 + _324 + 296] = 0
                    require ext_code.size(liquidityPoolAddress)
                    call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(_320), _303 * _295 * stor8 / 10^18 / _303, 96, mem[_324 + 264 len ceil32(_340) + 32]
                else:
                    require ext_code.size(liquidityPoolAddress)
                    staticcall liquidityPoolAddress.AVAX() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _321 = mem[_317]
                    require mem[_317] == mem[_317 + 12 len 20]
                    _325 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = address(cd[((64 * idx) + arg5 + 36)])
                    mem[mem[64] + 100] = address(cd[((32 * (2 * idx) + 1) + arg5 + 36)])
                    mem[mem[64] + 132] = _303 * _295 * stor8 / 10^18 / _303
                    _331 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_331 + 32] = 0xb5fd0fad00000000000000000000000000000000000000000000000000000000 or mem[_331 + 36 len 28]
                    mem[_325 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                    mem[_325 + 168] = address(_321)
                    mem[_325 + 200] = _303 * _295 * stor8 / 10^18 / _303
                    mem[_325 + 232] = 96
                    _341 = mem[_331]
                    mem[_325 + 264] = mem[_331]
                    s = 0
                    while s < _341:
                        mem[s + _325 + 296] = mem[s + _331 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_341) > _341:
                        mem[_341 + _325 + 296] = 0
                    require ext_code.size(liquidityPoolAddress)
                    call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(_321), _303 * _295 * stor8 / 10^18 / _303, 96, mem[_325 + 264 len ceil32(_341) + 32]
            else:
                if address(cd[((64 * idx) + arg5 + 36)]) != 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
                    require ext_code.size(address(cd[((64 * idx) + arg5 + 36)]))
                    staticcall address(cd[((64 * idx) + arg5 + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _318 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _322 = mem[_318]
                    require mem[_318] == mem[_318 + 12 len 20]
                    _326 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = address(cd[((64 * idx) + arg5 + 36)])
                    mem[mem[64] + 100] = address(cd[((32 * (2 * idx) + 1) + arg5 + 36)])
                    mem[mem[64] + 132] = 10^18 * _299 / stor9 * _307 / _303
                    _334 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_334 + 32] = 0xb5fd0fad00000000000000000000000000000000000000000000000000000000 or mem[_334 + 36 len 28]
                    mem[_326 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                    mem[_326 + 168] = address(_322)
                    mem[_326 + 200] = 10^18 * _299 / stor9 * _307 / _303
                    mem[_326 + 232] = 96
                    _342 = mem[_334]
                    mem[_326 + 264] = mem[_334]
                    s = 0
                    while s < _342:
                        mem[s + _326 + 296] = mem[s + _334 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_342) > _342:
                        mem[_342 + _326 + 296] = 0
                    require ext_code.size(liquidityPoolAddress)
                    call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(_322), 10^18 * _299 / stor9 * _307 / _303, 96, mem[_326 + 264 len ceil32(_342) + 32]
                else:
                    require ext_code.size(liquidityPoolAddress)
                    staticcall liquidityPoolAddress.AVAX() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _323 = mem[_319]
                    require mem[_319] == mem[_319 + 12 len 20]
                    _327 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[mem[64] + 68] = address(cd[((64 * idx) + arg5 + 36)])
                    mem[mem[64] + 100] = address(cd[((32 * (2 * idx) + 1) + arg5 + 36)])
                    mem[mem[64] + 132] = 10^18 * _299 / stor9 * _307 / _303
                    _337 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_337 + 32] = 0xb5fd0fad00000000000000000000000000000000000000000000000000000000 or mem[_337 + 36 len 28]
                    mem[_327 + 164] = 0x6e2246a700000000000000000000000000000000000000000000000000000000
                    mem[_327 + 168] = address(_323)
                    mem[_327 + 200] = 10^18 * _299 / stor9 * _307 / _303
                    mem[_327 + 232] = 96
                    _343 = mem[_337]
                    mem[_327 + 264] = mem[_337]
                    s = 0
                    while s < _343:
                        mem[s + _327 + 296] = mem[s + _337 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_343) > _343:
                        mem[_343 + _327 + 296] = 0
                    require ext_code.size(liquidityPoolAddress)
                    call liquidityPoolAddress.borrow(address rg1, uint256 rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args address(_323), 10^18 * _299 / stor9 * _307 / _303, 96, mem[_327 + 264 len ceil32(_343) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}

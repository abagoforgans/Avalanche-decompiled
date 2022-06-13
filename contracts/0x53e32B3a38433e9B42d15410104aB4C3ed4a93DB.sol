contract main {




// =====================  Runtime code  =====================


#
#  - sub_937279a9(?)
#
address stor0;
address stor1;
address _previousOwner;
uint256 _lockTime;
mapping of uint8 stor4;
mapping of address stor5;
uint256 index;
address stor7;
address stor8;
address buyTokenAddress;
address targetTokenAddress;

function index() {
    return index
}

function targetToken() {
    return targetTokenAddress
}

function _previousOwner() {
    return _previousOwner
}

function _lockTime() {
    return _lockTime
}

function buyToken() {
    return buyTokenAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function sub_55d720fb(?) {
    require calldata.size - 4 >= 32
    return (arg1 == stor1)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == stor0)
}

function sub_24f91e1a(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor8 = arg1
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor7 = arg1
}

function setBuyToken(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    buyTokenAddress = arg1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor4[address(arg1)] = 0
}

function setTargetToken(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    targetTokenAddress = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor4[address(arg1)] = 1
    index++
    stor5[stor6] = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, '!Creater'
    stor0 = arg1
    stor4[address(arg1)] = 1
    index++
    stor5[stor6] = arg1
    emit OwnershipTransferred(arg1);
}

function sub_d4abcacb(?) {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, '!Creater'
    _previousOwner = stor0
    stor0 = arg1
    _lockTime = block.timestamp + arg2
    stor4[address(arg1)] = 1
    index++
    stor5[stor6] = stor0
}

function sub_45866989(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_52f1fa80(?) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_0398563d(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a84ec55f(?) {
    if block.timestamp <= _lockTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x44436f6e74726163742069732072656e746564206f757420666f7220333020646179,
                    mem[198 len 30]
    idx = 5
    while idx < index:
        mem[0] = stor5[idx]
        mem[32] = 4
        stor4[stor5[idx]] = 0
        idx = idx + 1
        continue 
    index = 5
}

function recycle() {
    if stor1 != msg.sender:
        revert with 0, '!Creater'
    if block.timestamp <= _lockTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x44436f6e74726163742069732072656e746564206f757420666f7220333020646179,
                    mem[198 len 30]
    idx = 5
    while idx < index:
        mem[0] = stor5[idx]
        mem[32] = 4
        stor4[stor5[idx]] = 0
        idx = idx + 1
        continue 
    index = 5
    stor0 = _previousOwner
}

function sub_b84c9e4d(?) payable {
    require calldata.size - 4 >= 160
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    if arg5:
        call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0, arg4 << 128, this.address, 128, 0, mem[260]
    else:
        call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0, 0, this.address, 128, 0, mem[260]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call address(call.func_hash) >> 96.0xa9059cbb with:
         gas gas_remaining - 5000 wei
        args Mask(256, -96, cd[20]) << 96, uint128(cd[40]) >> 128
    if not ext_call.success:
        revert with (Mask(24, 112, msg.sender) >> 112)
    if not Mask(256, -248, cd[72]):
        call address(cd[20]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining - 5000 wei
            args Mask(256, -128, cd[56]) << 128, 0, this.address, 128, mem[256]
    else:
        if uint8(cd[72]) >> 248 == 1:
            call address(cd[20]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining - 5000 wei
                args 0, Mask(256, -128, cd[56]) << 128, this.address, 128, mem[256]
        else:
            call address(cd[20]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining - 5000 wei
                args 0, Mask(32, -96, cd[20]) << 96, Mask(256, -128, cd[40]) << 128, this.address, 128, mem[256]
    if not ext_call.success:
        revert with (Mask(24, 112, msg.sender) >> 112)
}

function sub_9c232396(?) {
    require calldata.size - 4 >= 160
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg4:
        mem[388 len 0] = None
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=2, data=mem[388 len 64]), stor0, block.timestamp + 120
    else:
        if stor8 != arg1:
            mem[420 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, arg3, Array(len=3, data=mem[420 len 96]), stor0, block.timestamp + 120
        else:
            mem[388 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, arg3, Array(len=2, data=mem[388 len 64]), stor0, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor7)
    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _23 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _26 = mem[_23 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_23 + 192])] = mem[_23 + 224 len floor32(mem[_23 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _26) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _26) + ceil32(return_data.size) + 224
       len 32
}

function sub_791664d2(?) payable {
    require calldata.size - 4 >= 192
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    if arg6:
        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0, arg5 << 128, this.address, 128, 0, mem[260]
    else:
        call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0, 0, this.address, 128, 0, mem[260]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    if 0 < arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Yyou are attacked or buy a token with taxFe'
}

function sub_ff70406d(?) {
    require calldata.size - 4 >= 192
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg5:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if not arg4:
        mem[388 len 0] = None
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=2, data=mem[388 len 64]), stor0, block.timestamp + 120
    else:
        if stor8 != arg1:
            mem[420 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, arg3, Array(len=3, data=mem[420 len 96]), stor0, block.timestamp + 120
        else:
            mem[388 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, arg3, Array(len=2, data=mem[388 len 64]), stor0, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1880e0ff(?) {
    require calldata.size - 4 >= 192
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg6:
        mem[160] = arg2
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = arg4
        mem[292] = arg5
        mem[324] = block.timestamp + 120
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    else:
        if stor8 != arg1:
            mem[192] = arg2
            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = arg4
            mem[324] = arg5
            mem[356] = block.timestamp + 120
            mem[292] = 160
            mem[388] = 3
            mem[420 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=3, data=mem[420 len 96]), address(arg5), block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        else:
            mem[160] = arg2
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = arg4
            mem[292] = arg5
            mem[324] = block.timestamp + 120
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function sub_47014c9d(?) {
    require calldata.size - 4 >= 96
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg3:
        mem[160] = targetTokenAddress
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = arg2
        mem[292] = stor0
        mem[324] = block.timestamp + 120
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=2, data=mem[388 len 64]), stor0, block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    else:
        if stor8 != buyTokenAddress:
            mem[192] = targetTokenAddress
            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[228] = arg1
            mem[260] = arg2
            mem[324] = stor0
            mem[356] = block.timestamp + 120
            mem[292] = 160
            mem[388] = 3
            mem[420 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=3, data=mem[420 len 96]), stor0, block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
        else:
            mem[160] = targetTokenAddress
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg1
            mem[228] = arg2
            mem[292] = stor0
            mem[324] = block.timestamp + 120
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=2, data=mem[388 len 64]), stor0, block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
}

function sub_d760843c(?) {
    require calldata.size - 4 >= 192
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg6:
        mem[160] = arg2
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = arg4
        mem[292] = arg5
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388] = arg1
        mem[420] = arg2
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=address(arg1), arg2), address(arg5), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    else:
        if stor8 != arg1:
            mem[192] = arg2
            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = arg4
            mem[324] = arg5
            mem[356] = block.timestamp
            mem[292] = 160
            mem[388] = 3
            mem[420] = stor8
            mem[452 len 64] = address(arg1), arg2
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=3, data=stor8, address(arg1), arg2), address(arg5), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        else:
            mem[160] = arg2
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = arg4
            mem[292] = arg5
            mem[324] = block.timestamp
            mem[260] = 160
            mem[356] = 2
            mem[388] = arg1
            mem[420] = arg2
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=2, data=address(arg1), arg2), address(arg5), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function sub_4eaa19bb(?) {
    require calldata.size - 4 >= 96
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(buyTokenAddress)
    call buyTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        mem[160] = targetTokenAddress
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = arg2
        mem[292] = stor0
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388] = buyTokenAddress
        mem[420] = targetTokenAddress
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=2, data=buyTokenAddress, targetTokenAddress), stor0, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    else:
        if stor8 != buyTokenAddress:
            mem[192] = targetTokenAddress
            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[228] = arg1
            mem[260] = arg2
            mem[324] = stor0
            mem[356] = block.timestamp
            mem[292] = 160
            mem[388] = 3
            mem[420] = stor8
            mem[452 len 64] = buyTokenAddress, targetTokenAddress
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=3, data=stor8, buyTokenAddress, targetTokenAddress), stor0, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
        else:
            mem[160] = targetTokenAddress
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg1
            mem[228] = arg2
            mem[292] = stor0
            mem[324] = block.timestamp
            mem[260] = 160
            mem[356] = 2
            mem[388] = buyTokenAddress
            mem[420] = targetTokenAddress
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=2, data=buyTokenAddress, targetTokenAddress), stor0, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
}

function sub_2fd1d9a4(?) {
    require calldata.size - 4 >= 160
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 4
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require 0 < ('cd', 68).length
    require 0 < ('cd', 36).length
    mem[132] = this.address
    mem[164] = address(('cd', 36)[0])
    mem[196] = cd[4]
    mem[96] = 100
    mem[64] = 228
    mem[132 len 28] = address(this.address) << 64
    mem[128 len 4] = unknown_0x23b872dd(?????)
    mem[228 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(('cd', 36)[0]), Mask(224, 32, cd[4]) >> 32
    mem[352 len 4] = uint32(cd[4])
    call address(('cd', 68)[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, cd[4]) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(cd[4]),
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), address(this.address) << 64:
            revert with 0, 
                        32,
                        36,
                        0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(cd[4]),
                        mem[356 len 4]
        require 0 < ('cd', 68).length
        mem[232] = this.address
        require ext_code.size(address(('cd', 68)[0]))
        staticcall address(('cd', 68)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[228] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < ('cd', 36).length
            require idx < ('cd', 100).length
            require idx < ('cd', 132).length
            require idx + 1 < ('cd', 36).length
            if 1 == uint8(cd[((32 * idx) + cd[100] + 36)]):
                _251 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_251 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_251 + 36] = 0
                mem[_251 + 68] = cd[((32 * idx) + cd[132] + 36)]
                mem[_251 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[_251 + 132] = 128
                mem[_251 + 164] = mem[_251]
                s = 0
                while s < mem[_251]:
                    mem[s + _251 + 196] = mem[s + _251 + 32]
                    s = s + 32
                    continue 
                if not mem[_251] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[_251] + _251 + -mem[64] + 192]
                else:
                    mem[floor32(mem[_251]) + _251 + 196] = mem[floor32(mem[_251]) + _251 + -(mem[_251] % 32) + 228 len mem[_251] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(mem[_251]) + _251 + -mem[64] + 224]
            else:
                _253 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_253 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_253 + 36] = cd[((32 * idx) + cd[132] + 36)]
                mem[_253 + 68] = 0
                mem[_253 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[_253 + 132] = 128
                mem[_253 + 164] = mem[_253]
                s = 0
                while s < mem[_253]:
                    mem[s + _253 + 196] = mem[s + _253 + 32]
                    s = s + 32
                    continue 
                if not mem[_253] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[_253] + _253 + -mem[64] + 192]
                else:
                    mem[floor32(mem[_253]) + _253 + 196] = mem[floor32(mem[_253]) + _253 + -(mem[_253] % 32) + 228 len mem[_253] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(mem[_253]) + _253 + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[64] = ceil32(return_data.size) + 229
        mem[228] = return_data.size
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 333 len 28]
        if not return_data.size:
            require 0 < ('cd', 68).length
            mem[ceil32(return_data.size) + 233] = this.address
            require ext_code.size(address(('cd', 68)[0]))
            staticcall address(('cd', 68)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 229] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < ('cd', 36).length
                require idx < ('cd', 100).length
                require idx < ('cd', 132).length
                require idx + 1 < ('cd', 36).length
                if 1 == uint8(cd[((32 * idx) + cd[100] + 36)]):
                    _255 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_255 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_255 + 36] = 0
                    mem[_255 + 68] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_255 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_255 + 132] = 128
                    mem[_255 + 164] = mem[_255]
                    s = 0
                    while s < mem[_255]:
                        mem[s + _255 + 196] = mem[s + _255 + 32]
                        s = s + 32
                        continue 
                    if not mem[_255] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_255] + _255 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_255]) + _255 + 196] = mem[floor32(mem[_255]) + _255 + -(mem[_255] % 32) + 228 len mem[_255] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_255]) + _255 + -mem[64] + 224]
                else:
                    _257 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_257 + 36] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_257 + 68] = 0
                    mem[_257 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_257 + 132] = 128
                    mem[_257 + 164] = mem[_257]
                    s = 0
                    while s < mem[_257]:
                        mem[s + _257 + 196] = mem[s + _257 + 32]
                        s = s + 32
                        continue 
                    if not mem[_257] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_257] + _257 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_257]) + _257 + 196] = mem[floor32(mem[_257]) + _257 + -(mem[_257] % 32) + 228 len mem[_257] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_257]) + _257 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            36,
                            0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
            require 0 < ('cd', 68).length
            mem[ceil32(return_data.size) + 233] = this.address
            require ext_code.size(address(('cd', 68)[0]))
            staticcall address(('cd', 68)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 229] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < ('cd', 36).length
                require idx < ('cd', 100).length
                require idx < ('cd', 132).length
                require idx + 1 < ('cd', 36).length
                if 1 == uint8(cd[((32 * idx) + cd[100] + 36)]):
                    _259 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_259 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_259 + 36] = 0
                    mem[_259 + 68] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_259 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_259 + 132] = 128
                    mem[_259 + 164] = mem[_259]
                    s = 0
                    while s < mem[_259]:
                        mem[s + _259 + 196] = mem[s + _259 + 32]
                        s = s + 32
                        continue 
                    if not mem[_259] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_259] + _259 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_259]) + _259 + 196] = mem[floor32(mem[_259]) + _259 + -(mem[_259] % 32) + 228 len mem[_259] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_259]) + _259 + -mem[64] + 224]
                else:
                    _261 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_261 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_261 + 36] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_261 + 68] = 0
                    mem[_261 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_261 + 132] = 128
                    mem[_261 + 164] = mem[_261]
                    s = 0
                    while s < mem[_261]:
                        mem[s + _261 + 196] = mem[s + _261 + 32]
                        s = s + 32
                        continue 
                    if not mem[_261] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_261] + _261 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_261]) + _261 + 196] = mem[floor32(mem[_261]) + _261 + -(mem[_261] % 32) + 228 len mem[_261] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_261]) + _261 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    require 0 < ('cd', 68).length
    require ext_code.size(address(('cd', 68)[0]))
    staticcall address(('cd', 68)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Smaller output,Arbitrage failed!'
}



}

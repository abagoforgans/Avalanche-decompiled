contract main {




// =====================  Runtime code  =====================


#
#  - sub_07565598(?)
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

function sub_c317589f(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor7)
    call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, arg2, arg3, 160, this.address, block.timestamp + 120, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2b944f1d(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor7)
    call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, arg2, arg3, 160, address(arg4), block.timestamp + 120, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_23af9e7c(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(cd[36]), cd[68], 160, this.address, block.timestamp + 120, ('cd', 4).length, call.data[cd[4] + 36 len floor32(('cd', 4).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9ad0ac69(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(cd[36]), cd[68], 160, address(cd[100]), block.timestamp + 120, ('cd', 4).length, call.data[cd[4] + 36 len floor32(('cd', 4).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ab39c0e0(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(cd[68]), cd[100], 160, this.address, block.timestamp + 120, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
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

function sub_0c6bddf9(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], cd[36], 160, this.address, block.timestamp + 120, ('cd', 4).length, call.data[cd[4] + 36 len floor32(('cd', 4).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_14a3c863(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], cd[36], 160, address(cd[68]), block.timestamp + 120, ('cd', 4).length, call.data[cd[4] + 36 len floor32(('cd', 4).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dd193ad9(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], cd[68], 160, this.address, block.timestamp + 120, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
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

function sub_2a10d84a(?) {
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
    require ext_code.size(address(('cd', 68)[0]))
    staticcall address(('cd', 68)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 68).length
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
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < ('cd', 36).length
            require idx < ('cd', 100).length
            require idx < ('cd', 132).length
            require idx + 1 < ('cd', 36).length
            if 1 == uint8(cd[((32 * idx) + cd[100] + 36)]):
                _223 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_223 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_223 + 36] = 0
                mem[_223 + 68] = cd[((32 * idx) + cd[132] + 36)]
                mem[_223 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[_223 + 132] = 128
                mem[_223 + 164] = mem[_223]
                s = 0
                while s < mem[_223]:
                    mem[s + _223 + 196] = mem[s + _223 + 32]
                    s = s + 32
                    continue 
                if not mem[_223] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, cd[((32 * idx) + cd[132] + 36)], address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_223 + 164 len mem[_223] + 32]
                else:
                    mem[floor32(mem[_223]) + _223 + 196] = mem[floor32(mem[_223]) + _223 + -(mem[_223] % 32) + 228 len mem[_223] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, cd[((32 * idx) + cd[132] + 36)], address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_223], mem[_223 + 196 len floor32(mem[_223]) + 32]
            else:
                _225 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_225 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_225 + 36] = cd[((32 * idx) + cd[132] + 36)]
                mem[_225 + 68] = 0
                mem[_225 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[_225 + 132] = 128
                mem[_225 + 164] = mem[_225]
                s = 0
                while s < mem[_225]:
                    mem[s + _225 + 196] = mem[s + _225 + 32]
                    s = s + 32
                    continue 
                if not mem[_225] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[132] + 36)], 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_225 + 164 len mem[_225] + 32]
                else:
                    mem[floor32(mem[_225]) + _225 + 196] = mem[floor32(mem[_225]) + _225 + -(mem[_225] % 32) + 228 len mem[_225] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[132] + 36)], 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_225], mem[_225 + 196 len floor32(mem[_225]) + 32]
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
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < ('cd', 36).length
                require idx < ('cd', 100).length
                require idx < ('cd', 132).length
                require idx + 1 < ('cd', 36).length
                if 1 == uint8(cd[((32 * idx) + cd[100] + 36)]):
                    _227 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_227 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_227 + 36] = 0
                    mem[_227 + 68] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_227 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_227 + 132] = 128
                    mem[_227 + 164] = mem[_227]
                    s = 0
                    while s < mem[_227]:
                        mem[s + _227 + 196] = mem[s + _227 + 32]
                        s = s + 32
                        continue 
                    if not mem[_227] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_227] + _227 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_227]) + _227 + 196] = mem[floor32(mem[_227]) + _227 + -(mem[_227] % 32) + 228 len mem[_227] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_227]) + _227 + -mem[64] + 224]
                else:
                    _229 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_229 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_229 + 36] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_229 + 68] = 0
                    mem[_229 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_229 + 132] = 128
                    mem[_229 + 164] = mem[_229]
                    s = 0
                    while s < mem[_229]:
                        mem[s + _229 + 196] = mem[s + _229 + 32]
                        s = s + 32
                        continue 
                    if not mem[_229] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_229] + _229 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_229]) + _229 + 196] = mem[floor32(mem[_229]) + _229 + -(mem[_229] % 32) + 228 len mem[_229] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_229]) + _229 + -mem[64] + 224]
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
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < ('cd', 36).length
                require idx < ('cd', 100).length
                require idx < ('cd', 132).length
                require idx + 1 < ('cd', 36).length
                if 1 == uint8(cd[((32 * idx) + cd[100] + 36)]):
                    _231 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_231 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_231 + 36] = 0
                    mem[_231 + 68] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_231 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_231 + 132] = 128
                    mem[_231 + 164] = mem[_231]
                    s = 0
                    while s < mem[_231]:
                        mem[s + _231 + 196] = mem[s + _231 + 32]
                        s = s + 32
                        continue 
                    if not mem[_231] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, cd[((32 * idx) + cd[132] + 36)], address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_231 + 164 len mem[_231] + 32]
                    else:
                        mem[floor32(mem[_231]) + _231 + 196] = mem[floor32(mem[_231]) + _231 + -(mem[_231] % 32) + 228 len mem[_231] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, cd[((32 * idx) + cd[132] + 36)], address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_231], mem[_231 + 196 len floor32(mem[_231]) + 32]
                else:
                    _233 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_233 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_233 + 36] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_233 + 68] = 0
                    mem[_233 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_233 + 132] = 128
                    mem[_233 + 164] = mem[_233]
                    s = 0
                    while s < mem[_233]:
                        mem[s + _233 + 196] = mem[s + _233 + 32]
                        s = s + 32
                        continue 
                    if not mem[_233] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_233] + _233 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_233]) + _233 + 196] = mem[floor32(mem[_233]) + _233 + -(mem[_233] % 32) + 228 len mem[_233] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_233]) + _233 + -mem[64] + 224]
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

function sub_c9146364(?) {
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
    require ext_code.size(address(('cd', 68)[0]))
    staticcall address(('cd', 68)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 68).length
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
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < ('cd', 36).length
            require idx < ('cd', 100).length
            require idx < ('cd', 132).length
            require idx + 1 < ('cd', 36).length
            if 1 == uint8(cd[((32 * idx) + cd[100] + 36)]):
                _223 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_223 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_223 + 36] = 0
                mem[_223 + 68] = cd[((32 * idx) + cd[132] + 36)]
                mem[_223 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[_223 + 132] = 128
                mem[_223 + 164] = mem[_223]
                s = 0
                while s < mem[_223]:
                    mem[s + _223 + 196] = mem[s + _223 + 32]
                    s = s + 32
                    continue 
                if not mem[_223] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, cd[((32 * idx) + cd[132] + 36)], address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_223 + 164 len mem[_223] + 32]
                else:
                    mem[floor32(mem[_223]) + _223 + 196] = mem[floor32(mem[_223]) + _223 + -(mem[_223] % 32) + 228 len mem[_223] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, cd[((32 * idx) + cd[132] + 36)], address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_223], mem[_223 + 196 len floor32(mem[_223]) + 32]
            else:
                _225 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_225 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_225 + 36] = cd[((32 * idx) + cd[132] + 36)]
                mem[_225 + 68] = 0
                mem[_225 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[_225 + 132] = 128
                mem[_225 + 164] = mem[_225]
                s = 0
                while s < mem[_225]:
                    mem[s + _225 + 196] = mem[s + _225 + 32]
                    s = s + 32
                    continue 
                if not mem[_225] % 32:
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[132] + 36)], 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_225 + 164 len mem[_225] + 32]
                else:
                    mem[floor32(mem[_225]) + _225 + 196] = mem[floor32(mem[_225]) + _225 + -(mem[_225] % 32) + 228 len mem[_225] % 32]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[132] + 36)], 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_225], mem[_225 + 196 len floor32(mem[_225]) + 32]
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
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < ('cd', 36).length
                require idx < ('cd', 100).length
                require idx < ('cd', 132).length
                require idx + 1 < ('cd', 36).length
                if 1 == uint8(cd[((32 * idx) + cd[100] + 36)]):
                    _227 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_227 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_227 + 36] = 0
                    mem[_227 + 68] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_227 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_227 + 132] = 128
                    mem[_227 + 164] = mem[_227]
                    s = 0
                    while s < mem[_227]:
                        mem[s + _227 + 196] = mem[s + _227 + 32]
                        s = s + 32
                        continue 
                    if not mem[_227] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_227] + _227 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_227]) + _227 + 196] = mem[floor32(mem[_227]) + _227 + -(mem[_227] % 32) + 228 len mem[_227] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_227]) + _227 + -mem[64] + 224]
                else:
                    _229 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_229 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_229 + 36] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_229 + 68] = 0
                    mem[_229 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_229 + 132] = 128
                    mem[_229 + 164] = mem[_229]
                    s = 0
                    while s < mem[_229]:
                        mem[s + _229 + 196] = mem[s + _229 + 32]
                        s = s + 32
                        continue 
                    if not mem[_229] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_229] + _229 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_229]) + _229 + 196] = mem[floor32(mem[_229]) + _229 + -(mem[_229] % 32) + 228 len mem[_229] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_229]) + _229 + -mem[64] + 224]
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
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < ('cd', 36).length
                require idx < ('cd', 100).length
                require idx < ('cd', 132).length
                require idx + 1 < ('cd', 36).length
                if 1 == uint8(cd[((32 * idx) + cd[100] + 36)]):
                    _231 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_231 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_231 + 36] = 0
                    mem[_231 + 68] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_231 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_231 + 132] = 128
                    mem[_231 + 164] = mem[_231]
                    s = 0
                    while s < mem[_231]:
                        mem[s + _231 + 196] = mem[s + _231 + 32]
                        s = s + 32
                        continue 
                    if not mem[_231] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, cd[((32 * idx) + cd[132] + 36)], address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_231 + 164 len mem[_231] + 32]
                    else:
                        mem[floor32(mem[_231]) + _231 + 196] = mem[floor32(mem[_231]) + _231 + -(mem[_231] % 32) + 228 len mem[_231] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, cd[((32 * idx) + cd[132] + 36)], address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_231], mem[_231 + 196 len floor32(mem[_231]) + 32]
                else:
                    _233 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_233 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_233 + 36] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_233 + 68] = 0
                    mem[_233 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_233 + 132] = 128
                    mem[_233 + 164] = mem[_233]
                    s = 0
                    while s < mem[_233]:
                        mem[s + _233 + 196] = mem[s + _233 + 32]
                        s = s + 32
                        continue 
                    if not mem[_233] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_233] + _233 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_233]) + _233 + 196] = mem[floor32(mem[_233]) + _233 + -(mem[_233] % 32) + 228 len mem[_233] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_233]) + _233 + -mem[64] + 224]
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

function sub_937279a9(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 4
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require 0 < ('cd', 68).length
    require ext_code.size(address(('cd', 68)[0]))
    staticcall address(('cd', 68)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 68).length
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
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < ('cd', 68).length
            require idx + 1 < ('cd', 68).length
            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                revert with 0, 32, 35, 0x54556e69737761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                if not address(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 0, 'UniswapLibrary: ZERO_ADDRESS'
                require idx < ('cd', 36).length
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                    if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    if Mask(144, 112, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe556e69737761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 997 * Mask(144, 112, ext_call.return_data[0]) / 997 != Mask(144, 112, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                            if idx >= ('cd', 68).length - 2:
                                _3019 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3019 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3019 + 36] = 0
                                mem[_3019 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3019 + 100] = this.address
                                mem[_3019 + 132] = 128
                                mem[_3019 + 164] = mem[_3019]
                                s = 0
                                while s < mem[_3019]:
                                    mem[s + _3019 + 196] = mem[s + _3019 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3019] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3019 + 164 len mem[_3019] + 32]
                                else:
                                    mem[floor32(mem[_3019]) + _3019 + 196] = mem[floor32(mem[_3019]) + _3019 + -(mem[_3019] % 32) + 228 len mem[_3019] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3019], mem[_3019 + 196 len floor32(mem[_3019]) + 32]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3083 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3083 + 36] = 0
                                mem[_3083 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3083 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3083 + 132] = 128
                                mem[_3083 + 164] = mem[_3083]
                                s = 0
                                while s < mem[_3083]:
                                    mem[s + _3083 + 196] = mem[s + _3083 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3083] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3083 + 164 len mem[_3083] + 32]
                                else:
                                    mem[floor32(mem[_3083]) + _3083 + 196] = mem[floor32(mem[_3083]) + _3083 + -(mem[_3083] % 32) + 228 len mem[_3083] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3083], mem[_3083 + 196 len floor32(mem[_3083]) + 32]
                        else:
                            if idx >= ('cd', 68).length - 2:
                                _3021 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3021 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3021 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3021 + 68] = 0
                                mem[_3021 + 100] = this.address
                                mem[_3021 + 132] = 128
                                mem[_3021 + 164] = mem[_3021]
                                s = 0
                                while s < mem[_3021]:
                                    mem[s + _3021 + 196] = mem[s + _3021 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3021] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3021 + 164 len mem[_3021] + 32]
                                else:
                                    mem[floor32(mem[_3021]) + _3021 + 196] = mem[floor32(mem[_3021]) + _3021 + -(mem[_3021] % 32) + 228 len mem[_3021] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3021], mem[_3021 + 196 len floor32(mem[_3021]) + 32]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3085 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3085 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3085 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3085 + 68] = 0
                                mem[_3085 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3085 + 132] = 128
                                mem[_3085 + 164] = mem[_3085]
                                s = 0
                                while s < mem[_3085]:
                                    mem[s + _3085 + 196] = mem[s + _3085 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3085] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3085] + _3085 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3085]) + _3085 + 196] = mem[floor32(mem[_3085]) + _3085 + -(mem[_3085] % 32) + 228 len mem[_3085] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3085]) + _3085 + -mem[64] + 224]
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 997 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                            if idx >= ('cd', 68).length - 2:
                                _3157 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3157 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3157 + 36] = 0
                                mem[_3157 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3157 + 100] = this.address
                                mem[_3157 + 132] = 128
                                mem[_3157 + 164] = mem[_3157]
                                s = 0
                                while s < mem[_3157]:
                                    mem[s + _3157 + 196] = mem[s + _3157 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3157] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3157 + 164 len mem[_3157] + 32]
                                else:
                                    mem[floor32(mem[_3157]) + _3157 + 196] = mem[floor32(mem[_3157]) + _3157 + -(mem[_3157] % 32) + 228 len mem[_3157] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3157], mem[_3157 + 196 len floor32(mem[_3157]) + 32]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3273 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3273 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3273 + 36] = 0
                                mem[_3273 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3273 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3273 + 132] = 128
                                mem[_3273 + 164] = mem[_3273]
                                s = 0
                                while s < mem[_3273]:
                                    mem[s + _3273 + 196] = mem[s + _3273 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3273] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3273] + _3273 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3273]) + _3273 + 196] = mem[floor32(mem[_3273]) + _3273 + -(mem[_3273] % 32) + 228 len mem[_3273] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3273]) + _3273 + -mem[64] + 224]
                        else:
                            if idx >= ('cd', 68).length - 2:
                                _3159 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3159 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3159 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3159 + 68] = 0
                                mem[_3159 + 100] = this.address
                                mem[_3159 + 132] = 128
                                mem[_3159 + 164] = mem[_3159]
                                s = 0
                                while s < mem[_3159]:
                                    mem[s + _3159 + 196] = mem[s + _3159 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3159] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3159] + _3159 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3159]) + _3159 + 196] = mem[floor32(mem[_3159]) + _3159 + -(mem[_3159] % 32) + 228 len mem[_3159] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3159]) + _3159 + -mem[64] + 224]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3275 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3275 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3275 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3275 + 68] = 0
                                mem[_3275 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3275 + 132] = 128
                                mem[_3275 + 164] = mem[_3275]
                                s = 0
                                while s < mem[_3275]:
                                    mem[s + _3275 + 196] = mem[s + _3275 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3275] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3275 + 164 len mem[_3275] + 32]
                                else:
                                    mem[floor32(mem[_3275]) + _3275 + 196] = mem[floor32(mem[_3275]) + _3275 + -(mem[_3275] % 32) + 228 len mem[_3275] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3275], mem[_3275 + 196 len floor32(mem[_3275]) + 32]
                else:
                    if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe556e69737761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) / 997 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                            if idx >= ('cd', 68).length - 2:
                                _3023 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3023 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3023 + 36] = 0
                                mem[_3023 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3023 + 100] = this.address
                                mem[_3023 + 132] = 128
                                mem[_3023 + 164] = mem[_3023]
                                s = 0
                                while s < mem[_3023]:
                                    mem[s + _3023 + 196] = mem[s + _3023 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3023] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3023 + 164 len mem[_3023] + 32]
                                else:
                                    mem[floor32(mem[_3023]) + _3023 + 196] = mem[floor32(mem[_3023]) + _3023 + -(mem[_3023] % 32) + 228 len mem[_3023] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3023], mem[_3023 + 196 len floor32(mem[_3023]) + 32]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3087 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3087 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3087 + 36] = 0
                                mem[_3087 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3087 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3087 + 132] = 128
                                mem[_3087 + 164] = mem[_3087]
                                s = 0
                                while s < mem[_3087]:
                                    mem[s + _3087 + 196] = mem[s + _3087 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3087] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3087 + 164 len mem[_3087] + 32]
                                else:
                                    mem[floor32(mem[_3087]) + _3087 + 196] = mem[floor32(mem[_3087]) + _3087 + -(mem[_3087] % 32) + 228 len mem[_3087] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3087], mem[_3087 + 196 len floor32(mem[_3087]) + 32]
                        else:
                            if idx >= ('cd', 68).length - 2:
                                _3025 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3025 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3025 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3025 + 68] = 0
                                mem[_3025 + 100] = this.address
                                mem[_3025 + 132] = 128
                                mem[_3025 + 164] = mem[_3025]
                                s = 0
                                while s < mem[_3025]:
                                    mem[s + _3025 + 196] = mem[s + _3025 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3025] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3025] + _3025 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3025]) + _3025 + 196] = mem[floor32(mem[_3025]) + _3025 + -(mem[_3025] % 32) + 228 len mem[_3025] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3025]) + _3025 + -mem[64] + 224]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3089 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3089 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3089 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3089 + 68] = 0
                                mem[_3089 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3089 + 132] = 128
                                mem[_3089 + 164] = mem[_3089]
                                s = 0
                                while s < mem[_3089]:
                                    mem[s + _3089 + 196] = mem[s + _3089 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3089] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3089] + _3089 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3089]) + _3089 + 196] = mem[floor32(mem[_3089]) + _3089 + -(mem[_3089] % 32) + 228 len mem[_3089] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3089]) + _3089 + -mem[64] + 224]
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                            if idx >= ('cd', 68).length - 2:
                                _3163 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3163 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3163 + 36] = 0
                                mem[_3163 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3163 + 100] = this.address
                                mem[_3163 + 132] = 128
                                mem[_3163 + 164] = mem[_3163]
                                s = 0
                                while s < mem[_3163]:
                                    mem[s + _3163 + 196] = mem[s + _3163 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3163] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3163 + 164 len mem[_3163] + 32]
                                else:
                                    mem[floor32(mem[_3163]) + _3163 + 196] = mem[floor32(mem[_3163]) + _3163 + -(mem[_3163] % 32) + 228 len mem[_3163] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3163], mem[_3163 + 196 len floor32(mem[_3163]) + 32]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3283 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3283 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3283 + 36] = 0
                                mem[_3283 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3283 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3283 + 132] = 128
                                mem[_3283 + 164] = mem[_3283]
                                s = 0
                                while s < mem[_3283]:
                                    mem[s + _3283 + 196] = mem[s + _3283 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3283] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3283 + 164 len mem[_3283] + 32]
                                else:
                                    mem[floor32(mem[_3283]) + _3283 + 196] = mem[floor32(mem[_3283]) + _3283 + -(mem[_3283] % 32) + 228 len mem[_3283] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3283], mem[_3283 + 196 len floor32(mem[_3283]) + 32]
                        else:
                            if idx >= ('cd', 68).length - 2:
                                _3165 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3165 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3165 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3165 + 68] = 0
                                mem[_3165 + 100] = this.address
                                mem[_3165 + 132] = 128
                                mem[_3165 + 164] = mem[_3165]
                                s = 0
                                while s < mem[_3165]:
                                    mem[s + _3165 + 196] = mem[s + _3165 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3165] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3165] + _3165 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3165]) + _3165 + 196] = mem[floor32(mem[_3165]) + _3165 + -(mem[_3165] % 32) + 228 len mem[_3165] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3165]) + _3165 + -mem[64] + 224]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3285 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3285 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3285 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3285 + 68] = 0
                                mem[_3285 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3285 + 132] = 128
                                mem[_3285 + 164] = mem[_3285]
                                s = 0
                                while s < mem[_3285]:
                                    mem[s + _3285 + 196] = mem[s + _3285 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3285] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3285 + 164 len mem[_3285] + 32]
                                else:
                                    mem[floor32(mem[_3285]) + _3285 + 196] = mem[floor32(mem[_3285]) + _3285 + -(mem[_3285] % 32) + 228 len mem[_3285] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3285], mem[_3285 + 196 len floor32(mem[_3285]) + 32]
            else:
                if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    revert with 0, 'UniswapLibrary: ZERO_ADDRESS'
                require idx < ('cd', 36).length
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[((32 * idx + 1) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                    if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    if Mask(144, 112, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe556e69737761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 997 * Mask(144, 112, ext_call.return_data[0]) / 997 != Mask(144, 112, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            if idx >= ('cd', 68).length - 2:
                                _3027 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3027 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3027 + 36] = 0
                                mem[_3027 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3027 + 100] = this.address
                                mem[_3027 + 132] = 128
                                mem[_3027 + 164] = mem[_3027]
                                s = 0
                                while s < mem[_3027]:
                                    mem[s + _3027 + 196] = mem[s + _3027 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3027] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3027] + _3027 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3027]) + _3027 + 196] = mem[floor32(mem[_3027]) + _3027 + -(mem[_3027] % 32) + 228 len mem[_3027] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3027]) + _3027 + -mem[64] + 224]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3091 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3091 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3091 + 36] = 0
                                mem[_3091 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3091 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3091 + 132] = 128
                                mem[_3091 + 164] = mem[_3091]
                                s = 0
                                while s < mem[_3091]:
                                    mem[s + _3091 + 196] = mem[s + _3091 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3091] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3091 + 164 len mem[_3091] + 32]
                                else:
                                    mem[floor32(mem[_3091]) + _3091 + 196] = mem[floor32(mem[_3091]) + _3091 + -(mem[_3091] % 32) + 228 len mem[_3091] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3091], mem[_3091 + 196 len floor32(mem[_3091]) + 32]
                        else:
                            if idx >= ('cd', 68).length - 2:
                                _3029 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3029 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3029 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3029 + 68] = 0
                                mem[_3029 + 100] = this.address
                                mem[_3029 + 132] = 128
                                mem[_3029 + 164] = mem[_3029]
                                s = 0
                                while s < mem[_3029]:
                                    mem[s + _3029 + 196] = mem[s + _3029 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3029] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3029] + _3029 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3029]) + _3029 + 196] = mem[floor32(mem[_3029]) + _3029 + -(mem[_3029] % 32) + 228 len mem[_3029] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3029]) + _3029 + -mem[64] + 224]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3093 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3093 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3093 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3093 + 68] = 0
                                mem[_3093 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3093 + 132] = 128
                                mem[_3093 + 164] = mem[_3093]
                                s = 0
                                while s < mem[_3093]:
                                    mem[s + _3093 + 196] = mem[s + _3093 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3093] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3093 + 164 len mem[_3093] + 32]
                                else:
                                    mem[floor32(mem[_3093]) + _3093 + 196] = mem[floor32(mem[_3093]) + _3093 + -(mem[_3093] % 32) + 228 len mem[_3093] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3093], mem[_3093 + 196 len floor32(mem[_3093]) + 32]
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 997 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            if idx >= ('cd', 68).length - 2:
                                _3169 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3169 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3169 + 36] = 0
                                mem[_3169 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3169 + 100] = this.address
                                mem[_3169 + 132] = 128
                                mem[_3169 + 164] = mem[_3169]
                                s = 0
                                while s < mem[_3169]:
                                    mem[s + _3169 + 196] = mem[s + _3169 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3169] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3169] + _3169 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3169]) + _3169 + 196] = mem[floor32(mem[_3169]) + _3169 + -(mem[_3169] % 32) + 228 len mem[_3169] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3169]) + _3169 + -mem[64] + 224]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3293 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3293 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3293 + 36] = 0
                                mem[_3293 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3293 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3293 + 132] = 128
                                mem[_3293 + 164] = mem[_3293]
                                s = 0
                                while s < mem[_3293]:
                                    mem[s + _3293 + 196] = mem[s + _3293 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3293] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3293] + _3293 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3293]) + _3293 + 196] = mem[floor32(mem[_3293]) + _3293 + -(mem[_3293] % 32) + 228 len mem[_3293] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3293]) + _3293 + -mem[64] + 224]
                        else:
                            if idx >= ('cd', 68).length - 2:
                                _3171 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3171 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3171 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3171 + 68] = 0
                                mem[_3171 + 100] = this.address
                                mem[_3171 + 132] = 128
                                mem[_3171 + 164] = mem[_3171]
                                s = 0
                                while s < mem[_3171]:
                                    mem[s + _3171 + 196] = mem[s + _3171 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3171] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3171] + _3171 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3171]) + _3171 + 196] = mem[floor32(mem[_3171]) + _3171 + -(mem[_3171] % 32) + 228 len mem[_3171] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3171]) + _3171 + -mem[64] + 224]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3295 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3295 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3295 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                mem[_3295 + 68] = 0
                                mem[_3295 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3295 + 132] = 128
                                mem[_3295 + 164] = mem[_3295]
                                s = 0
                                while s < mem[_3295]:
                                    mem[s + _3295 + 196] = mem[s + _3295 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3295] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3295 + 164 len mem[_3295] + 32]
                                else:
                                    mem[floor32(mem[_3295]) + _3295 + 196] = mem[floor32(mem[_3295]) + _3295 + -(mem[_3295] % 32) + 228 len mem[_3295] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3295], mem[_3295 + 196 len floor32(mem[_3295]) + 32]
                else:
                    if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe556e69737761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) / 997 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            if idx >= ('cd', 68).length - 2:
                                _3031 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3031 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3031 + 36] = 0
                                mem[_3031 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3031 + 100] = this.address
                                mem[_3031 + 132] = 128
                                mem[_3031 + 164] = mem[_3031]
                                s = 0
                                while s < mem[_3031]:
                                    mem[s + _3031 + 196] = mem[s + _3031 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3031] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3031] + _3031 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3031]) + _3031 + 196] = mem[floor32(mem[_3031]) + _3031 + -(mem[_3031] % 32) + 228 len mem[_3031] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3031]) + _3031 + -mem[64] + 224]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3095 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3095 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3095 + 36] = 0
                                mem[_3095 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3095 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3095 + 132] = 128
                                mem[_3095 + 164] = mem[_3095]
                                s = 0
                                while s < mem[_3095]:
                                    mem[s + _3095 + 196] = mem[s + _3095 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3095] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3095 + 164 len mem[_3095] + 32]
                                else:
                                    mem[floor32(mem[_3095]) + _3095 + 196] = mem[floor32(mem[_3095]) + _3095 + -(mem[_3095] % 32) + 228 len mem[_3095] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3095], mem[_3095 + 196 len floor32(mem[_3095]) + 32]
                        else:
                            if idx >= ('cd', 68).length - 2:
                                _3033 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3033 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3033 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3033 + 68] = 0
                                mem[_3033 + 100] = this.address
                                mem[_3033 + 132] = 128
                                mem[_3033 + 164] = mem[_3033]
                                s = 0
                                while s < mem[_3033]:
                                    mem[s + _3033 + 196] = mem[s + _3033 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3033] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3033] + _3033 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3033]) + _3033 + 196] = mem[floor32(mem[_3033]) + _3033 + -(mem[_3033] % 32) + 228 len mem[_3033] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3033]) + _3033 + -mem[64] + 224]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3097 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3097 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3097 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3097 + 68] = 0
                                mem[_3097 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3097 + 132] = 128
                                mem[_3097 + 164] = mem[_3097]
                                s = 0
                                while s < mem[_3097]:
                                    mem[s + _3097 + 196] = mem[s + _3097 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3097] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3097 + 164 len mem[_3097] + 32]
                                else:
                                    mem[floor32(mem[_3097]) + _3097 + 196] = mem[floor32(mem[_3097]) + _3097 + -(mem[_3097] % 32) + 228 len mem[_3097] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3097], mem[_3097 + 196 len floor32(mem[_3097]) + 32]
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            if idx >= ('cd', 68).length - 2:
                                _3175 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3175 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3175 + 36] = 0
                                mem[_3175 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3175 + 100] = this.address
                                mem[_3175 + 132] = 128
                                mem[_3175 + 164] = mem[_3175]
                                s = 0
                                while s < mem[_3175]:
                                    mem[s + _3175 + 196] = mem[s + _3175 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3175] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3175] + _3175 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3175]) + _3175 + 196] = mem[floor32(mem[_3175]) + _3175 + -(mem[_3175] % 32) + 228 len mem[_3175] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3175]) + _3175 + -mem[64] + 224]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3303 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3303 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3303 + 36] = 0
                                mem[_3303 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3303 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3303 + 132] = 128
                                mem[_3303 + 164] = mem[_3303]
                                s = 0
                                while s < mem[_3303]:
                                    mem[s + _3303 + 196] = mem[s + _3303 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3303] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_3303] + _3303 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_3303]) + _3303 + 196] = mem[floor32(mem[_3303]) + _3303 + -(mem[_3303] % 32) + 228 len mem[_3303] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_3303]) + _3303 + -mem[64] + 224]
                        else:
                            if idx >= ('cd', 68).length - 2:
                                _3177 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3177 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3177 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3177 + 68] = 0
                                mem[_3177 + 100] = this.address
                                mem[_3177 + 132] = 128
                                mem[_3177 + 164] = mem[_3177]
                                s = 0
                                while s < mem[_3177]:
                                    mem[s + _3177 + 196] = mem[s + _3177 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3177] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3177 + 164 len mem[_3177] + 32]
                                else:
                                    mem[floor32(mem[_3177]) + _3177 + 196] = mem[floor32(mem[_3177]) + _3177 + -(mem[_3177] % 32) + 228 len mem[_3177] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3177], mem[_3177 + 196 len floor32(mem[_3177]) + 32]
                            else:
                                require idx + 1 < ('cd', 36).length
                                _3305 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3305 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3305 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                mem[_3305 + 68] = 0
                                mem[_3305 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_3305 + 132] = 128
                                mem[_3305 + 164] = mem[_3305]
                                s = 0
                                while s < mem[_3305]:
                                    mem[s + _3305 + 196] = mem[s + _3305 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3305] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3305 + 164 len mem[_3305] + 32]
                                else:
                                    mem[floor32(mem[_3305]) + _3305 + 196] = mem[floor32(mem[_3305]) + _3305 + -(mem[_3305] % 32) + 228 len mem[_3305] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3305], mem[_3305 + 196 len floor32(mem[_3305]) + 32]
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
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < ('cd', 68).length
                require idx + 1 < ('cd', 68).length
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    revert with 0, 32, 35, 0x54556e69737761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    if not address(cd[((32 * idx) + cd[68] + 36)]):
                        revert with 0, 'UniswapLibrary: ZERO_ADDRESS'
                    require idx < ('cd', 36).length
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe556e69737761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 109 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 997 * Mask(144, 112, ext_call.return_data[0]) / 997 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3035 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3035 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3035 + 36] = 0
                                    mem[_3035 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3035 + 100] = this.address
                                    mem[_3035 + 132] = 128
                                    mem[_3035 + 164] = mem[_3035]
                                    s = 0
                                    while s < mem[_3035]:
                                        mem[s + _3035 + 196] = mem[s + _3035 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3035] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3035 + 164 len mem[_3035] + 32]
                                    else:
                                        mem[floor32(mem[_3035]) + _3035 + 196] = mem[floor32(mem[_3035]) + _3035 + -(mem[_3035] % 32) + 228 len mem[_3035] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3035], mem[_3035 + 196 len floor32(mem[_3035]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3099 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3099 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3099 + 36] = 0
                                    mem[_3099 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3099 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3099 + 132] = 128
                                    mem[_3099 + 164] = mem[_3099]
                                    s = 0
                                    while s < mem[_3099]:
                                        mem[s + _3099 + 196] = mem[s + _3099 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3099] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3099] + _3099 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3099]) + _3099 + 196] = mem[floor32(mem[_3099]) + _3099 + -(mem[_3099] % 32) + 228 len mem[_3099] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3099]) + _3099 + -mem[64] + 224]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3037 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3037 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3037 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3037 + 68] = 0
                                    mem[_3037 + 100] = this.address
                                    mem[_3037 + 132] = 128
                                    mem[_3037 + 164] = mem[_3037]
                                    s = 0
                                    while s < mem[_3037]:
                                        mem[s + _3037 + 196] = mem[s + _3037 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3037] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3037] + _3037 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3037]) + _3037 + 196] = mem[floor32(mem[_3037]) + _3037 + -(mem[_3037] % 32) + 228 len mem[_3037] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3037]) + _3037 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3101 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3101 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3101 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3101 + 68] = 0
                                    mem[_3101 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3101 + 132] = 128
                                    mem[_3101 + 164] = mem[_3101]
                                    s = 0
                                    while s < mem[_3101]:
                                        mem[s + _3101 + 196] = mem[s + _3101 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3101] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3101] + _3101 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3101]) + _3101 + 196] = mem[floor32(mem[_3101]) + _3101 + -(mem[_3101] % 32) + 228 len mem[_3101] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3101]) + _3101 + -mem[64] + 224]
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 997 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3181 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3181 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3181 + 36] = 0
                                    mem[_3181 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3181 + 100] = this.address
                                    mem[_3181 + 132] = 128
                                    mem[_3181 + 164] = mem[_3181]
                                    s = 0
                                    while s < mem[_3181]:
                                        mem[s + _3181 + 196] = mem[s + _3181 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3181] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3181 + 164 len mem[_3181] + 32]
                                    else:
                                        mem[floor32(mem[_3181]) + _3181 + 196] = mem[floor32(mem[_3181]) + _3181 + -(mem[_3181] % 32) + 228 len mem[_3181] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3181], mem[_3181 + 196 len floor32(mem[_3181]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3313 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3313 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3313 + 36] = 0
                                    mem[_3313 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3313 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3313 + 132] = 128
                                    mem[_3313 + 164] = mem[_3313]
                                    s = 0
                                    while s < mem[_3313]:
                                        mem[s + _3313 + 196] = mem[s + _3313 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3313] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3313] + _3313 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3313]) + _3313 + 196] = mem[floor32(mem[_3313]) + _3313 + -(mem[_3313] % 32) + 228 len mem[_3313] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3313]) + _3313 + -mem[64] + 224]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3183 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3183 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3183 + 68] = 0
                                    mem[_3183 + 100] = this.address
                                    mem[_3183 + 132] = 128
                                    mem[_3183 + 164] = mem[_3183]
                                    s = 0
                                    while s < mem[_3183]:
                                        mem[s + _3183 + 196] = mem[s + _3183 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3183] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3183] + _3183 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3183]) + _3183 + 196] = mem[floor32(mem[_3183]) + _3183 + -(mem[_3183] % 32) + 228 len mem[_3183] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3183]) + _3183 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3315 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3315 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3315 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3315 + 68] = 0
                                    mem[_3315 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3315 + 132] = 128
                                    mem[_3315 + 164] = mem[_3315]
                                    s = 0
                                    while s < mem[_3315]:
                                        mem[s + _3315 + 196] = mem[s + _3315 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3315] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3315] + _3315 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3315]) + _3315 + 196] = mem[floor32(mem[_3315]) + _3315 + -(mem[_3315] % 32) + 228 len mem[_3315] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3315]) + _3315 + -mem[64] + 224]
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe556e69737761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 109 len 23]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) / 997 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3039 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3039 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3039 + 36] = 0
                                    mem[_3039 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3039 + 100] = this.address
                                    mem[_3039 + 132] = 128
                                    mem[_3039 + 164] = mem[_3039]
                                    s = 0
                                    while s < mem[_3039]:
                                        mem[s + _3039 + 196] = mem[s + _3039 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3039] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3039] + _3039 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3039]) + _3039 + 196] = mem[floor32(mem[_3039]) + _3039 + -(mem[_3039] % 32) + 228 len mem[_3039] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3039]) + _3039 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3103 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3103 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3103 + 36] = 0
                                    mem[_3103 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3103 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3103 + 132] = 128
                                    mem[_3103 + 164] = mem[_3103]
                                    s = 0
                                    while s < mem[_3103]:
                                        mem[s + _3103 + 196] = mem[s + _3103 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3103] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3103] + _3103 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3103]) + _3103 + 196] = mem[floor32(mem[_3103]) + _3103 + -(mem[_3103] % 32) + 228 len mem[_3103] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3103]) + _3103 + -mem[64] + 224]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3041 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3041 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3041 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3041 + 68] = 0
                                    mem[_3041 + 100] = this.address
                                    mem[_3041 + 132] = 128
                                    mem[_3041 + 164] = mem[_3041]
                                    s = 0
                                    while s < mem[_3041]:
                                        mem[s + _3041 + 196] = mem[s + _3041 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3041] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3041 + 164 len mem[_3041] + 32]
                                    else:
                                        mem[floor32(mem[_3041]) + _3041 + 196] = mem[floor32(mem[_3041]) + _3041 + -(mem[_3041] % 32) + 228 len mem[_3041] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3041], mem[_3041 + 196 len floor32(mem[_3041]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3105 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3105 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3105 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3105 + 68] = 0
                                    mem[_3105 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3105 + 132] = 128
                                    mem[_3105 + 164] = mem[_3105]
                                    s = 0
                                    while s < mem[_3105]:
                                        mem[s + _3105 + 196] = mem[s + _3105 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3105] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3105 + 164 len mem[_3105] + 32]
                                    else:
                                        mem[floor32(mem[_3105]) + _3105 + 196] = mem[floor32(mem[_3105]) + _3105 + -(mem[_3105] % 32) + 228 len mem[_3105] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3105], mem[_3105 + 196 len floor32(mem[_3105]) + 32]
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3187 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3187 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3187 + 36] = 0
                                    mem[_3187 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3187 + 100] = this.address
                                    mem[_3187 + 132] = 128
                                    mem[_3187 + 164] = mem[_3187]
                                    s = 0
                                    while s < mem[_3187]:
                                        mem[s + _3187 + 196] = mem[s + _3187 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3187] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3187] + _3187 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3187]) + _3187 + 196] = mem[floor32(mem[_3187]) + _3187 + -(mem[_3187] % 32) + 228 len mem[_3187] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3187]) + _3187 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3323 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3323 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3323 + 36] = 0
                                    mem[_3323 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3323 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3323 + 132] = 128
                                    mem[_3323 + 164] = mem[_3323]
                                    s = 0
                                    while s < mem[_3323]:
                                        mem[s + _3323 + 196] = mem[s + _3323 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3323] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3323 + 164 len mem[_3323] + 32]
                                    else:
                                        mem[floor32(mem[_3323]) + _3323 + 196] = mem[floor32(mem[_3323]) + _3323 + -(mem[_3323] % 32) + 228 len mem[_3323] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3323], mem[_3323 + 196 len floor32(mem[_3323]) + 32]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3189 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3189 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3189 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3189 + 68] = 0
                                    mem[_3189 + 100] = this.address
                                    mem[_3189 + 132] = 128
                                    mem[_3189 + 164] = mem[_3189]
                                    s = 0
                                    while s < mem[_3189]:
                                        mem[s + _3189 + 196] = mem[s + _3189 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3189] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3189] + _3189 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3189]) + _3189 + 196] = mem[floor32(mem[_3189]) + _3189 + -(mem[_3189] % 32) + 228 len mem[_3189] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3189]) + _3189 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3325 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3325 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3325 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3325 + 68] = 0
                                    mem[_3325 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3325 + 132] = 128
                                    mem[_3325 + 164] = mem[_3325]
                                    s = 0
                                    while s < mem[_3325]:
                                        mem[s + _3325 + 196] = mem[s + _3325 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3325] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3325] + _3325 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3325]) + _3325 + 196] = mem[floor32(mem[_3325]) + _3325 + -(mem[_3325] % 32) + 228 len mem[_3325] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3325]) + _3325 + -mem[64] + 224]
                else:
                    if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                        revert with 0, 'UniswapLibrary: ZERO_ADDRESS'
                    require idx < ('cd', 36).length
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(cd[((32 * idx + 1) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe556e69737761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 109 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 997 * Mask(144, 112, ext_call.return_data[0]) / 997 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3043 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3043 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3043 + 36] = 0
                                    mem[_3043 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3043 + 100] = this.address
                                    mem[_3043 + 132] = 128
                                    mem[_3043 + 164] = mem[_3043]
                                    s = 0
                                    while s < mem[_3043]:
                                        mem[s + _3043 + 196] = mem[s + _3043 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3043] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3043] + _3043 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3043]) + _3043 + 196] = mem[floor32(mem[_3043]) + _3043 + -(mem[_3043] % 32) + 228 len mem[_3043] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3043]) + _3043 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3107 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3107 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3107 + 36] = 0
                                    mem[_3107 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3107 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3107 + 132] = 128
                                    mem[_3107 + 164] = mem[_3107]
                                    s = 0
                                    while s < mem[_3107]:
                                        mem[s + _3107 + 196] = mem[s + _3107 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3107] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3107 + 164 len mem[_3107] + 32]
                                    else:
                                        mem[floor32(mem[_3107]) + _3107 + 196] = mem[floor32(mem[_3107]) + _3107 + -(mem[_3107] % 32) + 228 len mem[_3107] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3107], mem[_3107 + 196 len floor32(mem[_3107]) + 32]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3045 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3045 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3045 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3045 + 68] = 0
                                    mem[_3045 + 100] = this.address
                                    mem[_3045 + 132] = 128
                                    mem[_3045 + 164] = mem[_3045]
                                    s = 0
                                    while s < mem[_3045]:
                                        mem[s + _3045 + 196] = mem[s + _3045 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3045] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3045] + _3045 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3045]) + _3045 + 196] = mem[floor32(mem[_3045]) + _3045 + -(mem[_3045] % 32) + 228 len mem[_3045] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3045]) + _3045 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3109 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3109 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3109 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3109 + 68] = 0
                                    mem[_3109 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3109 + 132] = 128
                                    mem[_3109 + 164] = mem[_3109]
                                    s = 0
                                    while s < mem[_3109]:
                                        mem[s + _3109 + 196] = mem[s + _3109 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3109] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3109] + _3109 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3109]) + _3109 + 196] = mem[floor32(mem[_3109]) + _3109 + -(mem[_3109] % 32) + 228 len mem[_3109] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3109]) + _3109 + -mem[64] + 224]
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 997 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3193 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3193 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3193 + 36] = 0
                                    mem[_3193 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3193 + 100] = this.address
                                    mem[_3193 + 132] = 128
                                    mem[_3193 + 164] = mem[_3193]
                                    s = 0
                                    while s < mem[_3193]:
                                        mem[s + _3193 + 196] = mem[s + _3193 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3193] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3193 + 164 len mem[_3193] + 32]
                                    else:
                                        mem[floor32(mem[_3193]) + _3193 + 196] = mem[floor32(mem[_3193]) + _3193 + -(mem[_3193] % 32) + 228 len mem[_3193] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3193], mem[_3193 + 196 len floor32(mem[_3193]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3333 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3333 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3333 + 36] = 0
                                    mem[_3333 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3333 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3333 + 132] = 128
                                    mem[_3333 + 164] = mem[_3333]
                                    s = 0
                                    while s < mem[_3333]:
                                        mem[s + _3333 + 196] = mem[s + _3333 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3333] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3333 + 164 len mem[_3333] + 32]
                                    else:
                                        mem[floor32(mem[_3333]) + _3333 + 196] = mem[floor32(mem[_3333]) + _3333 + -(mem[_3333] % 32) + 228 len mem[_3333] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3333], mem[_3333 + 196 len floor32(mem[_3333]) + 32]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3195 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3195 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3195 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3195 + 68] = 0
                                    mem[_3195 + 100] = this.address
                                    mem[_3195 + 132] = 128
                                    mem[_3195 + 164] = mem[_3195]
                                    s = 0
                                    while s < mem[_3195]:
                                        mem[s + _3195 + 196] = mem[s + _3195 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3195] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3195] + _3195 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3195]) + _3195 + 196] = mem[floor32(mem[_3195]) + _3195 + -(mem[_3195] % 32) + 228 len mem[_3195] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3195]) + _3195 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3335 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3335 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3335 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3335 + 68] = 0
                                    mem[_3335 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3335 + 132] = 128
                                    mem[_3335 + 164] = mem[_3335]
                                    s = 0
                                    while s < mem[_3335]:
                                        mem[s + _3335 + 196] = mem[s + _3335 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3335] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3335] + _3335 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3335]) + _3335 + 196] = mem[floor32(mem[_3335]) + _3335 + -(mem[_3335] % 32) + 228 len mem[_3335] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3335]) + _3335 + -mem[64] + 224]
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe556e69737761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 109 len 23]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) / 997 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3047 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3047 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3047 + 36] = 0
                                    mem[_3047 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3047 + 100] = this.address
                                    mem[_3047 + 132] = 128
                                    mem[_3047 + 164] = mem[_3047]
                                    s = 0
                                    while s < mem[_3047]:
                                        mem[s + _3047 + 196] = mem[s + _3047 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3047] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3047] + _3047 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3047]) + _3047 + 196] = mem[floor32(mem[_3047]) + _3047 + -(mem[_3047] % 32) + 228 len mem[_3047] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3047]) + _3047 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3111 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3111 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3111 + 36] = 0
                                    mem[_3111 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3111 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3111 + 132] = 128
                                    mem[_3111 + 164] = mem[_3111]
                                    s = 0
                                    while s < mem[_3111]:
                                        mem[s + _3111 + 196] = mem[s + _3111 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3111] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3111] + _3111 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3111]) + _3111 + 196] = mem[floor32(mem[_3111]) + _3111 + -(mem[_3111] % 32) + 228 len mem[_3111] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3111]) + _3111 + -mem[64] + 224]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3049 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3049 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3049 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3049 + 68] = 0
                                    mem[_3049 + 100] = this.address
                                    mem[_3049 + 132] = 128
                                    mem[_3049 + 164] = mem[_3049]
                                    s = 0
                                    while s < mem[_3049]:
                                        mem[s + _3049 + 196] = mem[s + _3049 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3049] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3049 + 164 len mem[_3049] + 32]
                                    else:
                                        mem[floor32(mem[_3049]) + _3049 + 196] = mem[floor32(mem[_3049]) + _3049 + -(mem[_3049] % 32) + 228 len mem[_3049] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3049], mem[_3049 + 196 len floor32(mem[_3049]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3113 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3113 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3113 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3113 + 68] = 0
                                    mem[_3113 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3113 + 132] = 128
                                    mem[_3113 + 164] = mem[_3113]
                                    s = 0
                                    while s < mem[_3113]:
                                        mem[s + _3113 + 196] = mem[s + _3113 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3113] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3113] + _3113 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3113]) + _3113 + 196] = mem[floor32(mem[_3113]) + _3113 + -(mem[_3113] % 32) + 228 len mem[_3113] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3113]) + _3113 + -mem[64] + 224]
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3199 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3199 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3199 + 36] = 0
                                    mem[_3199 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3199 + 100] = this.address
                                    mem[_3199 + 132] = 128
                                    mem[_3199 + 164] = mem[_3199]
                                    s = 0
                                    while s < mem[_3199]:
                                        mem[s + _3199 + 196] = mem[s + _3199 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3199] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3199 + 164 len mem[_3199] + 32]
                                    else:
                                        mem[floor32(mem[_3199]) + _3199 + 196] = mem[floor32(mem[_3199]) + _3199 + -(mem[_3199] % 32) + 228 len mem[_3199] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3199], mem[_3199 + 196 len floor32(mem[_3199]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3343 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3343 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3343 + 36] = 0
                                    mem[_3343 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3343 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3343 + 132] = 128
                                    mem[_3343 + 164] = mem[_3343]
                                    s = 0
                                    while s < mem[_3343]:
                                        mem[s + _3343 + 196] = mem[s + _3343 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3343] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3343] + _3343 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3343]) + _3343 + 196] = mem[floor32(mem[_3343]) + _3343 + -(mem[_3343] % 32) + 228 len mem[_3343] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3343]) + _3343 + -mem[64] + 224]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3201 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3201 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3201 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3201 + 68] = 0
                                    mem[_3201 + 100] = this.address
                                    mem[_3201 + 132] = 128
                                    mem[_3201 + 164] = mem[_3201]
                                    s = 0
                                    while s < mem[_3201]:
                                        mem[s + _3201 + 196] = mem[s + _3201 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3201] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3201 + 164 len mem[_3201] + 32]
                                    else:
                                        mem[floor32(mem[_3201]) + _3201 + 196] = mem[floor32(mem[_3201]) + _3201 + -(mem[_3201] % 32) + 228 len mem[_3201] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3201], mem[_3201 + 196 len floor32(mem[_3201]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3345 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3345 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3345 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3345 + 68] = 0
                                    mem[_3345 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3345 + 132] = 128
                                    mem[_3345 + 164] = mem[_3345]
                                    s = 0
                                    while s < mem[_3345]:
                                        mem[s + _3345 + 196] = mem[s + _3345 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3345] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3345 + 164 len mem[_3345] + 32]
                                    else:
                                        mem[floor32(mem[_3345]) + _3345 + 196] = mem[floor32(mem[_3345]) + _3345 + -(mem[_3345] % 32) + 228 len mem[_3345] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3345], mem[_3345 + 196 len floor32(mem[_3345]) + 32]
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
            idx = 0
            while idx < ('cd', 68).length - 1:
                require idx < ('cd', 68).length
                require idx + 1 < ('cd', 68).length
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    revert with 0, 32, 35, 0x54556e69737761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    if not address(cd[((32 * idx) + cd[68] + 36)]):
                        revert with 0, 'UniswapLibrary: ZERO_ADDRESS'
                    require idx < ('cd', 36).length
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe556e69737761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 109 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 997 * Mask(144, 112, ext_call.return_data[0]) / 997 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3051 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3051 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3051 + 36] = 0
                                    mem[_3051 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3051 + 100] = this.address
                                    mem[_3051 + 132] = 128
                                    mem[_3051 + 164] = mem[_3051]
                                    s = 0
                                    while s < mem[_3051]:
                                        mem[s + _3051 + 196] = mem[s + _3051 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3051] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3051] + _3051 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3051]) + _3051 + 196] = mem[floor32(mem[_3051]) + _3051 + -(mem[_3051] % 32) + 228 len mem[_3051] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3051]) + _3051 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3115 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3115 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3115 + 36] = 0
                                    mem[_3115 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3115 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3115 + 132] = 128
                                    mem[_3115 + 164] = mem[_3115]
                                    s = 0
                                    while s < mem[_3115]:
                                        mem[s + _3115 + 196] = mem[s + _3115 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3115] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3115 + 164 len mem[_3115] + 32]
                                    else:
                                        mem[floor32(mem[_3115]) + _3115 + 196] = mem[floor32(mem[_3115]) + _3115 + -(mem[_3115] % 32) + 228 len mem[_3115] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3115], mem[_3115 + 196 len floor32(mem[_3115]) + 32]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3053 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3053 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3053 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3053 + 68] = 0
                                    mem[_3053 + 100] = this.address
                                    mem[_3053 + 132] = 128
                                    mem[_3053 + 164] = mem[_3053]
                                    s = 0
                                    while s < mem[_3053]:
                                        mem[s + _3053 + 196] = mem[s + _3053 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3053] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3053] + _3053 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3053]) + _3053 + 196] = mem[floor32(mem[_3053]) + _3053 + -(mem[_3053] % 32) + 228 len mem[_3053] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3053]) + _3053 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3117 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3117 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3117 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3117 + 68] = 0
                                    mem[_3117 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3117 + 132] = 128
                                    mem[_3117 + 164] = mem[_3117]
                                    s = 0
                                    while s < mem[_3117]:
                                        mem[s + _3117 + 196] = mem[s + _3117 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3117] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3117 + 164 len mem[_3117] + 32]
                                    else:
                                        mem[floor32(mem[_3117]) + _3117 + 196] = mem[floor32(mem[_3117]) + _3117 + -(mem[_3117] % 32) + 228 len mem[_3117] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3117], mem[_3117 + 196 len floor32(mem[_3117]) + 32]
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 997 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3205 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3205 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3205 + 36] = 0
                                    mem[_3205 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3205 + 100] = this.address
                                    mem[_3205 + 132] = 128
                                    mem[_3205 + 164] = mem[_3205]
                                    s = 0
                                    while s < mem[_3205]:
                                        mem[s + _3205 + 196] = mem[s + _3205 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3205] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3205 + 164 len mem[_3205] + 32]
                                    else:
                                        mem[floor32(mem[_3205]) + _3205 + 196] = mem[floor32(mem[_3205]) + _3205 + -(mem[_3205] % 32) + 228 len mem[_3205] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3205], mem[_3205 + 196 len floor32(mem[_3205]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3353 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3353 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3353 + 36] = 0
                                    mem[_3353 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3353 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3353 + 132] = 128
                                    mem[_3353 + 164] = mem[_3353]
                                    s = 0
                                    while s < mem[_3353]:
                                        mem[s + _3353 + 196] = mem[s + _3353 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3353] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3353 + 164 len mem[_3353] + 32]
                                    else:
                                        mem[floor32(mem[_3353]) + _3353 + 196] = mem[floor32(mem[_3353]) + _3353 + -(mem[_3353] % 32) + 228 len mem[_3353] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3353], mem[_3353 + 196 len floor32(mem[_3353]) + 32]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3207 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3207 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3207 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3207 + 68] = 0
                                    mem[_3207 + 100] = this.address
                                    mem[_3207 + 132] = 128
                                    mem[_3207 + 164] = mem[_3207]
                                    s = 0
                                    while s < mem[_3207]:
                                        mem[s + _3207 + 196] = mem[s + _3207 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3207] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3207 + 164 len mem[_3207] + 32]
                                    else:
                                        mem[floor32(mem[_3207]) + _3207 + 196] = mem[floor32(mem[_3207]) + _3207 + -(mem[_3207] % 32) + 228 len mem[_3207] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3207], mem[_3207 + 196 len floor32(mem[_3207]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3355 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3355 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3355 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3355 + 68] = 0
                                    mem[_3355 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3355 + 132] = 128
                                    mem[_3355 + 164] = mem[_3355]
                                    s = 0
                                    while s < mem[_3355]:
                                        mem[s + _3355 + 196] = mem[s + _3355 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3355] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3355] + _3355 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3355]) + _3355 + 196] = mem[floor32(mem[_3355]) + _3355 + -(mem[_3355] % 32) + 228 len mem[_3355] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3355]) + _3355 + -mem[64] + 224]
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe556e69737761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 109 len 23]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) / 997 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3055 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3055 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3055 + 36] = 0
                                    mem[_3055 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3055 + 100] = this.address
                                    mem[_3055 + 132] = 128
                                    mem[_3055 + 164] = mem[_3055]
                                    s = 0
                                    while s < mem[_3055]:
                                        mem[s + _3055 + 196] = mem[s + _3055 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3055] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3055 + 164 len mem[_3055] + 32]
                                    else:
                                        mem[floor32(mem[_3055]) + _3055 + 196] = mem[floor32(mem[_3055]) + _3055 + -(mem[_3055] % 32) + 228 len mem[_3055] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3055], mem[_3055 + 196 len floor32(mem[_3055]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3119 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3119 + 36] = 0
                                    mem[_3119 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3119 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3119 + 132] = 128
                                    mem[_3119 + 164] = mem[_3119]
                                    s = 0
                                    while s < mem[_3119]:
                                        mem[s + _3119 + 196] = mem[s + _3119 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3119] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3119 + 164 len mem[_3119] + 32]
                                    else:
                                        mem[floor32(mem[_3119]) + _3119 + 196] = mem[floor32(mem[_3119]) + _3119 + -(mem[_3119] % 32) + 228 len mem[_3119] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3119], mem[_3119 + 196 len floor32(mem[_3119]) + 32]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3057 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3057 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3057 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3057 + 68] = 0
                                    mem[_3057 + 100] = this.address
                                    mem[_3057 + 132] = 128
                                    mem[_3057 + 164] = mem[_3057]
                                    s = 0
                                    while s < mem[_3057]:
                                        mem[s + _3057 + 196] = mem[s + _3057 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3057] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3057] + _3057 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3057]) + _3057 + 196] = mem[floor32(mem[_3057]) + _3057 + -(mem[_3057] % 32) + 228 len mem[_3057] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3057]) + _3057 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3121 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3121 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3121 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3121 + 68] = 0
                                    mem[_3121 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3121 + 132] = 128
                                    mem[_3121 + 164] = mem[_3121]
                                    s = 0
                                    while s < mem[_3121]:
                                        mem[s + _3121 + 196] = mem[s + _3121 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3121] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3121 + 164 len mem[_3121] + 32]
                                    else:
                                        mem[floor32(mem[_3121]) + _3121 + 196] = mem[floor32(mem[_3121]) + _3121 + -(mem[_3121] % 32) + 228 len mem[_3121] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3121], mem[_3121 + 196 len floor32(mem[_3121]) + 32]
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3211 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3211 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3211 + 36] = 0
                                    mem[_3211 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3211 + 100] = this.address
                                    mem[_3211 + 132] = 128
                                    mem[_3211 + 164] = mem[_3211]
                                    s = 0
                                    while s < mem[_3211]:
                                        mem[s + _3211 + 196] = mem[s + _3211 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3211] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3211 + 164 len mem[_3211] + 32]
                                    else:
                                        mem[floor32(mem[_3211]) + _3211 + 196] = mem[floor32(mem[_3211]) + _3211 + -(mem[_3211] % 32) + 228 len mem[_3211] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3211], mem[_3211 + 196 len floor32(mem[_3211]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3363 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3363 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3363 + 36] = 0
                                    mem[_3363 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3363 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3363 + 132] = 128
                                    mem[_3363 + 164] = mem[_3363]
                                    s = 0
                                    while s < mem[_3363]:
                                        mem[s + _3363 + 196] = mem[s + _3363 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3363] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3363 + 164 len mem[_3363] + 32]
                                    else:
                                        mem[floor32(mem[_3363]) + _3363 + 196] = mem[floor32(mem[_3363]) + _3363 + -(mem[_3363] % 32) + 228 len mem[_3363] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3363], mem[_3363 + 196 len floor32(mem[_3363]) + 32]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3213 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3213 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3213 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3213 + 68] = 0
                                    mem[_3213 + 100] = this.address
                                    mem[_3213 + 132] = 128
                                    mem[_3213 + 164] = mem[_3213]
                                    s = 0
                                    while s < mem[_3213]:
                                        mem[s + _3213 + 196] = mem[s + _3213 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3213] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3213] + _3213 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3213]) + _3213 + 196] = mem[floor32(mem[_3213]) + _3213 + -(mem[_3213] % 32) + 228 len mem[_3213] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3213]) + _3213 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3365 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3365 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3365 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3365 + 68] = 0
                                    mem[_3365 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3365 + 132] = 128
                                    mem[_3365 + 164] = mem[_3365]
                                    s = 0
                                    while s < mem[_3365]:
                                        mem[s + _3365 + 196] = mem[s + _3365 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3365] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3365] + _3365 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3365]) + _3365 + 196] = mem[floor32(mem[_3365]) + _3365 + -(mem[_3365] % 32) + 228 len mem[_3365] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3365]) + _3365 + -mem[64] + 224]
                else:
                    if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                        revert with 0, 'UniswapLibrary: ZERO_ADDRESS'
                    require idx < ('cd', 36).length
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(cd[((32 * idx + 1) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe556e69737761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 109 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 997 * Mask(144, 112, ext_call.return_data[0]) / 997 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3059 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3059 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3059 + 36] = 0
                                    mem[_3059 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3059 + 100] = this.address
                                    mem[_3059 + 132] = 128
                                    mem[_3059 + 164] = mem[_3059]
                                    s = 0
                                    while s < mem[_3059]:
                                        mem[s + _3059 + 196] = mem[s + _3059 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3059] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3059 + 164 len mem[_3059] + 32]
                                    else:
                                        mem[floor32(mem[_3059]) + _3059 + 196] = mem[floor32(mem[_3059]) + _3059 + -(mem[_3059] % 32) + 228 len mem[_3059] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3059], mem[_3059 + 196 len floor32(mem[_3059]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3123 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3123 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3123 + 36] = 0
                                    mem[_3123 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3123 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3123 + 132] = 128
                                    mem[_3123 + 164] = mem[_3123]
                                    s = 0
                                    while s < mem[_3123]:
                                        mem[s + _3123 + 196] = mem[s + _3123 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3123] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3123 + 164 len mem[_3123] + 32]
                                    else:
                                        mem[floor32(mem[_3123]) + _3123 + 196] = mem[floor32(mem[_3123]) + _3123 + -(mem[_3123] % 32) + 228 len mem[_3123] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3123], mem[_3123 + 196 len floor32(mem[_3123]) + 32]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3061 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3061 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3061 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3061 + 68] = 0
                                    mem[_3061 + 100] = this.address
                                    mem[_3061 + 132] = 128
                                    mem[_3061 + 164] = mem[_3061]
                                    s = 0
                                    while s < mem[_3061]:
                                        mem[s + _3061 + 196] = mem[s + _3061 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3061] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3061 + 164 len mem[_3061] + 32]
                                    else:
                                        mem[floor32(mem[_3061]) + _3061 + 196] = mem[floor32(mem[_3061]) + _3061 + -(mem[_3061] % 32) + 228 len mem[_3061] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, mem[_3061], mem[_3061 + 196 len floor32(mem[_3061]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3125 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3125 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3125 + 68] = 0
                                    mem[_3125 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3125 + 132] = 128
                                    mem[_3125 + 164] = mem[_3125]
                                    s = 0
                                    while s < mem[_3125]:
                                        mem[s + _3125 + 196] = mem[s + _3125 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3125] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3125 + 164 len mem[_3125] + 32]
                                    else:
                                        mem[floor32(mem[_3125]) + _3125 + 196] = mem[floor32(mem[_3125]) + _3125 + -(mem[_3125] % 32) + 228 len mem[_3125] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3125], mem[_3125 + 196 len floor32(mem[_3125]) + 32]
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 997 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3217 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3217 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3217 + 36] = 0
                                    mem[_3217 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3217 + 100] = this.address
                                    mem[_3217 + 132] = 128
                                    mem[_3217 + 164] = mem[_3217]
                                    s = 0
                                    while s < mem[_3217]:
                                        mem[s + _3217 + 196] = mem[s + _3217 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3217] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3217] + _3217 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3217]) + _3217 + 196] = mem[floor32(mem[_3217]) + _3217 + -(mem[_3217] % 32) + 228 len mem[_3217] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3217]) + _3217 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3373 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3373 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3373 + 36] = 0
                                    mem[_3373 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3373 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3373 + 132] = 128
                                    mem[_3373 + 164] = mem[_3373]
                                    s = 0
                                    while s < mem[_3373]:
                                        mem[s + _3373 + 196] = mem[s + _3373 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3373] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3373 + 164 len mem[_3373] + 32]
                                    else:
                                        mem[floor32(mem[_3373]) + _3373 + 196] = mem[floor32(mem[_3373]) + _3373 + -(mem[_3373] % 32) + 228 len mem[_3373] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3373], mem[_3373 + 196 len floor32(mem[_3373]) + 32]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3219 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3219 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3219 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3219 + 68] = 0
                                    mem[_3219 + 100] = this.address
                                    mem[_3219 + 132] = 128
                                    mem[_3219 + 164] = mem[_3219]
                                    s = 0
                                    while s < mem[_3219]:
                                        mem[s + _3219 + 196] = mem[s + _3219 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3219] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3219] + _3219 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3219]) + _3219 + 196] = mem[floor32(mem[_3219]) + _3219 + -(mem[_3219] % 32) + 228 len mem[_3219] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3219]) + _3219 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3375 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3375 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3375 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                                    mem[_3375 + 68] = 0
                                    mem[_3375 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3375 + 132] = 128
                                    mem[_3375 + 164] = mem[_3375]
                                    s = 0
                                    while s < mem[_3375]:
                                        mem[s + _3375 + 196] = mem[s + _3375 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3375] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3375] + _3375 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3375]) + _3375 + 196] = mem[floor32(mem[_3375]) + _3375 + -(mem[_3375] % 32) + 228 len mem[_3375] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3375]) + _3375 + -mem[64] + 224]
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe556e69737761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 109 len 23]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x53556e69737761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) / 997 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3063 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3063 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3063 + 36] = 0
                                    mem[_3063 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3063 + 100] = this.address
                                    mem[_3063 + 132] = 128
                                    mem[_3063 + 164] = mem[_3063]
                                    s = 0
                                    while s < mem[_3063]:
                                        mem[s + _3063 + 196] = mem[s + _3063 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3063] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3063 + 164 len mem[_3063] + 32]
                                    else:
                                        mem[floor32(mem[_3063]) + _3063 + 196] = mem[floor32(mem[_3063]) + _3063 + -(mem[_3063] % 32) + 228 len mem[_3063] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3063], mem[_3063 + 196 len floor32(mem[_3063]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3127 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3127 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3127 + 36] = 0
                                    mem[_3127 + 68] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3127 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3127 + 132] = 128
                                    mem[_3127 + 164] = mem[_3127]
                                    s = 0
                                    while s < mem[_3127]:
                                        mem[s + _3127 + 196] = mem[s + _3127 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3127] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3127] + _3127 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3127]) + _3127 + 196] = mem[floor32(mem[_3127]) + _3127 + -(mem[_3127] % 32) + 228 len mem[_3127] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3127]) + _3127 + -mem[64] + 224]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3065 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3065 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3065 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3065 + 68] = 0
                                    mem[_3065 + 100] = this.address
                                    mem[_3065 + 132] = 128
                                    mem[_3065 + 164] = mem[_3065]
                                    s = 0
                                    while s < mem[_3065]:
                                        mem[s + _3065 + 196] = mem[s + _3065 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3065] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3065] + _3065 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3065]) + _3065 + 196] = mem[floor32(mem[_3065]) + _3065 + -(mem[_3065] % 32) + 228 len mem[_3065] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3065]) + _3065 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3129 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3129 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3129 + 36] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3129 + 68] = 0
                                    mem[_3129 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3129 + 132] = 128
                                    mem[_3129 + 164] = mem[_3129]
                                    s = 0
                                    while s < mem[_3129]:
                                        mem[s + _3129 + 196] = mem[s + _3129 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3129] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3129 + 164 len mem[_3129] + 32]
                                    else:
                                        mem[floor32(mem[_3129]) + _3129 + 196] = mem[floor32(mem[_3129]) + _3129 + -(mem[_3129] % 32) + 228 len mem[_3129] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3129], mem[_3129 + 196 len floor32(mem[_3129]) + 32]
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                                if idx >= ('cd', 68).length - 2:
                                    _3223 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3223 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3223 + 36] = 0
                                    mem[_3223 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3223 + 100] = this.address
                                    mem[_3223 + 132] = 128
                                    mem[_3223 + 164] = mem[_3223]
                                    s = 0
                                    while s < mem[_3223]:
                                        mem[s + _3223 + 196] = mem[s + _3223 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3223] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3223 + 164 len mem[_3223] + 32]
                                    else:
                                        mem[floor32(mem[_3223]) + _3223 + 196] = mem[floor32(mem[_3223]) + _3223 + -(mem[_3223] % 32) + 228 len mem[_3223] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, mem[_3223], mem[_3223 + 196 len floor32(mem[_3223]) + 32]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3383 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3383 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3383 + 36] = 0
                                    mem[_3383 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3383 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3383 + 132] = 128
                                    mem[_3383 + 164] = mem[_3383]
                                    s = 0
                                    while s < mem[_3383]:
                                        mem[s + _3383 + 196] = mem[s + _3383 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3383] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3383 + 164 len mem[_3383] + 32]
                                    else:
                                        mem[floor32(mem[_3383]) + _3383 + 196] = mem[floor32(mem[_3383]) + _3383 + -(mem[_3383] % 32) + 228 len mem[_3383] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3383], mem[_3383 + 196 len floor32(mem[_3383]) + 32]
                            else:
                                if idx >= ('cd', 68).length - 2:
                                    _3225 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3225 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3225 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3225 + 68] = 0
                                    mem[_3225 + 100] = this.address
                                    mem[_3225 + 132] = 128
                                    mem[_3225 + 164] = mem[_3225]
                                    s = 0
                                    while s < mem[_3225]:
                                        mem[s + _3225 + 196] = mem[s + _3225 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3225] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_3225] + _3225 + -mem[64] + 192]
                                    else:
                                        mem[floor32(mem[_3225]) + _3225 + 196] = mem[floor32(mem[_3225]) + _3225 + -(mem[_3225] % 32) + 228 len mem[_3225] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len floor32(mem[_3225]) + _3225 + -mem[64] + 224]
                                else:
                                    require idx + 1 < ('cd', 36).length
                                    _3385 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_3385 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3385 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                                    mem[_3385 + 68] = 0
                                    mem[_3385 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[_3385 + 132] = 128
                                    mem[_3385 + 164] = mem[_3385]
                                    s = 0
                                    while s < mem[_3385]:
                                        mem[s + _3385 + 196] = mem[s + _3385 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_3385] % 32:
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3385 + 164 len mem[_3385] + 32]
                                    else:
                                        mem[floor32(mem[_3385]) + _3385 + 196] = mem[floor32(mem[_3385]) + _3385 + -(mem[_3385] % 32) + 228 len mem[_3385] % 32]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_3385], mem[_3385 + 196 len floor32(mem[_3385]) + 32]
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

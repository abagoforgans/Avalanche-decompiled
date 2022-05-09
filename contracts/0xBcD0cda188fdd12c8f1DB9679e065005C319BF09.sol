contract main {




// =====================  Runtime code  =====================


#
#  - sub_430b43e1(?)
#  - approve(address arg1, address arg2, uint256 arg3)
#
address stor0;
address stor1;

function transfer() payable {
  stop
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor0 = arg1
}

function withdrawETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
}

function sub_b639cf4d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 128] = 0
    call address(arg1) with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not ext_call.success:
        revert with 0, 'fail commit'
}

function sub_410b87b0(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require 0 < ('cd', 4).length
    _20 = mem[128]
    mem[(32 * ('cd', 4).length) + 132] = this.address
    require ext_code.size(address(_20))
    staticcall address(_20).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= cd[36]:
        revert with 0, 'sold out'
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 132] = cd[36]
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 164] = cd[68]
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 196] = 160
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 292] = ('cd', 4).length
    idx = 0
    s = (32 * ('cd', 4).length) + ceil32(return_data.size) + 324
    t = 128
    while idx < ('cd', 4).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 228] = stor0
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 260] = cd[100]
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 132 len (96 * ('cd', 4).length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    require mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require (32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 128 > (32 * ('cd', 4).length) + ceil32(return_data.size) + mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 159
    require mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128] <= test266151307()
    require (32 * mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 32 >= 0 and (32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160 <= test266151307()
    require return_data.size >= mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 32
}



}

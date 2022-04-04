contract main {




// =====================  Runtime code  =====================


#
#  - sub_edbb6cb8(?)
#
address owner;
mapping of uint8 stor1;

function owner() payable {
    return owner
}

function sub_caecc2ba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function addTrader(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeTrader(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function withdrawETH() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_32f84eb0(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    mem[(32 * ('cd', 36).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 36).length) + 132] = cd[4]
    mem[(32 * ('cd', 36).length) + 164] = 64
    mem[(32 * ('cd', 36).length) + 196] = ('cd', 36).length
    idx = 0
    s = 128
    t = (32 * ('cd', 36).length) + 228
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args mem[(32 * ('cd', 36).length) + 132 len (96 * ('cd', 36).length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 36).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _39 = mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (32 * ('cd', 36).length) + return_data.size + 128 > (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159
    _40 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
    require mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] <= test266151307()
    require (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128] = _40
    require return_data.size >= _39 + (32 * _40) + 32
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 32 * _40] = mem[(32 * ('cd', 36).length) + _39 + 160 len 32 * _40]
    require ('cd', 36).length - 1 < _40
    mem[mem[64]] = mem[(32 * ('cd', 36).length - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 160]
    return memory
      from mem[64]
       len 32
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5)
#  - sub_c7987c06(?)
#
address owner;
address TOKENAddress;
address sub_726ed7c4Address;
address SWAPAddress;
address STAKINGAddress;
address LENDING_POOLAddress;
address VAULTAddress;

function SWAP() payable {
    return SWAPAddress
}

function VAULT() payable {
    return VAULTAddress
}

function sub_726ed7c4(?) payable {
    return sub_726ed7c4Address
}

function TOKEN() payable {
    return TOKENAddress
}

function owner() payable {
    return owner
}

function STAKING() payable {
    return STAKINGAddress
}

function LENDING_POOL() payable {
    return LENDING_POOLAddress
}

function _fallback() payable {
  stop
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    VAULTAddress = arg1
}

function withdrawEth() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2f236c65(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = VAULTAddress
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = cd[100]
    require ext_code.size(sub_726ed7c4Address)
    call sub_726ed7c4Address.0x23b872dd with:
         gas gas_remaining wei
        args VAULTAddress, address(this.address), cd[100]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + ceil32(return_data.size) + 102] = STAKINGAddress
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + ceil32(return_data.size) + 134] = cd[100]
    require ext_code.size(sub_726ed7c4Address)
    call sub_726ed7c4Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args STAKINGAddress, cd[100]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 98] = 0x9ebea88c00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 102] = cd[100]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 134] = 1
    require ext_code.size(STAKINGAddress)
    call STAKINGAddress.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args cd[100], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 102] = mem[140 len 20]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 134] = cd[100]
    require ext_code.size(TOKENAddress)
    call TOKENAddress.0xa9059cbb with:
         gas gas_remaining wei
        args mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 102], cd[100]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 98] = 0xf4214a5300000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 102] = cd[100]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 134] = TOKENAddress
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 166] = 160
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 262] = ('cd', 4).length
    idx = 0
    s = 128
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 294
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 198] = (32 * ('cd', 4).length) + 192
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 294] = ('cd', 36).length
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 326
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(SWAPAddress)
    call SWAPAddress.0xf4214a53 with:
         gas gas_remaining wei
        args cd[100], TOKENAddress, Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 294 len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 32]), (32 * ('cd', 4).length) + 192, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[68]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(cd[132])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool(floor32(('cd', 4).length) + floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 226 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).bondPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(cd[68]))
    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0], address(cd[132])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(cd[132])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool(floor32(('cd', 4).length) + floor32(('cd', 36).length) + (12 * ceil32(return_data.size)) + 354 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if ext_call.return_data[0] > -cd[100] - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + cd[100] > -cd[164] - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] <= ext_call.return_data[0] + cd[100] + cd[164]:
        revert with 0, 'PROFIT'
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], 0
}



}

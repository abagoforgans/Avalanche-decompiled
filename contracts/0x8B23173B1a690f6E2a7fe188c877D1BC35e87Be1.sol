contract main {




// =====================  Runtime code  =====================


#
#  - sub_8c52fbbc(?)
#  - sub_f15d86f9(?)
#  - _fallback()
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address stor6;
address stor7;
uint8 stor8; offset 160
uint8 stor8; offset 168
uint128 stor8; offset 160
address stor8;
address stor9;
address sub_be5c3f28Address;
address sub_864bd587Address;
address sub_a5e0b335Address;
address sub_3f130282Address;
uint256 sub_ec652406;
uint256 sub_e79d3137;
uint256 sub_a6820498;
uint256 sub_f59feadc;
uint256 sub_aff61fef;
uint256 sub_9d26a15d;
mapping of uint8 stor20;
mapping of uint8 stor21;
mapping of uint8 stor22;
mapping of uint8 stor23;

function totalSupply() {
    return totalSupply
}

function sub_3f130282(?) {
    return sub_3f130282Address
}

function sub_4103af2a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor21[arg1])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_864bd587(?) {
    return sub_864bd587Address
}

function owner() {
    return owner
}

function sub_9d26a15d(?) {
    return sub_9d26a15d
}

function sub_a5e0b335(?) {
    return sub_a5e0b335Address
}

function sub_a6820498(?) {
    return sub_a6820498
}

function sub_ab7b4193(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor23[arg1])
}

function sub_aff61fef(?) {
    return sub_aff61fef
}

function sub_be5c3f28(?) {
    return sub_be5c3f28Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e79d3137(?) {
    return sub_e79d3137
}

function sub_ec652406(?) {
    return sub_ec652406
}

function sub_ece68266(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor22[arg1])
}

function sub_f59feadc(?) {
    return sub_f59feadc
}

function Blacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAllow(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
}

function sub_6b2ef71b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3f130282Address = address(arg1)
    sub_e79d3137 = arg2
}

function openTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor8.field_168):
        revert with 0, 'trading is already open'
    uint8(stor8.field_168) = 1
    emit 0x1344a223: block.timestamp
}

function sub_ed0c4b4a(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = address(arg1)
    sub_a5e0b335Address = address(arg2)
    address(stor8.field_0) = address(arg3)
    sub_f59feadc = arg4
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setAddress(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be5c3f28Address = arg1
    stor6 = arg2
    stor7 = arg3
    sub_864bd587Address = arg4
}

function getPendingReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    require ext_code.size(stor6)
    staticcall stor6.0xd34db045 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[64]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_4a4b9feb(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        sub_ec652406 = 0
    else:
        if arg1 and 10^18 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        sub_ec652406 = 10^18 * arg1
    sub_a6820498 = arg2
}

function mintToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setBlacklist(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 20
        stor20[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_0081a21f(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    mem[ceil32(arg1.length) + 228] = arg2.length
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[ceil32(arg1.length) + 260 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + ceil32(arg1.length) + 260] = 0
    require ext_code.size(stor6)
    call stor6.0x49ebda6 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), 96, ceil32(arg1.length) + 128, arg1.length, arg1[all], 0, mem[arg1.length + 260 len (32 * arg2.length) + ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_162c3e16(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    mem[ceil32(arg1.length) + 228] = arg2.length
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[ceil32(arg1.length) + 260 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + ceil32(arg1.length) + 260] = 0
    require ext_code.size(stor6)
    call stor6.0xd04267c3 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), 96, ceil32(arg1.length) + 128, arg1.length, arg1[all], 0, mem[arg1.length + 260 len (32 * arg2.length) + ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5cb677ee(?) {
    require calldata.size - 4 >= 64
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    if arg2 <= 0:
        revert with 0, 'Invalid amount'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[stor10] > !arg2:
        revert with 0, 17
    if balanceOf[stor10] + arg2 < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += arg2
    emit Transfer(arg2, msg.sender, sub_be5c3f28Address);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.0x2c2cdd21 with:
         gas gas_remaining wei
        args arg1, arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function compoundAll() {
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    mem[164] = 0
    require ext_code.size(stor6)
    staticcall stor6.0x8c46d91b with:
            gas gas_remaining wei
           args msg.sender, 4, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to compound'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.0x48c49ed0 with:
         gas gas_remaining wei
        args msg.sender, 4, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xee274ed0: msg.sender
}

function sub_60532f05(?) {
    require calldata.size - 4 >= 32
    require arg1 < 6
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    if arg1 >= 6:
        revert with 0, 33
    mem[164] = 1
    require ext_code.size(stor6)
    staticcall stor6.0x8c46d91b with:
            gas gas_remaining wei
           args msg.sender, arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to compound'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= 6:
        revert with 0, 33
    require ext_code.size(stor6)
    call stor6.0x48c49ed0 with:
         gas gas_remaining wei
        args msg.sender, arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= 6:
        revert with 0, 33
    emit 0x842f8f58: arg1, msg.sender
}

function sub_78f225e5(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg3 < 6
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    if arg2 <= 0:
        revert with 0, 'Invalid Amount'
    if arg1.length <= 3:
        revert with 0, 'INVALID NAME SIZE'
    if arg1.length >= 32:
        revert with 0, 'INVALID NAME SIZE'
    if arg3 > 5:
        revert with 0, 33
    if arg3 != 4:
        if arg2 < sub_ec652406:
            revert with 0, 'Under min amount'
    if arg3 > 5:
        revert with 0, 33
    if arg3 == 5:
        revert with 0, 'Invalid type'
    if not msg.sender:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(ceil32(arg1.length)) + 167 len 26] >> 48,
                    0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[stor10] > !arg2:
        revert with 0, 17
    if balanceOf[stor10] + arg2 < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += arg2
    emit Transfer(arg2, msg.sender, sub_be5c3f28Address);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 > 5:
        revert with 0, 33
    if arg3 >= 6:
        revert with 0, 33
    require ext_code.size(stor6)
    call stor6.0xa5a1fd29 with:
         gas gas_remaining wei
        args 64, msg.sender, 288, 0, arg2, block.timestamp, 0, 0, 0, 0, arg3, arg1.length, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 38) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_aff63b7d(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor6)
    staticcall stor6.0x4735e2a6 with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        if not sub_864bd587Address:
            revert with 0, 'ERC20: transfer from the zero address'
        if not sub_be5c3f28Address:
            revert with 0, 'ERC20: transfer to the zero address'
        if ext_call.return_data[32] > balanceOf[stor11]:
            revert with 0, 
                        32,
                        38,
                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                        0
        if balanceOf[stor11] < ext_call.return_data[32]:
            revert with 0, 17
        balanceOf[stor11] -= ext_call.return_data[32]
        if balanceOf[stor10] > !ext_call.return_data[32]:
            revert with 0, 17
        if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor10] += ext_call.return_data[32]
        emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
        if not sub_864bd587Address:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if ext_call.return_data[0] > balanceOf[stor11]:
            revert with 0, 
                        32,
                        38,
                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 262 len 26] >> 48,
                        0
        if balanceOf[stor11] < ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[stor11] -= ext_call.return_data[0]
        if balanceOf[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        if balanceOf[msg.sender] + ext_call.return_data[0] < balanceOf[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], sub_864bd587Address, msg.sender);
        require ext_code.size(sub_be5c3f28Address)
        call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[32], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor6)
        call stor6.0x37c14e70 with:
             gas gas_remaining wei
            args arg1, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x1811e9ee: arg1, msg.sender
}

function claimAll() {
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    mem[164] = 0
    require ext_code.size(stor6)
    staticcall stor6.0x287ddddd with:
            gas gas_remaining wei
           args msg.sender, 4, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to claim'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    if ext_call.return_data[32] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < ext_call.return_data[32]:
        revert with 0, 17
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[0] - ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[0] - ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] = balanceOf[stor11] - ext_call.return_data[0] + ext_call.return_data[32]
    if balanceOf[msg.sender] > !(ext_call.return_data[0] - ext_call.return_data[32]):
        revert with 0, 17
    if balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32]
    emit Transfer((ext_call.return_data[0] - ext_call.return_data[32]), sub_864bd587Address, msg.sender);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.0x1a7c5631 with:
         gas gas_remaining wei
        args msg.sender, 4, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ClaimAll(msg.sender);
}

function sub_335ce7a9(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    require arg1.length
    mem[196] = arg1.length
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[228 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 228] = 0
    mem[164] = 1
    require ext_code.size(stor6)
    staticcall stor6.0xa43e4818 with:
            gas gas_remaining wei
           args 0, 96, msg.sender, 1, arg1.length, call.data[arg1 + 36 len 32 * arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Wait!'
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[ceil32(return_data.size) + 164 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 164] = 0
    require ext_code.size(stor6)
    staticcall stor6.0x2ebee207 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to compound'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 166 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(stor6)
    call stor6.0x335ce7a9 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit 0xb6abd2b3: Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), msg.sender
}

function sub_59eea977(?) {
    require calldata.size - 4 >= 32
    require arg1 < 6
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    if arg1 >= 6:
        revert with 0, 33
    mem[164] = 1
    require ext_code.size(stor6)
    staticcall stor6.0x287ddddd with:
            gas gas_remaining wei
           args msg.sender, arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to claim'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    if ext_call.return_data[32] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < ext_call.return_data[32]:
        revert with 0, 17
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[0] - ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[0] - ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] = balanceOf[stor11] - ext_call.return_data[0] + ext_call.return_data[32]
    if balanceOf[msg.sender] > !(ext_call.return_data[0] - ext_call.return_data[32]):
        revert with 0, 17
    if balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32]
    emit Transfer((ext_call.return_data[0] - ext_call.return_data[32]), sub_864bd587Address, msg.sender);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= 6:
        revert with 0, 33
    require ext_code.size(stor6)
    call stor6.0x1a7c5631 with:
         gas gas_remaining wei
        args msg.sender, arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= 6:
        revert with 0, 33
    emit 0x8ec85488: arg1, msg.sender
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function claim(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    require arg1.length
    mem[196] = arg1.length
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[228 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 228] = 0
    mem[164] = 0
    require ext_code.size(stor6)
    staticcall stor6.0xa43e4818 with:
            gas gas_remaining wei
           args 0, 96, msg.sender, 0, arg1.length, call.data[arg1 + 36 len 32 * arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Wait!'
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[ceil32(return_data.size) + 164 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 164] = 0
    require ext_code.size(stor6)
    staticcall stor6.0xdc95b5c1 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to claim'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 166 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    if ext_call.return_data[32] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < ext_call.return_data[32]:
        revert with 0, 17
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[0] - ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 326 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[0] - ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] = balanceOf[stor11] - ext_call.return_data[0] + ext_call.return_data[32]
    if balanceOf[msg.sender] > !(ext_call.return_data[0] - ext_call.return_data[32]):
        revert with 0, 17
    if balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32]
    emit Transfer((ext_call.return_data[0] - ext_call.return_data[32]), sub_864bd587Address, msg.sender);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(stor6)
    call stor6.0x6ba4c138 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit 0x62e5026c: Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), msg.sender
}

function sub_1249cb22(?) {
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    mem[164] = 1
    require ext_code.size(stor6)
    staticcall stor6.0x8c46d91b with:
            gas gas_remaining wei
           args msg.sender, 0, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to compound'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.0x48c49ed0 with:
         gas gas_remaining wei
        args msg.sender, 0, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x842f8f58: 0, msg.sender
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    mem[ceil32(return_data.size) + 260] = 1
    require ext_code.size(stor6)
    staticcall stor6.0x8c46d91b with:
            gas gas_remaining wei
           args msg.sender, 1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to compound'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 262 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.0x48c49ed0 with:
         gas gas_remaining wei
        args msg.sender, 1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x842f8f58: 1, msg.sender
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    mem[(2 * ceil32(return_data.size)) + 356] = 1
    require ext_code.size(stor6)
    staticcall stor6.0x8c46d91b with:
            gas gas_remaining wei
           args msg.sender, 2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to compound'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 358 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.0x48c49ed0 with:
         gas gas_remaining wei
        args msg.sender, 2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x842f8f58: 2, msg.sender
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    mem[(4 * ceil32(return_data.size)) + 452] = 1
    require ext_code.size(stor6)
    staticcall stor6.0x8c46d91b with:
            gas gas_remaining wei
           args msg.sender, 3, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to compound'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(6 * ceil32(return_data.size)) + 454 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.0x48c49ed0 with:
         gas gas_remaining wei
        args msg.sender, 3, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x842f8f58: 3, msg.sender
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor20[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor20[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not uint8(stor8.field_160):
        revert with 0, 'Transfer now allowed'
    require ext_code.size(sub_be5c3f28Address)
    staticcall sub_be5c3f28Address.getAddress() with:
            gas gas_remaining wei
    mem[96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    require ext_call.return_data[128] == ext_call.return_data[140 len 20]
    if msg.sender == owner:
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0, 'ERC20: transfer to the zero address'
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                        0
    else:
        if arg1 == ext_call.return_data[12 len 20]:
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0, 'ERC20: transfer to the zero address'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                            0
        else:
            if arg1 == ext_call.return_data[44 len 20]:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                0
            else:
                if sub_be5c3f28Address == arg1:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                    0
                else:
                    if sub_be5c3f28Address == msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                        0
                    else:
                        if not uint8(stor8.field_168):
                            revert with 0, 'Trading not yet enabled.'
                        if arg1 == ext_call.return_data[76 len 20]:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                            0
                        else:
                            if arg1 == ext_call.return_data[108 len 20]:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                                0
                            else:
                                if arg1 == ext_call.return_data[140 len 20]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                                    0
                                else:
                                    if msg.sender == ext_call.return_data[76 len 20]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                                        0
                                    else:
                                        if msg.sender == ext_call.return_data[108 len 20]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                                            0
                                        else:
                                            if msg.sender == ext_call.return_data[140 len 20]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                                                0
                                            else:
                                                if not totalSupply:
                                                    if arg2 > !balanceOf[address(arg1)]:
                                                        revert with 0, 17
                                                    if arg2 + balanceOf[address(arg1)] < arg2:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if arg2 + balanceOf[address(arg1)] > 0:
                                                        revert with 0, 'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                                else:
                                                    if totalSupply and sub_a6820498 > -1 / totalSupply:
                                                        revert with 0, 17
                                                    if not totalSupply:
                                                        revert with 0, 18
                                                    if totalSupply * sub_a6820498 / totalSupply != sub_a6820498:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if arg2 > !balanceOf[address(arg1)]:
                                                        revert with 0, 17
                                                    if arg2 + balanceOf[address(arg1)] < arg2:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if arg2 + balanceOf[address(arg1)] > totalSupply * sub_a6820498 / 10000:
                                                        revert with 0, 'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 230 len 26] >> 48,
                                                                0
    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_0cdd171e(?) {
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    mem[164] = 1
    require ext_code.size(stor6)
    staticcall stor6.0x287ddddd with:
            gas gas_remaining wei
           args msg.sender, 0, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to claim'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    if ext_call.return_data[32] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < ext_call.return_data[32]:
        revert with 0, 17
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[0] - ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 326 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[0] - ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] = balanceOf[stor11] - ext_call.return_data[0] + ext_call.return_data[32]
    if balanceOf[msg.sender] > !(ext_call.return_data[0] - ext_call.return_data[32]):
        revert with 0, 17
    if balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32]
    emit Transfer((ext_call.return_data[0] - ext_call.return_data[32]), sub_864bd587Address, msg.sender);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.0x1a7c5631 with:
         gas gas_remaining wei
        args msg.sender, 0, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8ec85488: 0, msg.sender
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    mem[ceil32(return_data.size) + 420] = 1
    require ext_code.size(stor6)
    staticcall stor6.0x287ddddd with:
            gas gas_remaining wei
           args msg.sender, 1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to claim'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 422 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    if ext_call.return_data[32] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < ext_call.return_data[32]:
        revert with 0, 17
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[0] - ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 582 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[0] - ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] = balanceOf[stor11] - ext_call.return_data[0] + ext_call.return_data[32]
    if balanceOf[msg.sender] > !(ext_call.return_data[0] - ext_call.return_data[32]):
        revert with 0, 17
    if balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32]
    emit Transfer((ext_call.return_data[0] - ext_call.return_data[32]), sub_864bd587Address, msg.sender);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.0x1a7c5631 with:
         gas gas_remaining wei
        args msg.sender, 1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8ec85488: 1, msg.sender
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    mem[(2 * ceil32(return_data.size)) + 676] = 1
    require ext_code.size(stor6)
    staticcall stor6.0x287ddddd with:
            gas gas_remaining wei
           args msg.sender, 2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to claim'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 678 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    if ext_call.return_data[32] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < ext_call.return_data[32]:
        revert with 0, 17
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[0] - ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 838 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[0] - ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] = balanceOf[stor11] - ext_call.return_data[0] + ext_call.return_data[32]
    if balanceOf[msg.sender] > !(ext_call.return_data[0] - ext_call.return_data[32]):
        revert with 0, 17
    if balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32]
    emit Transfer((ext_call.return_data[0] - ext_call.return_data[32]), sub_864bd587Address, msg.sender);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.0x1a7c5631 with:
         gas gas_remaining wei
        args msg.sender, 2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8ec85488: 2, msg.sender
    if stor20[msg.sender]:
        revert with 0, 'Blacklisted'
    mem[(4 * ceil32(return_data.size)) + 932] = 1
    require ext_code.size(stor6)
    staticcall stor6.0x287ddddd with:
            gas gas_remaining wei
           args msg.sender, 3, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to claim'
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_be5c3f28Address:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(6 * ceil32(return_data.size)) + 934 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] -= ext_call.return_data[32]
    if balanceOf[stor10] > !ext_call.return_data[32]:
        revert with 0, 17
    if balanceOf[stor10] + ext_call.return_data[32] < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += ext_call.return_data[32]
    emit Transfer(ext_call.return_data[32], sub_864bd587Address, sub_be5c3f28Address);
    if ext_call.return_data[32] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < ext_call.return_data[32]:
        revert with 0, 17
    if not sub_864bd587Address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if ext_call.return_data[0] - ext_call.return_data[32] > balanceOf[stor11]:
        revert with 0, 
                    32,
                    38,
                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(6 * ceil32(return_data.size)) + 1094 len 26] >> 48,
                    0
    if balanceOf[stor11] < ext_call.return_data[0] - ext_call.return_data[32]:
        revert with 0, 17
    balanceOf[stor11] = balanceOf[stor11] - ext_call.return_data[0] + ext_call.return_data[32]
    if balanceOf[msg.sender] > !(ext_call.return_data[0] - ext_call.return_data[32]):
        revert with 0, 17
    if balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0] - ext_call.return_data[32]
    emit Transfer((ext_call.return_data[0] - ext_call.return_data[32]), sub_864bd587Address, msg.sender);
    require ext_code.size(sub_be5c3f28Address)
    call sub_be5c3f28Address.distribute(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    call stor6.0x1a7c5631 with:
         gas gas_remaining wei
        args msg.sender, 3, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8ec85488: 3, msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor20[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor20[address(arg2)]:
        revert with 0, 'Blacklisted address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not uint8(stor8.field_160):
        revert with 0, 'Transfer now allowed'
    require ext_code.size(sub_be5c3f28Address)
    staticcall sub_be5c3f28Address.getAddress() with:
            gas gas_remaining wei
    mem[96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    require ext_call.return_data[128] == ext_call.return_data[140 len 20]
    if arg1 == owner:
        if not arg1:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0, 'ERC20: transfer to the zero address'
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                        0
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 
                        32,
                        40,
                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                        0
    else:
        if arg2 == ext_call.return_data[12 len 20]:
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                            0
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[arg2] + arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 
                            32,
                            40,
                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                            0
        else:
            if arg2 == ext_call.return_data[44 len 20]:
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                0
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 
                                32,
                                40,
                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                0
            else:
                if sub_be5c3f28Address == arg2:
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                    0
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                    0
                else:
                    if sub_be5c3f28Address == arg1:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                        0
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                        0
                    else:
                        if not uint8(stor8.field_168):
                            revert with 0, 'Trading not yet enabled.'
                        if arg2 == ext_call.return_data[76 len 20]:
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                            0
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                            0
                        else:
                            if arg2 == ext_call.return_data[108 len 20]:
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                                0
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                0
                            else:
                                if arg2 == ext_call.return_data[140 len 20]:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                                    0
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][msg.sender]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                    0
                                else:
                                    if arg1 == ext_call.return_data[76 len 20]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                                        0
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][msg.sender]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                        0
                                    else:
                                        if arg1 == ext_call.return_data[108 len 20]:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                                            0
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                            0
                                        else:
                                            if arg1 == ext_call.return_data[140 len 20]:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg3 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                                                                0
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if arg3 > allowance[address(arg1)][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                                                                0
                                            else:
                                                if not totalSupply:
                                                    if arg3 > !balanceOf[address(arg2)]:
                                                        revert with 0, 17
                                                    if arg3 + balanceOf[address(arg2)] < arg3:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if arg3 + balanceOf[address(arg2)] > 0:
                                                        revert with 0, 'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                                else:
                                                    if totalSupply and sub_a6820498 > -1 / totalSupply:
                                                        revert with 0, 17
                                                    if not totalSupply:
                                                        revert with 0, 18
                                                    if totalSupply * sub_a6820498 / totalSupply != sub_a6820498:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if arg3 > !balanceOf[address(arg2)]:
                                                        revert with 0, 17
                                                    if arg3 + balanceOf[address(arg2)] < arg3:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if arg3 + balanceOf[address(arg2)] > totalSupply * sub_a6820498 / 10000:
                                                        revert with 0, 'STOP TRYING TO BECOME A WHALE. WE KNOW WHO YOU ARE.'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg3 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 230 len 26] >> 48,
                                                                0
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if arg3 > allowance[address(arg1)][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 328 len 24] >> 64,
                                                                0
    ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 1)))))
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function sub_3a49bf2b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor9 != msg.sender:
        revert with 0, 'Not allowed'
    require arg2 > 0
    if stor20[address(arg1)]:
        revert with 0, 'Blacklisted'
    if stor21[address(arg1)]:
        revert with 0, 'Already migrated'
    mem[100] = address(arg1)
    require ext_code.size(sub_3f130282Address)
    staticcall sub_3f130282Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > arg2:
        if arg2 <= 0:
            revert with 0, 'Zero balance'
        require ext_code.size(sub_3f130282Address)
        staticcall sub_3f130282Address.0x313ce567 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + 96] = 26
                mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 160] = 26
                mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                if not sub_e79d3137:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[(2 * ceil32(return_data.size)) + 260] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 292] = sub_864bd587Address
                mem[(2 * ceil32(return_data.size)) + 324] = arg2
                mem[(2 * ceil32(return_data.size)) + 224] = 100
                mem[(2 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                mem[(2 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 356] = 32
                mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if not ext_code.size(sub_3f130282Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0
                mem[(2 * ceil32(return_data.size)) + 520] = 0
                call sub_3f130282Address with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) << 544)
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
                    if not sub_864bd587Address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 / sub_e79d3137 > balanceOf[stor11]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, -512, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) << 512 >> 48,
                                    0
                else:
                    mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                        if not mem[(2 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not sub_864bd587Address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 / sub_e79d3137 > balanceOf[stor11]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 491 len 26] >> 48,
                                    0
                ('le', ('div', 0, ('stor', ('name', 'sub_e79d3137', 15))), ('stor', ('map', ('stor', ('name', 'stor11', 11)), ('name', 'balanceOf', 0))))
                if balanceOf[stor11] < 0 / sub_e79d3137:
                    revert with 0, 17
                balanceOf[stor11] -= 0 / sub_e79d3137
                if balanceOf[address(arg1)] > !(0 / sub_e79d3137):
                    revert with 0, 17
                if balanceOf[address(arg1)] + (0 / sub_e79d3137) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += 0 / sub_e79d3137
                emit Transfer((0 / sub_e79d3137), sub_864bd587Address, address(arg1));
                if sub_9d26a15d > !arg2:
                    revert with 0, 17
                if sub_9d26a15d + arg2 < sub_9d26a15d:
                    revert with 0, 'SafeMath: addition overflow'
                sub_9d26a15d += arg2
                stor21[address(arg1)] = 1
                emit 0x85713fb9: arg2, 0 / sub_e79d3137, address(arg1)
            else:
                if arg2 and 10^18 > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 96] = 26
                mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 160] = 26
                mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                if not sub_e79d3137:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[(2 * ceil32(return_data.size)) + 260] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 292] = sub_864bd587Address
                mem[(2 * ceil32(return_data.size)) + 324] = arg2
                mem[(2 * ceil32(return_data.size)) + 224] = 100
                mem[(2 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                mem[(2 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 356] = 32
                mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if not ext_code.size(sub_3f130282Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0
                mem[(2 * ceil32(return_data.size)) + 520] = 0
                call sub_3f130282Address with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) << 544)
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
                    if not sub_864bd587Address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 10^18 * arg2 / sub_e79d3137 > balanceOf[stor11]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, -512, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) << 512 >> 48,
                                    0
                else:
                    mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                        if not mem[(2 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not sub_864bd587Address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 10^18 * arg2 / sub_e79d3137 > balanceOf[stor11]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 491 len 26] >> 48,
                                    0
                ('le', ('div', ('mul', 1000000000000000000, ('param', 'arg2')), ('stor', ('name', 'sub_e79d3137', 15))), ('stor', ('map', ('stor', ('name', 'stor11', 11)), ('name', 'balanceOf', 0))))
                if balanceOf[stor11] < 10^18 * arg2 / sub_e79d3137:
                    revert with 0, 17
                balanceOf[stor11] -= 10^18 * arg2 / sub_e79d3137
                if balanceOf[address(arg1)] > !(10^18 * arg2 / sub_e79d3137):
                    revert with 0, 17
                if balanceOf[address(arg1)] + (10^18 * arg2 / sub_e79d3137) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += 10^18 * arg2 / sub_e79d3137
                emit Transfer((10^18 * arg2 / sub_e79d3137), sub_864bd587Address, address(arg1));
                if sub_9d26a15d > !arg2:
                    revert with 0, 17
                if sub_9d26a15d + arg2 < sub_9d26a15d:
                    revert with 0, 'SafeMath: addition overflow'
                sub_9d26a15d += arg2
                stor21[address(arg1)] = 1
                emit 0x85713fb9: arg2, 10^18 * arg2 / sub_e79d3137, address(arg1)
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not arg2:
                    mem[(2 * ceil32(return_data.size)) + 96] = 26
                    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    if not sub_e79d3137:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 260] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 292] = sub_864bd587Address
                    mem[(2 * ceil32(return_data.size)) + 324] = arg2
                    mem[(2 * ceil32(return_data.size)) + 224] = 100
                    mem[(2 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                    mem[(2 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                    mem[(2 * ceil32(return_data.size)) + 356] = 32
                    mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(sub_3f130282Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call sub_3f130282Address with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) << 544)
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
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, -512, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) << 512 >> 48,
                                        0
                    else:
                        mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                            if not mem[(2 * ceil32(return_data.size)) + 452]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 491 len 26] >> 48,
                                        0
                    ('le', ('div', ('div', 0, ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)))), ('stor', ('name', 'sub_e79d3137', 15))), ('stor', ('map', ('stor', ('name', 'stor11', 11)), ('name', 'balanceOf', 0))))
                    if balanceOf[stor11] < 0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137:
                        revert with 0, 17
                    balanceOf[stor11] -= 0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137
                    if balanceOf[address(arg1)] > !(0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137):
                        revert with 0, 17
                    if balanceOf[address(arg1)] + (0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137
                    emit Transfer((0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137), sub_864bd587Address, address(arg1));
                    if sub_9d26a15d > !arg2:
                        revert with 0, 17
                    if sub_9d26a15d + arg2 < sub_9d26a15d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9d26a15d += arg2
                    stor21[address(arg1)] = 1
                    emit 0x85713fb9: arg2, 0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137, address(arg1)
                else:
                    if arg2 and 10^18 > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 96] = 26
                    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    if not sub_e79d3137:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 260] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 292] = sub_864bd587Address
                    mem[(2 * ceil32(return_data.size)) + 324] = arg2
                    mem[(2 * ceil32(return_data.size)) + 224] = 100
                    mem[(2 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                    mem[(2 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                    mem[(2 * ceil32(return_data.size)) + 356] = 32
                    mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(sub_3f130282Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call sub_3f130282Address with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) << 544)
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
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 10^18 * arg2 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, -512, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) << 512 >> 48,
                                        0
                    else:
                        mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                            if not mem[(2 * ceil32(return_data.size)) + 452]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 10^18 * arg2 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 491 len 26] >> 48,
                                        0
                    ('le', ('div', ('div', ('mul', 1000000000000000000, ('param', 'arg2')), ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)))), ('stor', ('name', 'sub_e79d3137', 15))), ('stor', ('map', ('stor', ('name', 'stor11', 11)), ('name', 'balanceOf', 0))))
                    if balanceOf[stor11] < 10^18 * arg2 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137:
                        revert with 0, 17
                    balanceOf[stor11] -= 10^18 * arg2 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137
                    if balanceOf[address(arg1)] > !(10^18 * arg2 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137):
                        revert with 0, 17
                    if balanceOf[address(arg1)] + (10^18 * arg2 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 10^18 * arg2 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137
                    emit Transfer((10^18 * arg2 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137), sub_864bd587Address, address(arg1));
                    if sub_9d26a15d > !arg2:
                        revert with 0, 17
                    if sub_9d26a15d + arg2 < sub_9d26a15d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9d26a15d += arg2
                    stor21[address(arg1)] = 1
                    emit 0x85713fb9: arg2, 10^18 * arg2 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137, address(arg1)
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
                if not arg2:
                    mem[(2 * ceil32(return_data.size)) + 96] = 26
                    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not s * t:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    if not sub_e79d3137:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 260] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 292] = sub_864bd587Address
                    mem[(2 * ceil32(return_data.size)) + 324] = arg2
                    mem[(2 * ceil32(return_data.size)) + 224] = 100
                    mem[(2 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                    mem[(2 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                    mem[(2 * ceil32(return_data.size)) + 356] = 32
                    mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(sub_3f130282Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call sub_3f130282Address with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) << 544)
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
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 / s * t / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, -512, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) << 512 >> 48,
                                        0
                    else:
                        mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                            if not mem[(2 * ceil32(return_data.size)) + 452]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 / s * t / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 491 len 26] >> 48,
                                        0
                    ('le', ('div', ('div', 0, ('mul', ('var', 1), ('var', 2))), ('stor', ('name', 'sub_e79d3137', 15))), ('stor', ('map', ('stor', ('name', 'stor11', 11)), ('name', 'balanceOf', 0))))
                    if balanceOf[stor11] < 0 / s * t / sub_e79d3137:
                        revert with 0, 17
                    balanceOf[stor11] -= 0 / s * t / sub_e79d3137
                    if balanceOf[address(arg1)] > !(0 / s * t / sub_e79d3137):
                        revert with 0, 17
                    if balanceOf[address(arg1)] + (0 / s * t / sub_e79d3137) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 0 / s * t / sub_e79d3137
                    emit Transfer((0 / s * t / sub_e79d3137), sub_864bd587Address, address(arg1));
                    if sub_9d26a15d > !arg2:
                        revert with 0, 17
                    if sub_9d26a15d + arg2 < sub_9d26a15d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9d26a15d += arg2
                    stor21[address(arg1)] = 1
                    emit 0x85713fb9: arg2, 0 / s * t / sub_e79d3137, address(arg1)
                else:
                    if arg2 and 10^18 > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 96] = 26
                    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not s * t:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    if not sub_e79d3137:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 260] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 292] = sub_864bd587Address
                    mem[(2 * ceil32(return_data.size)) + 324] = arg2
                    mem[(2 * ceil32(return_data.size)) + 224] = 100
                    mem[(2 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                    mem[(2 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                    mem[(2 * ceil32(return_data.size)) + 356] = 32
                    mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(sub_3f130282Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call sub_3f130282Address with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) << 544)
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
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 10^18 * arg2 / s * t / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, -512, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, arg2, 0) << 512 >> 48,
                                        0
                    else:
                        mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                            if not mem[(2 * ceil32(return_data.size)) + 452]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 10^18 * arg2 / s * t / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 491 len 26] >> 48,
                                        0
                    ('le', ('div', ('div', ('mul', 1000000000000000000, ('param', 'arg2')), ('mul', ('var', 1), ('var', 2))), ('stor', ('name', 'sub_e79d3137', 15))), ('stor', ('map', ('stor', ('name', 'stor11', 11)), ('name', 'balanceOf', 0))))
                    if balanceOf[stor11] < 10^18 * arg2 / s * t / sub_e79d3137:
                        revert with 0, 17
                    balanceOf[stor11] -= 10^18 * arg2 / s * t / sub_e79d3137
                    if balanceOf[address(arg1)] > !(10^18 * arg2 / s * t / sub_e79d3137):
                        revert with 0, 17
                    if balanceOf[address(arg1)] + (10^18 * arg2 / s * t / sub_e79d3137) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 10^18 * arg2 / s * t / sub_e79d3137
                    emit Transfer((10^18 * arg2 / s * t / sub_e79d3137), sub_864bd587Address, address(arg1));
                    if sub_9d26a15d > !arg2:
                        revert with 0, 17
                    if sub_9d26a15d + arg2 < sub_9d26a15d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9d26a15d += arg2
                    stor21[address(arg1)] = 1
                    emit 0x85713fb9: arg2, 10^18 * arg2 / s * t / sub_e79d3137, address(arg1)
    else:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Zero balance'
        require ext_code.size(sub_3f130282Address)
        staticcall sub_3f130282Address.0x313ce567 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 96] = 26
                mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 160] = 26
                mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                if not sub_e79d3137:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[(2 * ceil32(return_data.size)) + 260] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 292] = sub_864bd587Address
                mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 224] = 100
                mem[(2 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                mem[(2 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 356] = 32
                mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if not ext_code.size(sub_3f130282Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 520] = 0
                call sub_3f130282Address with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) << 544)
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
                    if not sub_864bd587Address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 / sub_e79d3137 > balanceOf[stor11]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, -512, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) << 512 >> 48,
                                    0
                else:
                    mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                        if not mem[(2 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not sub_864bd587Address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 / sub_e79d3137 > balanceOf[stor11]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 491 len 26] >> 48,
                                    0
                ('le', ('div', 0, ('stor', ('name', 'sub_e79d3137', 15))), ('stor', ('map', ('stor', ('name', 'stor11', 11)), ('name', 'balanceOf', 0))))
                if balanceOf[stor11] < 0 / sub_e79d3137:
                    revert with 0, 17
                balanceOf[stor11] -= 0 / sub_e79d3137
                if balanceOf[address(arg1)] > !(0 / sub_e79d3137):
                    revert with 0, 17
                if balanceOf[address(arg1)] + (0 / sub_e79d3137) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += 0 / sub_e79d3137
                emit Transfer((0 / sub_e79d3137), sub_864bd587Address, address(arg1));
                if sub_9d26a15d > !ext_call.return_data[0]:
                    revert with 0, 17
                if sub_9d26a15d + ext_call.return_data[0] < sub_9d26a15d:
                    revert with 0, 'SafeMath: addition overflow'
                sub_9d26a15d += ext_call.return_data[0]
                stor21[address(arg1)] = 1
                emit 0x85713fb9: ext_call.return_data[0], 0 / sub_e79d3137, address(arg1)
            else:
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 96] = 26
                mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 160] = 26
                mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                if not sub_e79d3137:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[(2 * ceil32(return_data.size)) + 260] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 292] = sub_864bd587Address
                mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 224] = 100
                mem[(2 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                mem[(2 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 356] = 32
                mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if not ext_code.size(sub_3f130282Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 520] = 0
                call sub_3f130282Address with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) << 544)
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
                    if not sub_864bd587Address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 10^18 * ext_call.return_data[0] / sub_e79d3137 > balanceOf[stor11]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, -512, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) << 512 >> 48,
                                    0
                else:
                    mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                        if not mem[(2 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not sub_864bd587Address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 10^18 * ext_call.return_data[0] / sub_e79d3137 > balanceOf[stor11]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 491 len 26] >> 48,
                                    0
                ('le', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('name', 'sub_e79d3137', 15))), ('stor', ('map', ('stor', ('name', 'stor11', 11)), ('name', 'balanceOf', 0))))
                if balanceOf[stor11] < 10^18 * ext_call.return_data[0] / sub_e79d3137:
                    revert with 0, 17
                balanceOf[stor11] -= 10^18 * ext_call.return_data[0] / sub_e79d3137
                if balanceOf[address(arg1)] > !(10^18 * ext_call.return_data[0] / sub_e79d3137):
                    revert with 0, 17
                if balanceOf[address(arg1)] + (10^18 * ext_call.return_data[0] / sub_e79d3137) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += 10^18 * ext_call.return_data[0] / sub_e79d3137
                emit Transfer((10^18 * ext_call.return_data[0] / sub_e79d3137), sub_864bd587Address, address(arg1));
                if sub_9d26a15d > !ext_call.return_data[0]:
                    revert with 0, 17
                if sub_9d26a15d + ext_call.return_data[0] < sub_9d26a15d:
                    revert with 0, 'SafeMath: addition overflow'
                sub_9d26a15d += ext_call.return_data[0]
                stor21[address(arg1)] = 1
                emit 0x85713fb9: ext_call.return_data[0], 10^18 * ext_call.return_data[0] / sub_e79d3137, address(arg1)
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 26
                    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    if not sub_e79d3137:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 260] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 292] = sub_864bd587Address
                    mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 224] = 100
                    mem[(2 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                    mem[(2 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                    mem[(2 * ceil32(return_data.size)) + 356] = 32
                    mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(sub_3f130282Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call sub_3f130282Address with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) << 544)
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
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, -512, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) << 512 >> 48,
                                        0
                    else:
                        mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                            if not mem[(2 * ceil32(return_data.size)) + 452]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 491 len 26] >> 48,
                                        0
                    ('le', ('div', ('div', 0, ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)))), ('stor', ('name', 'sub_e79d3137', 15))), ('stor', ('map', ('stor', ('name', 'stor11', 11)), ('name', 'balanceOf', 0))))
                    if balanceOf[stor11] < 0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137:
                        revert with 0, 17
                    balanceOf[stor11] -= 0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137
                    if balanceOf[address(arg1)] > !(0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137):
                        revert with 0, 17
                    if balanceOf[address(arg1)] + (0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137
                    emit Transfer((0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137), sub_864bd587Address, address(arg1));
                    if sub_9d26a15d > !ext_call.return_data[0]:
                        revert with 0, 17
                    if sub_9d26a15d + ext_call.return_data[0] < sub_9d26a15d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9d26a15d += ext_call.return_data[0]
                    stor21[address(arg1)] = 1
                    emit 0x85713fb9: ext_call.return_data[0], 0 / 10^uint8(ext_call.return_data[0]) / sub_e79d3137, address(arg1)
                else:
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 96] = 26
                    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    if not sub_e79d3137:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 260] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 292] = sub_864bd587Address
                    mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 224] = 100
                    mem[(2 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                    mem[(2 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                    mem[(2 * ceil32(return_data.size)) + 356] = 32
                    mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(sub_3f130282Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call sub_3f130282Address with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) << 544)
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
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, -512, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) << 512 >> 48,
                                        0
                    else:
                        mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                            if not mem[(2 * ceil32(return_data.size)) + 452]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 491 len 26] >> 48,
                                        0
                    ('le', ('div', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)))), ('stor', ('name', 'sub_e79d3137', 15))), ('stor', ('map', ('stor', ('name', 'stor11', 11)), ('name', 'balanceOf', 0))))
                    if balanceOf[stor11] < 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / sub_e79d3137:
                        revert with 0, 17
                    balanceOf[stor11] -= 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / sub_e79d3137
                    if balanceOf[address(arg1)] > !(10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / sub_e79d3137):
                        revert with 0, 17
                    if balanceOf[address(arg1)] + (10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / sub_e79d3137) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / sub_e79d3137
                    emit Transfer((10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / sub_e79d3137), sub_864bd587Address, address(arg1));
                    if sub_9d26a15d > !ext_call.return_data[0]:
                        revert with 0, 17
                    if sub_9d26a15d + ext_call.return_data[0] < sub_9d26a15d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9d26a15d += ext_call.return_data[0]
                    stor21[address(arg1)] = 1
                    emit 0x85713fb9: ext_call.return_data[0], 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / sub_e79d3137, address(arg1)
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
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 26
                    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not s * t:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    if not sub_e79d3137:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 260] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 292] = sub_864bd587Address
                    mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 224] = 100
                    mem[(2 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                    mem[(2 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                    mem[(2 * ceil32(return_data.size)) + 356] = 32
                    mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(sub_3f130282Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call sub_3f130282Address with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) << 544)
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
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 / s * t / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, -512, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) << 512 >> 48,
                                        0
                    else:
                        mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                            if not mem[(2 * ceil32(return_data.size)) + 452]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 / s * t / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 491 len 26] >> 48,
                                        0
                    ('le', ('div', ('div', 0, ('mul', ('var', 1), ('var', 2))), ('stor', ('name', 'sub_e79d3137', 15))), ('stor', ('map', ('stor', ('name', 'stor11', 11)), ('name', 'balanceOf', 0))))
                    if balanceOf[stor11] < 0 / s * t / sub_e79d3137:
                        revert with 0, 17
                    balanceOf[stor11] -= 0 / s * t / sub_e79d3137
                    if balanceOf[address(arg1)] > !(0 / s * t / sub_e79d3137):
                        revert with 0, 17
                    if balanceOf[address(arg1)] + (0 / s * t / sub_e79d3137) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 0 / s * t / sub_e79d3137
                    emit Transfer((0 / s * t / sub_e79d3137), sub_864bd587Address, address(arg1));
                    if sub_9d26a15d > !ext_call.return_data[0]:
                        revert with 0, 17
                    if sub_9d26a15d + ext_call.return_data[0] < sub_9d26a15d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9d26a15d += ext_call.return_data[0]
                    stor21[address(arg1)] = 1
                    emit 0x85713fb9: ext_call.return_data[0], 0 / s * t / sub_e79d3137, address(arg1)
                else:
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 96] = 26
                    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                    if not s * t:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    if not sub_e79d3137:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[(2 * ceil32(return_data.size)) + 260] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 292] = sub_864bd587Address
                    mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 224] = 100
                    mem[(2 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                    mem[(2 * ceil32(return_data.size)) + 256 len 4] = unknown_0x23b872dd(?????)
                    mem[(2 * ceil32(return_data.size)) + 356] = 32
                    mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(sub_3f130282Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 420 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call sub_3f130282Address with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) << 544)
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
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 10^18 * ext_call.return_data[0] / s * t / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, -512, unknown_0x23b872dd(?????), address(arg1) << 64, 0, sub_864bd587Address, ext_call.return_data[0], 0) << 512 >> 48,
                                        0
                    else:
                        mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                            if not mem[(2 * ceil32(return_data.size)) + 452]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if not sub_864bd587Address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 10^18 * ext_call.return_data[0] / s * t / sub_e79d3137 > balanceOf[stor11]:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 491 len 26] >> 48,
                                        0
                    ('le', ('div', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('mul', ('var', 1), ('var', 2))), ('stor', ('name', 'sub_e79d3137', 15))), ('stor', ('map', ('stor', ('name', 'stor11', 11)), ('name', 'balanceOf', 0))))
                    if balanceOf[stor11] < 10^18 * ext_call.return_data[0] / s * t / sub_e79d3137:
                        revert with 0, 17
                    balanceOf[stor11] -= 10^18 * ext_call.return_data[0] / s * t / sub_e79d3137
                    if balanceOf[address(arg1)] > !(10^18 * ext_call.return_data[0] / s * t / sub_e79d3137):
                        revert with 0, 17
                    if balanceOf[address(arg1)] + (10^18 * ext_call.return_data[0] / s * t / sub_e79d3137) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 10^18 * ext_call.return_data[0] / s * t / sub_e79d3137
                    emit Transfer((10^18 * ext_call.return_data[0] / s * t / sub_e79d3137), sub_864bd587Address, address(arg1));
                    if sub_9d26a15d > !ext_call.return_data[0]:
                        revert with 0, 17
                    if sub_9d26a15d + ext_call.return_data[0] < sub_9d26a15d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_9d26a15d += ext_call.return_data[0]
                    stor21[address(arg1)] = 1
                    emit 0x85713fb9: ext_call.return_data[0], 10^18 * ext_call.return_data[0] / s * t / sub_e79d3137, address(arg1)
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
mapping of struct sub_efca2a3e;
mapping of struct sub_77b7dc5f;
mapping of struct sub_60a6e624;
mapping of struct sub_f9f5cc73;
mapping of uint8 stor12;

function sub_2478239a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor12[arg1])
}

function sub_60a6e624(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_60a6e624[arg1].field_0, sub_60a6e624[arg1].field_256
}

function sub_77b7dc5f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_77b7dc5f[arg1].field_0, sub_77b7dc5f[arg1].field_256
}

function owner() {
    return owner
}

function sub_efca2a3e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_efca2a3e[arg1].field_0, sub_efca2a3e[arg1].field_256
}

function sub_f9f5cc73(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f9f5cc73[arg1].field_0, sub_f9f5cc73[arg1].field_256
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_00859249(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(bool(arg2))
}

function sub_99ba9578(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2c6ea668(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_44aa04b1(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_dbb10085(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_26787cd7(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens'
}

function sub_ca69282f(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        revert with 0, 18
    if arg1 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
        revert with 0, '', 0
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 0, 17
    if arg1 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
        revert with 0, 17
    return ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function sub_108c31f5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_efca2a3e[address(arg1)].field_256:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        revert with 0, 18
    if sub_efca2a3e[address(arg1)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
        revert with 0, '', 0
    if sub_efca2a3e[address(arg1)].field_256 and ext_call.return_data[0] > -1 / sub_efca2a3e[address(arg1)].field_256:
        revert with 0, 17
    if sub_efca2a3e[address(arg1)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
        revert with 0, 17
    return ((sub_efca2a3e[address(arg1)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function sub_93362eee(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_77b7dc5f[address(arg1)].field_256:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        revert with 0, 18
    if sub_77b7dc5f[address(arg1)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
        revert with 0, '', 0
    if sub_77b7dc5f[address(arg1)].field_256 and ext_call.return_data[0] > -1 / sub_77b7dc5f[address(arg1)].field_256:
        revert with 0, 17
    if sub_77b7dc5f[address(arg1)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
        revert with 0, 17
    return ((sub_77b7dc5f[address(arg1)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function sub_a330530a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_60a6e624[address(arg1)].field_256:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        revert with 0, 18
    if sub_60a6e624[address(arg1)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
        revert with 0, '', 0
    if sub_60a6e624[address(arg1)].field_256 and ext_call.return_data[0] > -1 / sub_60a6e624[address(arg1)].field_256:
        revert with 0, 17
    if sub_60a6e624[address(arg1)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
        revert with 0, 17
    return ((sub_60a6e624[address(arg1)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function sub_eb47ea66(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_f9f5cc73[address(arg1)].field_256:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        revert with 0, 18
    if sub_f9f5cc73[address(arg1)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
        revert with 0, '', 0
    if sub_f9f5cc73[address(arg1)].field_256 and ext_call.return_data[0] > -1 / sub_f9f5cc73[address(arg1)].field_256:
        revert with 0, 17
    if sub_f9f5cc73[address(arg1)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
        revert with 0, 17
    return ((sub_f9f5cc73[address(arg1)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function sub_3aadc501(?) payable {
    if msg.value <= 0:
        revert with 0, 'Invalid value'
    require ext_code.size(stor2)
    call stor2.depositETH(address arg1, address arg2, uint16 arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args stor1, this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_efca2a3e[msg.sender].field_0 > !msg.value:
        revert with 0, 17
    sub_efca2a3e[msg.sender].field_0 += msg.value
    staticcall stor1.getReserveData(address arg1) with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    if not bool(ceil32(return_data.size) + 480 <= test266151307()):
        revert with 0, 65
    require return_data.size >= 32
    if not bool(ceil32(return_data.size) + 512 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    if not uint128(ext_call.return_data[32]):
        revert with 0, '', 0
    if -1 < uint128(ext_call.return_data[32]) / 2:
        revert with 0, 17
    if msg.value > -(uint128(ext_call.return_data[32]) / 2) - 1 / 1000000000 * 10^18:
        revert with 0, '', 0
    if msg.value and 1000000000 * 10^18 > -1 / msg.value:
        revert with 0, 17
    if 1000000000 * 10^18 * msg.value > !(uint128(ext_call.return_data[32]) / 2):
        revert with 0, 17
    if not uint128(ext_call.return_data[32]):
        revert with 0, 18
    if sub_efca2a3e[msg.sender].field_256 > !((1000000000 * 10^18 * msg.value) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])):
        revert with 0, 17
    sub_efca2a3e[msg.sender].field_256 += (1000000000 * 10^18 * msg.value) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])
    emit 0x5fcf78e3: msg.value, msg.sender
}

function depositDAI(uint256 arg1) {
    require calldata.size - 4 >= 32
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens'
    require ext_code.size(stor1)
    call stor1.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args stor4, arg1, this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg1, stor4, msg.sender);
    if sub_77b7dc5f[msg.sender].field_0 > !arg1:
        revert with 0, 17
    sub_77b7dc5f[msg.sender].field_0 += arg1
    staticcall stor1.getReserveData(address arg1) with:
            gas gas_remaining wei
           args stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    if not bool((2 * ceil32(return_data.size)) + 480 <= test266151307()):
        revert with 0, 65
    require return_data.size >= 32
    if not bool((2 * ceil32(return_data.size)) + 512 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    if not uint128(ext_call.return_data[32]):
        revert with 0, '', 0
    if -1 < uint128(ext_call.return_data[32]) / 2:
        revert with 0, 17
    if arg1 > -(uint128(ext_call.return_data[32]) / 2) - 1 / 1000000000 * 10^18:
        revert with 0, '', 0
    if arg1 and 1000000000 * 10^18 > -1 / arg1:
        revert with 0, 17
    if 1000000000 * 10^18 * arg1 > !(uint128(ext_call.return_data[32]) / 2):
        revert with 0, 17
    if not uint128(ext_call.return_data[32]):
        revert with 0, 18
    if sub_77b7dc5f[msg.sender].field_256 > !((1000000000 * 10^18 * arg1) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])):
        revert with 0, 17
    sub_77b7dc5f[msg.sender].field_256 += (1000000000 * 10^18 * arg1) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])
}

function depositUSDT(uint256 arg1) {
    require calldata.size - 4 >= 32
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens'
    require ext_code.size(stor1)
    call stor1.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args stor5, arg1, this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg1, stor5, msg.sender);
    if sub_60a6e624[msg.sender].field_0 > !arg1:
        revert with 0, 17
    sub_60a6e624[msg.sender].field_0 += arg1
    staticcall stor1.getReserveData(address arg1) with:
            gas gas_remaining wei
           args stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    if not bool((2 * ceil32(return_data.size)) + 480 <= test266151307()):
        revert with 0, 65
    require return_data.size >= 32
    if not bool((2 * ceil32(return_data.size)) + 512 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    if not uint128(ext_call.return_data[32]):
        revert with 0, '', 0
    if -1 < uint128(ext_call.return_data[32]) / 2:
        revert with 0, 17
    if arg1 > -(uint128(ext_call.return_data[32]) / 2) - 1 / 1000000000 * 10^18:
        revert with 0, '', 0
    if arg1 and 1000000000 * 10^18 > -1 / arg1:
        revert with 0, 17
    if 1000000000 * 10^18 * arg1 > !(uint128(ext_call.return_data[32]) / 2):
        revert with 0, 17
    if not uint128(ext_call.return_data[32]):
        revert with 0, 18
    if sub_60a6e624[msg.sender].field_256 > !((1000000000 * 10^18 * arg1) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])):
        revert with 0, 17
    sub_60a6e624[msg.sender].field_256 += (1000000000 * 10^18 * arg1) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])
}

function depositUSDC(uint256 arg1) {
    require calldata.size - 4 >= 32
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens'
    require ext_code.size(stor1)
    call stor1.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args stor6, arg1, this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg1, stor6, msg.sender);
    if sub_f9f5cc73[msg.sender].field_0 > !arg1:
        revert with 0, 17
    sub_f9f5cc73[msg.sender].field_0 += arg1
    staticcall stor1.getReserveData(address arg1) with:
            gas gas_remaining wei
           args stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    if not bool((2 * ceil32(return_data.size)) + 480 <= test266151307()):
        revert with 0, 65
    require return_data.size >= 32
    if not bool((2 * ceil32(return_data.size)) + 512 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    if not uint128(ext_call.return_data[32]):
        revert with 0, '', 0
    if -1 < uint128(ext_call.return_data[32]) / 2:
        revert with 0, 17
    if arg1 > -(uint128(ext_call.return_data[32]) / 2) - 1 / 1000000000 * 10^18:
        revert with 0, '', 0
    if arg1 and 1000000000 * 10^18 > -1 / arg1:
        revert with 0, 17
    if 1000000000 * 10^18 * arg1 > !(uint128(ext_call.return_data[32]) / 2):
        revert with 0, 17
    if not uint128(ext_call.return_data[32]):
        revert with 0, 18
    if sub_f9f5cc73[msg.sender].field_256 > !((1000000000 * 10^18 * arg1) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])):
        revert with 0, 17
    sub_f9f5cc73[msg.sender].field_256 += (1000000000 * 10^18 * arg1) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])
}

function sub_b2b6b6c9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor12[address(arg1)]:
        revert with 0, 'Invalid charity'
    if arg2 >= 100:
        revert with 0, 'Invalid percentage'
    if not sub_efca2a3e[msg.sender].field_0:
        revert with 0, 'Nothing to withdraw'
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_efca2a3e[address(msg.sender)].field_256:
        sub_efca2a3e[msg.sender].field_0 = 0
        sub_efca2a3e[msg.sender].field_256 = 0
        require ext_code.size(stor2)
        call stor2.withdrawETH(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args stor1, 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        if 0 < sub_efca2a3e[msg.sender].field_0:
            revert with 0, 17
        if -sub_efca2a3e[msg.sender].field_0 and arg2 > -1 / -sub_efca2a3e[msg.sender].field_0:
            revert with 0, 17
        if 0 < -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
            revert with 0, 17
        if -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
            call address(arg1) with:
               value -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with 0, 'Could not transfer tokens'
        if --1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
            call msg.sender with:
               value --1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with 0, 'Could not transfer tokens'
        emit 0x9a54804c: 0, address(arg1), arg2, 0, -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100, msg.sender
    else:
        if not ext_call.return_data[0]:
            sub_efca2a3e[msg.sender].field_0 = 0
            sub_efca2a3e[msg.sender].field_256 = 0
            require ext_code.size(stor2)
            call stor2.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor1, 0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if 0 < sub_efca2a3e[msg.sender].field_0:
                revert with 0, 17
            if -sub_efca2a3e[msg.sender].field_0 and arg2 > -1 / -sub_efca2a3e[msg.sender].field_0:
                revert with 0, 17
            if 0 < -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                revert with 0, 17
            if -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                call address(arg1) with:
                   value -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with 0, 'Could not transfer tokens'
            if --1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                call msg.sender with:
                   value --1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with 0, 'Could not transfer tokens'
            emit 0x9a54804c: 0, address(arg1), arg2, 0, -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100, msg.sender
        else:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_efca2a3e[address(msg.sender)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, '', 0
            if sub_efca2a3e[address(msg.sender)].field_256 and ext_call.return_data[0] > -1 / sub_efca2a3e[address(msg.sender)].field_256:
                revert with 0, 17
            if sub_efca2a3e[address(msg.sender)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                revert with 0, 17
            sub_efca2a3e[msg.sender].field_0 = 0
            sub_efca2a3e[msg.sender].field_256 = 0
            require ext_code.size(stor2)
            call stor2.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor1, (sub_efca2a3e[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if 0 < sub_efca2a3e[msg.sender].field_0:
                revert with 0, 17
            if -sub_efca2a3e[msg.sender].field_0 and arg2 > -1 / -sub_efca2a3e[msg.sender].field_0:
                revert with 0, 17
            if 0 < -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                revert with 0, 17
            if -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                call address(arg1) with:
                   value -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with 0, 'Could not transfer tokens'
            if --1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                call msg.sender with:
                   value --1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with 0, 'Could not transfer tokens'
            emit 0x9a54804c: (sub_efca2a3e[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, address(arg1), arg2, 0, -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100, msg.sender
}

function withdrawDAI(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor12[address(arg1)]:
        revert with 0, 'Invalid charity'
    if arg2 >= 100:
        revert with 0, 'Invalid percentage'
    if not sub_77b7dc5f[msg.sender].field_0:
        revert with 0, 'Nothing to withdraw'
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_77b7dc5f[address(msg.sender)].field_256:
        sub_77b7dc5f[msg.sender].field_0 = 0
        sub_77b7dc5f[msg.sender].field_256 = 0
        call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args stor4, 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_77b7dc5f[msg.sender].field_0:
            revert with 0, 17
        if ext_call.return_data[0] - sub_77b7dc5f[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_77b7dc5f[msg.sender].field_0:
            revert with 0, 17
        if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100:
            revert with 0, 17
        if (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100:
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Could not transfer tokens'
        if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100):
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Could not transfer tokens'
        emit Withdrawal(0, stor4, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100, msg.sender);
    else:
        if not ext_call.return_data[0]:
            sub_77b7dc5f[msg.sender].field_0 = 0
            sub_77b7dc5f[msg.sender].field_256 = 0
            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor4, 0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_77b7dc5f[msg.sender].field_0:
                revert with 0, 17
            if ext_call.return_data[0] - sub_77b7dc5f[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_77b7dc5f[msg.sender].field_0:
                revert with 0, 17
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100:
                revert with 0, 17
            if (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100:
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100):
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            emit Withdrawal(0, stor4, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100, msg.sender);
        else:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_77b7dc5f[address(msg.sender)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, '', 0
            if sub_77b7dc5f[address(msg.sender)].field_256 and ext_call.return_data[0] > -1 / sub_77b7dc5f[address(msg.sender)].field_256:
                revert with 0, 17
            if sub_77b7dc5f[address(msg.sender)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                revert with 0, 17
            sub_77b7dc5f[msg.sender].field_0 = 0
            sub_77b7dc5f[msg.sender].field_256 = 0
            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor4, (sub_77b7dc5f[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_77b7dc5f[msg.sender].field_0:
                revert with 0, 17
            if ext_call.return_data[0] - sub_77b7dc5f[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_77b7dc5f[msg.sender].field_0:
                revert with 0, 17
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100:
                revert with 0, 17
            if (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100:
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100):
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            emit Withdrawal((sub_77b7dc5f[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, stor4, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100, msg.sender);
}

function withdrawUSDT(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor12[address(arg1)]:
        revert with 0, 'Invalid charity'
    if arg2 >= 100:
        revert with 0, 'Invalid percentage'
    if not sub_60a6e624[msg.sender].field_0:
        revert with 0, 'Nothing to withdraw'
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_60a6e624[address(msg.sender)].field_256:
        sub_60a6e624[msg.sender].field_0 = 0
        sub_60a6e624[msg.sender].field_256 = 0
        call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args stor5, 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_60a6e624[msg.sender].field_0:
            revert with 0, 17
        if ext_call.return_data[0] - sub_60a6e624[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_60a6e624[msg.sender].field_0:
            revert with 0, 17
        if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100:
            revert with 0, 17
        if (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100:
            call stor5.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Could not transfer tokens'
        if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100):
            call stor5.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Could not transfer tokens'
        emit Withdrawal(0, stor5, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100, msg.sender);
    else:
        if not ext_call.return_data[0]:
            sub_60a6e624[msg.sender].field_0 = 0
            sub_60a6e624[msg.sender].field_256 = 0
            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor5, 0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_60a6e624[msg.sender].field_0:
                revert with 0, 17
            if ext_call.return_data[0] - sub_60a6e624[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_60a6e624[msg.sender].field_0:
                revert with 0, 17
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100:
                revert with 0, 17
            if (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100:
                call stor5.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100):
                call stor5.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            emit Withdrawal(0, stor5, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100, msg.sender);
        else:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_60a6e624[address(msg.sender)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, '', 0
            if sub_60a6e624[address(msg.sender)].field_256 and ext_call.return_data[0] > -1 / sub_60a6e624[address(msg.sender)].field_256:
                revert with 0, 17
            if sub_60a6e624[address(msg.sender)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                revert with 0, 17
            sub_60a6e624[msg.sender].field_0 = 0
            sub_60a6e624[msg.sender].field_256 = 0
            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor5, (sub_60a6e624[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_60a6e624[msg.sender].field_0:
                revert with 0, 17
            if ext_call.return_data[0] - sub_60a6e624[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_60a6e624[msg.sender].field_0:
                revert with 0, 17
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100:
                revert with 0, 17
            if (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100:
                call stor5.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100):
                call stor5.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            emit Withdrawal((sub_60a6e624[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, stor5, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100, msg.sender);
}

function withdrawUSDC(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor12[address(arg1)]:
        revert with 0, 'Invalid charity'
    if arg2 >= 100:
        revert with 0, 'Invalid percentage'
    if not sub_f9f5cc73[msg.sender].field_0:
        revert with 0, 'Nothing to withdraw'
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_f9f5cc73[address(msg.sender)].field_256:
        sub_f9f5cc73[msg.sender].field_0 = 0
        sub_f9f5cc73[msg.sender].field_256 = 0
        call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args stor6, 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_f9f5cc73[msg.sender].field_0:
            revert with 0, 17
        if ext_call.return_data[0] - sub_f9f5cc73[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_f9f5cc73[msg.sender].field_0:
            revert with 0, 17
        if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100:
            revert with 0, 17
        if (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100:
            call stor6.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Could not transfer tokens'
        if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100):
            call stor6.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Could not transfer tokens'
        emit Withdrawal(0, stor6, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100, msg.sender);
    else:
        if not ext_call.return_data[0]:
            sub_f9f5cc73[msg.sender].field_0 = 0
            sub_f9f5cc73[msg.sender].field_256 = 0
            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor6, 0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_f9f5cc73[msg.sender].field_0:
                revert with 0, 17
            if ext_call.return_data[0] - sub_f9f5cc73[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_f9f5cc73[msg.sender].field_0:
                revert with 0, 17
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100:
                revert with 0, 17
            if (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100:
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100):
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            emit Withdrawal(0, stor6, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100, msg.sender);
        else:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_f9f5cc73[address(msg.sender)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, '', 0
            if sub_f9f5cc73[address(msg.sender)].field_256 and ext_call.return_data[0] > -1 / sub_f9f5cc73[address(msg.sender)].field_256:
                revert with 0, 17
            if sub_f9f5cc73[address(msg.sender)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                revert with 0, 17
            sub_f9f5cc73[msg.sender].field_0 = 0
            sub_f9f5cc73[msg.sender].field_256 = 0
            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor6, (sub_f9f5cc73[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_f9f5cc73[msg.sender].field_0:
                revert with 0, 17
            if ext_call.return_data[0] - sub_f9f5cc73[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_f9f5cc73[msg.sender].field_0:
                revert with 0, 17
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100:
                revert with 0, 17
            if (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100:
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100):
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            emit Withdrawal((sub_f9f5cc73[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, stor6, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100, msg.sender);
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x365833e1(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x00859249(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor12[address(arg1)] = uint8(bool(arg2))
                else:
                    if unknown_0x108c31f5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        staticcall stor1.getReserveNormalizedIncome(address arg1) with:
                                gas gas_remaining wei
                               args stor3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_efca2a3e[address(arg1)].field_256:
                            return 0
                        if not ext_call.return_data[0]:
                            return 0
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if sub_efca2a3e[address(arg1)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                            revert with 0, '', 0
                        if sub_efca2a3e[address(arg1)].field_256 and ext_call.return_data[0] > -1 / sub_efca2a3e[address(arg1)].field_256:
                            revert with 0, 17
                        if sub_efca2a3e[address(arg1)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                            revert with 0, 17
                        return ((sub_efca2a3e[address(arg1)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if uint32(call.func_hash) >> 224 != unknown_0x1481794e(?????):
                        if unknown_0x2478239a(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return bool(stor12[arg1])
                        if uint32(call.func_hash) >> 224 != unknown_0x26787cd7(?????):
                            require unknown_0x2c6ea668(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            staticcall stor1.getReserveNormalizedIncome(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg2 == address(arg2)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call address(arg2).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens'
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if not stor12[address(arg1)]:
                            revert with 0, 'Invalid charity'
                        if arg2 >= 100:
                            revert with 0, 'Invalid percentage'
                        if not sub_60a6e624[msg.sender].field_0:
                            revert with 0, 'Nothing to withdraw'
                        staticcall stor1.getReserveNormalizedIncome(address arg1) with:
                                gas gas_remaining wei
                               args stor5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_60a6e624[address(msg.sender)].field_256:
                            sub_60a6e624[msg.sender].field_0 = 0
                            sub_60a6e624[msg.sender].field_256 = 0
                            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args stor5, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < sub_60a6e624[msg.sender].field_0:
                                revert with 0, 17
                            if ext_call.return_data[0] - sub_60a6e624[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_60a6e624[msg.sender].field_0:
                                revert with 0, 17
                            if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100:
                                revert with 0, 17
                            if (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100:
                                call stor5.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Could not transfer tokens'
                            if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100):
                                call stor5.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Could not transfer tokens'
                            emit Withdrawal(0, stor5, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100, msg.sender);
                        else:
                            if not ext_call.return_data[0]:
                                sub_60a6e624[msg.sender].field_0 = 0
                                sub_60a6e624[msg.sender].field_256 = 0
                                call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args stor5, 0, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < sub_60a6e624[msg.sender].field_0:
                                    revert with 0, 17
                                if ext_call.return_data[0] - sub_60a6e624[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_60a6e624[msg.sender].field_0:
                                    revert with 0, 17
                                if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100:
                                    revert with 0, 17
                                if (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100:
                                    call stor5.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Could not transfer tokens'
                                if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100):
                                    call stor5.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Could not transfer tokens'
                                emit Withdrawal(0, stor5, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100, msg.sender);
                            else:
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if sub_60a6e624[address(msg.sender)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                                    revert with 0, '', 0
                                if sub_60a6e624[address(msg.sender)].field_256 and ext_call.return_data[0] > -1 / sub_60a6e624[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if sub_60a6e624[address(msg.sender)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                sub_60a6e624[msg.sender].field_0 = 0
                                sub_60a6e624[msg.sender].field_256 = 0
                                call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args stor5, (sub_60a6e624[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < sub_60a6e624[msg.sender].field_0:
                                    revert with 0, 17
                                if ext_call.return_data[0] - sub_60a6e624[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_60a6e624[msg.sender].field_0:
                                    revert with 0, 17
                                if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100:
                                    revert with 0, 17
                                if (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100:
                                    call stor5.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Could not transfer tokens'
                                if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100):
                                    call stor5.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Could not transfer tokens'
                                emit Withdrawal((sub_60a6e624[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, stor5, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_60a6e624[msg.sender].field_0 * arg2) / 100, msg.sender);
            else:
                if unknown_0x44aa04b1(?????) <= uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x44aa04b1(?????):
                        if unknown_0x60a6e624(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return sub_60a6e624[arg1].field_0, sub_60a6e624[arg1].field_256
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                        require unknown_0x77b7dc5f(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return sub_77b7dc5f[arg1].field_0, sub_77b7dc5f[arg1].field_256
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor2, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if unknown_0x365833e1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        call stor4.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens'
                        require ext_code.size(stor1)
                        call stor1.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args stor4, arg1, this.address, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Deposit(arg1, stor4, msg.sender);
                        if sub_77b7dc5f[msg.sender].field_0 > !arg1:
                            revert with 0, 17
                        sub_77b7dc5f[msg.sender].field_0 += arg1
                        staticcall stor1.getReserveData(address arg1) with:
                                gas gas_remaining wei
                               args stor4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 384
                        if not bool((2 * ceil32(return_data.size)) + 512 <= test266151307()):
                            revert with 0, 65
                        require return_data.size >= 32
                        if not bool((2 * ceil32(return_data.size)) + 544 <= test266151307()):
                            revert with 0, 65
                        require ext_call.return_data[32] == ext_call.return_data[48 len 16]
                        require ext_call.return_data[64] == ext_call.return_data[80 len 16]
                        require ext_call.return_data[96] == ext_call.return_data[112 len 16]
                        require ext_call.return_data[128] == ext_call.return_data[144 len 16]
                        require ext_call.return_data[160] == ext_call.return_data[176 len 16]
                        require ext_call.return_data[192] == ext_call.return_data[219 len 5]
                        require ext_call.return_data[224] == ext_call.return_data[236 len 20]
                        require ext_call.return_data[256] == ext_call.return_data[268 len 20]
                        require ext_call.return_data[288] == ext_call.return_data[300 len 20]
                        require ext_call.return_data[320] == ext_call.return_data[332 len 20]
                        require ext_call.return_data[352] == ext_call.return_data[383 len 1]
                        if not uint128(ext_call.return_data[32]):
                            revert with 0, '', 0
                        if -1 < uint128(ext_call.return_data[32]) / 2:
                            revert with 0, 17
                        if arg1 > -(uint128(ext_call.return_data[32]) / 2) - 1 / 1000000000 * 10^18:
                            revert with 0, '', 0
                        if arg1 and 1000000000 * 10^18 > -1 / arg1:
                            revert with 0, 17
                        if 1000000000 * 10^18 * arg1 > !(uint128(ext_call.return_data[32]) / 2):
                            revert with 0, 17
                        if not uint128(ext_call.return_data[32]):
                            revert with 0, 18
                        if sub_77b7dc5f[msg.sender].field_256 > !((1000000000 * 10^18 * arg1) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])):
                            revert with 0, 17
                        sub_77b7dc5f[msg.sender].field_256 += (1000000000 * 10^18 * arg1) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])
                    else:
                        if unknown_0x3aadc501(?????) == uint32(call.func_hash) >> 224:
                            if msg.value <= 0:
                                revert with 0, 'Invalid value'
                            require ext_code.size(stor2)
                            call stor2.depositETH(address arg1, address arg2, uint16 arg3) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args stor1, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_efca2a3e[msg.sender].field_0 > !msg.value:
                                revert with 0, 17
                            sub_efca2a3e[msg.sender].field_0 += msg.value
                            staticcall stor1.getReserveData(address arg1) with:
                                    gas gas_remaining wei
                                   args stor3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 384
                            if not bool(ceil32(return_data.size) + 512 <= test266151307()):
                                revert with 0, 65
                            require return_data.size >= 32
                            if not bool(ceil32(return_data.size) + 544 <= test266151307()):
                                revert with 0, 65
                            require ext_call.return_data[32] == ext_call.return_data[48 len 16]
                            require ext_call.return_data[64] == ext_call.return_data[80 len 16]
                            require ext_call.return_data[96] == ext_call.return_data[112 len 16]
                            require ext_call.return_data[128] == ext_call.return_data[144 len 16]
                            require ext_call.return_data[160] == ext_call.return_data[176 len 16]
                            require ext_call.return_data[192] == ext_call.return_data[219 len 5]
                            require ext_call.return_data[224] == ext_call.return_data[236 len 20]
                            require ext_call.return_data[256] == ext_call.return_data[268 len 20]
                            require ext_call.return_data[288] == ext_call.return_data[300 len 20]
                            require ext_call.return_data[320] == ext_call.return_data[332 len 20]
                            require ext_call.return_data[352] == ext_call.return_data[383 len 1]
                            if not uint128(ext_call.return_data[32]):
                                revert with 0, '', 0
                            if -1 < uint128(ext_call.return_data[32]) / 2:
                                revert with 0, 17
                            if msg.value > -(uint128(ext_call.return_data[32]) / 2) - 1 / 1000000000 * 10^18:
                                revert with 0, '', 0
                            if msg.value and 1000000000 * 10^18 > -1 / msg.value:
                                revert with 0, 17
                            if 1000000000 * 10^18 * msg.value > !(uint128(ext_call.return_data[32]) / 2):
                                revert with 0, 17
                            if not uint128(ext_call.return_data[32]):
                                revert with 0, 18
                            if sub_efca2a3e[msg.sender].field_256 > !((1000000000 * 10^18 * msg.value) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])):
                                revert with 0, 17
                            sub_efca2a3e[msg.sender].field_256 += (1000000000 * 10^18 * msg.value) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])
                            emit 0x5fcf78e3: msg.value, msg.sender
                        else:
                            require unknown_0x44471fd9(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            if not stor12[address(arg1)]:
                                revert with 0, 'Invalid charity'
                            if arg2 >= 100:
                                revert with 0, 'Invalid percentage'
                            if not sub_f9f5cc73[msg.sender].field_0:
                                revert with 0, 'Nothing to withdraw'
                            staticcall stor1.getReserveNormalizedIncome(address arg1) with:
                                    gas gas_remaining wei
                                   args stor6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_f9f5cc73[address(msg.sender)].field_256:
                                sub_f9f5cc73[msg.sender].field_0 = 0
                                sub_f9f5cc73[msg.sender].field_256 = 0
                                call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args stor6, 0, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < sub_f9f5cc73[msg.sender].field_0:
                                    revert with 0, 17
                                if ext_call.return_data[0] - sub_f9f5cc73[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_f9f5cc73[msg.sender].field_0:
                                    revert with 0, 17
                                if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100:
                                    revert with 0, 17
                                if (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100:
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Could not transfer tokens'
                                if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100):
                                    call stor6.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Could not transfer tokens'
                                emit Withdrawal(0, stor6, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100, msg.sender);
                            else:
                                if not ext_call.return_data[0]:
                                    sub_f9f5cc73[msg.sender].field_0 = 0
                                    sub_f9f5cc73[msg.sender].field_256 = 0
                                    call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args stor6, 0, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_f9f5cc73[msg.sender].field_0:
                                        revert with 0, 17
                                    if ext_call.return_data[0] - sub_f9f5cc73[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_f9f5cc73[msg.sender].field_0:
                                        revert with 0, 17
                                    if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100:
                                        revert with 0, 17
                                    if (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100:
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Could not transfer tokens'
                                    if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100):
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Could not transfer tokens'
                                    emit Withdrawal(0, stor6, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100, msg.sender);
                                else:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if sub_f9f5cc73[address(msg.sender)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                                        revert with 0, '', 0
                                    if sub_f9f5cc73[address(msg.sender)].field_256 and ext_call.return_data[0] > -1 / sub_f9f5cc73[address(msg.sender)].field_256:
                                        revert with 0, 17
                                    if sub_f9f5cc73[address(msg.sender)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                        revert with 0, 17
                                    sub_f9f5cc73[msg.sender].field_0 = 0
                                    sub_f9f5cc73[msg.sender].field_256 = 0
                                    call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args stor6, (sub_f9f5cc73[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_f9f5cc73[msg.sender].field_0:
                                        revert with 0, 17
                                    if ext_call.return_data[0] - sub_f9f5cc73[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_f9f5cc73[msg.sender].field_0:
                                        revert with 0, 17
                                    if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100:
                                        revert with 0, 17
                                    if (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100:
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Could not transfer tokens'
                                    if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100):
                                        call stor6.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'Could not transfer tokens'
                                    emit Withdrawal((sub_f9f5cc73[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, stor6, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_f9f5cc73[msg.sender].field_0 * arg2) / 100, msg.sender);
        else:
            if unknown_0xe7c80f17(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xa330530a(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if uint32(call.func_hash) >> 224 != unknown_0x93362eee(?????):
                        require unknown_0x99ba9578(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call msg.sender with:
                           value arg1 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
                            gas gas_remaining wei
                           args stor4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not sub_77b7dc5f[address(arg1)].field_256:
                        return 0
                    if not ext_call.return_data[0]:
                        return 0
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if sub_77b7dc5f[address(arg1)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                        revert with 0, '', 0
                    if sub_77b7dc5f[address(arg1)].field_256 and ext_call.return_data[0] > -1 / sub_77b7dc5f[address(arg1)].field_256:
                        revert with 0, 17
                    if sub_77b7dc5f[address(arg1)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                        revert with 0, 17
                    return ((sub_77b7dc5f[address(arg1)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
                if unknown_0xa330530a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
                            gas gas_remaining wei
                           args stor5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not sub_60a6e624[address(arg1)].field_256:
                        return 0
                    if not ext_call.return_data[0]:
                        return 0
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if sub_60a6e624[address(arg1)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                        revert with 0, '', 0
                    if sub_60a6e624[address(arg1)].field_256 and ext_call.return_data[0] > -1 / sub_60a6e624[address(arg1)].field_256:
                        revert with 0, 17
                    if sub_60a6e624[address(arg1)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                        revert with 0, 17
                    return ((sub_60a6e624[address(arg1)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
                if uint32(call.func_hash) >> 224 != unknown_0xb2b6b6c9(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xca69282f(?????):
                        require unknown_0xdbb10085(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor1, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg2 == address(arg2)
                    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg1:
                        return 0
                    if not ext_call.return_data[0]:
                        return 0
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg1 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                        revert with 0, '', 0
                    if arg1 and ext_call.return_data[0] > -1 / arg1:
                        revert with 0, 17
                    if arg1 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                        revert with 0, 17
                    return ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if not stor12[address(arg1)]:
                    revert with 0, 'Invalid charity'
                if arg2 >= 100:
                    revert with 0, 'Invalid percentage'
                if not sub_efca2a3e[msg.sender].field_0:
                    revert with 0, 'Nothing to withdraw'
                staticcall stor1.getReserveNormalizedIncome(address arg1) with:
                        gas gas_remaining wei
                       args stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not sub_efca2a3e[address(msg.sender)].field_256:
                    sub_efca2a3e[msg.sender].field_0 = 0
                    sub_efca2a3e[msg.sender].field_256 = 0
                    require ext_code.size(stor2)
                    call stor2.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args stor1, 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if 0 < sub_efca2a3e[msg.sender].field_0:
                        revert with 0, 17
                    if -sub_efca2a3e[msg.sender].field_0 and arg2 > -1 / -sub_efca2a3e[msg.sender].field_0:
                        revert with 0, 17
                    if 0 < -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                        revert with 0, 17
                    if -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                        call address(arg1) with:
                           value -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with 0, 'Could not transfer tokens'
                    if --1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                        call msg.sender with:
                           value --1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with 0, 'Could not transfer tokens'
                    emit 0x9a54804c: 0, address(arg1), arg2, 0, -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100, msg.sender
                else:
                    if not ext_call.return_data[0]:
                        sub_efca2a3e[msg.sender].field_0 = 0
                        sub_efca2a3e[msg.sender].field_256 = 0
                        require ext_code.size(stor2)
                        call stor2.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args stor1, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if 0 < sub_efca2a3e[msg.sender].field_0:
                            revert with 0, 17
                        if -sub_efca2a3e[msg.sender].field_0 and arg2 > -1 / -sub_efca2a3e[msg.sender].field_0:
                            revert with 0, 17
                        if 0 < -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                            revert with 0, 17
                        if -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                            call address(arg1) with:
                               value -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with 0, 'Could not transfer tokens'
                        if --1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                            call msg.sender with:
                               value --1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with 0, 'Could not transfer tokens'
                        emit 0x9a54804c: 0, address(arg1), arg2, 0, -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100, msg.sender
                    else:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if sub_efca2a3e[address(msg.sender)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                            revert with 0, '', 0
                        if sub_efca2a3e[address(msg.sender)].field_256 and ext_call.return_data[0] > -1 / sub_efca2a3e[address(msg.sender)].field_256:
                            revert with 0, 17
                        if sub_efca2a3e[address(msg.sender)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                            revert with 0, 17
                        sub_efca2a3e[msg.sender].field_0 = 0
                        sub_efca2a3e[msg.sender].field_256 = 0
                        require ext_code.size(stor2)
                        call stor2.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args stor1, (sub_efca2a3e[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if 0 < sub_efca2a3e[msg.sender].field_0:
                            revert with 0, 17
                        if -sub_efca2a3e[msg.sender].field_0 and arg2 > -1 / -sub_efca2a3e[msg.sender].field_0:
                            revert with 0, 17
                        if 0 < -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                            revert with 0, 17
                        if -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                            call address(arg1) with:
                               value -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with 0, 'Could not transfer tokens'
                        if --1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100:
                            call msg.sender with:
                               value --1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with 0, 'Could not transfer tokens'
                        emit 0x9a54804c: (sub_efca2a3e[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, address(arg1), arg2, 0, -1 * sub_efca2a3e[msg.sender].field_0 * arg2 / 100, msg.sender
            else:
                if unknown_0xefca2a3e(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0xe7c80f17(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xeabdd572(?????):
                            require unknown_0xeb47ea66(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            staticcall stor1.getReserveNormalizedIncome(address arg1) with:
                                    gas gas_remaining wei
                                   args stor6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_f9f5cc73[address(arg1)].field_256:
                                return 0
                            if not ext_call.return_data[0]:
                                return 0
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if sub_f9f5cc73[address(arg1)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                                revert with 0, '', 0
                            if sub_f9f5cc73[address(arg1)].field_256 and ext_call.return_data[0] > -1 / sub_f9f5cc73[address(arg1)].field_256:
                                revert with 0, 17
                            if sub_f9f5cc73[address(arg1)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                revert with 0, 17
                            return ((sub_f9f5cc73[address(arg1)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if not stor12[address(arg1)]:
                            revert with 0, 'Invalid charity'
                        if arg2 >= 100:
                            revert with 0, 'Invalid percentage'
                        if not sub_77b7dc5f[msg.sender].field_0:
                            revert with 0, 'Nothing to withdraw'
                        staticcall stor1.getReserveNormalizedIncome(address arg1) with:
                                gas gas_remaining wei
                               args stor4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_77b7dc5f[address(msg.sender)].field_256:
                            sub_77b7dc5f[msg.sender].field_0 = 0
                            sub_77b7dc5f[msg.sender].field_256 = 0
                            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args stor4, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < sub_77b7dc5f[msg.sender].field_0:
                                revert with 0, 17
                            if ext_call.return_data[0] - sub_77b7dc5f[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_77b7dc5f[msg.sender].field_0:
                                revert with 0, 17
                            if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100:
                                revert with 0, 17
                            if (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100:
                                call stor4.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Could not transfer tokens'
                            if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100):
                                call stor4.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Could not transfer tokens'
                            emit Withdrawal(0, stor4, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100, msg.sender);
                        else:
                            if not ext_call.return_data[0]:
                                sub_77b7dc5f[msg.sender].field_0 = 0
                                sub_77b7dc5f[msg.sender].field_256 = 0
                                call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args stor4, 0, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < sub_77b7dc5f[msg.sender].field_0:
                                    revert with 0, 17
                                if ext_call.return_data[0] - sub_77b7dc5f[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_77b7dc5f[msg.sender].field_0:
                                    revert with 0, 17
                                if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100:
                                    revert with 0, 17
                                if (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100:
                                    call stor4.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Could not transfer tokens'
                                if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100):
                                    call stor4.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Could not transfer tokens'
                                emit Withdrawal(0, stor4, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100, msg.sender);
                            else:
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if sub_77b7dc5f[address(msg.sender)].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                                    revert with 0, '', 0
                                if sub_77b7dc5f[address(msg.sender)].field_256 and ext_call.return_data[0] > -1 / sub_77b7dc5f[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if sub_77b7dc5f[address(msg.sender)].field_256 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                                    revert with 0, 17
                                sub_77b7dc5f[msg.sender].field_0 = 0
                                sub_77b7dc5f[msg.sender].field_256 = 0
                                call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args stor4, (sub_77b7dc5f[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < sub_77b7dc5f[msg.sender].field_0:
                                    revert with 0, 17
                                if ext_call.return_data[0] - sub_77b7dc5f[msg.sender].field_0 and arg2 > -1 / ext_call.return_data[0] - sub_77b7dc5f[msg.sender].field_0:
                                    revert with 0, 17
                                if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100:
                                    revert with 0, 17
                                if (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100:
                                    call stor4.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Could not transfer tokens'
                                if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100):
                                    call stor4.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Could not transfer tokens'
                                emit Withdrawal((sub_77b7dc5f[address(msg.sender)].field_256 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, stor4, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - (sub_77b7dc5f[msg.sender].field_0 * arg2) / 100, msg.sender);
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        call stor5.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens'
                        require ext_code.size(stor1)
                        call stor1.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args stor5, arg1, this.address, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Deposit(arg1, stor5, msg.sender);
                        if sub_60a6e624[msg.sender].field_0 > !arg1:
                            revert with 0, 17
                        sub_60a6e624[msg.sender].field_0 += arg1
                        staticcall stor1.getReserveData(address arg1) with:
                                gas gas_remaining wei
                               args stor5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 384
                        if not bool((2 * ceil32(return_data.size)) + 512 <= test266151307()):
                            revert with 0, 65
                        require return_data.size >= 32
                        if not bool((2 * ceil32(return_data.size)) + 544 <= test266151307()):
                            revert with 0, 65
                        require ext_call.return_data[32] == ext_call.return_data[48 len 16]
                        require ext_call.return_data[64] == ext_call.return_data[80 len 16]
                        require ext_call.return_data[96] == ext_call.return_data[112 len 16]
                        require ext_call.return_data[128] == ext_call.return_data[144 len 16]
                        require ext_call.return_data[160] == ext_call.return_data[176 len 16]
                        require ext_call.return_data[192] == ext_call.return_data[219 len 5]
                        require ext_call.return_data[224] == ext_call.return_data[236 len 20]
                        require ext_call.return_data[256] == ext_call.return_data[268 len 20]
                        require ext_call.return_data[288] == ext_call.return_data[300 len 20]
                        require ext_call.return_data[320] == ext_call.return_data[332 len 20]
                        require ext_call.return_data[352] == ext_call.return_data[383 len 1]
                        if not uint128(ext_call.return_data[32]):
                            revert with 0, '', 0
                        if -1 < uint128(ext_call.return_data[32]) / 2:
                            revert with 0, 17
                        if arg1 > -(uint128(ext_call.return_data[32]) / 2) - 1 / 1000000000 * 10^18:
                            revert with 0, '', 0
                        if arg1 and 1000000000 * 10^18 > -1 / arg1:
                            revert with 0, 17
                        if 1000000000 * 10^18 * arg1 > !(uint128(ext_call.return_data[32]) / 2):
                            revert with 0, 17
                        if not uint128(ext_call.return_data[32]):
                            revert with 0, 18
                        if sub_60a6e624[msg.sender].field_256 > !((1000000000 * 10^18 * arg1) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])):
                            revert with 0, 17
                        sub_60a6e624[msg.sender].field_256 += (1000000000 * 10^18 * arg1) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])
                else:
                    if unknown_0xefca2a3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return sub_efca2a3e[arg1].field_0, sub_efca2a3e[arg1].field_256
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xf688bcfb(?????):
                            require unknown_0xf9f5cc73(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return sub_f9f5cc73[arg1].field_0, sub_f9f5cc73[arg1].field_256
                        require not msg.value
                        require calldata.size - 4 >= 32
                        call stor6.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Could not transfer tokens'
                        require ext_code.size(stor1)
                        call stor1.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args stor6, arg1, this.address, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Deposit(arg1, stor6, msg.sender);
                        if sub_f9f5cc73[msg.sender].field_0 > !arg1:
                            revert with 0, 17
                        sub_f9f5cc73[msg.sender].field_0 += arg1
                        staticcall stor1.getReserveData(address arg1) with:
                                gas gas_remaining wei
                               args stor6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 384
                        if not bool((2 * ceil32(return_data.size)) + 512 <= test266151307()):
                            revert with 0, 65
                        require return_data.size >= 32
                        if not bool((2 * ceil32(return_data.size)) + 544 <= test266151307()):
                            revert with 0, 65
                        require ext_call.return_data[32] == ext_call.return_data[48 len 16]
                        require ext_call.return_data[64] == ext_call.return_data[80 len 16]
                        require ext_call.return_data[96] == ext_call.return_data[112 len 16]
                        require ext_call.return_data[128] == ext_call.return_data[144 len 16]
                        require ext_call.return_data[160] == ext_call.return_data[176 len 16]
                        require ext_call.return_data[192] == ext_call.return_data[219 len 5]
                        require ext_call.return_data[224] == ext_call.return_data[236 len 20]
                        require ext_call.return_data[256] == ext_call.return_data[268 len 20]
                        require ext_call.return_data[288] == ext_call.return_data[300 len 20]
                        require ext_call.return_data[320] == ext_call.return_data[332 len 20]
                        require ext_call.return_data[352] == ext_call.return_data[383 len 1]
                        if not uint128(ext_call.return_data[32]):
                            revert with 0, '', 0
                        if -1 < uint128(ext_call.return_data[32]) / 2:
                            revert with 0, 17
                        if arg1 > -(uint128(ext_call.return_data[32]) / 2) - 1 / 1000000000 * 10^18:
                            revert with 0, '', 0
                        if arg1 and 1000000000 * 10^18 > -1 / arg1:
                            revert with 0, 17
                        if 1000000000 * 10^18 * arg1 > !(uint128(ext_call.return_data[32]) / 2):
                            revert with 0, 17
                        if not uint128(ext_call.return_data[32]):
                            revert with 0, 18
                        if sub_f9f5cc73[msg.sender].field_256 > !((1000000000 * 10^18 * arg1) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])):
                            revert with 0, 17
                        sub_f9f5cc73[msg.sender].field_256 += (1000000000 * 10^18 * arg1) + (uint128(ext_call.return_data[32]) / 2) / uint128(ext_call.return_data[32])
}



}

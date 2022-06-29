contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sub_82e19fbb;
mapping of uint256 sub_55f5e7de;
array of struct sub_05f86dd8;
array of address sub_9ee790b6;
uint128 maxSlots;
uint128 usedSlots; offset 128
uint8 stor6;

function sub_05f86dd8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_05f86dd8.length
    return sub_05f86dd8[arg1].field_0
}

function usedSlots() payable {
    return usedSlots
}

function sub_55f5e7de(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_55f5e7de[arg1]
}

function sub_82e19fbb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_82e19fbb[arg1]
}

function owner() payable {
    return owner
}

function sub_9ee790b6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_9ee790b6.length
    return sub_9ee790b6[arg1]
}

function getFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_55f5e7de[address(arg1)]
}

function refundable() payable {
    return bool(stor6)
}

function maxSlots() payable {
    return maxSlots
}

function _fallback() payable {
    revert
}

function accepted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (sub_55f5e7de[address(arg1)] > 0)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRefundable(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = uint8(arg1)
}

function withdrawNative() payable {
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

function sub_1ab50569(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_82e19fbb[address(arg1)] = 0
    sub_05f86dd8.length++
    sub_05f86dd8[sub_05f86dd8.length].field_0 = address(arg1)
    if usedSlots == test266151307():
        revert with 'NH{q', 17
    usedSlots = uint128(usedSlots + 1)
}

function refund() payable {
    if bool(stor6) != 1:
        revert with 0, 'You can't get a refund.'
    if not sub_82e19fbb[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to buy the whitelist first lol'
    sub_82e19fbb[address(msg.sender)] = 0
    require ext_code.size(sub_82e19fbb[address(msg.sender)])
    call sub_82e19fbb[address(msg.sender)].0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_55f5e7de[stor1[address(msg.sender)]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(address arg1) payable {
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

function whitelistedUsers() payable {
    mem[64] = (32 * sub_05f86dd8.length) + 128
    mem[96] = sub_05f86dd8.length
    if not sub_05f86dd8.length:
        mem[(32 * sub_05f86dd8.length) + 128] = 32
        mem[(32 * sub_05f86dd8.length) + 160] = sub_05f86dd8.length
        idx = 0
        s = 128
        t = (32 * sub_05f86dd8.length) + 192
        while idx < sub_05f86dd8.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_05f86dd8.length) + 128
           len (96 * sub_05f86dd8.length) + 64
    mem[128] = address(sub_05f86dd8.field_0)
    idx = 128
    s = 0
    while (32 * sub_05f86dd8.length) + 96 > idx:
        mem[idx + 32] = sub_05f86dd8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_05f86dd8.length) + 128] = 32
    mem[(32 * sub_05f86dd8.length) + 160] = sub_05f86dd8.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_05f86dd8.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_05f86dd8.length) + -mem[64] + 192
}

function sub_63bb7076(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if usedSlots > maxSlots:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'All whitelist slots are sold out.'
    if sub_55f5e7de[address(arg1)] <= 0:
        revert with 0, 'This token isn't accepted.'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= sub_55f5e7de[address(arg1)]:
        revert with 0, 'Not enough approved'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= sub_55f5e7de[address(arg1)]:
        revert with 0, 'Not enough balance'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_55f5e7de[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_82e19fbb[address(msg.sender)] = address(arg1)
    sub_05f86dd8.length++
    sub_05f86dd8[sub_05f86dd8.length].field_0 = msg.sender
    if usedSlots == test266151307():
        revert with 'NH{q', 17
    usedSlots = uint128(usedSlots + 1)
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_d5db1f8e;
uint256 sub_823afc27;
uint8 stor3;
uint8 stor3; offset 8
address stor3;
address stor3; offset 16
uint256 stor3; offset 8
array of struct stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
array of struct stor7;
mapping of uint256 stor8;
address stor9;

function sub_823afc27(?) payable {
    return sub_823afc27
}

function owner() payable {
    return owner
}

function sub_d5db1f8e(?) payable {
    return sub_d5db1f8e
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor9 = arg1
}

function updateWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    address(stor3.field_16) = arg1
}

function getNodeCount() payable {
    if not stor5[address(msg.sender)]:
        return 0
    if not stor6[address(msg.sender)]:
        if not stor5[address(msg.sender)]:
            revert with 0, 'EnumerableMap: nonexistent key'
    return stor6[address(msg.sender)]
}

function sub_da78ae0d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    uint8(stor3.field_0) = uint8(bool(arg1))
    return bool(uint8(bool(arg1)))
}

function sub_877720cc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    Mask(248, 0, stor3.field_8) = Mask(248, 0, bool(arg1))
    return bool(uint8(bool(arg1)))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_765f9809(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require address(arg1)
    if not stor5[address(arg1)]:
        revert with 0, 'Wallet does not exists'
    if not stor6[address(arg1)]:
        if not stor5[address(arg1)]:
            revert with 0, 'EnumerableMap: nonexistent key'
    return stor6[address(arg1)]
}

function sub_4d246057(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if stor8[address(arg1)]:
        revert with 0, 'Already on the access list'
    if not stor8[address(arg1)]:
        stor7.length++
        stor7[stor7.length].field_0 = address(arg1)
        stor7[stor7.length].field_160 = 0
        stor8[address(arg1)] = stor7.length
}

function getWhitelistAddresses() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if stor7.length:
        mem[128] = uint256(stor7.field_0)
        idx = 128
        s = 0
        while (32 * stor7.length) + 96 > idx:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor7.length, data=mem[128 len 32 * stor7.length])
    mem[(32 * stor7.length) + 128] = 32
    mem[(32 * stor7.length) + 160] = stor7.length
    mem[(32 * stor7.length) + 192 len 32 * stor7.length] = mem[128 len 32 * stor7.length]
    return memory
      from (32 * stor7.length) + 128
       len (96 * stor7.length) + 64
}

function sub_6c42f8e9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not stor8[address(arg1)]:
        revert with 0, 'Not on the list'
    if stor8[address(arg1)]:
        if stor8[address(arg1)] < 1:
            revert with 0, 17
        if stor7.length < 1:
            revert with 0, 17
        if stor7.length - 1 != stor8[address(arg1)] - 1:
            if stor7.length - 1 >= stor7.length:
                revert with 0, 50
            if stor8[address(arg1)] - 1 >= stor7.length:
                revert with 0, 50
            stor7[stor8[address(arg1)]].field_0 = stor7[stor7.length].field_0
            stor8[stor7[stor7.length].field_0] = stor8[address(arg1)]
        if not stor7.length:
            revert with 0, 49
        stor7[stor7.length].field_0 = 0
        stor7.length--
        stor8[address(arg1)] = 0
}

function sub_b42918b5(?) payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if stor4.length > test266151307():
        revert with 0, 65
    mem[96] = stor4.length
    mem[64] = (32 * stor4.length) + 128
    if stor4.length:
        mem[128 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    idx = 0
    while idx < stor4.length:
        mem[0] = stor4[idx].field_0
        mem[32] = 6
        if idx >= stor4.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor4[idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor4.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4.length) + -mem[64] + 192
}

function sub_7643f493(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        if not stor8[mem[(32 * idx) + 140 len 20]]:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            if not stor8[mem[(32 * idx) + 140 len 20]]:
                stor7.length++
                stor7[stor7.length].field_0 = mem[(32 * idx) + 140 len 20]
                stor7[stor7.length].field_160 = 0
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 8
                stor8[address(mem[(32 * idx) + 128])] = stor7.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_9a53fa96(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor3.field_8):
        revert with 0, 'Whitelist not yet open'
    if uint8(stor3.field_0):
        if not stor8[address(msg.sender)]:
            revert with 0, 'Wallet is not whitelisted'
    if arg1 <= 0:
        revert with 0, 'Invalid buy amount'
    if arg1 > 5:
        revert with 0, 'Invalid buy amount'
    if not stor5[address(msg.sender)]:
        if 0 > !arg1:
            revert with 0, 17
        if arg1 > 5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You are going over the node limit, leave some for others'
    else:
        if not stor6[address(msg.sender)]:
            if not stor5[address(msg.sender)]:
                revert with 0, 'EnumerableMap: nonexistent key'
        if stor6[address(msg.sender)] > !arg1:
            revert with 0, 17
        if stor6[address(msg.sender)] + arg1 > 5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You are going over the node limit, leave some for others'
    if sub_823afc27 and arg1 > -1 / sub_823afc27:
        revert with 0, 17
    call stor9.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(stor3.field_0), sub_823afc27 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
    if not stor5[address(msg.sender)]:
        if 0 > !arg1:
            revert with 0, 17
        stor6[address(msg.sender)] = arg1
    else:
        if not stor6[address(msg.sender)]:
            if not stor5[address(msg.sender)]:
                revert with 0, 'EnumerableMap: nonexistent key'
        if stor6[address(msg.sender)] > !arg1:
            revert with 0, 17
        stor6[address(msg.sender)] += arg1
    if not stor5[address(msg.sender)]:
        stor4.length++
        stor4[stor4.length].field_0 = msg.sender
        stor4[stor4.length].field_160 = 0
        stor5[address(msg.sender)] = stor4.length
    emit 0xb1fa8185: msg.sender, arg1
}



}

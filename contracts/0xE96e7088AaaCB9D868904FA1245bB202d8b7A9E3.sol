contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#  - sub_6d6eaf57(?)
#  - getTokenDetails(uint256 arg1)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
address owner;
uint256 stor5;
uint256 stor6;
uint256 sub_7c7c6dac;
uint32 stor8; offset 224
address stor8;
uint32 stor9; offset 224
address stor9;
uint32 stor10; offset 224
address sub_35bba03fAddress;
uint256 stor11;
uint256 stor12;
array of struct stor13;
array of struct stor14;
mapping of struct stor15;
mapping of uint256 sub_26e91d6a;
mapping of uint256 _hold;
mapping of uint8 stor19;
mapping of uint8 stor20;
array of struct itemsForSale;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function itemsForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < itemsForSale.length
    return itemsForSale[arg1].field_0, 
           itemsForSale[arg1].field_256,
           itemsForSale[arg1].field_512,
           itemsForSale[arg1].field_768,
           itemsForSale[arg1].field_1024,
           itemsForSale[arg1].field_1280,
           bool(itemsForSale[arg1].field_1536)
}

function tokenApproved(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[arg1])
}

function _hold(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return _hold[arg1][arg2]
}

function sub_26e91d6a(?) {
    require calldata.size - 4 >= 32
    return sub_26e91d6a[arg1]
}

function sub_35bba03f(?) {
    return sub_35bba03fAddress
}

function sub_7c7c6dac(?) {
    return sub_7c7c6dac
}

function owner() {
    return owner
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_ca41205d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = arg1
    return arg1
}

function sub_9948912c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7c7c6dac = arg1
    return arg1
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

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
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
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_3e142fb6(?) {
    require calldata.size - 4 >= 32
    if arg1 < 6:
        revert with 0, 'Invalid ID'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[5][address(msg.sender)] <= 0:
        revert with 0, 'no walle'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[arg1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[5][address(msg.sender)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[5][address(msg.sender)]--
    emit 0xfec3d581: 5, 1, msg.sender, msg.sender, 0
    stor15[arg1].field_1792 = block.timestamp
}

function removeItem(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= itemsForSale.length:
        revert with 0, 'can't find id'
    if itemsForSale[arg1].field_0 != arg1:
        revert with 0, 'can't find id'
    if arg1 >= itemsForSale.length:
        revert with 0, 50
    if itemsForSale[arg1].field_1536:
        revert with 0, 'id already sold'
    if arg1 >= itemsForSale.length:
        revert with 0, 50
    require msg.sender == itemsForSale[arg1].field_768
    if arg1 >= itemsForSale.length:
        revert with 0, 50
    stor19[stor21[arg1].field_256][stor21[arg1].field_512] = 0
    itemsForSale[arg1].field_1536 = 1
    if _hold[address(msg.sender)][stor21[arg1].field_512] < itemsForSale[arg1].field_1280:
        revert with 0, 17
    _hold[address(msg.sender)][stor21[arg1].field_512] -= itemsForSale[arg1].field_1280
    if arg1 >= itemsForSale.length:
        revert with 0, 50
    itemsForSale[arg1].field_0 = 0
    itemsForSale[arg1].field_256 = 0
    itemsForSale[arg1].field_512 = 0
    itemsForSale[arg1].field_768 = 0
    itemsForSale[arg1].field_1024 = 0
    itemsForSale[arg1].field_1280 = 0
    itemsForSale[arg1].field_1536 = 0
    emit 0x2a38a4a0: arg1, msg.sender, itemsForSale[arg1].field_1280, itemsForSale[arg1].field_1024, block.timestamp
    return 0
}

function burn(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= 6:
        revert with 0, 'cant burn $Enjimon'
    if arg2:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        if balanceOf[arg2][address(arg1)] < arg3:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[arg2][address(arg1)] -= arg3
        emit 0xfec3d581: arg2, arg3, msg.sender, arg1, 0
        if stor11 > !arg3:
            revert with 0, 17
        stor11 += arg3
        emit 0xca86624b: msg.sender, arg2, arg3, block.timestamp
    else:
        if arg3 >= stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can't burn Escrowed value, decrease'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        if balanceOf[arg2][address(arg1)] < arg3:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[arg2][address(arg1)] -= arg3
        emit 0xfec3d581: arg2, arg3, msg.sender, arg1, 0
        if stor11 > !arg3:
            revert with 0, 17
        stor11 += arg3
        emit 0xc8123f17: msg.sender, arg2, arg3, block.timestamp
    emit 0x62cb9e94: 0, stor11, block.timestamp
}

function sub_a59a05e7(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(this.address)
    staticcall this.address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(this.address)
    staticcall this.address.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require 1 == bool(ext_call.return_data[0])
    if arg1 >= 6:
        revert with 0, 'Invalid ID'
    if not msg.sender:
        revert with 0, 'ERC1155: balance query for the zero address'
    if balanceOf[arg1][address(msg.sender)] < arg2:
        revert with 0, 'not enough tokens available!'
    if _hold[msg.sender][arg1] > !arg2:
        revert with 0, 17
    _hold[msg.sender][arg1] += arg2
    itemsForSale.length++
    itemsForSale[itemsForSale.length].field_0 = itemsForSale.length
    itemsForSale[itemsForSale.length].field_256 = this.address
    itemsForSale[itemsForSale.length].field_512 = arg1
    itemsForSale[itemsForSale.length].field_768 = msg.sender
    itemsForSale[itemsForSale.length].field_1024 = arg3
    itemsForSale[itemsForSale.length].field_1280 = arg2
    itemsForSale[itemsForSale.length].field_1536 = 0
    stor19[address(this.address)][arg1] = 1
    if msg.sender == address(stor9.field_0):
        revert with 0, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(stor9.field_0)] = 1
    emit ApprovalForAll(1, msg.sender, address(stor9.field_0));
    if itemsForSale.length >= itemsForSale.length:
        revert with 0, 50
    if itemsForSale[itemsForSale.length].field_0 != itemsForSale.length:
        revert with 0, 1
    emit 0xe11c6edf: itemsForSale.length, arg1, this.address, arg2, arg3
    return itemsForSale.length
}

function sub_653c556d(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(this.address)
    staticcall this.address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(this.address)
    staticcall this.address.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require 1 == bool(ext_call.return_data[0])
    if arg1 < 6:
        revert with 0, 'Invalid ID'
    if not msg.sender:
        revert with 0, 'ERC1155: balance query for the zero address'
    if balanceOf[arg1][address(msg.sender)] != 1:
        revert with 0, 'no $Enjimon'
    if stor19[this.address][arg1]:
        revert with 0, 'Item for sale already'
    if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
        revert with 0, 17
    if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
        revert with 0, 'Immutable Death'
    _hold[address(msg.sender)][arg1] = 1
    itemsForSale.length++
    itemsForSale[itemsForSale.length].field_0 = itemsForSale.length
    itemsForSale[itemsForSale.length].field_256 = this.address
    itemsForSale[itemsForSale.length].field_512 = arg1
    itemsForSale[itemsForSale.length].field_768 = msg.sender
    itemsForSale[itemsForSale.length].field_1024 = arg2
    itemsForSale[itemsForSale.length].field_1280 = 1
    itemsForSale[itemsForSale.length].field_1536 = 0
    stor19[address(this.address)][arg1] = 1
    if msg.sender == address(stor9.field_0):
        revert with 0, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(stor9.field_0)] = 1
    emit ApprovalForAll(1, msg.sender, address(stor9.field_0));
    if itemsForSale.length >= itemsForSale.length:
        revert with 0, 50
    if itemsForSale[itemsForSale.length].field_0 != itemsForSale.length:
        revert with 0, 1
    emit 0xc2a17761: itemsForSale.length, arg1, this.address, arg2
    return itemsForSale.length
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 0)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function uri(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function name() {
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor13.length):
            if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor13.length):
                if 31 < uint255(stor13.length) * 0.5:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor13.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 0, 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(uint255(stor13.length) * 0.5) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
        if ceil32(uint255(stor13.length) * 0.5) > uint255(stor13.length) * 0.5:
            mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)], mem[(2 * ceil32(uint255(stor13.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor13.length) * 0.5)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 0, 34
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor13.length):
            if 31 < uint255(stor13.length) * 0.5:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while (uint255(stor13.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
}

function symbol() {
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor14.length):
                if 31 < uint255(stor14.length) * 0.5:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor14.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 0, 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(uint255(stor14.length) * 0.5) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        if ceil32(uint255(stor14.length) * 0.5) > uint255(stor14.length) * 0.5:
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)], mem[(2 * ceil32(uint255(stor14.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor14.length) * 0.5)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 0, 34
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor14.length):
            if 31 < uint255(stor14.length) * 0.5:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while (uint255(stor14.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) > stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
}

function faucet() payable {
    if not sub_35bba03fAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[address(stor10.field_0)] < 50:
        revert with 0, 'faucet is empty'
    if msg.value < sub_7c7c6dac:
        revert with 0, 'Not enough for tx'
    call sub_35bba03fAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 0
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[128] = 1
    mem[160] = 0
    mem[192] = 1
    mem[224] = 50
    if balanceOf[address(stor10.field_0)] < 50:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(stor10.field_0)] -= 50
    if balanceOf[msg.sender] > -51:
        revert with 0, 17
    balanceOf[msg.sender] += 50
    emit 0xfec3d581: 0, 50, msg.sender, sub_35bba03fAddress, msg.sender
    if not ext_code.size(msg.sender):
        return 0
    mem[260] = msg.sender
    mem[292] = sub_35bba03fAddress
    mem[324] = 0
    mem[356] = 50
    mem[388] = 160
    mem[420] = 0
    mem[452 len 0] = None
    require ext_code.size(msg.sender)
    call msg.sender.0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, sub_35bba03fAddress, 0, 50, 160, 0
    mem[256] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            return 0
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(msg.sender) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[256 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ext_call.return_data[0] + 256] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257 < 256 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257 > test266151307():
        revert with 0, 65
    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
    if not ext_call.return_data[0] + 256:
        _141 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 52
        mem[_141 + 68] = 'ERC1155: transfer to non ERC1155'
        mem[_141 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
        revert with memory
          from mem[64]
           len _141 + -mem[64] + 132
    _139 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _143 = mem[ext_call.return_data[0] + 256]
    mem[mem[64] + 36] = mem[ext_call.return_data[0] + 256]
    mem[_139 + 68 len ceil32(_143)] = mem[ext_call.return_data[0] + 288 len ceil32(_143)]
    if ceil32(_143) > _143:
        mem[_139 + _143 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_143) + _139 + -mem[64] + 68
}

function sub_b271aab4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(stor20[address(arg1)]) != 1:
        revert with 0, 'We don't accept those'
    require arg2
    require arg2 < 6
    if not sub_35bba03fAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[arg2][address(stor10.field_0)] < 1:
        revert with 0, 'faucet is empty'
    if stor12 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    mem[100] = msg.sender
    mem[132] = address(stor8.field_0)
    mem[164] = 10^18 * stor12
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(stor8.field_0), 10^18 * stor12
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 0
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[ceil32(return_data.size) + 128] = 1
    mem[ceil32(return_data.size) + 160] = arg2
    mem[ceil32(return_data.size) + 192] = 1
    mem[ceil32(return_data.size) + 224] = 1
    if balanceOf[arg2][address(stor10.field_0)] < 1:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg2][address(stor10.field_0)]--
    if balanceOf[arg2][msg.sender] > -2:
        revert with 0, 17
    balanceOf[arg2][msg.sender]++
    emit 0xfec3d581: arg2, 1, msg.sender, sub_35bba03fAddress, msg.sender
    if not ext_code.size(msg.sender):
    mem[ceil32(return_data.size) + 260] = msg.sender
    mem[ceil32(return_data.size) + 292] = sub_35bba03fAddress
    mem[ceil32(return_data.size) + 324] = arg2
    mem[ceil32(return_data.size) + 356] = 1
    mem[ceil32(return_data.size) + 388] = 160
    mem[ceil32(return_data.size) + 420] = 0
    mem[ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(msg.sender)
    call msg.sender.0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, sub_35bba03fAddress, arg2, 1, 160, 0
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if 0xf23a6e6100000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0]):
        mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 260] = 32
        mem[(2 * ceil32(return_data.size)) + 292] = 40
        mem[(2 * ceil32(return_data.size)) + 324] = 'ERC1155: ERC1155Receiver rejecte'
        mem[(2 * ceil32(return_data.size)) + 356] = 'd tokens' << 192
        revert with memory
          from (2 * ceil32(return_data.size)) + 256
           len ceil32(return_data.size) + 132
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(msg.sender) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[ceil32(return_data.size) + 256 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] + 31) + 257 < 256 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] + 31) + 257 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] + 31) + 257
    if not ceil32(return_data.size) + ext_call.return_data[0] + 256:
        _135 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] + 31) + 257
        mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] + 31) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 52
        mem[_135 + 68] = 'ERC1155: transfer to non ERC1155'
        mem[_135 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
        revert with memory
          from mem[64]
           len _135 + -mem[64] + 132
    _133 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] + 31) + 257
    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 256] + 31) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _137 = mem[ceil32(return_data.size) + ext_call.return_data[0] + 256]
    mem[mem[64] + 36] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 256]
    mem[_133 + 68 len ceil32(_137)] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 288 len ceil32(_137)]
    if ceil32(_137) > _137:
        mem[_133 + _137 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_137) + _133 + -mem[64] + 68
}

function sub_8fdbedfa(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 < 6:
        revert with 0, 'invalid ID'
    if _hold[msg.sender][arg2]:
        revert with 0, 'remove from marketplace!'
    if stor15[arg2].field_1792 > !stor15[arg2].field_1280:
        revert with 0, 17
    require stor15[arg2].field_1792 + stor15[arg2].field_1280 > block.timestamp
    mem[96] = 0
    if not address(arg1):
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[128] = 1
    mem[160] = arg2
    mem[192] = 1
    mem[224] = 1
    if balanceOf[arg2][address(msg.sender)] < 1:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg2][address(msg.sender)]--
    if balanceOf[arg2][address(arg1)] > -2:
        revert with 0, 17
    balanceOf[arg2][address(arg1)]++
    emit 0xfec3d581: arg2, 1, msg.sender, msg.sender, address(arg1)
    if not ext_code.size(address(arg1)):
        if stor15[arg2].field_0:
            if stor15[arg2].field_0 == uint255(stor15[arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if not stor15[arg2].field_0:
                emit 0x95973994: msg.sender, address(arg1), arg2, Array(len=2 * Mask(256, -1, stor15[arg2].field_0), data=Mask(248, 8, stor15[arg2].field_0))
            else:
                if stor15[arg2].field_0 != 1:
                    emit 0x95973994: mem[256 len -256]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor15[arg2].field_0) * 0.5:
                        mem[idx + 416] = stor15[arg2][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x95973994: msg.sender, address(arg1), arg2, Array(len=2 * Mask(256, -1, stor15[arg2].field_0), data=mem[416 len ceil32(uint255(stor15[arg2].field_0) * 0.5)])
        else:
            if stor15[arg2].field_0 == stor15[arg2].field_1 < 32:
                revert with 0, 34
            if not stor15[arg2].field_0:
                emit 0x95973994: msg.sender, address(arg1), arg2, Array(len=stor15[arg2].field_0, data=Mask(248, 8, stor15[arg2].field_0))
            else:
                if stor15[arg2].field_0 != 1:
                    emit 0x95973994: mem[256 len -256]
                else:
                    idx = 0
                    s = 0
                    while idx < stor15[arg2].field_1:
                        mem[idx + 416] = stor15[arg2][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x95973994: msg.sender, address(arg1), arg2, Array(len=stor15[arg2].field_0, data=mem[416 len ceil32(stor15[arg2].field_1)])
    mem[260] = msg.sender
    mem[292] = msg.sender
    mem[324] = arg2
    mem[356] = 1
    mem[388] = 160
    mem[420] = 0
    mem[452 len 0] = None
    require ext_code.size(address(arg1))
    call address(arg1).0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, msg.sender, arg2, 1, 160, 0
    mem[256] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if stor15[arg2].field_0:
            if stor15[arg2].field_0 == uint255(stor15[arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if not stor15[arg2].field_0:
                emit 0x95973994: msg.sender, address(arg1), arg2, Array(len=2 * Mask(256, -1, stor15[arg2].field_0), data=Mask(248, 8, stor15[arg2].field_0))
            else:
                if stor15[arg2].field_0 != 1:
                    emit 0x95973994: mem[ceil32(return_data.size) + 256 len -ceil32(return_data.size) - 256]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor15[arg2].field_0) * 0.5:
                        mem[idx + ceil32(return_data.size) + 416] = stor15[arg2][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x95973994: msg.sender, address(arg1), arg2, Array(len=2 * Mask(256, -1, stor15[arg2].field_0), data=mem[ceil32(return_data.size) + 416 len ceil32(uint255(stor15[arg2].field_0) * 0.5)])
        else:
            if stor15[arg2].field_0 == stor15[arg2].field_1 < 32:
                revert with 0, 34
            if not stor15[arg2].field_0:
                emit 0x95973994: msg.sender, address(arg1), arg2, Array(len=stor15[arg2].field_0, data=Mask(248, 8, stor15[arg2].field_0))
            else:
                if stor15[arg2].field_0 != 1:
                    emit 0x95973994: mem[ceil32(return_data.size) + 256 len -ceil32(return_data.size) - 256]
                else:
                    idx = 0
                    s = 0
                    while idx < stor15[arg2].field_1:
                        mem[idx + ceil32(return_data.size) + 416] = stor15[arg2][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x95973994: msg.sender, address(arg1), arg2, Array(len=stor15[arg2].field_0, data=mem[ceil32(return_data.size) + 416 len ceil32(stor15[arg2].field_1)])
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(arg1) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[256 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ext_call.return_data[0] + 256] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257 < 256 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257 > test266151307():
        revert with 0, 65
    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
    if not ext_call.return_data[0] + 256:
        _170 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 52
        mem[_170 + 68] = 'ERC1155: transfer to non ERC1155'
        mem[_170 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
        revert with memory
          from mem[64]
           len _170 + -mem[64] + 132
    _168 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _172 = mem[ext_call.return_data[0] + 256]
    mem[mem[64] + 36] = mem[ext_call.return_data[0] + 256]
    mem[_168 + 68 len ceil32(_172)] = mem[ext_call.return_data[0] + 288 len ceil32(_172)]
    if ceil32(_172) > _172:
        mem[_168 + _172 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_172) + _168 + -mem[64] + 68
}

function sub_a35e55bd(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 < 6:
        revert with 0, 'only $Enjimon'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[arg3][address(msg.sender)] <= 0:
        revert with 0, 'No $Enjimon'
    if _hold[msg.sender][arg3]:
        revert with 0, '$Enjimon unavailable'
    if stor15[arg3].field_1792 > !stor15[arg3].field_1280:
        revert with 0, 17
    if stor15[arg3].field_1792 + stor15[arg3].field_1280 <= block.timestamp:
        revert with 0, '$Enjimon in Immutable Death'
    if stor15[arg3].field_2816 <= 0:
        revert with 0, 'Can Not slay yet'
    sub_26e91d6a[arg3] = 0
    stor15[arg3].field_2816 = 0
    mem[96] = 0
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[128] = 1
    mem[160] = 0
    mem[192] = 1
    mem[224] = sub_26e91d6a[arg3]
    if balanceOf[address(stor9.field_0)] < sub_26e91d6a[arg3]:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(stor9.field_0)] -= sub_26e91d6a[arg3]
    if balanceOf[msg.sender] > !sub_26e91d6a[arg3]:
        revert with 0, 17
    balanceOf[msg.sender] += sub_26e91d6a[arg3]
    emit 0xfec3d581: 0, sub_26e91d6a[arg3], msg.sender, address(stor9.field_0), msg.sender
    if not ext_code.size(msg.sender):
        if not address(arg1):
            revert with 0, 'ERC1155: burn from the zero address'
        if balanceOf[arg3][address(arg1)] < arg2:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[arg3][address(arg1)] -= arg2
        emit 0xfec3d581: arg3, arg2, msg.sender, address(arg1), 0
        if stor15[arg3].field_0:
            if stor15[arg3].field_0 == uint255(stor15[arg3].field_0) * 0.5 < 32:
                revert with 0, 34
            if not stor15[arg3].field_0:
                emit 0xf00fe229: msg.sender, arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=Mask(248, 8, stor15[arg3].field_0)), sub_26e91d6a[arg3], block.timestamp
            else:
                if stor15[arg3].field_0 != 1:
                    emit 0xf00fe229: mem[416 len -416]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor15[arg3].field_0) * 0.5:
                        mem[idx + 608] = stor15[arg3][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xf00fe229: msg.sender, arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=mem[608 len ceil32(uint255(stor15[arg3].field_0) * 0.5)]), sub_26e91d6a[arg3], block.timestamp
        else:
            if stor15[arg3].field_0 == stor15[arg3].field_1 < 32:
                revert with 0, 34
            if not stor15[arg3].field_0:
                emit 0xf00fe229: msg.sender, arg3, Array(len=stor15[arg3].field_0, data=Mask(248, 8, stor15[arg3].field_0)), sub_26e91d6a[arg3], block.timestamp
            else:
                if stor15[arg3].field_0 != 1:
                    emit 0xf00fe229: mem[416 len -416]
                else:
                    idx = 0
                    s = 0
                    while idx < stor15[arg3].field_1:
                        mem[idx + 608] = stor15[arg3][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xf00fe229: msg.sender, arg3, Array(len=stor15[arg3].field_0, data=mem[608 len ceil32(stor15[arg3].field_1)]), sub_26e91d6a[arg3], block.timestamp
    mem[260] = msg.sender
    mem[292] = address(stor9.field_0)
    mem[324] = 0
    mem[356] = sub_26e91d6a[arg3]
    mem[388] = 160
    mem[420] = 0
    mem[452 len 0] = None
    require ext_code.size(msg.sender)
    call msg.sender.0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, address(stor9.field_0), 0, sub_26e91d6a[arg3], 160, 0
    mem[256] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if not address(arg1):
            revert with 0, 'ERC1155: burn from the zero address'
        if balanceOf[arg3][address(arg1)] < arg2:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[arg3][address(arg1)] -= arg2
        emit 0xfec3d581: arg3, arg2, msg.sender, address(arg1), 0
        if stor15[arg3].field_0:
            if stor15[arg3].field_0 == uint255(stor15[arg3].field_0) * 0.5 < 32:
                revert with 0, 34
            if not stor15[arg3].field_0:
                emit 0xf00fe229: msg.sender, arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=Mask(248, 8, stor15[arg3].field_0)), sub_26e91d6a[arg3], block.timestamp
            else:
                if stor15[arg3].field_0 != 1:
                    emit 0xf00fe229: mem[ceil32(return_data.size) + 416 len -ceil32(return_data.size) - 416]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor15[arg3].field_0) * 0.5:
                        mem[idx + ceil32(return_data.size) + 608] = stor15[arg3][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xf00fe229: msg.sender, arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=mem[ceil32(return_data.size) + 608 len ceil32(uint255(stor15[arg3].field_0) * 0.5)]), sub_26e91d6a[arg3], block.timestamp
        else:
            if stor15[arg3].field_0 == stor15[arg3].field_1 < 32:
                revert with 0, 34
            if not stor15[arg3].field_0:
                emit 0xf00fe229: msg.sender, arg3, Array(len=stor15[arg3].field_0, data=Mask(248, 8, stor15[arg3].field_0)), sub_26e91d6a[arg3], block.timestamp
            else:
                if stor15[arg3].field_0 != 1:
                    emit 0xf00fe229: mem[ceil32(return_data.size) + 416 len -ceil32(return_data.size) - 416]
                else:
                    idx = 0
                    s = 0
                    while idx < stor15[arg3].field_1:
                        mem[idx + ceil32(return_data.size) + 608] = stor15[arg3][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xf00fe229: msg.sender, arg3, Array(len=stor15[arg3].field_0, data=mem[ceil32(return_data.size) + 608 len ceil32(stor15[arg3].field_1)]), sub_26e91d6a[arg3], block.timestamp
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(msg.sender) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[256 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ext_call.return_data[0] + 256] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257 < 256 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257 > test266151307():
        revert with 0, 65
    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
    if not ext_call.return_data[0] + 256:
        _228 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 52
        mem[_228 + 68] = 'ERC1155: transfer to non ERC1155'
        mem[_228 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
        revert with memory
          from mem[64]
           len _228 + -mem[64] + 132
    _223 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _230 = mem[ext_call.return_data[0] + 256]
    mem[mem[64] + 36] = mem[ext_call.return_data[0] + 256]
    mem[_223 + 68 len ceil32(_230)] = mem[ext_call.return_data[0] + 288 len ceil32(_230)]
    if ceil32(_230) > _230:
        mem[_223 + _230 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_230) + _223 + -mem[64] + 68
}

function sub_56137787(?) {
    require calldata.size - 4 >= 32
    if arg1 < 6:
        revert with 0, 'Invalid ID'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[3][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[arg1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if not _hold[msg.sender][3]:
        if balanceOf[address(msg.sender)] <= 10:
            revert with 0, 'Not enough UUJI'
        if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
            revert with 0, 17
        if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
            revert with 0, 'Immutable Death'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        mem[96] = 1
        mem[128] = 0
        mem[160] = 1
        mem[192] = 5
        mem[224] = 0
        if balanceOf[address(msg.sender)] < 5:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= 5
        emit 0xfec3d581: 0, 5, msg.sender, msg.sender, 0
        if not msg.sender:
            revert with 0, 'ERC1155: burn from the zero address'
        mem[256] = 1
        mem[288] = 3
        mem[320] = 1
        mem[352] = 1
        mem[384] = 0
        if balanceOf[3][address(msg.sender)] < 1:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[3][address(msg.sender)]--
        emit 0xfec3d581: 3, 1, msg.sender, msg.sender, 0
        mem[416] = 0
        if not address(stor8.field_0):
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[448] = 1
        mem[480] = 0
        mem[512] = 1
        mem[544] = 5
        if balanceOf[address(msg.sender)] < 5:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 5
        if balanceOf[address(stor8.field_0)] > -6:
            revert with 0, 17
        balanceOf[address(stor8.field_0)] += 5
        emit 0xfec3d581: 0, 5, msg.sender, msg.sender, address(stor8.field_0)
        if not ext_code.size(address(stor8.field_0)):
            if stor11 > -6:
                revert with 0, 17
            stor11 += 5
            if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                revert with 0, 17
            if stor15[arg1].field_768 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                revert with 0, 17
            stor15[arg1].field_768 = stor15[arg1].field_768 + (sha3(block.difficulty, block.timestamp) % 10) + 1
            emit 0x62cb9e94: 0, stor11, block.timestamp
        mem[580] = msg.sender
        mem[612] = msg.sender
        mem[644] = 0
        mem[676] = 5
        mem[708] = 160
        mem[740] = 0
        mem[772 len 0] = None
        require ext_code.size(address(stor8.field_0))
        call address(stor8.field_0).0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 5, 160, 0
        mem[576] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if stor11 > -6:
                revert with 0, 17
            stor11 += 5
            if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                revert with 0, 17
            if stor15[arg1].field_768 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                revert with 0, 17
            stor15[arg1].field_768 = stor15[arg1].field_768 + (sha3(block.difficulty, block.timestamp) % 10) + 1
            emit 0x62cb9e94: 0, stor11, block.timestamp
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(stor8.field_224) != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ext_call.return_data[0] + 576] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
            revert with 0, 65
        mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        if not ext_call.return_data[0] + 576:
            _397 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_397 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_397 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _397 + -mem[64] + 132
        _391 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _409 = mem[ext_call.return_data[0] + 576]
        mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
        mem[_391 + 68 len ceil32(_409)] = mem[ext_call.return_data[0] + 608 len ceil32(_409)]
        if ceil32(_409) > _409:
            mem[_391 + _409 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_409) + _391 + -mem[64] + 68
    require balanceOf[3][address(msg.sender)] > _hold[msg.sender][3]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[address(msg.sender)] <= 10:
        revert with 0, 'Not enough UUJI'
    if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
        revert with 0, 17
    if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
        revert with 0, 'Immutable Death'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    mem[96] = 1
    mem[128] = 0
    mem[160] = 1
    mem[192] = 5
    mem[224] = 0
    if balanceOf[address(msg.sender)] < 5:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= 5
    emit 0xfec3d581: 0, 5, msg.sender, msg.sender, 0
    if not msg.sender:
        revert with 0, 'ERC1155: burn from the zero address'
    mem[256] = 1
    mem[288] = 3
    mem[320] = 1
    mem[352] = 1
    mem[384] = 0
    if balanceOf[3][address(msg.sender)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[3][address(msg.sender)]--
    emit 0xfec3d581: 3, 1, msg.sender, msg.sender, 0
    mem[416] = 0
    if not address(stor8.field_0):
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[448] = 1
    mem[480] = 0
    mem[512] = 1
    mem[544] = 5
    if balanceOf[address(msg.sender)] < 5:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 5
    if balanceOf[address(stor8.field_0)] > -6:
        revert with 0, 17
    balanceOf[address(stor8.field_0)] += 5
    emit 0xfec3d581: 0, 5, msg.sender, msg.sender, address(stor8.field_0)
    if not ext_code.size(address(stor8.field_0)):
        if stor11 > -6:
            revert with 0, 17
        stor11 += 5
        if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
            revert with 0, 17
        if stor15[arg1].field_768 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
            revert with 0, 17
        stor15[arg1].field_768 = stor15[arg1].field_768 + (sha3(block.difficulty, block.timestamp) % 10) + 1
        emit 0x62cb9e94: 0, stor11, block.timestamp
    mem[580] = msg.sender
    mem[612] = msg.sender
    mem[644] = 0
    mem[676] = 5
    mem[708] = 160
    mem[740] = 0
    mem[772 len 0] = None
    require ext_code.size(address(stor8.field_0))
    call address(stor8.field_0).0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, msg.sender, 0, 5, 160, 0
    mem[576] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if stor11 > -6:
            revert with 0, 17
        stor11 += 5
        if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
            revert with 0, 17
        if stor15[arg1].field_768 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
            revert with 0, 17
        stor15[arg1].field_768 = stor15[arg1].field_768 + (sha3(block.difficulty, block.timestamp) % 10) + 1
        emit 0x62cb9e94: 0, stor11, block.timestamp
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(stor8.field_224) != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ext_call.return_data[0] + 576] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
        revert with 0, 65
    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
    if not ext_call.return_data[0] + 576:
        _403 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 52
        mem[_403 + 68] = 'ERC1155: transfer to non ERC1155'
        mem[_403 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
        revert with memory
          from mem[64]
           len _403 + -mem[64] + 132
    _394 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _415 = mem[ext_call.return_data[0] + 576]
    mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
    mem[_394 + 68 len ceil32(_415)] = mem[ext_call.return_data[0] + 608 len ceil32(_415)]
    if ceil32(_415) > _415:
        mem[_394 + _415 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_415) + _394 + -mem[64] + 68
}

function sub_f39172d3(?) {
    require calldata.size - 4 >= 32
    if arg1 < 6:
        revert with 0, 'Invalid ID'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[2][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[arg1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if not _hold[msg.sender][2]:
        if balanceOf[address(msg.sender)] <= 10:
            revert with 0, 'Not enough UUJI'
        if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
            revert with 0, 17
        if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
            revert with 0, 'Immutable Death'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        mem[96] = 1
        mem[128] = 0
        mem[160] = 1
        mem[192] = 5
        mem[224] = 0
        if balanceOf[address(msg.sender)] < 5:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= 5
        emit 0xfec3d581: 0, 5, msg.sender, msg.sender, 0
        if not msg.sender:
            revert with 0, 'ERC1155: burn from the zero address'
        mem[256] = 1
        mem[288] = 2
        mem[320] = 1
        mem[352] = 1
        mem[384] = 0
        if balanceOf[2][address(msg.sender)] < 1:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[2][address(msg.sender)]--
        emit 0xfec3d581: 2, 1, msg.sender, msg.sender, 0
        mem[416] = 0
        if not address(stor8.field_0):
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[448] = 1
        mem[480] = 0
        mem[512] = 1
        mem[544] = 5
        if balanceOf[address(msg.sender)] < 5:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 5
        if balanceOf[address(stor8.field_0)] > -6:
            revert with 0, 17
        balanceOf[address(stor8.field_0)] += 5
        emit 0xfec3d581: 0, 5, msg.sender, msg.sender, address(stor8.field_0)
        if not ext_code.size(address(stor8.field_0)):
            if stor11 > -6:
                revert with 0, 17
            stor11 += 5
            if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                revert with 0, 17
            if stor15[arg1].field_1024 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                revert with 0, 17
            stor15[arg1].field_1024 = stor15[arg1].field_1024 + (sha3(block.difficulty, block.timestamp) % 10) + 1
            emit 0x62cb9e94: 0, stor11, block.timestamp
        mem[580] = msg.sender
        mem[612] = msg.sender
        mem[644] = 0
        mem[676] = 5
        mem[708] = 160
        mem[740] = 0
        mem[772 len 0] = None
        require ext_code.size(address(stor8.field_0))
        call address(stor8.field_0).0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 5, 160, 0
        mem[576] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if stor11 > -6:
                revert with 0, 17
            stor11 += 5
            if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                revert with 0, 17
            if stor15[arg1].field_1024 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                revert with 0, 17
            stor15[arg1].field_1024 = stor15[arg1].field_1024 + (sha3(block.difficulty, block.timestamp) % 10) + 1
            emit 0x62cb9e94: 0, stor11, block.timestamp
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(stor8.field_224) != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ext_call.return_data[0] + 576] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
            revert with 0, 65
        mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        if not ext_call.return_data[0] + 576:
            _397 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_397 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_397 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _397 + -mem[64] + 132
        _391 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _409 = mem[ext_call.return_data[0] + 576]
        mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
        mem[_391 + 68 len ceil32(_409)] = mem[ext_call.return_data[0] + 608 len ceil32(_409)]
        if ceil32(_409) > _409:
            mem[_391 + _409 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_409) + _391 + -mem[64] + 68
    require balanceOf[2][address(msg.sender)] > _hold[msg.sender][2]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[address(msg.sender)] <= 10:
        revert with 0, 'Not enough UUJI'
    if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
        revert with 0, 17
    if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
        revert with 0, 'Immutable Death'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    mem[96] = 1
    mem[128] = 0
    mem[160] = 1
    mem[192] = 5
    mem[224] = 0
    if balanceOf[address(msg.sender)] < 5:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= 5
    emit 0xfec3d581: 0, 5, msg.sender, msg.sender, 0
    if not msg.sender:
        revert with 0, 'ERC1155: burn from the zero address'
    mem[256] = 1
    mem[288] = 2
    mem[320] = 1
    mem[352] = 1
    mem[384] = 0
    if balanceOf[2][address(msg.sender)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[2][address(msg.sender)]--
    emit 0xfec3d581: 2, 1, msg.sender, msg.sender, 0
    mem[416] = 0
    if not address(stor8.field_0):
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[448] = 1
    mem[480] = 0
    mem[512] = 1
    mem[544] = 5
    if balanceOf[address(msg.sender)] < 5:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 5
    if balanceOf[address(stor8.field_0)] > -6:
        revert with 0, 17
    balanceOf[address(stor8.field_0)] += 5
    emit 0xfec3d581: 0, 5, msg.sender, msg.sender, address(stor8.field_0)
    if not ext_code.size(address(stor8.field_0)):
        if stor11 > -6:
            revert with 0, 17
        stor11 += 5
        if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
            revert with 0, 17
        if stor15[arg1].field_1024 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
            revert with 0, 17
        stor15[arg1].field_1024 = stor15[arg1].field_1024 + (sha3(block.difficulty, block.timestamp) % 10) + 1
        emit 0x62cb9e94: 0, stor11, block.timestamp
    mem[580] = msg.sender
    mem[612] = msg.sender
    mem[644] = 0
    mem[676] = 5
    mem[708] = 160
    mem[740] = 0
    mem[772 len 0] = None
    require ext_code.size(address(stor8.field_0))
    call address(stor8.field_0).0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, msg.sender, 0, 5, 160, 0
    mem[576] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if stor11 > -6:
            revert with 0, 17
        stor11 += 5
        if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
            revert with 0, 17
        if stor15[arg1].field_1024 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
            revert with 0, 17
        stor15[arg1].field_1024 = stor15[arg1].field_1024 + (sha3(block.difficulty, block.timestamp) % 10) + 1
        emit 0x62cb9e94: 0, stor11, block.timestamp
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(stor8.field_224) != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ext_call.return_data[0] + 576] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
        revert with 0, 65
    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
    if not ext_call.return_data[0] + 576:
        _403 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 52
        mem[_403 + 68] = 'ERC1155: transfer to non ERC1155'
        mem[_403 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
        revert with memory
          from mem[64]
           len _403 + -mem[64] + 132
    _394 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _415 = mem[ext_call.return_data[0] + 576]
    mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
    mem[_394 + 68 len ceil32(_415)] = mem[ext_call.return_data[0] + 608 len ceil32(_415)]
    if ceil32(_415) > _415:
        mem[_394 + _415 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_415) + _394 + -mem[64] + 68
}

function sub_520b0930(?) {
    require calldata.size - 4 >= 32
    if arg1 < 6:
        revert with 0, 'Invalid ID'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[arg1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if not _hold[msg.sender][1]:
        if balanceOf[address(msg.sender)] <= 10:
            revert with 0, 'Not enough UUJI'
        if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
            revert with 0, 17
        if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
            revert with 0, 'Immutable Death'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        mem[96] = 1
        mem[128] = 0
        mem[160] = 1
        mem[192] = 5
        mem[224] = 0
        if balanceOf[address(msg.sender)] < 5:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= 5
        emit 0xfec3d581: 0, 5, msg.sender, msg.sender, 0
        if not msg.sender:
            revert with 0, 'ERC1155: burn from the zero address'
        mem[256] = 1
        mem[288] = 1
        mem[320] = 1
        mem[352] = 1
        mem[384] = 0
        if balanceOf[1][address(msg.sender)] < 1:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[1][address(msg.sender)]--
        emit 0xfec3d581: 1, 1, msg.sender, msg.sender, 0
        mem[416] = 0
        if not address(stor8.field_0):
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[448] = 1
        mem[480] = 0
        mem[512] = 1
        mem[544] = 5
        if balanceOf[address(msg.sender)] < 5:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 5
        if balanceOf[address(stor8.field_0)] > -6:
            revert with 0, 17
        balanceOf[address(stor8.field_0)] += 5
        emit 0xfec3d581: 0, 5, msg.sender, msg.sender, address(stor8.field_0)
        if not ext_code.size(address(stor8.field_0)):
            if stor11 > -6:
                revert with 0, 17
            stor11 += 5
            if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                revert with 0, 17
            if (sha3(block.difficulty, block.timestamp) % 10) + 1 > -6:
                revert with 0, 17
            if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 6):
                revert with 0, 17
            stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 6
            emit 0x62cb9e94: 0, stor11, block.timestamp
        mem[580] = msg.sender
        mem[612] = msg.sender
        mem[644] = 0
        mem[676] = 5
        mem[708] = 160
        mem[740] = 0
        mem[772 len 0] = None
        require ext_code.size(address(stor8.field_0))
        call address(stor8.field_0).0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 5, 160, 0
        mem[576] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if stor11 > -6:
                revert with 0, 17
            stor11 += 5
            if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                revert with 0, 17
            if (sha3(block.difficulty, block.timestamp) % 10) + 1 > -6:
                revert with 0, 17
            if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 6):
                revert with 0, 17
            stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 6
            emit 0x62cb9e94: 0, stor11, block.timestamp
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(stor8.field_224) != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ext_call.return_data[0] + 576] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
            revert with 0, 65
        mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        if not ext_call.return_data[0] + 576:
            _397 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_397 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_397 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _397 + -mem[64] + 132
        _391 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _409 = mem[ext_call.return_data[0] + 576]
        mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
        mem[_391 + 68 len ceil32(_409)] = mem[ext_call.return_data[0] + 608 len ceil32(_409)]
        if ceil32(_409) > _409:
            mem[_391 + _409 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_409) + _391 + -mem[64] + 68
    require balanceOf[1][address(msg.sender)] > _hold[msg.sender][1]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[address(msg.sender)] <= 10:
        revert with 0, 'Not enough UUJI'
    if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
        revert with 0, 17
    if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
        revert with 0, 'Immutable Death'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    mem[96] = 1
    mem[128] = 0
    mem[160] = 1
    mem[192] = 5
    mem[224] = 0
    if balanceOf[address(msg.sender)] < 5:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= 5
    emit 0xfec3d581: 0, 5, msg.sender, msg.sender, 0
    if not msg.sender:
        revert with 0, 'ERC1155: burn from the zero address'
    mem[256] = 1
    mem[288] = 1
    mem[320] = 1
    mem[352] = 1
    mem[384] = 0
    if balanceOf[1][address(msg.sender)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[1][address(msg.sender)]--
    emit 0xfec3d581: 1, 1, msg.sender, msg.sender, 0
    mem[416] = 0
    if not address(stor8.field_0):
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[448] = 1
    mem[480] = 0
    mem[512] = 1
    mem[544] = 5
    if balanceOf[address(msg.sender)] < 5:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 5
    if balanceOf[address(stor8.field_0)] > -6:
        revert with 0, 17
    balanceOf[address(stor8.field_0)] += 5
    emit 0xfec3d581: 0, 5, msg.sender, msg.sender, address(stor8.field_0)
    if not ext_code.size(address(stor8.field_0)):
        if stor11 > -6:
            revert with 0, 17
        stor11 += 5
        if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
            revert with 0, 17
        if (sha3(block.difficulty, block.timestamp) % 10) + 1 > -6:
            revert with 0, 17
        if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 6):
            revert with 0, 17
        stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 6
        emit 0x62cb9e94: 0, stor11, block.timestamp
    mem[580] = msg.sender
    mem[612] = msg.sender
    mem[644] = 0
    mem[676] = 5
    mem[708] = 160
    mem[740] = 0
    mem[772 len 0] = None
    require ext_code.size(address(stor8.field_0))
    call address(stor8.field_0).0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, msg.sender, 0, 5, 160, 0
    mem[576] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if stor11 > -6:
            revert with 0, 17
        stor11 += 5
        if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
            revert with 0, 17
        if (sha3(block.difficulty, block.timestamp) % 10) + 1 > -6:
            revert with 0, 17
        if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 6):
            revert with 0, 17
        stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 6
        emit 0x62cb9e94: 0, stor11, block.timestamp
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(stor8.field_224) != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ext_call.return_data[0] + 576] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
        revert with 0, 65
    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
    if not ext_call.return_data[0] + 576:
        _403 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 52
        mem[_403 + 68] = 'ERC1155: transfer to non ERC1155'
        mem[_403 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
        revert with memory
          from mem[64]
           len _403 + -mem[64] + 132
    _394 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _415 = mem[ext_call.return_data[0] + 576]
    mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
    mem[_394 + 68 len ceil32(_415)] = mem[ext_call.return_data[0] + 608 len ceil32(_415)]
    if ceil32(_415) > _415:
        mem[_394 + _415 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_415) + _394 + -mem[64] + 68
}

function sub_019ddde7(?) {
    require calldata.size - 4 >= 32
    if arg1 < 6:
        revert with 0, 'Invalid ID'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[4][address(msg.sender)] <= 0:
        revert with 0, 'no elixers!'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[arg1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if not _hold[msg.sender][4]:
        if balanceOf[address(msg.sender)] <= 10:
            revert with 0, 'Not enough UUJI Tokens'
        if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
            revert with 0, 17
        if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
            revert with 0, 'Immutable Death'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        mem[96] = 1
        mem[128] = 0
        mem[160] = 1
        mem[192] = 5
        mem[224] = 0
        if balanceOf[address(msg.sender)] < 5:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= 5
        emit 0xfec3d581: 0, 5, msg.sender, msg.sender, 0
        if not msg.sender:
            revert with 0, 'ERC1155: burn from the zero address'
        mem[256] = 1
        mem[288] = 4
        mem[320] = 1
        mem[352] = 1
        mem[384] = 0
        if balanceOf[4][address(msg.sender)] < 1:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[4][address(msg.sender)]--
        emit 0xfec3d581: 4, 1, msg.sender, msg.sender, 0
        mem[416] = 0
        if not address(stor8.field_0):
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[448] = 1
        mem[480] = 0
        mem[512] = 1
        mem[544] = 5
        if balanceOf[address(msg.sender)] < 5:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 5
        if balanceOf[address(stor8.field_0)] > -6:
            revert with 0, 17
        balanceOf[address(stor8.field_0)] += 5
        emit 0xfec3d581: 0, 5, msg.sender, msg.sender, address(stor8.field_0)
        if not ext_code.size(address(stor8.field_0)):
            if stor11 > -6:
                revert with 0, 17
            stor11 += 5
            if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                revert with 0, 17
            if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                revert with 0, 17
            stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 1
            if stor15[arg1].field_1536 > -2:
                revert with 0, 17
            stor15[arg1].field_1536++
            if 900 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                revert with 0, 17
            if stor15[arg1].field_1280 > !((sha3(block.difficulty, block.timestamp) % 10) + 901):
                revert with 0, 17
            stor15[arg1].field_1280 = stor15[arg1].field_1280 + (sha3(block.difficulty, block.timestamp) % 10) + 901
            if stor15[arg1].field_768 > -2:
                revert with 0, 17
            stor15[arg1].field_768++
            if stor15[arg1].field_1024 > -2:
                revert with 0, 17
            stor15[arg1].field_1024++
            emit 0x62cb9e94: 0, stor11, block.timestamp
        mem[580] = msg.sender
        mem[612] = msg.sender
        mem[644] = 0
        mem[676] = 5
        mem[708] = 160
        mem[740] = 0
        mem[772 len 0] = None
        require ext_code.size(address(stor8.field_0))
        call address(stor8.field_0).0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 5, 160, 0
        mem[576] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if stor11 > -6:
                revert with 0, 17
            stor11 += 5
            if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                revert with 0, 17
            if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                revert with 0, 17
            stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 1
            if stor15[arg1].field_1536 > -2:
                revert with 0, 17
            stor15[arg1].field_1536++
            if 900 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                revert with 0, 17
            if stor15[arg1].field_1280 > !((sha3(block.difficulty, block.timestamp) % 10) + 901):
                revert with 0, 17
            stor15[arg1].field_1280 = stor15[arg1].field_1280 + (sha3(block.difficulty, block.timestamp) % 10) + 901
            if stor15[arg1].field_768 > -2:
                revert with 0, 17
            stor15[arg1].field_768++
            if stor15[arg1].field_1024 > -2:
                revert with 0, 17
            stor15[arg1].field_1024++
            emit 0x62cb9e94: 0, stor11, block.timestamp
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(stor8.field_224) != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ext_call.return_data[0] + 576] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
            revert with 0, 65
        mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        if not ext_call.return_data[0] + 576:
            _399 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_399 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_399 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _399 + -mem[64] + 132
        _393 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _411 = mem[ext_call.return_data[0] + 576]
        mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
        mem[_393 + 68 len ceil32(_411)] = mem[ext_call.return_data[0] + 608 len ceil32(_411)]
        if ceil32(_411) > _411:
            mem[_393 + _411 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_411) + _393 + -mem[64] + 68
    require balanceOf[4][address(msg.sender)] > _hold[msg.sender][4]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[address(msg.sender)] <= 10:
        revert with 0, 'Not enough UUJI Tokens'
    if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
        revert with 0, 17
    if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
        revert with 0, 'Immutable Death'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    mem[96] = 1
    mem[128] = 0
    mem[160] = 1
    mem[192] = 5
    mem[224] = 0
    if balanceOf[address(msg.sender)] < 5:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= 5
    emit 0xfec3d581: 0, 5, msg.sender, msg.sender, 0
    if not msg.sender:
        revert with 0, 'ERC1155: burn from the zero address'
    mem[256] = 1
    mem[288] = 4
    mem[320] = 1
    mem[352] = 1
    mem[384] = 0
    if balanceOf[4][address(msg.sender)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[4][address(msg.sender)]--
    emit 0xfec3d581: 4, 1, msg.sender, msg.sender, 0
    mem[416] = 0
    if not address(stor8.field_0):
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[448] = 1
    mem[480] = 0
    mem[512] = 1
    mem[544] = 5
    if balanceOf[address(msg.sender)] < 5:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 5
    if balanceOf[address(stor8.field_0)] > -6:
        revert with 0, 17
    balanceOf[address(stor8.field_0)] += 5
    emit 0xfec3d581: 0, 5, msg.sender, msg.sender, address(stor8.field_0)
    if not ext_code.size(address(stor8.field_0)):
        if stor11 > -6:
            revert with 0, 17
        stor11 += 5
        if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
            revert with 0, 17
        if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
            revert with 0, 17
        stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 1
        if stor15[arg1].field_1536 > -2:
            revert with 0, 17
        stor15[arg1].field_1536++
        if 900 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
            revert with 0, 17
        if stor15[arg1].field_1280 > !((sha3(block.difficulty, block.timestamp) % 10) + 901):
            revert with 0, 17
        stor15[arg1].field_1280 = stor15[arg1].field_1280 + (sha3(block.difficulty, block.timestamp) % 10) + 901
        if stor15[arg1].field_768 > -2:
            revert with 0, 17
        stor15[arg1].field_768++
        if stor15[arg1].field_1024 > -2:
            revert with 0, 17
        stor15[arg1].field_1024++
        emit 0x62cb9e94: 0, stor11, block.timestamp
    mem[580] = msg.sender
    mem[612] = msg.sender
    mem[644] = 0
    mem[676] = 5
    mem[708] = 160
    mem[740] = 0
    mem[772 len 0] = None
    require ext_code.size(address(stor8.field_0))
    call address(stor8.field_0).0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, msg.sender, 0, 5, 160, 0
    mem[576] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if stor11 > -6:
            revert with 0, 17
        stor11 += 5
        if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
            revert with 0, 17
        if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
            revert with 0, 17
        stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 1
        if stor15[arg1].field_1536 > -2:
            revert with 0, 17
        stor15[arg1].field_1536++
        if 900 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
            revert with 0, 17
        if stor15[arg1].field_1280 > !((sha3(block.difficulty, block.timestamp) % 10) + 901):
            revert with 0, 17
        stor15[arg1].field_1280 = stor15[arg1].field_1280 + (sha3(block.difficulty, block.timestamp) % 10) + 901
        if stor15[arg1].field_768 > -2:
            revert with 0, 17
        stor15[arg1].field_768++
        if stor15[arg1].field_1024 > -2:
            revert with 0, 17
        stor15[arg1].field_1024++
        emit 0x62cb9e94: 0, stor11, block.timestamp
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(stor8.field_224) != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ext_call.return_data[0] + 576] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
        revert with 0, 65
    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
    if not ext_call.return_data[0] + 576:
        _405 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 52
        mem[_405 + 68] = 'ERC1155: transfer to non ERC1155'
        mem[_405 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
        revert with memory
          from mem[64]
           len _405 + -mem[64] + 132
    _396 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _417 = mem[ext_call.return_data[0] + 576]
    mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
    mem[_396 + 68 len ceil32(_417)] = mem[ext_call.return_data[0] + 608 len ceil32(_417)]
    if ceil32(_417) > _417:
        mem[_396 + _417 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_417) + _396 + -mem[64] + 68
}

function sub_5e78e95b(?) {
    require calldata.size - 4 >= 64
    if msg.sender == sub_35bba03fAddress:
        revert with 0, 'Not allowed'
    if not arg1:
        revert with 0, 'Invalid ID'
    if 1 == arg1:
        revert with 0, 'Invalid ID'
    if arg1 >= 4:
        revert with 0, 'only eDEF/eATK'
    if arg2 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[address(msg.sender)] < 50 * arg2:
        revert with 0, 'not enough UUJI'
    if arg2 <= 1:
        if stor11 > -26:
            revert with 0, 17
        stor11 += 25
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        mem[96] = 1
        mem[128] = 0
        mem[160] = 1
        mem[192] = 25
        mem[224] = 0
        if balanceOf[address(msg.sender)] < 25:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= 25
        emit 0xfec3d581: 0, 25, msg.sender, msg.sender, 0
        mem[256] = 0
        if not address(stor8.field_0):
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[288] = 1
        mem[320] = 0
        mem[352] = 1
        mem[384] = 25
        if balanceOf[address(msg.sender)] < 25:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 25
        if balanceOf[address(stor8.field_0)] > -26:
            revert with 0, 17
        balanceOf[address(stor8.field_0)] += 25
        emit 0xfec3d581: 0, 25, msg.sender, msg.sender, address(stor8.field_0)
        if not ext_code.size(address(stor8.field_0)):
            emit 0x62cb9e94: 0, stor11, block.timestamp
            mem[416] = 0
            if not msg.sender:
                revert with 0, 'ERC1155: mint to the zero address'
            mem[448] = 1
            mem[480] = arg1
            mem[512] = 1
            mem[544] = arg2
            if balanceOf[arg1][address(msg.sender)] > !arg2:
                revert with 0, 17
            balanceOf[arg1][address(msg.sender)] += arg2
            emit 0xfec3d581: arg1, arg2, msg.sender, 0, msg.sender
            if not ext_code.size(msg.sender):
                if not stor1[address(msg.sender)][address(this.address)]:
                    if msg.sender == address(stor9.field_0):
                        revert with 0, 'ERC1155: setting approval status for self'
                    stor1[address(msg.sender)][address(stor9.field_0)] = 1
                    emit ApprovalForAll(1, msg.sender, address(stor9.field_0));
                emit 0x6f38e2f0: msg.sender, arg1, arg2, block.timestamp
            mem[580] = msg.sender
            mem[612] = 0
            mem[644] = arg1
            mem[676] = arg2
            mem[708] = 160
            mem[740] = 0
            mem[772 len 0] = None
            require ext_code.size(msg.sender)
            call msg.sender.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, 0, arg1, arg2, 160, 0
            mem[576] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if not stor1[address(msg.sender)][address(this.address)]:
                    if msg.sender == address(stor9.field_0):
                        revert with 0, 'ERC1155: setting approval status for self'
                    stor1[address(msg.sender)][address(stor9.field_0)] = 1
                    emit ApprovalForAll(1, msg.sender, address(stor9.field_0));
                emit 0x6f38e2f0: msg.sender, arg1, arg2, block.timestamp
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(msg.sender) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ext_call.return_data[0] + 576] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
                revert with 0, 65
            mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
            if not ext_call.return_data[0] + 576:
                _1083 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
                mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_1083 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_1083 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _1083 + -mem[64] + 132
            _1071 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1095 = mem[ext_call.return_data[0] + 576]
            mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
            mem[_1071 + 68 len ceil32(_1095)] = mem[ext_call.return_data[0] + 608 len ceil32(_1095)]
            if ceil32(_1095) > _1095:
                mem[_1071 + _1095 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1095) + _1071 + -mem[64] + 68
        mem[420] = msg.sender
        mem[452] = msg.sender
        mem[484] = 0
        mem[516] = 25
        mem[548] = 160
        mem[580] = 0
        mem[612 len 0] = None
        require ext_code.size(address(stor8.field_0))
        call address(stor8.field_0).0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 25, 160, 0
        mem[416] = ext_call.return_data[0]
        if not ext_call.success:
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(stor8.field_224) != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[416 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ext_call.return_data[0] + 416] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 < 416 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 > test266151307():
                revert with 0, 65
            mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
            if not ext_call.return_data[0] + 416:
                _1086 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
                mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_1086 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_1086 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _1086 + -mem[64] + 132
            _1074 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1104 = mem[ext_call.return_data[0] + 416]
            mem[mem[64] + 36] = mem[ext_call.return_data[0] + 416]
            mem[_1074 + 68 len ceil32(_1104)] = mem[ext_call.return_data[0] + 448 len ceil32(_1104)]
            if ceil32(_1104) > _1104:
                mem[_1074 + _1104 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1104) + _1074 + -mem[64] + 68
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        emit 0x62cb9e94: 0, stor11, block.timestamp
        mem[ceil32(return_data.size) + 416] = 0
        if not msg.sender:
            revert with 0, 'ERC1155: mint to the zero address'
        mem[ceil32(return_data.size) + 448] = 1
        mem[ceil32(return_data.size) + 480] = arg1
        mem[ceil32(return_data.size) + 512] = 1
        mem[ceil32(return_data.size) + 544] = arg2
        if balanceOf[arg1][address(msg.sender)] > !arg2:
            revert with 0, 17
        balanceOf[arg1][address(msg.sender)] += arg2
        emit 0xfec3d581: arg1, arg2, msg.sender, 0, msg.sender
        if not ext_code.size(msg.sender):
            if not stor1[address(msg.sender)][address(this.address)]:
                if msg.sender == address(stor9.field_0):
                    revert with 0, 'ERC1155: setting approval status for self'
                stor1[address(msg.sender)][address(stor9.field_0)] = 1
                emit ApprovalForAll(1, msg.sender, address(stor9.field_0));
            emit 0x6f38e2f0: msg.sender, arg1, arg2, block.timestamp
        mem[ceil32(return_data.size) + 580] = msg.sender
        mem[ceil32(return_data.size) + 612] = 0
        mem[ceil32(return_data.size) + 644] = arg1
        mem[ceil32(return_data.size) + 676] = arg2
        mem[ceil32(return_data.size) + 708] = 160
        mem[ceil32(return_data.size) + 740] = 0
        mem[ceil32(return_data.size) + 772 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, 0, arg1, arg2, 160, 0
        mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 580] = 32
                mem[(2 * ceil32(return_data.size)) + 612] = 40
                mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: ERC1155Receiver rejecte'
                mem[(2 * ceil32(return_data.size)) + 676] = 'd tokens' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 576
                   len ceil32(return_data.size) + 132
            if not stor1[address(msg.sender)][address(this.address)]:
                if msg.sender == address(stor9.field_0):
                    mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 580] = 32
                    mem[(2 * ceil32(return_data.size)) + 612] = 41
                    mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: setting approval status'
                    mem[(2 * ceil32(return_data.size)) + 676] = 0x20666f722073656c660000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 576
                       len ceil32(return_data.size) + 132
                stor1[address(msg.sender)][address(stor9.field_0)] = 1
                mem[(2 * ceil32(return_data.size)) + 576] = 1
                emit ApprovalForAll(mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + 32], msg.sender, address(stor9.field_0));
            mem[(2 * ceil32(return_data.size)) + 576] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 608] = arg1
            mem[(2 * ceil32(return_data.size)) + 640] = arg2
            mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
            emit 0x6f38e2f0: mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + 128]
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(msg.sender) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(return_data.size) + 576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 < 576 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
        if not ceil32(return_data.size) + ext_call.return_data[0] + 576:
            _1823 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
            mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_1823 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_1823 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _1823 + -mem[64] + 132
        _1811 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
        mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1835 = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
        mem[mem[64] + 36] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
        mem[_1811 + 68 len ceil32(_1835)] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 608 len ceil32(_1835)]
        if ceil32(_1835) > _1835:
            mem[_1811 + _1835 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1835) + _1811 + -mem[64] + 68
    if arg2 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
        revert with 0, 17
    if stor11 > !(50 * arg2 / 2):
        revert with 0, 17
    stor11 += 50 * arg2 / 2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    mem[96] = 1
    mem[128] = 0
    mem[160] = 1
    mem[192] = 50 * arg2 / 2
    mem[224] = 0
    if balanceOf[address(msg.sender)] < 50 * arg2 / 2:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= 50 * arg2 / 2
    emit 0xfec3d581: 0, 50 * arg2 / 2, msg.sender, msg.sender, 0
    mem[256] = 0
    if not address(stor8.field_0):
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[288] = 1
    mem[320] = 0
    mem[352] = 1
    mem[384] = 50 * arg2 / 2
    if balanceOf[address(msg.sender)] < 50 * arg2 / 2:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 50 * arg2 / 2
    if balanceOf[address(stor8.field_0)] > !(50 * arg2 / 2):
        revert with 0, 17
    balanceOf[address(stor8.field_0)] += 50 * arg2 / 2
    emit 0xfec3d581: 0, 50 * arg2 / 2, msg.sender, msg.sender, address(stor8.field_0)
    if not ext_code.size(address(stor8.field_0)):
        emit 0x62cb9e94: 0, stor11, block.timestamp
        mem[416] = 0
        if not msg.sender:
            revert with 0, 'ERC1155: mint to the zero address'
        mem[448] = 1
        mem[480] = arg1
        mem[512] = 1
        mem[544] = arg2
        if balanceOf[arg1][address(msg.sender)] > !arg2:
            revert with 0, 17
        balanceOf[arg1][address(msg.sender)] += arg2
        emit 0xfec3d581: arg1, arg2, msg.sender, 0, msg.sender
        if not ext_code.size(msg.sender):
            if not stor1[address(msg.sender)][address(this.address)]:
                if msg.sender == address(stor9.field_0):
                    revert with 0, 'ERC1155: setting approval status for self'
                stor1[address(msg.sender)][address(stor9.field_0)] = 1
                emit ApprovalForAll(1, msg.sender, address(stor9.field_0));
            emit 0x6f38e2f0: msg.sender, arg1, arg2, block.timestamp
        mem[580] = msg.sender
        mem[612] = 0
        mem[644] = arg1
        mem[676] = arg2
        mem[708] = 160
        mem[740] = 0
        mem[772 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, 0, arg1, arg2, 160, 0
        mem[576] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if not stor1[address(msg.sender)][address(this.address)]:
                if msg.sender == address(stor9.field_0):
                    revert with 0, 'ERC1155: setting approval status for self'
                stor1[address(msg.sender)][address(stor9.field_0)] = 1
                emit ApprovalForAll(1, msg.sender, address(stor9.field_0));
            emit 0x6f38e2f0: msg.sender, arg1, arg2, block.timestamp
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(msg.sender) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ext_call.return_data[0] + 576] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
            revert with 0, 65
        mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        if not ext_call.return_data[0] + 576:
            _1089 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_1089 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_1089 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _1089 + -mem[64] + 132
        _1077 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1111 = mem[ext_call.return_data[0] + 576]
        mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
        mem[_1077 + 68 len ceil32(_1111)] = mem[ext_call.return_data[0] + 608 len ceil32(_1111)]
        if ceil32(_1111) > _1111:
            mem[_1077 + _1111 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1111) + _1077 + -mem[64] + 68
    mem[420] = msg.sender
    mem[452] = msg.sender
    mem[484] = 0
    mem[516] = 50 * arg2 / 2
    mem[548] = 160
    mem[580] = 0
    mem[612 len 0] = None
    require ext_code.size(address(stor8.field_0))
    call address(stor8.field_0).0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, msg.sender, 0, Mask(255, 1, 50 * arg2), 160, 0
    mem[416] = ext_call.return_data[0]
    if not ext_call.success:
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(stor8.field_224) != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[416 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ext_call.return_data[0] + 416] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 < 416 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 > test266151307():
            revert with 0, 65
        mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
        if not ext_call.return_data[0] + 416:
            _1092 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_1092 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_1092 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _1092 + -mem[64] + 132
        _1080 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1120 = mem[ext_call.return_data[0] + 416]
        mem[mem[64] + 36] = mem[ext_call.return_data[0] + 416]
        mem[_1080 + 68 len ceil32(_1120)] = mem[ext_call.return_data[0] + 448 len ceil32(_1120)]
        if ceil32(_1120) > _1120:
            mem[_1080 + _1120 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1120) + _1080 + -mem[64] + 68
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    emit 0x62cb9e94: 0, stor11, block.timestamp
    mem[ceil32(return_data.size) + 416] = 0
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    mem[ceil32(return_data.size) + 448] = 1
    mem[ceil32(return_data.size) + 480] = arg1
    mem[ceil32(return_data.size) + 512] = 1
    mem[ceil32(return_data.size) + 544] = arg2
    if balanceOf[arg1][address(msg.sender)] > !arg2:
        revert with 0, 17
    balanceOf[arg1][address(msg.sender)] += arg2
    emit 0xfec3d581: arg1, arg2, msg.sender, 0, msg.sender
    if not ext_code.size(msg.sender):
        if not stor1[address(msg.sender)][address(this.address)]:
            if msg.sender == address(stor9.field_0):
                revert with 0, 'ERC1155: setting approval status for self'
            stor1[address(msg.sender)][address(stor9.field_0)] = 1
            emit ApprovalForAll(1, msg.sender, address(stor9.field_0));
        emit 0x6f38e2f0: msg.sender, arg1, arg2, block.timestamp
    mem[ceil32(return_data.size) + 580] = msg.sender
    mem[ceil32(return_data.size) + 612] = 0
    mem[ceil32(return_data.size) + 644] = arg1
    mem[ceil32(return_data.size) + 676] = arg2
    mem[ceil32(return_data.size) + 708] = 160
    mem[ceil32(return_data.size) + 740] = 0
    mem[ceil32(return_data.size) + 772 len 0] = None
    require ext_code.size(msg.sender)
    call msg.sender.0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, 0, arg1, arg2, 160, 0
    mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 580] = 32
            mem[(2 * ceil32(return_data.size)) + 612] = 40
            mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: ERC1155Receiver rejecte'
            mem[(2 * ceil32(return_data.size)) + 676] = 'd tokens' << 192
            revert with memory
              from (2 * ceil32(return_data.size)) + 576
               len ceil32(return_data.size) + 132
        if not stor1[address(msg.sender)][address(this.address)]:
            if msg.sender == address(stor9.field_0):
                mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 580] = 32
                mem[(2 * ceil32(return_data.size)) + 612] = 41
                mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: setting approval status'
                mem[(2 * ceil32(return_data.size)) + 676] = 0x20666f722073656c660000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 576
                   len ceil32(return_data.size) + 132
            stor1[address(msg.sender)][address(stor9.field_0)] = 1
            mem[(2 * ceil32(return_data.size)) + 576] = 1
            emit ApprovalForAll(mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + 32], msg.sender, address(stor9.field_0));
        mem[(2 * ceil32(return_data.size)) + 576] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 608] = arg1
        mem[(2 * ceil32(return_data.size)) + 640] = arg2
        mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
        emit 0x6f38e2f0: mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + 128]
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(msg.sender) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[ceil32(return_data.size) + 576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 < 576 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
    if not ceil32(return_data.size) + ext_call.return_data[0] + 576:
        _1829 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
        mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 52
        mem[_1829 + 68] = 'ERC1155: transfer to non ERC1155'
        mem[_1829 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
        revert with memory
          from mem[64]
           len _1829 + -mem[64] + 132
    _1817 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1853 = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
    mem[mem[64] + 36] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
    mem[_1817 + 68 len ceil32(_1853)] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 608 len ceil32(_1853)]
    if ceil32(_1853) > _1853:
        mem[_1817 + _1853 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_1853) + _1817 + -mem[64] + 68
}

function sub_71261061(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    if arg1 < 6:
        revert with 0, 'only name $Enjimon!'
    if not msg.sender:
        revert with 0, 'ERC1155: balance query for the zero address'
    if balanceOf[arg1][address(msg.sender)] <= 0:
        revert with 0, 'only give your $Enjimon nickname!'
    if not msg.sender:
        revert with 0, 'ERC1155: balance query for the zero address'
    if balanceOf[address(msg.sender)] <= 10:
        revert with 0, 'not enough UUJI'
    if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
        revert with 0, 17
    if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
        revert with 0, 'Immutable Death'
    if not msg.sender:
        revert with 0, 'ERC1155: burn from the zero address'
    mem[ceil32(ceil32(arg2.length)) + 97] = 1
    mem[ceil32(ceil32(arg2.length)) + 129] = 0
    mem[ceil32(ceil32(arg2.length)) + 161] = 1
    mem[ceil32(ceil32(arg2.length)) + 193] = 5
    mem[ceil32(ceil32(arg2.length)) + 225] = 0
    if balanceOf[address(msg.sender)] < 5:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= 5
    emit 0xfec3d581: 0, 5, msg.sender, msg.sender, 0
    mem[ceil32(ceil32(arg2.length)) + 257] = 0
    if not address(stor8.field_0):
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[ceil32(ceil32(arg2.length)) + 289] = 1
    mem[ceil32(ceil32(arg2.length)) + 321] = 0
    mem[ceil32(ceil32(arg2.length)) + 353] = 1
    mem[ceil32(ceil32(arg2.length)) + 385] = 3
    if balanceOf[address(msg.sender)] < 3:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 3
    if balanceOf[address(stor8.field_0)] > -4:
        revert with 0, 17
    balanceOf[address(stor8.field_0)] += 3
    emit 0xfec3d581: 0, 3, msg.sender, msg.sender, address(stor8.field_0)
    if not ext_code.size(address(stor8.field_0)):
        if sub_26e91d6a[arg1] > -3:
            revert with 0, 17
        sub_26e91d6a[arg1] += 2
        mem[ceil32(ceil32(arg2.length)) + 417] = 0
        if not address(stor9.field_0):
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(ceil32(arg2.length)) + 449] = 1
        mem[ceil32(ceil32(arg2.length)) + 481] = 0
        mem[ceil32(ceil32(arg2.length)) + 513] = 1
        mem[ceil32(ceil32(arg2.length)) + 545] = 2
        if balanceOf[address(msg.sender)] < 2:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 2
        if balanceOf[address(stor9.field_0)] > -3:
            revert with 0, 17
        balanceOf[address(stor9.field_0)] += 2
        emit 0xfec3d581: 0, 2, msg.sender, msg.sender, address(stor9.field_0)
        if not ext_code.size(address(stor9.field_0)):
            if sub_26e91d6a[arg1] < 2:
                revert with 0, 17
            if sub_26e91d6a[arg1] - 2 != sub_26e91d6a[arg1]:
                revert with 0, 1
            if stor11 > -6:
                revert with 0, 17
            stor11 += 5
            if stor15[arg1].field_256:
                if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if arg2.length:
                    stor15[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor15[arg1].field_256 = 0
                    idx = 0
                    while (uint255(stor15[arg1].field_256) * 0.5) + 31 / 32 > idx:
                        stor15[arg1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
                    revert with 0, 34
                if arg2.length:
                    stor15[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor15[arg1].field_256 = 0
                    idx = 0
                    while stor15[arg1].field_257 + 31 / 32 > idx:
                        stor15[arg1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            if stor15[arg1].field_2816 > -3:
                revert with 0, 17
            stor15[arg1].field_2816 += 2
            if stor6 > -3:
                revert with 0, 17
            stor6 += 2
            mem[ceil32(ceil32(arg2.length)) + 609] = stor11
            mem[ceil32(ceil32(arg2.length)) + 641] = block.timestamp
            emit 0x62cb9e94: 0, stor11, block.timestamp
            if stor15[arg1].field_256:
                if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if stor15[arg1].field_256:
                    if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor15[arg1].field_256):
                        if 31 < uint255(stor15[arg1].field_256) * 0.5:
                            mem[ceil32(ceil32(arg2.length)) + 609] = stor15[arg1][1].field_0
                            idx = ceil32(ceil32(arg2.length)) + 609
                            s = 0
                            while ceil32(ceil32(arg2.length)) + (uint255(stor15[arg1].field_256) * 0.5) + 577 > idx:
                                mem[idx + 32] = stor15[arg1][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor15[arg1].field_256), data=mem[ceil32(ceil32(arg2.length)) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)]), 
                        mem[ceil32(ceil32(arg2.length)) + 609] = 256 * stor15[arg1].field_264
                else:
                    if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
                        revert with 0, 34
                    if stor15[arg1].field_257:
                        if 31 < stor15[arg1].field_257:
                            mem[ceil32(ceil32(arg2.length)) + 609] = stor15[arg1][1].field_0
                            idx = ceil32(ceil32(arg2.length)) + 609
                            s = 0
                            while ceil32(ceil32(arg2.length)) + stor15[arg1].field_257 + 577 > idx:
                                mem[idx + 32] = stor15[arg1][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor15[arg1].field_256), data=mem[ceil32(ceil32(arg2.length)) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)]), 
                        mem[ceil32(ceil32(arg2.length)) + 609] = 256 * stor15[arg1].field_264
                mem[ceil32(ceil32(arg2.length)) + ceil32(uint255(stor15[arg1].field_256) * 0.5) + 673 len ceil32(uint255(stor15[arg1].field_256) * 0.5)] = mem[ceil32(ceil32(arg2.length)) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)]
                if ceil32(uint255(stor15[arg1].field_256) * 0.5) > uint255(stor15[arg1].field_256) * 0.5:
                    mem[ceil32(ceil32(arg2.length)) + ceil32(uint255(stor15[arg1].field_256) * 0.5) + (uint255(stor15[arg1].field_256) * 0.5) + 673] = 0
                return Array(len=2 * Mask(256, -1, stor15[arg1].field_256), data=mem[ceil32(ceil32(arg2.length)) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)], mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(uint255(stor15[arg1].field_256) * 0.5)) + 673 len 2 * ceil32(uint255(stor15[arg1].field_256) * 0.5)]), 
            if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
                revert with 0, 34
            if stor15[arg1].field_256:
                if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor15[arg1].field_256):
                    if 31 < uint255(stor15[arg1].field_256) * 0.5:
                        mem[ceil32(ceil32(arg2.length)) + 609] = stor15[arg1][1].field_0
                        idx = ceil32(ceil32(arg2.length)) + 609
                        s = 0
                        while ceil32(ceil32(arg2.length)) + (uint255(stor15[arg1].field_256) * 0.5) + 577 > idx:
                            mem[idx + 32] = stor15[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor15[arg1].field_256, data=mem[ceil32(ceil32(arg2.length)) + 609 len ceil32(stor15[arg1].field_257)])
                    mem[ceil32(ceil32(arg2.length)) + 609] = 256 * stor15[arg1].field_264
            else:
                if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
                    revert with 0, 34
                if stor15[arg1].field_257:
                    if 31 < stor15[arg1].field_257:
                        mem[ceil32(ceil32(arg2.length)) + 609] = stor15[arg1][1].field_0
                        idx = ceil32(ceil32(arg2.length)) + 609
                        s = 0
                        while ceil32(ceil32(arg2.length)) + stor15[arg1].field_257 + 577 > idx:
                            mem[idx + 32] = stor15[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor15[arg1].field_256, data=mem[ceil32(ceil32(arg2.length)) + 609 len ceil32(stor15[arg1].field_257)])
                    mem[ceil32(ceil32(arg2.length)) + 609] = 256 * stor15[arg1].field_264
            mem[ceil32(ceil32(arg2.length)) + ceil32(stor15[arg1].field_257) + 673 len ceil32(stor15[arg1].field_257)] = mem[ceil32(ceil32(arg2.length)) + 609 len ceil32(stor15[arg1].field_257)]
            if ceil32(stor15[arg1].field_257) > stor15[arg1].field_257:
                mem[ceil32(ceil32(arg2.length)) + ceil32(stor15[arg1].field_257) + stor15[arg1].field_257 + 673] = 0
            return Array(len=stor15[arg1].field_256, data=mem[ceil32(ceil32(arg2.length)) + 609 len ceil32(stor15[arg1].field_257)], mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(stor15[arg1].field_257)) + 673 len 2 * ceil32(stor15[arg1].field_257)]), 
        mem[ceil32(ceil32(arg2.length)) + 581] = msg.sender
        mem[ceil32(ceil32(arg2.length)) + 613] = msg.sender
        mem[ceil32(ceil32(arg2.length)) + 645] = 0
        mem[ceil32(ceil32(arg2.length)) + 677] = 2
        mem[ceil32(ceil32(arg2.length)) + 709] = 160
        mem[ceil32(ceil32(arg2.length)) + 741] = 0
        mem[ceil32(ceil32(arg2.length)) + 773 len 0] = None
        require ext_code.size(address(stor9.field_0))
        call address(stor9.field_0).0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 2, 160, 0
        mem[ceil32(ceil32(arg2.length)) + 577] = ext_call.return_data[0]
        if not ext_call.success:
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(stor9.field_224) != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(ceil32(arg2.length)) + 577 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 577] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 577] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 577] + 31) + 578 < 577 or ceil32(ceil32(arg2.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 577] + 31) + 578 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(ceil32(arg2.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 577] + 31) + 578
            if not ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 577:
                _5638 = ceil32(ceil32(arg2.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 577] + 31) + 578
                mem[ceil32(ceil32(arg2.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 577] + 31) + 578] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_5638 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_5638 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _5638 + -mem[64] + 132
            _5609 = ceil32(ceil32(arg2.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 577] + 31) + 578
            mem[ceil32(ceil32(arg2.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 577] + 31) + 578] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5667 = mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 577]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 577]
            mem[_5609 + 68 len ceil32(_5667)] = mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 609 len ceil32(_5667)]
            if ceil32(_5667) > _5667:
                mem[_5609 + _5667 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5667) + _5609 + -mem[64] + 68
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if sub_26e91d6a[arg1] < 2:
            revert with 0, 17
        if sub_26e91d6a[arg1] - 2 != sub_26e91d6a[arg1]:
            revert with 0, 1
        if stor11 > -6:
            revert with 0, 17
        stor11 += 5
        if stor15[arg1].field_256:
            if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if arg2.length:
                stor15[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor15[arg1].field_256 = 0
                idx = 0
                while (uint255(stor15[arg1].field_256) * 0.5) + 31 / 32 > idx:
                    stor15[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
                revert with 0, 34
            if arg2.length:
                stor15[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor15[arg1].field_256 = 0
                idx = 0
                while stor15[arg1].field_257 + 31 / 32 > idx:
                    stor15[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        if stor15[arg1].field_2816 > -3:
            revert with 0, 17
        stor15[arg1].field_2816 += 2
        if stor6 > -3:
            revert with 0, 17
        stor6 += 2
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = stor11
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 641] = block.timestamp
        emit 0x62cb9e94: 0, stor11, block.timestamp
        if stor15[arg1].field_256:
            if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if stor15[arg1].field_256:
                if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor15[arg1].field_256):
                    if 31 < uint255(stor15[arg1].field_256) * 0.5:
                        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = stor15[arg1][1].field_0
                        idx = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609
                        s = 0
                        while ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + (uint255(stor15[arg1].field_256) * 0.5) + 577 > idx:
                            mem[idx + 32] = stor15[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor15[arg1].field_256), data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)]), 
                    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = 256 * stor15[arg1].field_264
            else:
                if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
                    revert with 0, 34
                if stor15[arg1].field_257:
                    if 31 < stor15[arg1].field_257:
                        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = stor15[arg1][1].field_0
                        idx = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609
                        s = 0
                        while ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + stor15[arg1].field_257 + 577 > idx:
                            mem[idx + 32] = stor15[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor15[arg1].field_256), data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)]), 
                    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = 256 * stor15[arg1].field_264
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ceil32(uint255(stor15[arg1].field_256) * 0.5) + 673 len ceil32(uint255(stor15[arg1].field_256) * 0.5)] = mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)]
            if ceil32(uint255(stor15[arg1].field_256) * 0.5) > uint255(stor15[arg1].field_256) * 0.5:
                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ceil32(uint255(stor15[arg1].field_256) * 0.5) + (uint255(stor15[arg1].field_256) * 0.5) + 673] = 0
            return Array(len=2 * Mask(256, -1, stor15[arg1].field_256), data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)], mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + (2 * ceil32(uint255(stor15[arg1].field_256) * 0.5)) + 673 len 2 * ceil32(uint255(stor15[arg1].field_256) * 0.5)]), 
        if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
            revert with 0, 34
        if stor15[arg1].field_256:
            if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15[arg1].field_256):
                if 31 < uint255(stor15[arg1].field_256) * 0.5:
                    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = stor15[arg1][1].field_0
                    idx = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609
                    s = 0
                    while ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + (uint255(stor15[arg1].field_256) * 0.5) + 577 > idx:
                        mem[idx + 32] = stor15[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor15[arg1].field_256, data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(stor15[arg1].field_257)]), 
                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = 256 * stor15[arg1].field_264
        else:
            if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
                revert with 0, 34
            if stor15[arg1].field_257:
                if 31 < stor15[arg1].field_257:
                    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = stor15[arg1][1].field_0
                    idx = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609
                    s = 0
                    while ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + stor15[arg1].field_257 + 577 > idx:
                        mem[idx + 32] = stor15[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor15[arg1].field_256, data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(stor15[arg1].field_257)]), 
                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = 256 * stor15[arg1].field_264
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ceil32(stor15[arg1].field_257) + 673 len ceil32(stor15[arg1].field_257)] = mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(stor15[arg1].field_257)]
        if ceil32(stor15[arg1].field_257) > stor15[arg1].field_257:
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ceil32(stor15[arg1].field_257) + stor15[arg1].field_257 + 673] = 0
        return Array(len=stor15[arg1].field_256, data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(stor15[arg1].field_257)], mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + (2 * ceil32(stor15[arg1].field_257)) + 673 len 2 * ceil32(stor15[arg1].field_257)]), 
    mem[ceil32(ceil32(arg2.length)) + 421] = msg.sender
    mem[ceil32(ceil32(arg2.length)) + 453] = msg.sender
    mem[ceil32(ceil32(arg2.length)) + 485] = 0
    mem[ceil32(ceil32(arg2.length)) + 517] = 3
    mem[ceil32(ceil32(arg2.length)) + 549] = 160
    mem[ceil32(ceil32(arg2.length)) + 581] = 0
    mem[ceil32(ceil32(arg2.length)) + 613 len 0] = None
    require ext_code.size(address(stor8.field_0))
    call address(stor8.field_0).0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, msg.sender, 0, 3, 160, 0
    mem[ceil32(ceil32(arg2.length)) + 417] = ext_call.return_data[0]
    if not ext_call.success:
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(stor8.field_224) != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(ceil32(arg2.length)) + 417 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 417] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 417] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 417] + 31) + 418 < 417 or ceil32(ceil32(arg2.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 417] + 31) + 418 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg2.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 417] + 31) + 418
        if not ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 417:
            _5640 = ceil32(ceil32(arg2.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 417] + 31) + 418
            mem[ceil32(ceil32(arg2.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 417] + 31) + 418] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_5640 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_5640 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _5640 + -mem[64] + 132
        _5611 = ceil32(ceil32(arg2.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 417] + 31) + 418
        mem[ceil32(ceil32(arg2.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 417] + 31) + 418] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5670 = mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 417]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 417]
        mem[_5611 + 68 len ceil32(_5670)] = mem[ceil32(ceil32(arg2.length)) + ext_call.return_data[0] + 449 len ceil32(_5670)]
        if ceil32(_5670) > _5670:
            mem[_5611 + _5670 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5670) + _5611 + -mem[64] + 68
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if sub_26e91d6a[arg1] > -3:
        revert with 0, 17
    sub_26e91d6a[arg1] += 2
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 417] = 0
    if not address(stor9.field_0):
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 449] = 1
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 481] = 0
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 513] = 1
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 545] = 2
    if balanceOf[address(msg.sender)] < 2:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 2
    if balanceOf[address(stor9.field_0)] > -3:
        revert with 0, 17
    balanceOf[address(stor9.field_0)] += 2
    emit 0xfec3d581: 0, 2, msg.sender, msg.sender, address(stor9.field_0)
    if not ext_code.size(address(stor9.field_0)):
        if sub_26e91d6a[arg1] < 2:
            revert with 0, 17
        if sub_26e91d6a[arg1] - 2 != sub_26e91d6a[arg1]:
            revert with 0, 1
        if stor11 > -6:
            revert with 0, 17
        stor11 += 5
        if stor15[arg1].field_256:
            if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if arg2.length:
                stor15[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor15[arg1].field_256 = 0
                idx = 0
                while (uint255(stor15[arg1].field_256) * 0.5) + 31 / 32 > idx:
                    stor15[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
                revert with 0, 34
            if arg2.length:
                stor15[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor15[arg1].field_256 = 0
                idx = 0
                while stor15[arg1].field_257 + 31 / 32 > idx:
                    stor15[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        if stor15[arg1].field_2816 > -3:
            revert with 0, 17
        stor15[arg1].field_2816 += 2
        if stor6 > -3:
            revert with 0, 17
        stor6 += 2
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = stor11
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 641] = block.timestamp
        emit 0x62cb9e94: 0, stor11, block.timestamp
        if stor15[arg1].field_256:
            if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if stor15[arg1].field_256:
                if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor15[arg1].field_256):
                    if 31 < uint255(stor15[arg1].field_256) * 0.5:
                        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = stor15[arg1][1].field_0
                        idx = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609
                        s = 0
                        while ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + (uint255(stor15[arg1].field_256) * 0.5) + 577 > idx:
                            mem[idx + 32] = stor15[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor15[arg1].field_256), data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)]), 
                    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = 256 * stor15[arg1].field_264
            else:
                if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
                    revert with 0, 34
                if stor15[arg1].field_257:
                    if 31 < stor15[arg1].field_257:
                        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = stor15[arg1][1].field_0
                        idx = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609
                        s = 0
                        while ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + stor15[arg1].field_257 + 577 > idx:
                            mem[idx + 32] = stor15[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor15[arg1].field_256), data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)]), 
                    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = 256 * stor15[arg1].field_264
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ceil32(uint255(stor15[arg1].field_256) * 0.5) + 673 len ceil32(uint255(stor15[arg1].field_256) * 0.5)] = mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)]
            if ceil32(uint255(stor15[arg1].field_256) * 0.5) > uint255(stor15[arg1].field_256) * 0.5:
                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ceil32(uint255(stor15[arg1].field_256) * 0.5) + (uint255(stor15[arg1].field_256) * 0.5) + 673] = 0
            return Array(len=2 * Mask(256, -1, stor15[arg1].field_256), data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)], mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + (2 * ceil32(uint255(stor15[arg1].field_256) * 0.5)) + 673 len 2 * ceil32(uint255(stor15[arg1].field_256) * 0.5)]), 
        if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
            revert with 0, 34
        if stor15[arg1].field_256:
            if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15[arg1].field_256):
                if 31 < uint255(stor15[arg1].field_256) * 0.5:
                    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = stor15[arg1][1].field_0
                    idx = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609
                    s = 0
                    while ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + (uint255(stor15[arg1].field_256) * 0.5) + 577 > idx:
                        mem[idx + 32] = stor15[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor15[arg1].field_256, data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(stor15[arg1].field_257)]), 
                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = 256 * stor15[arg1].field_264
        else:
            if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
                revert with 0, 34
            if stor15[arg1].field_257:
                if 31 < stor15[arg1].field_257:
                    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = stor15[arg1][1].field_0
                    idx = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609
                    s = 0
                    while ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + stor15[arg1].field_257 + 577 > idx:
                        mem[idx + 32] = stor15[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor15[arg1].field_256, data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(stor15[arg1].field_257)]), 
                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609] = 256 * stor15[arg1].field_264
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ceil32(stor15[arg1].field_257) + 673 len ceil32(stor15[arg1].field_257)] = mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(stor15[arg1].field_257)]
        if ceil32(stor15[arg1].field_257) > stor15[arg1].field_257:
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ceil32(stor15[arg1].field_257) + stor15[arg1].field_257 + 673] = 0
        return Array(len=stor15[arg1].field_256, data=mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 609 len ceil32(stor15[arg1].field_257)], mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + (2 * ceil32(stor15[arg1].field_257)) + 673 len 2 * ceil32(stor15[arg1].field_257)]), 
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 581] = msg.sender
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 613] = msg.sender
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 645] = 0
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 677] = 2
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 709] = 160
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 741] = 0
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 773 len 0] = None
    require ext_code.size(address(stor9.field_0))
    call address(stor9.field_0).0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, msg.sender, 0, 2, 160, 0
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 577] = ext_call.return_data[0]
    if not ext_call.success:
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(stor9.field_224) != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 577 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 577] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 577] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 577] + 31) + 578 < 577 or ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 577] + 31) + 578 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 577] + 31) + 578
        if not ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 577:
            _11547 = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 577] + 31) + 578
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 577] + 31) + 578] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_11547 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_11547 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _11547 + -mem[64] + 132
        _11451 = ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 577] + 31) + 578
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 577] + 31) + 578] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _11655 = mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 577]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 577]
        mem[_11451 + 68 len ceil32(_11655)] = mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 609 len ceil32(_11655)]
        if ceil32(_11655) > _11655:
            mem[_11451 + _11655 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_11655) + _11451 + -mem[64] + 68
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
        mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 581] = 32
        mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 613] = 40
        mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 645] = 'ERC1155: ERC1155Receiver rejecte'
        mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 677] = 'd tokens' << 192
        revert with memory
          from ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 577
           len ceil32(return_data.size) + 132
    if sub_26e91d6a[arg1] < 2:
        revert with 0, 17
    if sub_26e91d6a[arg1] - 2 != sub_26e91d6a[arg1]:
        revert with 0, 1
    if stor11 > -6:
        revert with 0, 17
    stor11 += 5
    if stor15[arg1].field_256:
        if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor15[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor15[arg1].field_256 = 0
            idx = 0
            while (uint255(stor15[arg1].field_256) * 0.5) + 31 / 32 > idx:
                stor15[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
            revert with 0, 34
        if arg2.length:
            stor15[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor15[arg1].field_256 = 0
            idx = 0
            while stor15[arg1].field_257 + 31 / 32 > idx:
                stor15[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    if stor15[arg1].field_2816 > -3:
        revert with 0, 17
    stor15[arg1].field_2816 += 2
    if stor6 > -3:
        revert with 0, 17
    stor6 += 2
    mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 577] = 0
    mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609] = stor11
    mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 641] = block.timestamp
    emit 0x62cb9e94: mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 577 len ceil32(return_data.size) + 96]
    if stor15[arg1].field_256:
        if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if stor15[arg1].field_256:
            if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15[arg1].field_256):
                if 31 < uint255(stor15[arg1].field_256) * 0.5:
                    mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609] = stor15[arg1][1].field_0
                    idx = ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609
                    s = 0
                    while ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + (uint255(stor15[arg1].field_256) * 0.5) + 577 > idx:
                        mem[idx + 32] = stor15[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15[arg1].field_256), data=mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)]), 
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609] = 256 * stor15[arg1].field_264
        else:
            if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
                revert with 0, 34
            if stor15[arg1].field_257:
                if 31 < stor15[arg1].field_257:
                    mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609] = stor15[arg1][1].field_0
                    idx = ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609
                    s = 0
                    while ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + stor15[arg1].field_257 + 577 > idx:
                        mem[idx + 32] = stor15[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15[arg1].field_256), data=mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)]), 
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609] = 256 * stor15[arg1].field_264
        mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + ceil32(uint255(stor15[arg1].field_256) * 0.5) + 673 len ceil32(uint255(stor15[arg1].field_256) * 0.5)] = mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)]
        if ceil32(uint255(stor15[arg1].field_256) * 0.5) > uint255(stor15[arg1].field_256) * 0.5:
            mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + ceil32(uint255(stor15[arg1].field_256) * 0.5) + (uint255(stor15[arg1].field_256) * 0.5) + 673] = 0
        return Array(len=2 * Mask(256, -1, stor15[arg1].field_256), data=mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609 len ceil32(uint255(stor15[arg1].field_256) * 0.5)], mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + (2 * ceil32(uint255(stor15[arg1].field_256) * 0.5)) + 673 len 2 * ceil32(uint255(stor15[arg1].field_256) * 0.5)]), 
    if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
        revert with 0, 34
    if stor15[arg1].field_256:
        if stor15[arg1].field_256 == uint255(stor15[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15[arg1].field_256):
            if 31 < uint255(stor15[arg1].field_256) * 0.5:
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609] = stor15[arg1][1].field_0
                idx = ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609
                s = 0
                while ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + (uint255(stor15[arg1].field_256) * 0.5) + 577 > idx:
                    mem[idx + 32] = stor15[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_256, data=mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609 len ceil32(stor15[arg1].field_257)]), 
            mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609] = 256 * stor15[arg1].field_264
    else:
        if stor15[arg1].field_256 == stor15[arg1].field_257 < 32:
            revert with 0, 34
        if stor15[arg1].field_257:
            if 31 < stor15[arg1].field_257:
                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609] = stor15[arg1][1].field_0
                idx = ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609
                s = 0
                while ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + stor15[arg1].field_257 + 577 > idx:
                    mem[idx + 32] = stor15[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_256, data=mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609 len ceil32(stor15[arg1].field_257)]), 
            mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609] = 256 * stor15[arg1].field_264
    mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + ceil32(stor15[arg1].field_257) + 673 len ceil32(stor15[arg1].field_257)] = mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609 len ceil32(stor15[arg1].field_257)]
    if ceil32(stor15[arg1].field_257) > stor15[arg1].field_257:
        mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + ceil32(stor15[arg1].field_257) + stor15[arg1].field_257 + 673] = 0
    return Array(len=stor15[arg1].field_256, data=mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 609 len ceil32(stor15[arg1].field_257)], mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + (2 * ceil32(stor15[arg1].field_257)) + 673 len 2 * ceil32(stor15[arg1].field_257)]), 
}

function feed(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < 6:
        revert with 0, 'invalid ID'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[arg1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if not _hold[msg.sender][0]:
        if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
            revert with 0, 17
        if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
            revert with 0, 'Immutable Death'
        if 27 > !stor15[arg1].field_1536:
            revert with 0, 17
        if 50 > !(stor15[arg1].field_1536 + 27):
            revert with 0, 17
        if balanceOf[address(msg.sender)] <= stor15[arg1].field_1536 + 77:
            revert with 0, 'Not enough UUJI'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        mem[96] = 1
        mem[128] = 0
        mem[160] = 1
        mem[192] = 25
        mem[224] = 0
        if balanceOf[address(msg.sender)] < 25:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= 25
        emit 0xfec3d581: 0, 25, msg.sender, msg.sender, 0
        if sub_26e91d6a[arg1] > -26:
            revert with 0, 17
        sub_26e91d6a[arg1] += 25
        mem[256] = 0
        if not address(stor9.field_0):
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[288] = 1
        mem[320] = 0
        mem[352] = 1
        mem[384] = 25
        if balanceOf[address(msg.sender)] < 25:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 25
        if balanceOf[address(stor9.field_0)] > -26:
            revert with 0, 17
        balanceOf[address(stor9.field_0)] += 25
        emit 0xfec3d581: 0, 25, msg.sender, msg.sender, address(stor9.field_0)
        if not ext_code.size(address(stor9.field_0)):
            if sub_26e91d6a[arg1] < 25:
                revert with 0, 17
            if sub_26e91d6a[arg1] - 25 != sub_26e91d6a[arg1]:
                revert with 0, 1
            if 27 > !stor15[arg1].field_1536:
                revert with 0, 17
            mem[416] = 0
            if not address(stor8.field_0):
                revert with 0, 'ERC1155: transfer to the zero address'
            mem[448] = 1
            mem[480] = 0
            mem[512] = 1
            mem[544] = stor15[arg1].field_1536 + 27
            if balanceOf[address(msg.sender)] < stor15[arg1].field_1536 + 27:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -stor15[arg1].field_1536 - 27
            if balanceOf[address(stor8.field_0)] > !(stor15[arg1].field_1536 + 27):
                revert with 0, 17
            balanceOf[address(stor8.field_0)] = balanceOf[address(stor8.field_0)] + stor15[arg1].field_1536 + 27
            emit 0xfec3d581: 0, stor15[arg1].field_1536 + 27, msg.sender, msg.sender, address(stor8.field_0)
            if not ext_code.size(address(stor8.field_0)):
                if stor11 > -26:
                    revert with 0, 17
                stor11 += 25
                stor15[arg1].field_1792 = block.timestamp
                if stor15[arg1].field_2816 > -26:
                    revert with 0, 17
                stor15[arg1].field_2816 += 25
                if stor6 > -26:
                    revert with 0, 17
                stor6 += 25
                if stor15[arg1].field_0:
                    if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0xf8d25f5a: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0xf8d25f5a: mem[576 len -576]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg1].field_0) * 0.5:
                                mem[idx + 736] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xf8d25f5a: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[736 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0xf8d25f5a: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0xf8d25f5a: mem[576 len -576]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg1].field_1:
                                mem[idx + 736] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xf8d25f5a: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[736 len ceil32(stor15[arg1].field_1)]), block.timestamp
                emit 0x62cb9e94: 0, stor11, block.timestamp
            mem[580] = msg.sender
            mem[612] = msg.sender
            mem[644] = 0
            mem[676] = stor15[arg1].field_1536 + 27
            mem[708] = 160
            mem[740] = 0
            mem[772 len 0] = None
            require ext_code.size(address(stor8.field_0))
            call address(stor8.field_0).0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, stor15[arg1].field_1536 + 27, 160, 0
            mem[576] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if stor11 > -26:
                    revert with 0, 17
                stor11 += 25
                stor15[arg1].field_1792 = block.timestamp
                if stor15[arg1].field_2816 > -26:
                    revert with 0, 17
                stor15[arg1].field_2816 += 25
                if stor6 > -26:
                    revert with 0, 17
                stor6 += 25
                if stor15[arg1].field_0:
                    if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0xf8d25f5a: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0xf8d25f5a: mem[ceil32(return_data.size) + 576 len -ceil32(return_data.size) - 576]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg1].field_0) * 0.5:
                                mem[idx + ceil32(return_data.size) + 736] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xf8d25f5a: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[ceil32(return_data.size) + 736 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0xf8d25f5a: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0xf8d25f5a: mem[ceil32(return_data.size) + 576 len -ceil32(return_data.size) - 576]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg1].field_1:
                                mem[idx + ceil32(return_data.size) + 736] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xf8d25f5a: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[ceil32(return_data.size) + 736 len ceil32(stor15[arg1].field_1)]), block.timestamp
                emit 0x62cb9e94: 0, stor11, block.timestamp
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(stor8.field_224) != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ext_call.return_data[0] + 576] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
                revert with 0, 65
            mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
            if not ext_call.return_data[0] + 576:
                _1478 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
                mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_1478 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_1478 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _1478 + -mem[64] + 132
            _1470 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1486 = mem[ext_call.return_data[0] + 576]
            mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
            mem[_1470 + 68 len ceil32(_1486)] = mem[ext_call.return_data[0] + 608 len ceil32(_1486)]
            if ceil32(_1486) > _1486:
                mem[_1470 + _1486 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1486) + _1470 + -mem[64] + 68
        mem[420] = msg.sender
        mem[452] = msg.sender
        mem[484] = 0
        mem[516] = 25
        mem[548] = 160
        mem[580] = 0
        mem[612 len 0] = None
        require ext_code.size(address(stor9.field_0))
        call address(stor9.field_0).0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 25, 160, 0
        mem[416] = ext_call.return_data[0]
        if not ext_call.success:
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(stor9.field_224) != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[416 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ext_call.return_data[0] + 416] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 < 416 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 > test266151307():
                revert with 0, 65
            mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
            if not ext_call.return_data[0] + 416:
                _1480 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
                mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_1480 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_1480 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _1480 + -mem[64] + 132
            _1472 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1489 = mem[ext_call.return_data[0] + 416]
            mem[mem[64] + 36] = mem[ext_call.return_data[0] + 416]
            mem[_1472 + 68 len ceil32(_1489)] = mem[ext_call.return_data[0] + 448 len ceil32(_1489)]
            if ceil32(_1489) > _1489:
                mem[_1472 + _1489 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1489) + _1472 + -mem[64] + 68
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if sub_26e91d6a[arg1] < 25:
            revert with 0, 17
        if sub_26e91d6a[arg1] - 25 != sub_26e91d6a[arg1]:
            revert with 0, 1
        if 27 > !stor15[arg1].field_1536:
            revert with 0, 17
        mem[ceil32(return_data.size) + 416] = 0
        if not address(stor8.field_0):
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(return_data.size) + 448] = 1
        mem[ceil32(return_data.size) + 480] = 0
        mem[ceil32(return_data.size) + 512] = 1
        mem[ceil32(return_data.size) + 544] = stor15[arg1].field_1536 + 27
        if balanceOf[address(msg.sender)] < stor15[arg1].field_1536 + 27:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -stor15[arg1].field_1536 - 27
        if balanceOf[address(stor8.field_0)] > !(stor15[arg1].field_1536 + 27):
            revert with 0, 17
        balanceOf[address(stor8.field_0)] = balanceOf[address(stor8.field_0)] + stor15[arg1].field_1536 + 27
        emit 0xfec3d581: 0, stor15[arg1].field_1536 + 27, msg.sender, msg.sender, address(stor8.field_0)
        if not ext_code.size(address(stor8.field_0)):
            if stor11 > -26:
                revert with 0, 17
            stor11 += 25
            stor15[arg1].field_1792 = block.timestamp
            if stor15[arg1].field_2816 > -26:
                revert with 0, 17
            stor15[arg1].field_2816 += 25
            if stor6 > -26:
                revert with 0, 17
            stor6 += 25
            if stor15[arg1].field_0:
                if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not stor15[arg1].field_0:
                    emit 0xf8d25f5a: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                else:
                    if stor15[arg1].field_0 != 1:
                        emit 0xf8d25f5a: mem[ceil32(return_data.size) + 576 len -ceil32(return_data.size) - 576]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor15[arg1].field_0) * 0.5:
                            mem[idx + ceil32(return_data.size) + 736] = stor15[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0xf8d25f5a: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[ceil32(return_data.size) + 736 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
            else:
                if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                    revert with 0, 34
                if not stor15[arg1].field_0:
                    emit 0xf8d25f5a: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                else:
                    if stor15[arg1].field_0 != 1:
                        emit 0xf8d25f5a: mem[ceil32(return_data.size) + 576 len -ceil32(return_data.size) - 576]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor15[arg1].field_1:
                            mem[idx + ceil32(return_data.size) + 736] = stor15[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0xf8d25f5a: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[ceil32(return_data.size) + 736 len ceil32(stor15[arg1].field_1)]), block.timestamp
            emit 0x62cb9e94: 0, stor11, block.timestamp
        else:
            mem[ceil32(return_data.size) + 580] = msg.sender
            mem[ceil32(return_data.size) + 612] = msg.sender
            mem[ceil32(return_data.size) + 644] = 0
            mem[ceil32(return_data.size) + 676] = stor15[arg1].field_1536 + 27
            mem[ceil32(return_data.size) + 708] = 160
            mem[ceil32(return_data.size) + 740] = 0
            mem[ceil32(return_data.size) + 772 len 0] = None
            require ext_code.size(address(stor8.field_0))
            call address(stor8.field_0).0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, stor15[arg1].field_1536 + 27, 160, 0
            mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
            if not ext_call.success:
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(stor8.field_224) != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(return_data.size) + 576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 < 576 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                if not ceil32(return_data.size) + ext_call.return_data[0] + 576:
                    _2646 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 52
                    mem[_2646 + 68] = 'ERC1155: transfer to non ERC1155'
                    mem[_2646 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                    revert with memory
                      from mem[64]
                       len _2646 + -mem[64] + 132
                _2638 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _2654 = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
                mem[mem[64] + 36] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
                mem[_2638 + 68 len ceil32(_2654)] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 608 len ceil32(_2654)]
                if ceil32(_2654) > _2654:
                    mem[_2638 + _2654 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_2654) + _2638 + -mem[64] + 68
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 580] = 32
                mem[(2 * ceil32(return_data.size)) + 612] = 40
                mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: ERC1155Receiver rejecte'
                mem[(2 * ceil32(return_data.size)) + 676] = 'd tokens' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 576
                   len ceil32(return_data.size) + 132
            if stor11 > -26:
                revert with 0, 17
            stor11 += 25
            stor15[arg1].field_1792 = block.timestamp
            if stor15[arg1].field_2816 > -26:
                revert with 0, 17
            stor15[arg1].field_2816 += 25
            if stor6 > -26:
                revert with 0, 17
            stor6 += 25
            mem[(2 * ceil32(return_data.size)) + 576] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 608] = arg1
            mem[(2 * ceil32(return_data.size)) + 640] = 128
            if stor15[arg1].field_0:
                if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[(2 * ceil32(return_data.size)) + 704] = uint255(stor15[arg1].field_0) * 0.5
                if not stor15[arg1].field_0:
                    mem[(2 * ceil32(return_data.size)) + 736] = Mask(248, 8, stor15[arg1].field_0)
                    mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
                    emit 0xf8d25f5a: mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + 192]
                else:
                    if stor15[arg1].field_0 != 1:
                        mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
                        emit 0xf8d25f5a: mem[(2 * ceil32(return_data.size)) + 576 len (-2 * ceil32(return_data.size)) - 576]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor15[arg1].field_0) * 0.5:
                            mem[idx + (2 * ceil32(return_data.size)) + 736] = stor15[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
                        emit 0xf8d25f5a: mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + ceil32(uint255(stor15[arg1].field_0) * 0.5) + 160]
            else:
                if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                    revert with 0, 34
                mem[(2 * ceil32(return_data.size)) + 704] = stor15[arg1].field_1
                if not stor15[arg1].field_0:
                    mem[(2 * ceil32(return_data.size)) + 736] = Mask(248, 8, stor15[arg1].field_0)
                    mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
                    emit 0xf8d25f5a: mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + 192]
                else:
                    if stor15[arg1].field_0 != 1:
                        mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
                        emit 0xf8d25f5a: mem[(2 * ceil32(return_data.size)) + 576 len (-2 * ceil32(return_data.size)) - 576]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor15[arg1].field_1:
                            mem[idx + (2 * ceil32(return_data.size)) + 736] = stor15[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
                        emit 0xf8d25f5a: mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + ceil32(stor15[arg1].field_1) + 160]
            mem[(2 * ceil32(return_data.size)) + 576] = 0
            mem[(2 * ceil32(return_data.size)) + 608] = stor11
            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp
            emit 0x62cb9e94: mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + 96]
    else:
        if 27 > !stor15[arg1].field_1536:
            revert with 0, 17
        if 50 > !(stor15[arg1].field_1536 + 27):
            revert with 0, 17
        if stor15[arg1].field_1536 + 77 > !_hold[msg.sender][0]:
            revert with 0, 17
        if balanceOf[address(msg.sender)] <= stor15[arg1].field_1536 + _hold[msg.sender][0] + 77:
            revert with 0, 'exceeds available UUJIs'
        if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
            revert with 0, 17
        if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
            revert with 0, 'Immutable Death'
        if 27 > !stor15[arg1].field_1536:
            revert with 0, 17
        if 50 > !(stor15[arg1].field_1536 + 27):
            revert with 0, 17
        if balanceOf[address(msg.sender)] <= stor15[arg1].field_1536 + 77:
            revert with 0, 'Not enough UUJI'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        mem[96] = 1
        mem[128] = 0
        mem[160] = 1
        mem[192] = 25
        mem[224] = 0
        if balanceOf[address(msg.sender)] < 25:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= 25
        emit 0xfec3d581: 0, 25, msg.sender, msg.sender, 0
        if sub_26e91d6a[arg1] > -26:
            revert with 0, 17
        sub_26e91d6a[arg1] += 25
        mem[256] = 0
        if not address(stor9.field_0):
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[288] = 1
        mem[320] = 0
        mem[352] = 1
        mem[384] = 25
        if balanceOf[address(msg.sender)] < 25:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 25
        if balanceOf[address(stor9.field_0)] > -26:
            revert with 0, 17
        balanceOf[address(stor9.field_0)] += 25
        emit 0xfec3d581: 0, 25, msg.sender, msg.sender, address(stor9.field_0)
        if not ext_code.size(address(stor9.field_0)):
            if sub_26e91d6a[arg1] < 25:
                revert with 0, 17
            if sub_26e91d6a[arg1] - 25 != sub_26e91d6a[arg1]:
                revert with 0, 1
            if 27 > !stor15[arg1].field_1536:
                revert with 0, 17
            mem[416] = 0
            if not address(stor8.field_0):
                revert with 0, 'ERC1155: transfer to the zero address'
            mem[448] = 1
            mem[480] = 0
            mem[512] = 1
            mem[544] = stor15[arg1].field_1536 + 27
            if balanceOf[address(msg.sender)] < stor15[arg1].field_1536 + 27:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -stor15[arg1].field_1536 - 27
            if balanceOf[address(stor8.field_0)] > !(stor15[arg1].field_1536 + 27):
                revert with 0, 17
            balanceOf[address(stor8.field_0)] = balanceOf[address(stor8.field_0)] + stor15[arg1].field_1536 + 27
            emit 0xfec3d581: 0, stor15[arg1].field_1536 + 27, msg.sender, msg.sender, address(stor8.field_0)
            if not ext_code.size(address(stor8.field_0)):
                if stor11 > -26:
                    revert with 0, 17
                stor11 += 25
                stor15[arg1].field_1792 = block.timestamp
                if stor15[arg1].field_2816 > -26:
                    revert with 0, 17
                stor15[arg1].field_2816 += 25
                if stor6 > -26:
                    revert with 0, 17
                stor6 += 25
                if stor15[arg1].field_0:
                    if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0xf8d25f5a: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0xf8d25f5a: mem[576 len -576]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg1].field_0) * 0.5:
                                mem[idx + 736] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xf8d25f5a: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[736 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0xf8d25f5a: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0xf8d25f5a: mem[576 len -576]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg1].field_1:
                                mem[idx + 736] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xf8d25f5a: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[736 len ceil32(stor15[arg1].field_1)]), block.timestamp
                emit 0x62cb9e94: 0, stor11, block.timestamp
            mem[580] = msg.sender
            mem[612] = msg.sender
            mem[644] = 0
            mem[676] = stor15[arg1].field_1536 + 27
            mem[708] = 160
            mem[740] = 0
            mem[772 len 0] = None
            require ext_code.size(address(stor8.field_0))
            call address(stor8.field_0).0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, stor15[arg1].field_1536 + 27, 160, 0
            mem[576] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if stor11 > -26:
                    revert with 0, 17
                stor11 += 25
                stor15[arg1].field_1792 = block.timestamp
                if stor15[arg1].field_2816 > -26:
                    revert with 0, 17
                stor15[arg1].field_2816 += 25
                if stor6 > -26:
                    revert with 0, 17
                stor6 += 25
                if stor15[arg1].field_0:
                    if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0xf8d25f5a: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0xf8d25f5a: mem[ceil32(return_data.size) + 576 len -ceil32(return_data.size) - 576]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg1].field_0) * 0.5:
                                mem[idx + ceil32(return_data.size) + 736] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xf8d25f5a: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[ceil32(return_data.size) + 736 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0xf8d25f5a: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0xf8d25f5a: mem[ceil32(return_data.size) + 576 len -ceil32(return_data.size) - 576]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg1].field_1:
                                mem[idx + ceil32(return_data.size) + 736] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xf8d25f5a: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[ceil32(return_data.size) + 736 len ceil32(stor15[arg1].field_1)]), block.timestamp
                emit 0x62cb9e94: 0, stor11, block.timestamp
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(stor8.field_224) != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ext_call.return_data[0] + 576] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
                revert with 0, 65
            mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
            if not ext_call.return_data[0] + 576:
                _1482 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
                mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_1482 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_1482 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _1482 + -mem[64] + 132
            _1474 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1492 = mem[ext_call.return_data[0] + 576]
            mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
            mem[_1474 + 68 len ceil32(_1492)] = mem[ext_call.return_data[0] + 608 len ceil32(_1492)]
            if ceil32(_1492) > _1492:
                mem[_1474 + _1492 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1492) + _1474 + -mem[64] + 68
        mem[420] = msg.sender
        mem[452] = msg.sender
        mem[484] = 0
        mem[516] = 25
        mem[548] = 160
        mem[580] = 0
        mem[612 len 0] = None
        require ext_code.size(address(stor9.field_0))
        call address(stor9.field_0).0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 25, 160, 0
        mem[416] = ext_call.return_data[0]
        if not ext_call.success:
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(stor9.field_224) != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[416 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ext_call.return_data[0] + 416] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 < 416 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 > test266151307():
                revert with 0, 65
            mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
            if not ext_call.return_data[0] + 416:
                _1484 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
                mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_1484 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_1484 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _1484 + -mem[64] + 132
            _1476 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1495 = mem[ext_call.return_data[0] + 416]
            mem[mem[64] + 36] = mem[ext_call.return_data[0] + 416]
            mem[_1476 + 68 len ceil32(_1495)] = mem[ext_call.return_data[0] + 448 len ceil32(_1495)]
            if ceil32(_1495) > _1495:
                mem[_1476 + _1495 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1495) + _1476 + -mem[64] + 68
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if sub_26e91d6a[arg1] < 25:
            revert with 0, 17
        if sub_26e91d6a[arg1] - 25 != sub_26e91d6a[arg1]:
            revert with 0, 1
        if 27 > !stor15[arg1].field_1536:
            revert with 0, 17
        mem[ceil32(return_data.size) + 416] = 0
        if not address(stor8.field_0):
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(return_data.size) + 448] = 1
        mem[ceil32(return_data.size) + 480] = 0
        mem[ceil32(return_data.size) + 512] = 1
        mem[ceil32(return_data.size) + 544] = stor15[arg1].field_1536 + 27
        if balanceOf[address(msg.sender)] < stor15[arg1].field_1536 + 27:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -stor15[arg1].field_1536 - 27
        if balanceOf[address(stor8.field_0)] > !(stor15[arg1].field_1536 + 27):
            revert with 0, 17
        balanceOf[address(stor8.field_0)] = balanceOf[address(stor8.field_0)] + stor15[arg1].field_1536 + 27
        emit 0xfec3d581: 0, stor15[arg1].field_1536 + 27, msg.sender, msg.sender, address(stor8.field_0)
        if not ext_code.size(address(stor8.field_0)):
            if stor11 > -26:
                revert with 0, 17
            stor11 += 25
            stor15[arg1].field_1792 = block.timestamp
            if stor15[arg1].field_2816 > -26:
                revert with 0, 17
            stor15[arg1].field_2816 += 25
            if stor6 > -26:
                revert with 0, 17
            stor6 += 25
            if stor15[arg1].field_0:
                if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not stor15[arg1].field_0:
                    emit 0xf8d25f5a: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                else:
                    if stor15[arg1].field_0 != 1:
                        emit 0xf8d25f5a: mem[ceil32(return_data.size) + 576 len -ceil32(return_data.size) - 576]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor15[arg1].field_0) * 0.5:
                            mem[idx + ceil32(return_data.size) + 736] = stor15[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0xf8d25f5a: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[ceil32(return_data.size) + 736 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
            else:
                if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                    revert with 0, 34
                if not stor15[arg1].field_0:
                    emit 0xf8d25f5a: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                else:
                    if stor15[arg1].field_0 != 1:
                        emit 0xf8d25f5a: mem[ceil32(return_data.size) + 576 len -ceil32(return_data.size) - 576]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor15[arg1].field_1:
                            mem[idx + ceil32(return_data.size) + 736] = stor15[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0xf8d25f5a: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[ceil32(return_data.size) + 736 len ceil32(stor15[arg1].field_1)]), block.timestamp
            emit 0x62cb9e94: 0, stor11, block.timestamp
        else:
            mem[ceil32(return_data.size) + 580] = msg.sender
            mem[ceil32(return_data.size) + 612] = msg.sender
            mem[ceil32(return_data.size) + 644] = 0
            mem[ceil32(return_data.size) + 676] = stor15[arg1].field_1536 + 27
            mem[ceil32(return_data.size) + 708] = 160
            mem[ceil32(return_data.size) + 740] = 0
            mem[ceil32(return_data.size) + 772 len 0] = None
            require ext_code.size(address(stor8.field_0))
            call address(stor8.field_0).0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, stor15[arg1].field_1536 + 27, 160, 0
            mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
            if not ext_call.success:
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(stor8.field_224) != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(return_data.size) + 576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 < 576 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                if not ceil32(return_data.size) + ext_call.return_data[0] + 576:
                    _2650 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 52
                    mem[_2650 + 68] = 'ERC1155: transfer to non ERC1155'
                    mem[_2650 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                    revert with memory
                      from mem[64]
                       len _2650 + -mem[64] + 132
                _2642 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _2660 = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
                mem[mem[64] + 36] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
                mem[_2642 + 68 len ceil32(_2660)] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 608 len ceil32(_2660)]
                if ceil32(_2660) > _2660:
                    mem[_2642 + _2660 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_2660) + _2642 + -mem[64] + 68
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 580] = 32
                mem[(2 * ceil32(return_data.size)) + 612] = 40
                mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: ERC1155Receiver rejecte'
                mem[(2 * ceil32(return_data.size)) + 676] = 'd tokens' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 576
                   len ceil32(return_data.size) + 132
            if stor11 > -26:
                revert with 0, 17
            stor11 += 25
            stor15[arg1].field_1792 = block.timestamp
            if stor15[arg1].field_2816 > -26:
                revert with 0, 17
            stor15[arg1].field_2816 += 25
            if stor6 > -26:
                revert with 0, 17
            stor6 += 25
            mem[(2 * ceil32(return_data.size)) + 576] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 608] = arg1
            mem[(2 * ceil32(return_data.size)) + 640] = 128
            if stor15[arg1].field_0:
                if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[(2 * ceil32(return_data.size)) + 704] = uint255(stor15[arg1].field_0) * 0.5
                if not stor15[arg1].field_0:
                    mem[(2 * ceil32(return_data.size)) + 736] = Mask(248, 8, stor15[arg1].field_0)
                    mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
                    emit 0xf8d25f5a: mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + 192]
                else:
                    if stor15[arg1].field_0 != 1:
                        mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
                        emit 0xf8d25f5a: mem[(2 * ceil32(return_data.size)) + 576 len (-2 * ceil32(return_data.size)) - 576]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor15[arg1].field_0) * 0.5:
                            mem[idx + (2 * ceil32(return_data.size)) + 736] = stor15[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
                        emit 0xf8d25f5a: mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + ceil32(uint255(stor15[arg1].field_0) * 0.5) + 160]
            else:
                if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                    revert with 0, 34
                mem[(2 * ceil32(return_data.size)) + 704] = stor15[arg1].field_1
                if not stor15[arg1].field_0:
                    mem[(2 * ceil32(return_data.size)) + 736] = Mask(248, 8, stor15[arg1].field_0)
                    mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
                    emit 0xf8d25f5a: mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + 192]
                else:
                    if stor15[arg1].field_0 != 1:
                        mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
                        emit 0xf8d25f5a: mem[(2 * ceil32(return_data.size)) + 576 len (-2 * ceil32(return_data.size)) - 576]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor15[arg1].field_1:
                            mem[idx + (2 * ceil32(return_data.size)) + 736] = stor15[arg1][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 672] = block.timestamp
                        emit 0xf8d25f5a: mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + ceil32(stor15[arg1].field_1) + 160]
            mem[(2 * ceil32(return_data.size)) + 576] = 0
            mem[(2 * ceil32(return_data.size)) + 608] = stor11
            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp
            emit 0x62cb9e94: mem[(2 * ceil32(return_data.size)) + 576 len ceil32(return_data.size) + 96]
}

function train(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < 6:
        revert with 0, 'invalid ID'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[arg1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if not _hold[msg.sender][0]:
        if stor15[arg1].field_2048 > !stor5:
            revert with 0, 17
        require block.timestamp > stor15[arg1].field_2048 + stor5
        if 27 > !stor15[arg1].field_1536:
            revert with 0, 17
        if 100 > !(stor15[arg1].field_1536 + 27):
            revert with 0, 17
        if balanceOf[address(msg.sender)] <= stor15[arg1].field_1536 + 127:
            revert with 0, 'Not enough UUJI'
        if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
            revert with 0, 17
        if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
            revert with 0, 'Immutable Death'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        mem[96] = 1
        mem[128] = 0
        mem[160] = 1
        mem[192] = 50
        mem[224] = 0
        if balanceOf[address(msg.sender)] < 50:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= 50
        emit 0xfec3d581: 0, 50, msg.sender, msg.sender, 0
        if sub_26e91d6a[arg1] > -51:
            revert with 0, 17
        sub_26e91d6a[arg1] += 50
        mem[256] = 0
        if not address(stor9.field_0):
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[288] = 1
        mem[320] = 0
        mem[352] = 1
        mem[384] = 50
        if balanceOf[address(msg.sender)] < 50:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 50
        if balanceOf[address(stor9.field_0)] > -51:
            revert with 0, 17
        balanceOf[address(stor9.field_0)] += 50
        emit 0xfec3d581: 0, 50, msg.sender, msg.sender, address(stor9.field_0)
        if not ext_code.size(address(stor9.field_0)):
            if sub_26e91d6a[arg1] < 50:
                revert with 0, 17
            if sub_26e91d6a[arg1] - 50 != sub_26e91d6a[arg1]:
                revert with 0, 1
            if 27 > !stor15[arg1].field_1536:
                revert with 0, 17
            mem[416] = 0
            if not address(stor8.field_0):
                revert with 0, 'ERC1155: transfer to the zero address'
            mem[448] = 1
            mem[480] = 0
            mem[512] = 1
            mem[544] = stor15[arg1].field_1536 + 27
            if balanceOf[address(msg.sender)] < stor15[arg1].field_1536 + 27:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -stor15[arg1].field_1536 - 27
            if balanceOf[address(stor8.field_0)] > !(stor15[arg1].field_1536 + 27):
                revert with 0, 17
            balanceOf[address(stor8.field_0)] = balanceOf[address(stor8.field_0)] + stor15[arg1].field_1536 + 27
            emit 0xfec3d581: 0, stor15[arg1].field_1536 + 27, msg.sender, msg.sender, address(stor8.field_0)
            if not ext_code.size(address(stor8.field_0)):
                if stor11 > -51:
                    revert with 0, 17
                stor11 += 50
                if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                    revert with 0, 17
                stor15[arg1].field_2048 = block.timestamp
                if stor15[arg1].field_1536 > -2:
                    revert with 0, 17
                stor15[arg1].field_1536++
                if 9000 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1280 > !((sha3(block.difficulty, block.timestamp) % 10) + 9001):
                    revert with 0, 17
                stor15[arg1].field_1280 = stor15[arg1].field_1280 + (sha3(block.difficulty, block.timestamp) % 10) + 9001
                if 2 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_768 > !((sha3(block.difficulty, block.timestamp) % 10) + 3):
                    revert with 0, 17
                stor15[arg1].field_768 = stor15[arg1].field_768 + (sha3(block.difficulty, block.timestamp) % 10) + 3
                if 1 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1024 > !((sha3(block.difficulty, block.timestamp) % 10) + 2):
                    revert with 0, 17
                stor15[arg1].field_1024 = stor15[arg1].field_1024 + (sha3(block.difficulty, block.timestamp) % 10) + 2
                if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 1
                if stor15[arg1].field_2816 > -51:
                    revert with 0, 17
                stor15[arg1].field_2816 += 50
                if stor6 > -51:
                    revert with 0, 17
                stor6 += 50
                if stor15[arg1].field_0:
                    if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[672 len -672]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg1].field_0) * 0.5:
                                mem[idx + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[832 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[672 len -672]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg1].field_1:
                                mem[idx + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[832 len ceil32(stor15[arg1].field_1)]), block.timestamp
            else:
                mem[580] = msg.sender
                mem[612] = msg.sender
                mem[644] = 0
                mem[676] = stor15[arg1].field_1536 + 27
                mem[708] = 160
                mem[740] = 0
                mem[772 len 0] = None
                require ext_code.size(address(stor8.field_0))
                call address(stor8.field_0).0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, 0, stor15[arg1].field_1536 + 27, 160, 0
                mem[576] = ext_call.return_data[0]
                if not ext_call.success:
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(stor8.field_224) != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ext_call.return_data[0] + 576] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
                        revert with 0, 65
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
                    if not ext_call.return_data[0] + 576:
                        _1552 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
                        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 52
                        mem[_1552 + 68] = 'ERC1155: transfer to non ERC1155'
                        mem[_1552 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                        revert with memory
                          from mem[64]
                           len _1552 + -mem[64] + 132
                    _1542 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1568 = mem[ext_call.return_data[0] + 576]
                    mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
                    mem[_1542 + 68 len ceil32(_1568)] = mem[ext_call.return_data[0] + 608 len ceil32(_1568)]
                    if ceil32(_1568) > _1568:
                        mem[_1542 + _1568 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1568) + _1542 + -mem[64] + 68
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if stor11 > -51:
                    revert with 0, 17
                stor11 += 50
                if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                    revert with 0, 17
                stor15[arg1].field_2048 = block.timestamp
                if stor15[arg1].field_1536 > -2:
                    revert with 0, 17
                stor15[arg1].field_1536++
                if 9000 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1280 > !((sha3(block.difficulty, block.timestamp) % 10) + 9001):
                    revert with 0, 17
                stor15[arg1].field_1280 = stor15[arg1].field_1280 + (sha3(block.difficulty, block.timestamp) % 10) + 9001
                if 2 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_768 > !((sha3(block.difficulty, block.timestamp) % 10) + 3):
                    revert with 0, 17
                stor15[arg1].field_768 = stor15[arg1].field_768 + (sha3(block.difficulty, block.timestamp) % 10) + 3
                if 1 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1024 > !((sha3(block.difficulty, block.timestamp) % 10) + 2):
                    revert with 0, 17
                stor15[arg1].field_1024 = stor15[arg1].field_1024 + (sha3(block.difficulty, block.timestamp) % 10) + 2
                if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 1
                if stor15[arg1].field_2816 > -51:
                    revert with 0, 17
                stor15[arg1].field_2816 += 50
                if stor6 > -51:
                    revert with 0, 17
                stor6 += 50
                if stor15[arg1].field_0:
                    if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 672 len -ceil32(return_data.size) - 672]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg1].field_0) * 0.5:
                                mem[idx + ceil32(return_data.size) + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[ceil32(return_data.size) + 832 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 672 len -ceil32(return_data.size) - 672]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg1].field_1:
                                mem[idx + ceil32(return_data.size) + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[ceil32(return_data.size) + 832 len ceil32(stor15[arg1].field_1)]), block.timestamp
        else:
            mem[420] = msg.sender
            mem[452] = msg.sender
            mem[484] = 0
            mem[516] = 50
            mem[548] = 160
            mem[580] = 0
            mem[612 len 0] = None
            require ext_code.size(address(stor9.field_0))
            call address(stor9.field_0).0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, 50, 160, 0
            mem[416] = ext_call.return_data[0]
            if not ext_call.success:
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(stor9.field_224) != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[416 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ext_call.return_data[0] + 416] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 < 416 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 > test266151307():
                    revert with 0, 65
                mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
                if not ext_call.return_data[0] + 416:
                    _1558 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 52
                    mem[_1558 + 68] = 'ERC1155: transfer to non ERC1155'
                    mem[_1558 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                    revert with memory
                      from mem[64]
                       len _1558 + -mem[64] + 132
                _1545 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
                mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1574 = mem[ext_call.return_data[0] + 416]
                mem[mem[64] + 36] = mem[ext_call.return_data[0] + 416]
                mem[_1545 + 68 len ceil32(_1574)] = mem[ext_call.return_data[0] + 448 len ceil32(_1574)]
                if ceil32(_1574) > _1574:
                    mem[_1545 + _1574 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1574) + _1545 + -mem[64] + 68
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if sub_26e91d6a[arg1] < 50:
                revert with 0, 17
            if sub_26e91d6a[arg1] - 50 != sub_26e91d6a[arg1]:
                revert with 0, 1
            if 27 > !stor15[arg1].field_1536:
                revert with 0, 17
            mem[ceil32(return_data.size) + 416] = 0
            if not address(stor8.field_0):
                revert with 0, 'ERC1155: transfer to the zero address'
            mem[ceil32(return_data.size) + 448] = 1
            mem[ceil32(return_data.size) + 480] = 0
            mem[ceil32(return_data.size) + 512] = 1
            mem[ceil32(return_data.size) + 544] = stor15[arg1].field_1536 + 27
            if balanceOf[address(msg.sender)] < stor15[arg1].field_1536 + 27:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -stor15[arg1].field_1536 - 27
            if balanceOf[address(stor8.field_0)] > !(stor15[arg1].field_1536 + 27):
                revert with 0, 17
            balanceOf[address(stor8.field_0)] = balanceOf[address(stor8.field_0)] + stor15[arg1].field_1536 + 27
            emit 0xfec3d581: 0, stor15[arg1].field_1536 + 27, msg.sender, msg.sender, address(stor8.field_0)
            if not ext_code.size(address(stor8.field_0)):
                if stor11 > -51:
                    revert with 0, 17
                stor11 += 50
                if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                    revert with 0, 17
                stor15[arg1].field_2048 = block.timestamp
                if stor15[arg1].field_1536 > -2:
                    revert with 0, 17
                stor15[arg1].field_1536++
                if 9000 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1280 > !((sha3(block.difficulty, block.timestamp) % 10) + 9001):
                    revert with 0, 17
                stor15[arg1].field_1280 = stor15[arg1].field_1280 + (sha3(block.difficulty, block.timestamp) % 10) + 9001
                if 2 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_768 > !((sha3(block.difficulty, block.timestamp) % 10) + 3):
                    revert with 0, 17
                stor15[arg1].field_768 = stor15[arg1].field_768 + (sha3(block.difficulty, block.timestamp) % 10) + 3
                if 1 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1024 > !((sha3(block.difficulty, block.timestamp) % 10) + 2):
                    revert with 0, 17
                stor15[arg1].field_1024 = stor15[arg1].field_1024 + (sha3(block.difficulty, block.timestamp) % 10) + 2
                if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 1
                if stor15[arg1].field_2816 > -51:
                    revert with 0, 17
                stor15[arg1].field_2816 += 50
                if stor6 > -51:
                    revert with 0, 17
                stor6 += 50
                if stor15[arg1].field_0:
                    if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 672 len -ceil32(return_data.size) - 672]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg1].field_0) * 0.5:
                                mem[idx + ceil32(return_data.size) + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[ceil32(return_data.size) + 832 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 672 len -ceil32(return_data.size) - 672]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg1].field_1:
                                mem[idx + ceil32(return_data.size) + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[ceil32(return_data.size) + 832 len ceil32(stor15[arg1].field_1)]), block.timestamp
            else:
                mem[ceil32(return_data.size) + 580] = msg.sender
                mem[ceil32(return_data.size) + 612] = msg.sender
                mem[ceil32(return_data.size) + 644] = 0
                mem[ceil32(return_data.size) + 676] = stor15[arg1].field_1536 + 27
                mem[ceil32(return_data.size) + 708] = 160
                mem[ceil32(return_data.size) + 740] = 0
                mem[ceil32(return_data.size) + 772 len 0] = None
                require ext_code.size(address(stor8.field_0))
                call address(stor8.field_0).0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, 0, stor15[arg1].field_1536 + 27, 160, 0
                mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
                if not ext_call.success:
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(stor8.field_224) != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(return_data.size) + 576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 < 576 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                    if not ceil32(return_data.size) + ext_call.return_data[0] + 576:
                        _2786 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                        mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 52
                        mem[_2786 + 68] = 'ERC1155: transfer to non ERC1155'
                        mem[_2786 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                        revert with memory
                          from mem[64]
                           len _2786 + -mem[64] + 132
                    _2774 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _2810 = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
                    mem[mem[64] + 36] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
                    mem[_2774 + 68 len ceil32(_2810)] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 608 len ceil32(_2810)]
                    if ceil32(_2810) > _2810:
                        mem[_2774 + _2810 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_2810) + _2774 + -mem[64] + 68
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 580] = 32
                    mem[(2 * ceil32(return_data.size)) + 612] = 40
                    mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: ERC1155Receiver rejecte'
                    mem[(2 * ceil32(return_data.size)) + 676] = 'd tokens' << 192
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 576
                       len ceil32(return_data.size) + 132
                if stor11 > -51:
                    revert with 0, 17
                stor11 += 50
                mem[(2 * ceil32(return_data.size)) + 608] = block.difficulty
                mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp
                if 1 > !(sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10):
                    revert with 0, 17
                stor15[arg1].field_2048 = block.timestamp
                if stor15[arg1].field_1536 > -2:
                    revert with 0, 17
                stor15[arg1].field_1536++
                if 9000 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1280 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 9001):
                    revert with 0, 17
                stor15[arg1].field_1280 = stor15[arg1].field_1280 + (sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 9001
                if 2 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_768 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 3):
                    revert with 0, 17
                stor15[arg1].field_768 = stor15[arg1].field_768 + (sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 3
                if 1 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1024 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 2):
                    revert with 0, 17
                stor15[arg1].field_1024 = stor15[arg1].field_1024 + (sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 2
                if stor15[arg1].field_512 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 1):
                    revert with 0, 17
                stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 1
                if stor15[arg1].field_2816 > -51:
                    revert with 0, 17
                stor15[arg1].field_2816 += 50
                if stor6 > -51:
                    revert with 0, 17
                stor6 += 50
                if stor15[arg1].field_0:
                    if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[(2 * ceil32(return_data.size)) + 672 len -(2 * ceil32(return_data.size)) - 672]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg1].field_0) * 0.5:
                                mem[idx + (2 * ceil32(return_data.size)) + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[(2 * ceil32(return_data.size)) + 832 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[(2 * ceil32(return_data.size)) + 672 len -(2 * ceil32(return_data.size)) - 672]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg1].field_1:
                                mem[idx + (2 * ceil32(return_data.size)) + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[(2 * ceil32(return_data.size)) + 832 len ceil32(stor15[arg1].field_1)]), block.timestamp
    else:
        if 27 > !stor15[arg1].field_1536:
            revert with 0, 17
        if 100 > !(stor15[arg1].field_1536 + 27):
            revert with 0, 17
        if stor15[arg1].field_1536 + 127 > !_hold[msg.sender][0]:
            revert with 0, 17
        if balanceOf[address(msg.sender)] <= stor15[arg1].field_1536 + _hold[msg.sender][0] + 127:
            revert with 0, 'UUJI unavailable'
        if stor15[arg1].field_2048 > !stor5:
            revert with 0, 17
        require block.timestamp > stor15[arg1].field_2048 + stor5
        if 27 > !stor15[arg1].field_1536:
            revert with 0, 17
        if 100 > !(stor15[arg1].field_1536 + 27):
            revert with 0, 17
        if balanceOf[address(msg.sender)] <= stor15[arg1].field_1536 + 127:
            revert with 0, 'Not enough UUJI'
        if stor15[arg1].field_1792 > !stor15[arg1].field_1280:
            revert with 0, 17
        if stor15[arg1].field_1792 + stor15[arg1].field_1280 <= block.timestamp:
            revert with 0, 'Immutable Death'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        mem[96] = 1
        mem[128] = 0
        mem[160] = 1
        mem[192] = 50
        mem[224] = 0
        if balanceOf[address(msg.sender)] < 50:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= 50
        emit 0xfec3d581: 0, 50, msg.sender, msg.sender, 0
        if sub_26e91d6a[arg1] > -51:
            revert with 0, 17
        sub_26e91d6a[arg1] += 50
        mem[256] = 0
        if not address(stor9.field_0):
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[288] = 1
        mem[320] = 0
        mem[352] = 1
        mem[384] = 50
        if balanceOf[address(msg.sender)] < 50:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 50
        if balanceOf[address(stor9.field_0)] > -51:
            revert with 0, 17
        balanceOf[address(stor9.field_0)] += 50
        emit 0xfec3d581: 0, 50, msg.sender, msg.sender, address(stor9.field_0)
        if not ext_code.size(address(stor9.field_0)):
            if sub_26e91d6a[arg1] < 50:
                revert with 0, 17
            if sub_26e91d6a[arg1] - 50 != sub_26e91d6a[arg1]:
                revert with 0, 1
            if 27 > !stor15[arg1].field_1536:
                revert with 0, 17
            mem[416] = 0
            if not address(stor8.field_0):
                revert with 0, 'ERC1155: transfer to the zero address'
            mem[448] = 1
            mem[480] = 0
            mem[512] = 1
            mem[544] = stor15[arg1].field_1536 + 27
            if balanceOf[address(msg.sender)] < stor15[arg1].field_1536 + 27:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -stor15[arg1].field_1536 - 27
            if balanceOf[address(stor8.field_0)] > !(stor15[arg1].field_1536 + 27):
                revert with 0, 17
            balanceOf[address(stor8.field_0)] = balanceOf[address(stor8.field_0)] + stor15[arg1].field_1536 + 27
            emit 0xfec3d581: 0, stor15[arg1].field_1536 + 27, msg.sender, msg.sender, address(stor8.field_0)
            if not ext_code.size(address(stor8.field_0)):
                if stor11 > -51:
                    revert with 0, 17
                stor11 += 50
                if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                    revert with 0, 17
                stor15[arg1].field_2048 = block.timestamp
                if stor15[arg1].field_1536 > -2:
                    revert with 0, 17
                stor15[arg1].field_1536++
                if 9000 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1280 > !((sha3(block.difficulty, block.timestamp) % 10) + 9001):
                    revert with 0, 17
                stor15[arg1].field_1280 = stor15[arg1].field_1280 + (sha3(block.difficulty, block.timestamp) % 10) + 9001
                if 2 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_768 > !((sha3(block.difficulty, block.timestamp) % 10) + 3):
                    revert with 0, 17
                stor15[arg1].field_768 = stor15[arg1].field_768 + (sha3(block.difficulty, block.timestamp) % 10) + 3
                if 1 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1024 > !((sha3(block.difficulty, block.timestamp) % 10) + 2):
                    revert with 0, 17
                stor15[arg1].field_1024 = stor15[arg1].field_1024 + (sha3(block.difficulty, block.timestamp) % 10) + 2
                if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 1
                if stor15[arg1].field_2816 > -51:
                    revert with 0, 17
                stor15[arg1].field_2816 += 50
                if stor6 > -51:
                    revert with 0, 17
                stor6 += 50
                if stor15[arg1].field_0:
                    if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[672 len -672]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg1].field_0) * 0.5:
                                mem[idx + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[832 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[672 len -672]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg1].field_1:
                                mem[idx + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[832 len ceil32(stor15[arg1].field_1)]), block.timestamp
            else:
                mem[580] = msg.sender
                mem[612] = msg.sender
                mem[644] = 0
                mem[676] = stor15[arg1].field_1536 + 27
                mem[708] = 160
                mem[740] = 0
                mem[772 len 0] = None
                require ext_code.size(address(stor8.field_0))
                call address(stor8.field_0).0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, 0, stor15[arg1].field_1536 + 27, 160, 0
                mem[576] = ext_call.return_data[0]
                if not ext_call.success:
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(stor8.field_224) != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ext_call.return_data[0] + 576] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
                        revert with 0, 65
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
                    if not ext_call.return_data[0] + 576:
                        _1560 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
                        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 52
                        mem[_1560 + 68] = 'ERC1155: transfer to non ERC1155'
                        mem[_1560 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                        revert with memory
                          from mem[64]
                           len _1560 + -mem[64] + 132
                    _1547 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1577 = mem[ext_call.return_data[0] + 576]
                    mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
                    mem[_1547 + 68 len ceil32(_1577)] = mem[ext_call.return_data[0] + 608 len ceil32(_1577)]
                    if ceil32(_1577) > _1577:
                        mem[_1547 + _1577 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1577) + _1547 + -mem[64] + 68
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if stor11 > -51:
                    revert with 0, 17
                stor11 += 50
                if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                    revert with 0, 17
                stor15[arg1].field_2048 = block.timestamp
                if stor15[arg1].field_1536 > -2:
                    revert with 0, 17
                stor15[arg1].field_1536++
                if 9000 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1280 > !((sha3(block.difficulty, block.timestamp) % 10) + 9001):
                    revert with 0, 17
                stor15[arg1].field_1280 = stor15[arg1].field_1280 + (sha3(block.difficulty, block.timestamp) % 10) + 9001
                if 2 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_768 > !((sha3(block.difficulty, block.timestamp) % 10) + 3):
                    revert with 0, 17
                stor15[arg1].field_768 = stor15[arg1].field_768 + (sha3(block.difficulty, block.timestamp) % 10) + 3
                if 1 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1024 > !((sha3(block.difficulty, block.timestamp) % 10) + 2):
                    revert with 0, 17
                stor15[arg1].field_1024 = stor15[arg1].field_1024 + (sha3(block.difficulty, block.timestamp) % 10) + 2
                if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 1
                if stor15[arg1].field_2816 > -51:
                    revert with 0, 17
                stor15[arg1].field_2816 += 50
                if stor6 > -51:
                    revert with 0, 17
                stor6 += 50
                if stor15[arg1].field_0:
                    if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 672 len -ceil32(return_data.size) - 672]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg1].field_0) * 0.5:
                                mem[idx + ceil32(return_data.size) + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[ceil32(return_data.size) + 832 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 672 len -ceil32(return_data.size) - 672]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg1].field_1:
                                mem[idx + ceil32(return_data.size) + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[ceil32(return_data.size) + 832 len ceil32(stor15[arg1].field_1)]), block.timestamp
        else:
            mem[420] = msg.sender
            mem[452] = msg.sender
            mem[484] = 0
            mem[516] = 50
            mem[548] = 160
            mem[580] = 0
            mem[612 len 0] = None
            require ext_code.size(address(stor9.field_0))
            call address(stor9.field_0).0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, 50, 160, 0
            mem[416] = ext_call.return_data[0]
            if not ext_call.success:
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(stor9.field_224) != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[416 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ext_call.return_data[0] + 416] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 < 416 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 > test266151307():
                    revert with 0, 65
                mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
                if not ext_call.return_data[0] + 416:
                    _1566 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 52
                    mem[_1566 + 68] = 'ERC1155: transfer to non ERC1155'
                    mem[_1566 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                    revert with memory
                      from mem[64]
                       len _1566 + -mem[64] + 132
                _1550 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
                mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1583 = mem[ext_call.return_data[0] + 416]
                mem[mem[64] + 36] = mem[ext_call.return_data[0] + 416]
                mem[_1550 + 68 len ceil32(_1583)] = mem[ext_call.return_data[0] + 448 len ceil32(_1583)]
                if ceil32(_1583) > _1583:
                    mem[_1550 + _1583 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1583) + _1550 + -mem[64] + 68
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if sub_26e91d6a[arg1] < 50:
                revert with 0, 17
            if sub_26e91d6a[arg1] - 50 != sub_26e91d6a[arg1]:
                revert with 0, 1
            if 27 > !stor15[arg1].field_1536:
                revert with 0, 17
            mem[ceil32(return_data.size) + 416] = 0
            if not address(stor8.field_0):
                revert with 0, 'ERC1155: transfer to the zero address'
            mem[ceil32(return_data.size) + 448] = 1
            mem[ceil32(return_data.size) + 480] = 0
            mem[ceil32(return_data.size) + 512] = 1
            mem[ceil32(return_data.size) + 544] = stor15[arg1].field_1536 + 27
            if balanceOf[address(msg.sender)] < stor15[arg1].field_1536 + 27:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -stor15[arg1].field_1536 - 27
            if balanceOf[address(stor8.field_0)] > !(stor15[arg1].field_1536 + 27):
                revert with 0, 17
            balanceOf[address(stor8.field_0)] = balanceOf[address(stor8.field_0)] + stor15[arg1].field_1536 + 27
            emit 0xfec3d581: 0, stor15[arg1].field_1536 + 27, msg.sender, msg.sender, address(stor8.field_0)
            if not ext_code.size(address(stor8.field_0)):
                if stor11 > -51:
                    revert with 0, 17
                stor11 += 50
                if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                    revert with 0, 17
                stor15[arg1].field_2048 = block.timestamp
                if stor15[arg1].field_1536 > -2:
                    revert with 0, 17
                stor15[arg1].field_1536++
                if 9000 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1280 > !((sha3(block.difficulty, block.timestamp) % 10) + 9001):
                    revert with 0, 17
                stor15[arg1].field_1280 = stor15[arg1].field_1280 + (sha3(block.difficulty, block.timestamp) % 10) + 9001
                if 2 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_768 > !((sha3(block.difficulty, block.timestamp) % 10) + 3):
                    revert with 0, 17
                stor15[arg1].field_768 = stor15[arg1].field_768 + (sha3(block.difficulty, block.timestamp) % 10) + 3
                if 1 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1024 > !((sha3(block.difficulty, block.timestamp) % 10) + 2):
                    revert with 0, 17
                stor15[arg1].field_1024 = stor15[arg1].field_1024 + (sha3(block.difficulty, block.timestamp) % 10) + 2
                if stor15[arg1].field_512 > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(block.difficulty, block.timestamp) % 10) + 1
                if stor15[arg1].field_2816 > -51:
                    revert with 0, 17
                stor15[arg1].field_2816 += 50
                if stor6 > -51:
                    revert with 0, 17
                stor6 += 50
                if stor15[arg1].field_0:
                    if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 672 len -ceil32(return_data.size) - 672]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg1].field_0) * 0.5:
                                mem[idx + ceil32(return_data.size) + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[ceil32(return_data.size) + 832 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 672 len -ceil32(return_data.size) - 672]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg1].field_1:
                                mem[idx + ceil32(return_data.size) + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[ceil32(return_data.size) + 832 len ceil32(stor15[arg1].field_1)]), block.timestamp
            else:
                mem[ceil32(return_data.size) + 580] = msg.sender
                mem[ceil32(return_data.size) + 612] = msg.sender
                mem[ceil32(return_data.size) + 644] = 0
                mem[ceil32(return_data.size) + 676] = stor15[arg1].field_1536 + 27
                mem[ceil32(return_data.size) + 708] = 160
                mem[ceil32(return_data.size) + 740] = 0
                mem[ceil32(return_data.size) + 772 len 0] = None
                require ext_code.size(address(stor8.field_0))
                call address(stor8.field_0).0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, 0, stor15[arg1].field_1536 + 27, 160, 0
                mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
                if not ext_call.success:
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(stor8.field_224) != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(return_data.size) + 576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 < 576 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                    if not ceil32(return_data.size) + ext_call.return_data[0] + 576:
                        _2798 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                        mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 52
                        mem[_2798 + 68] = 'ERC1155: transfer to non ERC1155'
                        mem[_2798 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                        revert with memory
                          from mem[64]
                           len _2798 + -mem[64] + 132
                    _2780 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _2822 = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
                    mem[mem[64] + 36] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
                    mem[_2780 + 68 len ceil32(_2822)] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 608 len ceil32(_2822)]
                    if ceil32(_2822) > _2822:
                        mem[_2780 + _2822 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_2822) + _2780 + -mem[64] + 68
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 580] = 32
                    mem[(2 * ceil32(return_data.size)) + 612] = 40
                    mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: ERC1155Receiver rejecte'
                    mem[(2 * ceil32(return_data.size)) + 676] = 'd tokens' << 192
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 576
                       len ceil32(return_data.size) + 132
                if stor11 > -51:
                    revert with 0, 17
                stor11 += 50
                mem[(2 * ceil32(return_data.size)) + 608] = block.difficulty
                mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp
                if 1 > !(sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10):
                    revert with 0, 17
                stor15[arg1].field_2048 = block.timestamp
                if stor15[arg1].field_1536 > -2:
                    revert with 0, 17
                stor15[arg1].field_1536++
                if 9000 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1280 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 9001):
                    revert with 0, 17
                stor15[arg1].field_1280 = stor15[arg1].field_1280 + (sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 9001
                if 2 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_768 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 3):
                    revert with 0, 17
                stor15[arg1].field_768 = stor15[arg1].field_768 + (sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 3
                if 1 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 1):
                    revert with 0, 17
                if stor15[arg1].field_1024 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 2):
                    revert with 0, 17
                stor15[arg1].field_1024 = stor15[arg1].field_1024 + (sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 2
                if stor15[arg1].field_512 > !((sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 1):
                    revert with 0, 17
                stor15[arg1].field_512 = stor15[arg1].field_512 + (sha3(mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64]) % 10) + 1
                if stor15[arg1].field_2816 > -51:
                    revert with 0, 17
                stor15[arg1].field_2816 += 50
                if stor6 > -51:
                    revert with 0, 17
                stor6 += 50
                if stor15[arg1].field_0:
                    if stor15[arg1].field_0 == uint255(stor15[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[(2 * ceil32(return_data.size)) + 672 len -(2 * ceil32(return_data.size)) - 672]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg1].field_0) * 0.5:
                                mem[idx + (2 * ceil32(return_data.size)) + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor15[arg1].field_0), data=mem[(2 * ceil32(return_data.size)) + 832 len ceil32(uint255(stor15[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor15[arg1].field_0 == stor15[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=Mask(248, 8, stor15[arg1].field_0)), block.timestamp
                    else:
                        if stor15[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[(2 * ceil32(return_data.size)) + 672 len -(2 * ceil32(return_data.size)) - 672]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg1].field_1:
                                mem[idx + (2 * ceil32(return_data.size)) + 832] = stor15[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor15[arg1].field_0, data=mem[(2 * ceil32(return_data.size)) + 832 len ceil32(stor15[arg1].field_1)]), block.timestamp
    emit 0x62cb9e94: 0, stor11, block.timestamp
}

function buyItem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= itemsForSale.length:
        revert with 0, 'can't find id'
    if itemsForSale[arg1].field_0 != arg1:
        revert with 0, 'can't find id'
    if arg1 >= itemsForSale.length:
        revert with 0, 50
    if itemsForSale[arg1].field_1536:
        revert with 0, 'id already sold'
    if arg1 >= itemsForSale.length:
        revert with 0, 50
    if msg.sender == itemsForSale[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot buy your own item, remove instead'
    if arg1 >= itemsForSale.length:
        revert with 0, 50
    if msg.value < itemsForSale[arg1].field_1024:
        revert with 0, 'Not enough funds sent'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[address(msg.sender)] < 10:
        revert with 0, '10 UUJI min.'
    if arg1 >= itemsForSale.length:
        revert with 0, 50
    if arg1 >= itemsForSale.length:
        revert with 0, 50
    if itemsForSale[arg1].field_512 < 5:
        if _hold[stor21[arg1].field_768][stor21[arg1].field_512] < itemsForSale[arg1].field_1280:
            revert with 0, 17
        _hold[stor21[arg1].field_768][stor21[arg1].field_512] -= itemsForSale[arg1].field_1280
        if arg1 >= itemsForSale.length:
            revert with 0, 50
        itemsForSale[arg1].field_1536 = 1
        stor19[stor21[arg1].field_256][stor21[arg1].field_512] = 0
        mem[96] = 0
        if not msg.sender:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[128] = 1
        mem[160] = itemsForSale[arg1].field_512
        mem[192] = 1
        mem[224] = itemsForSale[arg1].field_1280
        if balanceOf[stor21[arg1].field_512][stor21[arg1].field_768] < itemsForSale[arg1].field_1280:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[stor21[arg1].field_512][stor21[arg1].field_768] -= itemsForSale[arg1].field_1280
        if balanceOf[stor21[arg1].field_512][msg.sender] > !itemsForSale[arg1].field_1280:
            revert with 0, 17
        balanceOf[stor21[arg1].field_512][msg.sender] += itemsForSale[arg1].field_1280
        emit 0xfec3d581: itemsForSale[arg1].field_512, itemsForSale[arg1].field_1280, msg.sender, itemsForSale[arg1].field_768, msg.sender
        if not ext_code.size(msg.sender):
            if arg1 >= itemsForSale.length:
                revert with 0, 50
            call itemsForSale[arg1].field_768 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 >= itemsForSale.length:
                revert with 0, 50
            mem[256] = 0
            if not itemsForSale[arg1].field_768:
                revert with 0, 'ERC1155: transfer to the zero address'
            mem[288] = 1
            mem[320] = 0
            mem[352] = 1
            mem[384] = 5
            if balanceOf[address(msg.sender)] < 5:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] -= 5
            if balanceOf[stor21[arg1].field_768] > -6:
                revert with 0, 17
            balanceOf[stor21[arg1].field_768] += 5
            emit 0xfec3d581: 0, 5, msg.sender, msg.sender, itemsForSale[arg1].field_768
            if not ext_code.size(itemsForSale[arg1].field_768):
                mem[416] = 0
                if not sub_35bba03fAddress:
                    revert with 0, 'ERC1155: transfer to the zero address'
                mem[448] = 1
                mem[480] = 0
                mem[512] = 1
                mem[544] = 2
                if balanceOf[address(msg.sender)] < 2:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[address(msg.sender)] -= 2
                if balanceOf[address(stor10.field_0)] > -3:
                    revert with 0, 17
                balanceOf[address(stor10.field_0)] += 2
                emit 0xfec3d581: 0, 2, msg.sender, msg.sender, sub_35bba03fAddress
                if not ext_code.size(sub_35bba03fAddress):
                    if not msg.sender:
                        revert with 0, 'ERC1155: burn from the zero address'
                    if balanceOf[address(msg.sender)] < 3:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 3
                    emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
                    if stor11 > -4:
                        revert with 0, 17
                    stor11 += 3
                    if arg1 >= itemsForSale.length:
                        revert with 0, 50
                    emit 0x3df5cd6a: arg1, msg.sender, itemsForSale[arg1].field_1280, itemsForSale[arg1].field_1024
                    emit 0x62cb9e94: 0, stor11, block.timestamp
                mem[580] = msg.sender
                mem[612] = msg.sender
                mem[644] = 0
                mem[676] = 2
                mem[708] = 160
                mem[740] = 0
                mem[772 len 0] = None
                require ext_code.size(sub_35bba03fAddress)
                call sub_35bba03fAddress.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, 0, 2, 160, 0
                mem[576] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if not msg.sender:
                        revert with 0, 'ERC1155: burn from the zero address'
                    if balanceOf[address(msg.sender)] < 3:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 3
                    emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
                    if stor11 > -4:
                        revert with 0, 17
                    stor11 += 3
                    if arg1 >= itemsForSale.length:
                        revert with 0, 50
                    emit 0x3df5cd6a: arg1, msg.sender, itemsForSale[arg1].field_1280, itemsForSale[arg1].field_1024
                    emit 0x62cb9e94: 0, stor11, block.timestamp
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(stor10.field_224) != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ext_call.return_data[0] + 576] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
                    revert with 0, 65
                mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
                if not ext_call.return_data[0] + 576:
                    _3815 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 52
                    mem[_3815 + 68] = 'ERC1155: transfer to non ERC1155'
                    mem[_3815 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                    revert with memory
                      from mem[64]
                       len _3815 + -mem[64] + 132
                _3787 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
                mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3831 = mem[ext_call.return_data[0] + 576]
                mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
                mem[_3787 + 68 len ceil32(_3831)] = mem[ext_call.return_data[0] + 608 len ceil32(_3831)]
                if ceil32(_3831) > _3831:
                    mem[_3787 + _3831 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3831) + _3787 + -mem[64] + 68
            mem[420] = msg.sender
            mem[452] = msg.sender
            mem[484] = 0
            mem[516] = 5
            mem[548] = 160
            mem[580] = 0
            mem[612 len 0] = None
            require ext_code.size(itemsForSale[arg1].field_768)
            call itemsForSale[arg1].field_768.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, 5, 160, 0
            mem[416] = ext_call.return_data[0]
            if not ext_call.success:
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if itemsForSale[arg1].field_992 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[416 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ext_call.return_data[0] + 416] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 < 416 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 > test266151307():
                    revert with 0, 65
                mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
                if not ext_call.return_data[0] + 416:
                    _3817 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 52
                    mem[_3817 + 68] = 'ERC1155: transfer to non ERC1155'
                    mem[_3817 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                    revert with memory
                      from mem[64]
                       len _3817 + -mem[64] + 132
                _3792 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
                mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3836 = mem[ext_call.return_data[0] + 416]
                mem[mem[64] + 36] = mem[ext_call.return_data[0] + 416]
                mem[_3792 + 68 len ceil32(_3836)] = mem[ext_call.return_data[0] + 448 len ceil32(_3836)]
                if ceil32(_3836) > _3836:
                    mem[_3792 + _3836 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3836) + _3792 + -mem[64] + 68
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            mem[ceil32(return_data.size) + 416] = 0
            if not sub_35bba03fAddress:
                revert with 0, 'ERC1155: transfer to the zero address'
            mem[ceil32(return_data.size) + 448] = 1
            mem[ceil32(return_data.size) + 480] = 0
            mem[ceil32(return_data.size) + 512] = 1
            mem[ceil32(return_data.size) + 544] = 2
            if balanceOf[address(msg.sender)] < 2:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] -= 2
            if balanceOf[address(stor10.field_0)] > -3:
                revert with 0, 17
            balanceOf[address(stor10.field_0)] += 2
            emit 0xfec3d581: 0, 2, msg.sender, msg.sender, sub_35bba03fAddress
            if not ext_code.size(sub_35bba03fAddress):
                if not msg.sender:
                    revert with 0, 'ERC1155: burn from the zero address'
                if balanceOf[address(msg.sender)] < 3:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                balanceOf[address(msg.sender)] -= 3
                emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
                if stor11 > -4:
                    revert with 0, 17
                stor11 += 3
                if arg1 >= itemsForSale.length:
                    revert with 0, 50
                emit 0x3df5cd6a: arg1, msg.sender, itemsForSale[arg1].field_1280, itemsForSale[arg1].field_1024
                emit 0x62cb9e94: 0, stor11, block.timestamp
            mem[ceil32(return_data.size) + 580] = msg.sender
            mem[ceil32(return_data.size) + 612] = msg.sender
            mem[ceil32(return_data.size) + 644] = 0
            mem[ceil32(return_data.size) + 676] = 2
            mem[ceil32(return_data.size) + 708] = 160
            mem[ceil32(return_data.size) + 740] = 0
            mem[ceil32(return_data.size) + 772 len 0] = None
            require ext_code.size(sub_35bba03fAddress)
            call sub_35bba03fAddress.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, 2, 160, 0
            mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 580] = 32
                    mem[(2 * ceil32(return_data.size)) + 612] = 40
                    mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: ERC1155Receiver rejecte'
                    mem[(2 * ceil32(return_data.size)) + 676] = 'd tokens' << 192
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 576
                       len ceil32(return_data.size) + 132
                if not msg.sender:
                    mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 580] = 32
                    mem[(2 * ceil32(return_data.size)) + 612] = 35
                    mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: burn from the zero addr'
                    mem[(2 * ceil32(return_data.size)) + 676] = 0x6573730000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 576
                       len ceil32(return_data.size) + 132
                if balanceOf[address(msg.sender)] < 3:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                balanceOf[address(msg.sender)] -= 3
                emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
                if stor11 > -4:
                    revert with 0, 17
                stor11 += 3
                if arg1 >= itemsForSale.length:
                    revert with 0, 50
                emit 0x3df5cd6a: arg1, msg.sender, itemsForSale[arg1].field_1280, itemsForSale[arg1].field_1024
                emit 0x62cb9e94: 0, stor11, block.timestamp
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(stor10.field_224) != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(return_data.size) + 576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 < 576 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
            if not ceil32(return_data.size) + ext_call.return_data[0] + 576:
                _7437 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_7437 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_7437 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _7437 + -mem[64] + 132
            _7377 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
            mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _7465 = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
            mem[mem[64] + 36] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
            mem[_7377 + 68 len ceil32(_7465)] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 608 len ceil32(_7465)]
            if ceil32(_7465) > _7465:
                mem[_7377 + _7465 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_7465) + _7377 + -mem[64] + 68
        mem[260] = msg.sender
        mem[292] = itemsForSale[arg1].field_768
        mem[324] = itemsForSale[arg1].field_512
        mem[356] = itemsForSale[arg1].field_1280
        mem[388] = 160
        mem[420] = 0
        mem[452 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, itemsForSale[arg1].field_768, itemsForSale[arg1].field_512, itemsForSale[arg1].field_1280, 160, 0
        mem[256] = ext_call.return_data[0]
        if not ext_call.success:
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(msg.sender) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[256 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ext_call.return_data[0] + 256] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257 < 256 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257 > test266151307():
                revert with 0, 65
            mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
            if not ext_call.return_data[0] + 256:
                _3820 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
                mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_3820 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_3820 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _3820 + -mem[64] + 132
            _3797 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3841 = mem[ext_call.return_data[0] + 256]
            mem[mem[64] + 36] = mem[ext_call.return_data[0] + 256]
            mem[_3797 + 68 len ceil32(_3841)] = mem[ext_call.return_data[0] + 288 len ceil32(_3841)]
            if ceil32(_3841) > _3841:
                mem[_3797 + _3841 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_3841) + _3797 + -mem[64] + 68
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if arg1 >= itemsForSale.length:
            revert with 0, 50
        call itemsForSale[arg1].field_768 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= itemsForSale.length:
            revert with 0, 50
        mem[ceil32(return_data.size) + 256] = 0
        if not itemsForSale[arg1].field_768:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(return_data.size) + 288] = 1
        mem[ceil32(return_data.size) + 320] = 0
        mem[ceil32(return_data.size) + 352] = 1
        mem[ceil32(return_data.size) + 384] = 5
        if balanceOf[address(msg.sender)] < 5:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 5
        if balanceOf[stor21[arg1].field_768] > -6:
            revert with 0, 17
        balanceOf[stor21[arg1].field_768] += 5
        emit 0xfec3d581: 0, 5, msg.sender, msg.sender, itemsForSale[arg1].field_768
        if not ext_code.size(itemsForSale[arg1].field_768):
            mem[ceil32(return_data.size) + 416] = 0
            if not sub_35bba03fAddress:
                revert with 0, 'ERC1155: transfer to the zero address'
            mem[ceil32(return_data.size) + 448] = 1
            mem[ceil32(return_data.size) + 480] = 0
            mem[ceil32(return_data.size) + 512] = 1
            mem[ceil32(return_data.size) + 544] = 2
            if balanceOf[address(msg.sender)] < 2:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] -= 2
            if balanceOf[address(stor10.field_0)] > -3:
                revert with 0, 17
            balanceOf[address(stor10.field_0)] += 2
            emit 0xfec3d581: 0, 2, msg.sender, msg.sender, sub_35bba03fAddress
            if not ext_code.size(sub_35bba03fAddress):
                if not msg.sender:
                    revert with 0, 'ERC1155: burn from the zero address'
                if balanceOf[address(msg.sender)] < 3:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                balanceOf[address(msg.sender)] -= 3
                emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
                if stor11 > -4:
                    revert with 0, 17
                stor11 += 3
                if arg1 >= itemsForSale.length:
                    revert with 0, 50
                emit 0x3df5cd6a: arg1, msg.sender, itemsForSale[arg1].field_1280, itemsForSale[arg1].field_1024
                emit 0x62cb9e94: 0, stor11, block.timestamp
            mem[ceil32(return_data.size) + 580] = msg.sender
            mem[ceil32(return_data.size) + 612] = msg.sender
            mem[ceil32(return_data.size) + 644] = 0
            mem[ceil32(return_data.size) + 676] = 2
            mem[ceil32(return_data.size) + 708] = 160
            mem[ceil32(return_data.size) + 740] = 0
            mem[ceil32(return_data.size) + 772 len 0] = None
            require ext_code.size(sub_35bba03fAddress)
            call sub_35bba03fAddress.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, 2, 160, 0
            mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 580] = 32
                    mem[(2 * ceil32(return_data.size)) + 612] = 40
                    mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: ERC1155Receiver rejecte'
                    mem[(2 * ceil32(return_data.size)) + 676] = 'd tokens' << 192
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 576
                       len ceil32(return_data.size) + 132
                if not msg.sender:
                    mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 580] = 32
                    mem[(2 * ceil32(return_data.size)) + 612] = 35
                    mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: burn from the zero addr'
                    mem[(2 * ceil32(return_data.size)) + 676] = 0x6573730000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 576
                       len ceil32(return_data.size) + 132
                if balanceOf[address(msg.sender)] < 3:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                balanceOf[address(msg.sender)] -= 3
                emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
                if stor11 > -4:
                    revert with 0, 17
                stor11 += 3
                if arg1 >= itemsForSale.length:
                    revert with 0, 50
                emit 0x3df5cd6a: arg1, msg.sender, itemsForSale[arg1].field_1280, itemsForSale[arg1].field_1024
                emit 0x62cb9e94: 0, stor11, block.timestamp
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(stor10.field_224) != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(return_data.size) + 576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 < 576 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
            if not ceil32(return_data.size) + ext_call.return_data[0] + 576:
                _7441 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
                mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_7441 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_7441 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _7441 + -mem[64] + 132
            _7387 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
            mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _7475 = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
            mem[mem[64] + 36] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
            mem[_7387 + 68 len ceil32(_7475)] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 608 len ceil32(_7475)]
            if ceil32(_7475) > _7475:
                mem[_7387 + _7475 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_7475) + _7387 + -mem[64] + 68
        mem[ceil32(return_data.size) + 420] = msg.sender
        mem[ceil32(return_data.size) + 452] = msg.sender
        mem[ceil32(return_data.size) + 484] = 0
        mem[ceil32(return_data.size) + 516] = 5
        mem[ceil32(return_data.size) + 548] = 160
        mem[ceil32(return_data.size) + 580] = 0
        mem[ceil32(return_data.size) + 612 len 0] = None
        require ext_code.size(itemsForSale[arg1].field_768)
        call itemsForSale[arg1].field_768.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 5, 160, 0
        mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if itemsForSale[arg1].field_992 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(return_data.size) + 416 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417 < 416 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417
            if not ceil32(return_data.size) + ext_call.return_data[0] + 416:
                _7443 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417
                mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_7443 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_7443 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _7443 + -mem[64] + 132
            _7392 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417
            mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _7480 = mem[ceil32(return_data.size) + ext_call.return_data[0] + 416]
            mem[mem[64] + 36] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 416]
            mem[_7392 + 68 len ceil32(_7480)] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 448 len ceil32(_7480)]
            if ceil32(_7480) > _7480:
                mem[_7392 + _7480 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_7480) + _7392 + -mem[64] + 68
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            mem[(2 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 420] = 32
            mem[(2 * ceil32(return_data.size)) + 452] = 40
            mem[(2 * ceil32(return_data.size)) + 484] = 'ERC1155: ERC1155Receiver rejecte'
            mem[(2 * ceil32(return_data.size)) + 516] = 'd tokens' << 192
            revert with memory
              from (2 * ceil32(return_data.size)) + 416
               len ceil32(return_data.size) + 132
        mem[(2 * ceil32(return_data.size)) + 416] = 0
        if not sub_35bba03fAddress:
            mem[(2 * ceil32(return_data.size)) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 452] = 32
            mem[(2 * ceil32(return_data.size)) + 484] = 37
            mem[(2 * ceil32(return_data.size)) + 516] = 'ERC1155: transfer to the zero ad'
            mem[(2 * ceil32(return_data.size)) + 548] = 0x6472657373000000000000000000000000000000000000000000000000000000
            revert with memory
              from (2 * ceil32(return_data.size)) + 448
               len ceil32(return_data.size) + 132
        mem[(2 * ceil32(return_data.size)) + 448] = 1
        mem[(2 * ceil32(return_data.size)) + 480] = 0
        mem[(2 * ceil32(return_data.size)) + 512] = 1
        mem[(2 * ceil32(return_data.size)) + 544] = 2
        if balanceOf[address(msg.sender)] < 2:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 2
        if balanceOf[address(stor10.field_0)] > -3:
            revert with 0, 17
        balanceOf[address(stor10.field_0)] += 2
        emit 0xfec3d581: 0, 2, msg.sender, msg.sender, sub_35bba03fAddress
        if not ext_code.size(sub_35bba03fAddress):
            if not msg.sender:
                revert with 0, 'ERC1155: burn from the zero address'
            if balanceOf[address(msg.sender)] < 3:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= 3
            emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
            if stor11 > -4:
                revert with 0, 17
            stor11 += 3
            if arg1 >= itemsForSale.length:
                revert with 0, 50
            emit 0x3df5cd6a: arg1, msg.sender, itemsForSale[arg1].field_1280, itemsForSale[arg1].field_1024
            emit 0x62cb9e94: 0, stor11, block.timestamp
        mem[(2 * ceil32(return_data.size)) + 580] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 612] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 644] = 0
        mem[(2 * ceil32(return_data.size)) + 676] = 2
        mem[(2 * ceil32(return_data.size)) + 708] = 160
        mem[(2 * ceil32(return_data.size)) + 740] = 0
        mem[(2 * ceil32(return_data.size)) + 772 len 0] = None
        require ext_code.size(sub_35bba03fAddress)
        call sub_35bba03fAddress.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 2, 160, 0
        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                mem[(4 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 580] = 32
                mem[(4 * ceil32(return_data.size)) + 612] = 40
                mem[(4 * ceil32(return_data.size)) + 644] = 'ERC1155: ERC1155Receiver rejecte'
                mem[(4 * ceil32(return_data.size)) + 676] = 'd tokens' << 192
                revert with memory
                  from (4 * ceil32(return_data.size)) + 576
                   len (5 * ceil32(return_data.size)) + 132
            if not msg.sender:
                mem[(4 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 580] = 32
                mem[(4 * ceil32(return_data.size)) + 612] = 35
                mem[(4 * ceil32(return_data.size)) + 644] = 'ERC1155: burn from the zero addr'
                mem[(4 * ceil32(return_data.size)) + 676] = 0x6573730000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 576
                   len (5 * ceil32(return_data.size)) + 132
            if balanceOf[address(msg.sender)] < 3:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= 3
            emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
            if stor11 > -4:
                revert with 0, 17
            stor11 += 3
            if arg1 >= itemsForSale.length:
                revert with 0, 50
            emit 0x3df5cd6a: arg1, msg.sender, itemsForSale[arg1].field_1280, itemsForSale[arg1].field_1024
            emit 0x62cb9e94: 0, stor11, block.timestamp
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(stor10.field_224) != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[(2 * ceil32(return_data.size)) + 576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577 < 576 or (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577
        if not (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576:
            _9657 = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577
            mem[(2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_9657 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_9657 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _9657 + -mem[64] + 132
        _9617 = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577
        mem[(2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _9673 = mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576]
        mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576]
        mem[_9617 + 68 len ceil32(_9673)] = mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 608 len ceil32(_9673)]
        if ceil32(_9673) > _9673:
            mem[_9617 + _9673 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_9673) + _9617 + -mem[64] + 68
    if stor15[stor21[arg1].field_512].field_1792 > !stor15[stor21[arg1].field_512].field_1280:
        revert with 0, 17
    if stor15[stor21[arg1].field_512].field_1792 + stor15[stor21[arg1].field_512].field_1280 <= block.timestamp:
        revert with 0, 'Immutable Death'
    if arg1 >= itemsForSale.length:
        revert with 0, 50
    _hold[stor21[arg1].field_768][stor21[arg1].field_512] = 0
    itemsForSale[arg1].field_1536 = 1
    stor19[stor21[arg1].field_256][stor21[arg1].field_512] = 0
    mem[96] = 0
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[128] = 1
    mem[160] = itemsForSale[arg1].field_512
    mem[192] = 1
    mem[224] = 1
    if balanceOf[stor21[arg1].field_512][stor21[arg1].field_768] < 1:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[stor21[arg1].field_512][stor21[arg1].field_768]--
    if balanceOf[stor21[arg1].field_512][msg.sender] > -2:
        revert with 0, 17
    balanceOf[stor21[arg1].field_512][msg.sender]++
    emit 0xfec3d581: itemsForSale[arg1].field_512, 1, msg.sender, itemsForSale[arg1].field_768, msg.sender
    if not ext_code.size(msg.sender):
        if arg1 >= itemsForSale.length:
            revert with 0, 50
        call itemsForSale[arg1].field_768 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= itemsForSale.length:
            revert with 0, 50
        mem[256] = 0
        if not itemsForSale[arg1].field_768:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[288] = 1
        mem[320] = 0
        mem[352] = 1
        mem[384] = 5
        if balanceOf[address(msg.sender)] < 5:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 5
        if balanceOf[stor21[arg1].field_768] > -6:
            revert with 0, 17
        balanceOf[stor21[arg1].field_768] += 5
        emit 0xfec3d581: 0, 5, msg.sender, msg.sender, itemsForSale[arg1].field_768
        if not ext_code.size(itemsForSale[arg1].field_768):
            mem[416] = 0
            if not sub_35bba03fAddress:
                revert with 0, 'ERC1155: transfer to the zero address'
            mem[448] = 1
            mem[480] = 0
            mem[512] = 1
            mem[544] = 2
            if balanceOf[address(msg.sender)] < 2:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] -= 2
            if balanceOf[address(stor10.field_0)] > -3:
                revert with 0, 17
            balanceOf[address(stor10.field_0)] += 2
            emit 0xfec3d581: 0, 2, msg.sender, msg.sender, sub_35bba03fAddress
            if not ext_code.size(sub_35bba03fAddress):
                if not msg.sender:
                    revert with 0, 'ERC1155: burn from the zero address'
                if balanceOf[address(msg.sender)] < 3:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                balanceOf[address(msg.sender)] -= 3
                emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
                if stor11 > -4:
                    revert with 0, 17
                stor11 += 3
                if arg1 >= itemsForSale.length:
                    revert with 0, 50
                emit 0x3df5cd6a: arg1, msg.sender, 1, itemsForSale[arg1].field_1024
                emit 0x62cb9e94: 0, stor11, block.timestamp
            mem[580] = msg.sender
            mem[612] = msg.sender
            mem[644] = 0
            mem[676] = 2
            mem[708] = 160
            mem[740] = 0
            mem[772 len 0] = None
            require ext_code.size(sub_35bba03fAddress)
            call sub_35bba03fAddress.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, 2, 160, 0
            mem[576] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if not msg.sender:
                    revert with 0, 'ERC1155: burn from the zero address'
                if balanceOf[address(msg.sender)] < 3:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                balanceOf[address(msg.sender)] -= 3
                emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
                if stor11 > -4:
                    revert with 0, 17
                stor11 += 3
                if arg1 >= itemsForSale.length:
                    revert with 0, 50
                emit 0x3df5cd6a: arg1, msg.sender, 1, itemsForSale[arg1].field_1024
                emit 0x62cb9e94: 0, stor11, block.timestamp
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(stor10.field_224) != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ext_call.return_data[0] + 576] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 < 576 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
                revert with 0, 65
            mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
            if not ext_call.return_data[0] + 576:
                _3823 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
                mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_3823 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_3823 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _3823 + -mem[64] + 132
            _3801 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3847 = mem[ext_call.return_data[0] + 576]
            mem[mem[64] + 36] = mem[ext_call.return_data[0] + 576]
            mem[_3801 + 68 len ceil32(_3847)] = mem[ext_call.return_data[0] + 608 len ceil32(_3847)]
            if ceil32(_3847) > _3847:
                mem[_3801 + _3847 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_3847) + _3801 + -mem[64] + 68
        mem[420] = msg.sender
        mem[452] = msg.sender
        mem[484] = 0
        mem[516] = 5
        mem[548] = 160
        mem[580] = 0
        mem[612 len 0] = None
        require ext_code.size(itemsForSale[arg1].field_768)
        call itemsForSale[arg1].field_768.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 5, 160, 0
        mem[416] = ext_call.return_data[0]
        if not ext_call.success:
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if itemsForSale[arg1].field_992 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[416 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ext_call.return_data[0] + 416] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 < 416 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417 > test266151307():
                revert with 0, 65
            mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
            if not ext_call.return_data[0] + 416:
                _3825 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
                mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_3825 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_3825 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _3825 + -mem[64] + 132
            _3806 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3852 = mem[ext_call.return_data[0] + 416]
            mem[mem[64] + 36] = mem[ext_call.return_data[0] + 416]
            mem[_3806 + 68 len ceil32(_3852)] = mem[ext_call.return_data[0] + 448 len ceil32(_3852)]
            if ceil32(_3852) > _3852:
                mem[_3806 + _3852 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_3852) + _3806 + -mem[64] + 68
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        mem[ceil32(return_data.size) + 416] = 0
        if not sub_35bba03fAddress:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(return_data.size) + 448] = 1
        mem[ceil32(return_data.size) + 480] = 0
        mem[ceil32(return_data.size) + 512] = 1
        mem[ceil32(return_data.size) + 544] = 2
        if balanceOf[address(msg.sender)] < 2:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 2
        if balanceOf[address(stor10.field_0)] > -3:
            revert with 0, 17
        balanceOf[address(stor10.field_0)] += 2
        emit 0xfec3d581: 0, 2, msg.sender, msg.sender, sub_35bba03fAddress
        if not ext_code.size(sub_35bba03fAddress):
            if not msg.sender:
                revert with 0, 'ERC1155: burn from the zero address'
            if balanceOf[address(msg.sender)] < 3:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= 3
            emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
            if stor11 > -4:
                revert with 0, 17
            stor11 += 3
            if arg1 >= itemsForSale.length:
                revert with 0, 50
            emit 0x3df5cd6a: arg1, msg.sender, 1, itemsForSale[arg1].field_1024
            emit 0x62cb9e94: 0, stor11, block.timestamp
        mem[ceil32(return_data.size) + 580] = msg.sender
        mem[ceil32(return_data.size) + 612] = msg.sender
        mem[ceil32(return_data.size) + 644] = 0
        mem[ceil32(return_data.size) + 676] = 2
        mem[ceil32(return_data.size) + 708] = 160
        mem[ceil32(return_data.size) + 740] = 0
        mem[ceil32(return_data.size) + 772 len 0] = None
        require ext_code.size(sub_35bba03fAddress)
        call sub_35bba03fAddress.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 2, 160, 0
        mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 580] = 32
                mem[(2 * ceil32(return_data.size)) + 612] = 40
                mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: ERC1155Receiver rejecte'
                mem[(2 * ceil32(return_data.size)) + 676] = 'd tokens' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 576
                   len ceil32(return_data.size) + 132
            if not msg.sender:
                mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 580] = 32
                mem[(2 * ceil32(return_data.size)) + 612] = 35
                mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: burn from the zero addr'
                mem[(2 * ceil32(return_data.size)) + 676] = 0x6573730000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 576
                   len ceil32(return_data.size) + 132
            if balanceOf[address(msg.sender)] < 3:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= 3
            emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
            if stor11 > -4:
                revert with 0, 17
            stor11 += 3
            if arg1 >= itemsForSale.length:
                revert with 0, 50
            emit 0x3df5cd6a: arg1, msg.sender, 1, itemsForSale[arg1].field_1024
            emit 0x62cb9e94: 0, stor11, block.timestamp
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(stor10.field_224) != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(return_data.size) + 576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 < 576 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
        if not ceil32(return_data.size) + ext_call.return_data[0] + 576:
            _7451 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
            mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_7451 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_7451 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _7451 + -mem[64] + 132
        _7407 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
        mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _7495 = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
        mem[mem[64] + 36] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
        mem[_7407 + 68 len ceil32(_7495)] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 608 len ceil32(_7495)]
        if ceil32(_7495) > _7495:
            mem[_7407 + _7495 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_7495) + _7407 + -mem[64] + 68
    mem[260] = msg.sender
    mem[292] = itemsForSale[arg1].field_768
    mem[324] = itemsForSale[arg1].field_512
    mem[356] = 1
    mem[388] = 160
    mem[420] = 0
    mem[452 len 0] = None
    require ext_code.size(msg.sender)
    call msg.sender.0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, itemsForSale[arg1].field_768, itemsForSale[arg1].field_512, 1, 160, 0
    mem[256] = ext_call.return_data[0]
    if not ext_call.success:
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(msg.sender) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[256 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ext_call.return_data[0] + 256] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257 < 256 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257 > test266151307():
            revert with 0, 65
        mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
        if not ext_call.return_data[0] + 256:
            _3828 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_3828 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_3828 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _3828 + -mem[64] + 132
        _3811 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257
        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 256] + 31) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _3857 = mem[ext_call.return_data[0] + 256]
        mem[mem[64] + 36] = mem[ext_call.return_data[0] + 256]
        mem[_3811 + 68 len ceil32(_3857)] = mem[ext_call.return_data[0] + 288 len ceil32(_3857)]
        if ceil32(_3857) > _3857:
            mem[_3811 + _3857 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_3857) + _3811 + -mem[64] + 68
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if arg1 >= itemsForSale.length:
        revert with 0, 50
    call itemsForSale[arg1].field_768 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= itemsForSale.length:
        revert with 0, 50
    mem[ceil32(return_data.size) + 256] = 0
    if not itemsForSale[arg1].field_768:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[ceil32(return_data.size) + 288] = 1
    mem[ceil32(return_data.size) + 320] = 0
    mem[ceil32(return_data.size) + 352] = 1
    mem[ceil32(return_data.size) + 384] = 5
    if balanceOf[address(msg.sender)] < 5:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 5
    if balanceOf[stor21[arg1].field_768] > -6:
        revert with 0, 17
    balanceOf[stor21[arg1].field_768] += 5
    emit 0xfec3d581: 0, 5, msg.sender, msg.sender, itemsForSale[arg1].field_768
    if not ext_code.size(itemsForSale[arg1].field_768):
        mem[ceil32(return_data.size) + 416] = 0
        if not sub_35bba03fAddress:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(return_data.size) + 448] = 1
        mem[ceil32(return_data.size) + 480] = 0
        mem[ceil32(return_data.size) + 512] = 1
        mem[ceil32(return_data.size) + 544] = 2
        if balanceOf[address(msg.sender)] < 2:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 2
        if balanceOf[address(stor10.field_0)] > -3:
            revert with 0, 17
        balanceOf[address(stor10.field_0)] += 2
        emit 0xfec3d581: 0, 2, msg.sender, msg.sender, sub_35bba03fAddress
        if not ext_code.size(sub_35bba03fAddress):
            if not msg.sender:
                revert with 0, 'ERC1155: burn from the zero address'
            if balanceOf[address(msg.sender)] < 3:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= 3
            emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
            if stor11 > -4:
                revert with 0, 17
            stor11 += 3
            if arg1 >= itemsForSale.length:
                revert with 0, 50
            emit 0x3df5cd6a: arg1, msg.sender, 1, itemsForSale[arg1].field_1024
            emit 0x62cb9e94: 0, stor11, block.timestamp
        mem[ceil32(return_data.size) + 580] = msg.sender
        mem[ceil32(return_data.size) + 612] = msg.sender
        mem[ceil32(return_data.size) + 644] = 0
        mem[ceil32(return_data.size) + 676] = 2
        mem[ceil32(return_data.size) + 708] = 160
        mem[ceil32(return_data.size) + 740] = 0
        mem[ceil32(return_data.size) + 772 len 0] = None
        require ext_code.size(sub_35bba03fAddress)
        call sub_35bba03fAddress.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 2, 160, 0
        mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 580] = 32
                mem[(2 * ceil32(return_data.size)) + 612] = 40
                mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: ERC1155Receiver rejecte'
                mem[(2 * ceil32(return_data.size)) + 676] = 'd tokens' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 576
                   len ceil32(return_data.size) + 132
            if not msg.sender:
                mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 580] = 32
                mem[(2 * ceil32(return_data.size)) + 612] = 35
                mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: burn from the zero addr'
                mem[(2 * ceil32(return_data.size)) + 676] = 0x6573730000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 576
                   len ceil32(return_data.size) + 132
            if balanceOf[address(msg.sender)] < 3:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= 3
            emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
            if stor11 > -4:
                revert with 0, 17
            stor11 += 3
            if arg1 >= itemsForSale.length:
                revert with 0, 50
            emit 0x3df5cd6a: arg1, msg.sender, 1, itemsForSale[arg1].field_1024
            emit 0x62cb9e94: 0, stor11, block.timestamp
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(stor10.field_224) != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(return_data.size) + 576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 < 576 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
        if not ceil32(return_data.size) + ext_call.return_data[0] + 576:
            _7455 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
            mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_7455 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_7455 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _7455 + -mem[64] + 132
        _7417 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577
        mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _7505 = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
        mem[mem[64] + 36] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 576]
        mem[_7417 + 68 len ceil32(_7505)] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 608 len ceil32(_7505)]
        if ceil32(_7505) > _7505:
            mem[_7417 + _7505 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_7505) + _7417 + -mem[64] + 68
    mem[ceil32(return_data.size) + 420] = msg.sender
    mem[ceil32(return_data.size) + 452] = msg.sender
    mem[ceil32(return_data.size) + 484] = 0
    mem[ceil32(return_data.size) + 516] = 5
    mem[ceil32(return_data.size) + 548] = 160
    mem[ceil32(return_data.size) + 580] = 0
    mem[ceil32(return_data.size) + 612 len 0] = None
    require ext_code.size(itemsForSale[arg1].field_768)
    call itemsForSale[arg1].field_768.0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, msg.sender, 0, 5, 160, 0
    mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if itemsForSale[arg1].field_992 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(return_data.size) + 416 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417 < 416 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417
        if not ceil32(return_data.size) + ext_call.return_data[0] + 416:
            _7457 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417
            mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_7457 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_7457 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _7457 + -mem[64] + 132
        _7422 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417
        mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 416] + 31) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _7510 = mem[ceil32(return_data.size) + ext_call.return_data[0] + 416]
        mem[mem[64] + 36] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 416]
        mem[_7422 + 68 len ceil32(_7510)] = mem[ceil32(return_data.size) + ext_call.return_data[0] + 448 len ceil32(_7510)]
        if ceil32(_7510) > _7510:
            mem[_7422 + _7510 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_7510) + _7422 + -mem[64] + 68
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
        mem[(2 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 420] = 32
        mem[(2 * ceil32(return_data.size)) + 452] = 40
        mem[(2 * ceil32(return_data.size)) + 484] = 'ERC1155: ERC1155Receiver rejecte'
        mem[(2 * ceil32(return_data.size)) + 516] = 'd tokens' << 192
        revert with memory
          from (2 * ceil32(return_data.size)) + 416
           len ceil32(return_data.size) + 132
    mem[(2 * ceil32(return_data.size)) + 416] = 0
    if not sub_35bba03fAddress:
        mem[(2 * ceil32(return_data.size)) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 452] = 32
        mem[(2 * ceil32(return_data.size)) + 484] = 37
        mem[(2 * ceil32(return_data.size)) + 516] = 'ERC1155: transfer to the zero ad'
        mem[(2 * ceil32(return_data.size)) + 548] = 0x6472657373000000000000000000000000000000000000000000000000000000
        revert with memory
          from (2 * ceil32(return_data.size)) + 448
           len ceil32(return_data.size) + 132
    mem[(2 * ceil32(return_data.size)) + 448] = 1
    mem[(2 * ceil32(return_data.size)) + 480] = 0
    mem[(2 * ceil32(return_data.size)) + 512] = 1
    mem[(2 * ceil32(return_data.size)) + 544] = 2
    if balanceOf[address(msg.sender)] < 2:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 2
    if balanceOf[address(stor10.field_0)] > -3:
        revert with 0, 17
    balanceOf[address(stor10.field_0)] += 2
    emit 0xfec3d581: 0, 2, msg.sender, msg.sender, sub_35bba03fAddress
    if not ext_code.size(sub_35bba03fAddress):
        if not msg.sender:
            revert with 0, 'ERC1155: burn from the zero address'
        if balanceOf[address(msg.sender)] < 3:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= 3
        emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
        if stor11 > -4:
            revert with 0, 17
        stor11 += 3
        if arg1 >= itemsForSale.length:
            revert with 0, 50
        emit 0x3df5cd6a: arg1, msg.sender, 1, itemsForSale[arg1].field_1024
        emit 0x62cb9e94: 0, stor11, block.timestamp
    mem[(2 * ceil32(return_data.size)) + 580] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 612] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 644] = 0
    mem[(2 * ceil32(return_data.size)) + 676] = 2
    mem[(2 * ceil32(return_data.size)) + 708] = 160
    mem[(2 * ceil32(return_data.size)) + 740] = 0
    mem[(2 * ceil32(return_data.size)) + 772 len 0] = None
    require ext_code.size(sub_35bba03fAddress)
    call sub_35bba03fAddress.0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, msg.sender, 0, 2, 160, 0
    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            mem[(4 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 580] = 32
            mem[(4 * ceil32(return_data.size)) + 612] = 40
            mem[(4 * ceil32(return_data.size)) + 644] = 'ERC1155: ERC1155Receiver rejecte'
            mem[(4 * ceil32(return_data.size)) + 676] = 'd tokens' << 192
            revert with memory
              from (4 * ceil32(return_data.size)) + 576
               len (5 * ceil32(return_data.size)) + 132
        if not msg.sender:
            mem[(4 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 580] = 32
            mem[(4 * ceil32(return_data.size)) + 612] = 35
            mem[(4 * ceil32(return_data.size)) + 644] = 'ERC1155: burn from the zero addr'
            mem[(4 * ceil32(return_data.size)) + 676] = 0x6573730000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 576
               len (5 * ceil32(return_data.size)) + 132
        if balanceOf[address(msg.sender)] < 3:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= 3
        emit 0xfec3d581: 0, 3, msg.sender, msg.sender, 0
        if stor11 > -4:
            revert with 0, 17
        stor11 += 3
        if arg1 >= itemsForSale.length:
            revert with 0, 50
        emit 0x3df5cd6a: arg1, msg.sender, 1, itemsForSale[arg1].field_1024
        emit 0x62cb9e94: 0, stor11, block.timestamp
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(stor10.field_224) != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[(2 * ceil32(return_data.size)) + 576 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577 < 576 or (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577
    if not (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576:
        _9665 = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577
        mem[(2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 52
        mem[_9665 + 68] = 'ERC1155: transfer to non ERC1155'
        mem[_9665 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
        revert with memory
          from mem[64]
           len _9665 + -mem[64] + 132
    _9637 = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577
    mem[(2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576] + 31) + 577] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _9693 = mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576]
    mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 576]
    mem[_9637 + 68 len ceil32(_9693)] = mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 608 len ceil32(_9693)]
    if ceil32(_9693) > _9693:
        mem[_9637 + _9693 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_9693) + _9637 + -mem[64] + 68
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    if msg.sender == arg1:
        if arg3 >= 6:
            if stor15[arg3].field_1792 > !stor15[arg3].field_1280:
                revert with 0, 17
            if stor15[arg3].field_1792 + stor15[arg3].field_1280 <= block.timestamp:
                revert with 0, 'Immutable Death'
            if _hold[msg.sender][arg3]:
                revert with 0, '$Enjimon unavailable'
            if not arg2:
                revert with 0, 'ERC1155: transfer to the zero address'
            mem[ceil32(ceil32(arg5.length)) + 97] = 1
            mem[ceil32(ceil32(arg5.length)) + 129] = arg3
            mem[ceil32(ceil32(arg5.length)) + 161] = 1
            mem[ceil32(ceil32(arg5.length)) + 193] = 1
            if balanceOf[arg3][address(arg1)] < 1:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[arg3][address(arg1)]--
            if balanceOf[arg3][arg2] > -2:
                revert with 0, 17
            balanceOf[arg3][arg2]++
            emit 0xfec3d581: arg3, 1, msg.sender, arg1, arg2
            if not ext_code.size(arg2):
                if stor15[arg3].field_0:
                    if stor15[arg3].field_0 == uint255(stor15[arg3].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg3].field_0:
                        emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=Mask(248, 8, stor15[arg3].field_0))
                    else:
                        if stor15[arg3].field_0 != 1:
                            emit 0x95973994: mem[ceil32(ceil32(arg5.length)) + 225 len -ceil32(ceil32(arg5.length)) - 225]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg3].field_0) * 0.5:
                                mem[idx + ceil32(ceil32(arg5.length)) + 385] = stor15[arg3][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=mem[ceil32(ceil32(arg5.length)) + 385 len ceil32(uint255(stor15[arg3].field_0) * 0.5)])
                else:
                    if stor15[arg3].field_0 == stor15[arg3].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg3].field_0:
                        emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=stor15[arg3].field_0, data=Mask(248, 8, stor15[arg3].field_0))
                    else:
                        if stor15[arg3].field_0 != 1:
                            emit 0x95973994: mem[ceil32(ceil32(arg5.length)) + 225 len -ceil32(ceil32(arg5.length)) - 225]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg3].field_1:
                                mem[idx + ceil32(ceil32(arg5.length)) + 385] = stor15[arg3][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=stor15[arg3].field_0, data=mem[ceil32(ceil32(arg5.length)) + 385 len ceil32(stor15[arg3].field_1)])
            mem[ceil32(ceil32(arg5.length)) + 229] = msg.sender
            mem[ceil32(ceil32(arg5.length)) + 261] = arg1
            mem[ceil32(ceil32(arg5.length)) + 293] = arg3
            mem[ceil32(ceil32(arg5.length)) + 325] = 1
            mem[ceil32(ceil32(arg5.length)) + 357] = 160
            mem[ceil32(ceil32(arg5.length)) + 389] = arg5.length
            mem[ceil32(ceil32(arg5.length)) + 421 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 1) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, 1, Array(len=arg5.length, data=arg5[all])
                mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if stor15[arg3].field_0:
                        if stor15[arg3].field_0 == uint255(stor15[arg3].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not stor15[arg3].field_0:
                            emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=Mask(248, 8, stor15[arg3].field_0))
                        else:
                            if stor15[arg3].field_0 != 1:
                                emit 0x95973994: mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225 len -ceil32(ceil32(arg5.length)) + -ceil32(return_data.size) - 225]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor15[arg3].field_0) * 0.5:
                                    mem[idx + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385] = stor15[arg3][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385 len ceil32(uint255(stor15[arg3].field_0) * 0.5)])
                    else:
                        if stor15[arg3].field_0 == stor15[arg3].field_1 < 32:
                            revert with 0, 34
                        if not stor15[arg3].field_0:
                            emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=stor15[arg3].field_0, data=Mask(248, 8, stor15[arg3].field_0))
                        else:
                            if stor15[arg3].field_0 != 1:
                                emit 0x95973994: mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225 len -ceil32(ceil32(arg5.length)) + -ceil32(return_data.size) - 225]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor15[arg3].field_1:
                                    mem[idx + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385] = stor15[arg3][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=stor15[arg3].field_0, data=mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385 len ceil32(stor15[arg3].field_1)])
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(arg2) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
                    _1168 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                    mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 52
                    mem[_1168 + 68] = 'ERC1155: transfer to non ERC1155'
                    mem[_1168 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                    revert with memory
                      from mem[64]
                       len _1168 + -mem[64] + 132
                _1152 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1187 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
                mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
                mem[_1152 + 68 len ceil32(_1187)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1187)]
                if ceil32(_1187) > _1187:
                    mem[_1152 + _1187 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1187) + _1152 + -mem[64] + 68
            mem[ceil32(ceil32(arg5.length)) + arg5.length + 421] = 0
            require ext_code.size(arg2)
            call arg2.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 1, Array(len=arg5.length, data=arg5[all])
            mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if stor15[arg3].field_0:
                    if stor15[arg3].field_0 == uint255(stor15[arg3].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg3].field_0:
                        emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=Mask(248, 8, stor15[arg3].field_0))
                    else:
                        if stor15[arg3].field_0 != 1:
                            emit 0x95973994: mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225 len -ceil32(ceil32(arg5.length)) + -ceil32(return_data.size) - 225]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg3].field_0) * 0.5:
                                mem[idx + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385] = stor15[arg3][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385 len ceil32(uint255(stor15[arg3].field_0) * 0.5)])
                else:
                    if stor15[arg3].field_0 == stor15[arg3].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg3].field_0:
                        emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=stor15[arg3].field_0, data=Mask(248, 8, stor15[arg3].field_0))
                    else:
                        if stor15[arg3].field_0 != 1:
                            emit 0x95973994: mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225 len -ceil32(ceil32(arg5.length)) + -ceil32(return_data.size) - 225]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg3].field_1:
                                mem[idx + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385] = stor15[arg3][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=stor15[arg3].field_0, data=mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385 len ceil32(stor15[arg3].field_1)])
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(arg2) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
                _1190 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_1190 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_1190 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _1190 + -mem[64] + 132
            _1169 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1211 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[_1169 + 68 len ceil32(_1211)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1211)]
            if ceil32(_1211) > _1211:
                mem[_1169 + _1211 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1211) + _1169 + -mem[64] + 68
        if _hold[msg.sender][0]:
            if not msg.sender:
                revert with 0, 'ERC1155: balance query for the zero address'
            require balanceOf[address(msg.sender)] > _hold[msg.sender][0]
            if balanceOf[address(msg.sender)] < _hold[msg.sender][0]:
                revert with 0, 17
            require arg4 <= balanceOf[address(msg.sender)] - _hold[msg.sender][0]
            if not arg2:
                revert with 0, 'ERC1155: transfer to the zero address'
            mem[ceil32(ceil32(arg5.length)) + 97] = 1
            mem[ceil32(ceil32(arg5.length)) + 129] = arg3
            mem[ceil32(ceil32(arg5.length)) + 161] = 1
            mem[ceil32(ceil32(arg5.length)) + 193] = arg4
            if balanceOf[arg3][address(arg1)] < arg4:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[arg3][address(arg1)] -= arg4
            if balanceOf[arg3][arg2] > !arg4:
                revert with 0, 17
            balanceOf[arg3][arg2] += arg4
            emit 0xfec3d581: arg3, arg4, msg.sender, arg1, arg2
            if not ext_code.size(arg2):
                emit transferItem(address(arg1), address(arg2), arg3);
            mem[ceil32(ceil32(arg5.length)) + 229] = msg.sender
            mem[ceil32(ceil32(arg5.length)) + 261] = arg1
            mem[ceil32(ceil32(arg5.length)) + 293] = arg3
            mem[ceil32(ceil32(arg5.length)) + 325] = arg4
            mem[ceil32(ceil32(arg5.length)) + 357] = 160
            mem[ceil32(ceil32(arg5.length)) + 389] = arg5.length
            mem[ceil32(ceil32(arg5.length)) + 421 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 1) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    emit transferItem(address(arg1), address(arg2), arg3);
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(arg2) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
                    _1166 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                    mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 52
                    mem[_1166 + 68] = 'ERC1155: transfer to non ERC1155'
                    mem[_1166 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                    revert with memory
                      from mem[64]
                       len _1166 + -mem[64] + 132
                _1150 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1184 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
                mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
                mem[_1150 + 68 len ceil32(_1184)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1184)]
                if ceil32(_1184) > _1184:
                    mem[_1150 + _1184 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1184) + _1150 + -mem[64] + 68
            mem[ceil32(ceil32(arg5.length)) + arg5.length + 421] = 0
            require ext_code.size(arg2)
            call arg2.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
            mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                emit transferItem(address(arg1), address(arg2), arg3);
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(arg2) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
                _1186 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_1186 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_1186 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _1186 + -mem[64] + 132
            _1167 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1208 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[_1167 + 68 len ceil32(_1208)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1208)]
            if ceil32(_1208) > _1208:
                mem[_1167 + _1208 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1208) + _1167 + -mem[64] + 68
        if not _hold[msg.sender][arg3]:
            if not arg2:
                revert with 0, 'ERC1155: transfer to the zero address'
            mem[ceil32(ceil32(arg5.length)) + 97] = 1
            mem[ceil32(ceil32(arg5.length)) + 129] = arg3
            mem[ceil32(ceil32(arg5.length)) + 161] = 1
            mem[ceil32(ceil32(arg5.length)) + 193] = arg4
            if balanceOf[arg3][address(arg1)] < arg4:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[arg3][address(arg1)] -= arg4
            if balanceOf[arg3][arg2] > !arg4:
                revert with 0, 17
            balanceOf[arg3][arg2] += arg4
            emit 0xfec3d581: arg3, arg4, msg.sender, arg1, arg2
            if not ext_code.size(arg2):
                emit transferItem(address(arg1), address(arg2), arg3);
            mem[ceil32(ceil32(arg5.length)) + 229] = msg.sender
            mem[ceil32(ceil32(arg5.length)) + 261] = arg1
            mem[ceil32(ceil32(arg5.length)) + 293] = arg3
            mem[ceil32(ceil32(arg5.length)) + 325] = arg4
            mem[ceil32(ceil32(arg5.length)) + 357] = 160
            mem[ceil32(ceil32(arg5.length)) + 389] = arg5.length
            mem[ceil32(ceil32(arg5.length)) + 421 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 1) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    emit transferItem(address(arg1), address(arg2), arg3);
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(arg2) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
                    _1162 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                    mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 52
                    mem[_1162 + 68] = 'ERC1155: transfer to non ERC1155'
                    mem[_1162 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                    revert with memory
                      from mem[64]
                       len _1162 + -mem[64] + 132
                _1146 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1178 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
                mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
                mem[_1146 + 68 len ceil32(_1178)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1178)]
                if ceil32(_1178) > _1178:
                    mem[_1146 + _1178 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1178) + _1146 + -mem[64] + 68
            mem[ceil32(ceil32(arg5.length)) + arg5.length + 421] = 0
            require ext_code.size(arg2)
            call arg2.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
            mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                emit transferItem(address(arg1), address(arg2), arg3);
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(arg2) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
                _1180 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_1180 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_1180 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _1180 + -mem[64] + 132
            _1163 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1204 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[_1163 + 68 len ceil32(_1204)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1204)]
            if ceil32(_1204) > _1204:
                mem[_1163 + _1204 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1204) + _1163 + -mem[64] + 68
        if not msg.sender:
            revert with 0, 'ERC1155: balance query for the zero address'
        if not arg1:
            revert with 0, 'ERC1155: balance query for the zero address'
        require balanceOf[arg3][address(arg1)] > _hold[msg.sender][arg3]
        if balanceOf[arg3][address(msg.sender)] < _hold[msg.sender][arg3]:
            revert with 0, 17
        require arg4 <= balanceOf[arg3][address(msg.sender)] - _hold[msg.sender][arg3]
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(ceil32(arg5.length)) + 97] = 1
        mem[ceil32(ceil32(arg5.length)) + 129] = arg3
        mem[ceil32(ceil32(arg5.length)) + 161] = 1
        mem[ceil32(ceil32(arg5.length)) + 193] = arg4
        if balanceOf[arg3][address(arg1)] < arg4:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[arg3][address(arg1)] -= arg4
        if balanceOf[arg3][arg2] > !arg4:
            revert with 0, 17
        balanceOf[arg3][arg2] += arg4
        emit 0xfec3d581: arg3, arg4, msg.sender, arg1, arg2
        if not ext_code.size(arg2):
            emit transferItem(address(arg1), address(arg2), arg3);
        mem[ceil32(ceil32(arg5.length)) + 229] = msg.sender
        mem[ceil32(ceil32(arg5.length)) + 261] = arg1
        mem[ceil32(ceil32(arg5.length)) + 293] = arg3
        mem[ceil32(ceil32(arg5.length)) + 325] = arg4
        mem[ceil32(ceil32(arg5.length)) + 357] = 160
        mem[ceil32(ceil32(arg5.length)) + 389] = arg5.length
        mem[ceil32(ceil32(arg5.length)) + 421 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 1) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
            mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                emit transferItem(address(arg1), address(arg2), arg3);
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(arg2) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
                _1164 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_1164 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_1164 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _1164 + -mem[64] + 132
            _1148 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1181 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[_1148 + 68 len ceil32(_1181)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1181)]
            if ceil32(_1181) > _1181:
                mem[_1148 + _1181 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1181) + _1148 + -mem[64] + 68
        mem[ceil32(ceil32(arg5.length)) + arg5.length + 421] = 0
        require ext_code.size(arg2)
        call arg2.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            emit transferItem(address(arg1), address(arg2), arg3);
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(arg2) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
        if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
            _1183 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_1183 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_1183 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _1183 + -mem[64] + 132
        _1165 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
        mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1206 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
        mem[_1165 + 68 len ceil32(_1206)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1206)]
        if ceil32(_1206) > _1206:
            mem[_1165 + _1206 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1206) + _1165 + -mem[64] + 68
    if not stor1[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC1155: caller is not owner nor approved'
    if arg3 >= 6:
        if stor15[arg3].field_1792 > !stor15[arg3].field_1280:
            revert with 0, 17
        if stor15[arg3].field_1792 + stor15[arg3].field_1280 <= block.timestamp:
            revert with 0, 'Immutable Death'
        if _hold[msg.sender][arg3]:
            revert with 0, '$Enjimon unavailable'
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(ceil32(arg5.length)) + 97] = 1
        mem[ceil32(ceil32(arg5.length)) + 129] = arg3
        mem[ceil32(ceil32(arg5.length)) + 161] = 1
        mem[ceil32(ceil32(arg5.length)) + 193] = 1
        if balanceOf[arg3][address(arg1)] < 1:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[arg3][address(arg1)]--
        if balanceOf[arg3][arg2] > -2:
            revert with 0, 17
        balanceOf[arg3][arg2]++
        emit 0xfec3d581: arg3, 1, msg.sender, arg1, arg2
        if not ext_code.size(arg2):
            if stor15[arg3].field_0:
                if stor15[arg3].field_0 == uint255(stor15[arg3].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not stor15[arg3].field_0:
                    emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=Mask(248, 8, stor15[arg3].field_0))
                else:
                    if stor15[arg3].field_0 != 1:
                        emit 0x95973994: mem[ceil32(ceil32(arg5.length)) + 225 len -ceil32(ceil32(arg5.length)) - 225]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor15[arg3].field_0) * 0.5:
                            mem[idx + ceil32(ceil32(arg5.length)) + 385] = stor15[arg3][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=mem[ceil32(ceil32(arg5.length)) + 385 len ceil32(uint255(stor15[arg3].field_0) * 0.5)])
            else:
                if stor15[arg3].field_0 == stor15[arg3].field_1 < 32:
                    revert with 0, 34
                if not stor15[arg3].field_0:
                    emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=stor15[arg3].field_0, data=Mask(248, 8, stor15[arg3].field_0))
                else:
                    if stor15[arg3].field_0 != 1:
                        emit 0x95973994: mem[ceil32(ceil32(arg5.length)) + 225 len -ceil32(ceil32(arg5.length)) - 225]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor15[arg3].field_1:
                            mem[idx + ceil32(ceil32(arg5.length)) + 385] = stor15[arg3][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=stor15[arg3].field_0, data=mem[ceil32(ceil32(arg5.length)) + 385 len ceil32(stor15[arg3].field_1)])
        mem[ceil32(ceil32(arg5.length)) + 229] = msg.sender
        mem[ceil32(ceil32(arg5.length)) + 261] = arg1
        mem[ceil32(ceil32(arg5.length)) + 293] = arg3
        mem[ceil32(ceil32(arg5.length)) + 325] = 1
        mem[ceil32(ceil32(arg5.length)) + 357] = 160
        mem[ceil32(ceil32(arg5.length)) + 389] = arg5.length
        mem[ceil32(ceil32(arg5.length)) + 421 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 1) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 1, Array(len=arg5.length, data=arg5[all])
            mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if stor15[arg3].field_0:
                    if stor15[arg3].field_0 == uint255(stor15[arg3].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor15[arg3].field_0:
                        emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=Mask(248, 8, stor15[arg3].field_0))
                    else:
                        if stor15[arg3].field_0 != 1:
                            emit 0x95973994: mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225 len -ceil32(ceil32(arg5.length)) + -ceil32(return_data.size) - 225]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15[arg3].field_0) * 0.5:
                                mem[idx + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385] = stor15[arg3][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385 len ceil32(uint255(stor15[arg3].field_0) * 0.5)])
                else:
                    if stor15[arg3].field_0 == stor15[arg3].field_1 < 32:
                        revert with 0, 34
                    if not stor15[arg3].field_0:
                        emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=stor15[arg3].field_0, data=Mask(248, 8, stor15[arg3].field_0))
                    else:
                        if stor15[arg3].field_0 != 1:
                            emit 0x95973994: mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225 len -ceil32(ceil32(arg5.length)) + -ceil32(return_data.size) - 225]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor15[arg3].field_1:
                                mem[idx + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385] = stor15[arg3][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=stor15[arg3].field_0, data=mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385 len ceil32(stor15[arg3].field_1)])
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(arg2) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
                _1176 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_1176 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_1176 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _1176 + -mem[64] + 132
            _1160 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1200 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[_1160 + 68 len ceil32(_1200)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1200)]
            if ceil32(_1200) > _1200:
                mem[_1160 + _1200 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1200) + _1160 + -mem[64] + 68
        mem[ceil32(ceil32(arg5.length)) + arg5.length + 421] = 0
        require ext_code.size(arg2)
        call arg2.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, 1, Array(len=arg5.length, data=arg5[all])
        mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if stor15[arg3].field_0:
                if stor15[arg3].field_0 == uint255(stor15[arg3].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not stor15[arg3].field_0:
                    emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=Mask(248, 8, stor15[arg3].field_0))
                else:
                    if stor15[arg3].field_0 != 1:
                        emit 0x95973994: mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225 len -ceil32(ceil32(arg5.length)) + -ceil32(return_data.size) - 225]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor15[arg3].field_0) * 0.5:
                            mem[idx + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385] = stor15[arg3][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor15[arg3].field_0), data=mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385 len ceil32(uint255(stor15[arg3].field_0) * 0.5)])
            else:
                if stor15[arg3].field_0 == stor15[arg3].field_1 < 32:
                    revert with 0, 34
                if not stor15[arg3].field_0:
                    emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=stor15[arg3].field_0, data=Mask(248, 8, stor15[arg3].field_0))
                else:
                    if stor15[arg3].field_0 != 1:
                        emit 0x95973994: mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225 len -ceil32(ceil32(arg5.length)) + -ceil32(return_data.size) - 225]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor15[arg3].field_1:
                            mem[idx + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385] = stor15[arg3][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0x95973994: msg.sender, address(arg2), arg3, Array(len=stor15[arg3].field_0, data=mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 385 len ceil32(stor15[arg3].field_1)])
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(arg2) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
        if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
            _1203 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_1203 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_1203 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _1203 + -mem[64] + 132
        _1177 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
        mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1221 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
        mem[_1177 + 68 len ceil32(_1221)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1221)]
        if ceil32(_1221) > _1221:
            mem[_1177 + _1221 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1221) + _1177 + -mem[64] + 68
    if _hold[msg.sender][0]:
        if not msg.sender:
            revert with 0, 'ERC1155: balance query for the zero address'
        require balanceOf[address(msg.sender)] > _hold[msg.sender][0]
        if balanceOf[address(msg.sender)] < _hold[msg.sender][0]:
            revert with 0, 17
        require arg4 <= balanceOf[address(msg.sender)] - _hold[msg.sender][0]
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(ceil32(arg5.length)) + 97] = 1
        mem[ceil32(ceil32(arg5.length)) + 129] = arg3
        mem[ceil32(ceil32(arg5.length)) + 161] = 1
        mem[ceil32(ceil32(arg5.length)) + 193] = arg4
        if balanceOf[arg3][address(arg1)] < arg4:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[arg3][address(arg1)] -= arg4
        if balanceOf[arg3][arg2] > !arg4:
            revert with 0, 17
        balanceOf[arg3][arg2] += arg4
        emit 0xfec3d581: arg3, arg4, msg.sender, arg1, arg2
        if not ext_code.size(arg2):
            emit transferItem(address(arg1), address(arg2), arg3);
        mem[ceil32(ceil32(arg5.length)) + 229] = msg.sender
        mem[ceil32(ceil32(arg5.length)) + 261] = arg1
        mem[ceil32(ceil32(arg5.length)) + 293] = arg3
        mem[ceil32(ceil32(arg5.length)) + 325] = arg4
        mem[ceil32(ceil32(arg5.length)) + 357] = 160
        mem[ceil32(ceil32(arg5.length)) + 389] = arg5.length
        mem[ceil32(ceil32(arg5.length)) + 421 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 1) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
            mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                emit transferItem(address(arg1), address(arg2), arg3);
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(arg2) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
                _1174 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_1174 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_1174 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _1174 + -mem[64] + 132
            _1158 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1197 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[_1158 + 68 len ceil32(_1197)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1197)]
            if ceil32(_1197) > _1197:
                mem[_1158 + _1197 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1197) + _1158 + -mem[64] + 68
        mem[ceil32(ceil32(arg5.length)) + arg5.length + 421] = 0
        require ext_code.size(arg2)
        call arg2.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            emit transferItem(address(arg1), address(arg2), arg3);
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(arg2) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
        if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
            _1199 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_1199 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_1199 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _1199 + -mem[64] + 132
        _1175 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
        mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1218 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
        mem[_1175 + 68 len ceil32(_1218)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1218)]
        if ceil32(_1218) > _1218:
            mem[_1175 + _1218 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1218) + _1175 + -mem[64] + 68
    if not _hold[msg.sender][arg3]:
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(ceil32(arg5.length)) + 97] = 1
        mem[ceil32(ceil32(arg5.length)) + 129] = arg3
        mem[ceil32(ceil32(arg5.length)) + 161] = 1
        mem[ceil32(ceil32(arg5.length)) + 193] = arg4
        if balanceOf[arg3][address(arg1)] < arg4:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[arg3][address(arg1)] -= arg4
        if balanceOf[arg3][arg2] > !arg4:
            revert with 0, 17
        balanceOf[arg3][arg2] += arg4
        emit 0xfec3d581: arg3, arg4, msg.sender, arg1, arg2
        if not ext_code.size(arg2):
            emit transferItem(address(arg1), address(arg2), arg3);
        mem[ceil32(ceil32(arg5.length)) + 229] = msg.sender
        mem[ceil32(ceil32(arg5.length)) + 261] = arg1
        mem[ceil32(ceil32(arg5.length)) + 293] = arg3
        mem[ceil32(ceil32(arg5.length)) + 325] = arg4
        mem[ceil32(ceil32(arg5.length)) + 357] = 160
        mem[ceil32(ceil32(arg5.length)) + 389] = arg5.length
        mem[ceil32(ceil32(arg5.length)) + 421 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 1) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
            mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                emit transferItem(address(arg1), address(arg2), arg3);
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(arg2) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
                _1170 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
                mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 52
                mem[_1170 + 68] = 'ERC1155: transfer to non ERC1155'
                mem[_1170 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
                revert with memory
                  from mem[64]
                   len _1170 + -mem[64] + 132
            _1154 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1191 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
            mem[_1154 + 68 len ceil32(_1191)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1191)]
            if ceil32(_1191) > _1191:
                mem[_1154 + _1191 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1191) + _1154 + -mem[64] + 68
        mem[ceil32(ceil32(arg5.length)) + arg5.length + 421] = 0
        require ext_code.size(arg2)
        call arg2.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            emit transferItem(address(arg1), address(arg2), arg3);
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(arg2) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
        if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
            _1193 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_1193 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_1193 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _1193 + -mem[64] + 132
        _1171 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
        mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1214 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
        mem[_1171 + 68 len ceil32(_1214)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1214)]
        if ceil32(_1214) > _1214:
            mem[_1171 + _1214 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1214) + _1171 + -mem[64] + 68
    if not msg.sender:
        revert with 0, 'ERC1155: balance query for the zero address'
    if not arg1:
        revert with 0, 'ERC1155: balance query for the zero address'
    require balanceOf[arg3][address(arg1)] > _hold[msg.sender][arg3]
    if balanceOf[arg3][address(msg.sender)] < _hold[msg.sender][arg3]:
        revert with 0, 17
    require arg4 <= balanceOf[arg3][address(msg.sender)] - _hold[msg.sender][arg3]
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[ceil32(ceil32(arg5.length)) + 97] = 1
    mem[ceil32(ceil32(arg5.length)) + 129] = arg3
    mem[ceil32(ceil32(arg5.length)) + 161] = 1
    mem[ceil32(ceil32(arg5.length)) + 193] = arg4
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][arg2] > !arg4:
        revert with 0, 17
    balanceOf[arg3][arg2] += arg4
    emit 0xfec3d581: arg3, arg4, msg.sender, arg1, arg2
    if not ext_code.size(arg2):
        emit transferItem(address(arg1), address(arg2), arg3);
    mem[ceil32(ceil32(arg5.length)) + 229] = msg.sender
    mem[ceil32(ceil32(arg5.length)) + 261] = arg1
    mem[ceil32(ceil32(arg5.length)) + 293] = arg3
    mem[ceil32(ceil32(arg5.length)) + 325] = arg4
    mem[ceil32(ceil32(arg5.length)) + 357] = 160
    mem[ceil32(ceil32(arg5.length)) + 389] = arg5.length
    mem[ceil32(ceil32(arg5.length)) + 421 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 1) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
    if ceil32(arg5.length) <= arg5.length:
        require ext_code.size(arg2)
        call arg2.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            emit transferItem(address(arg1), address(arg2), arg3);
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(arg2) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
        if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
            _1172 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
            mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 52
            mem[_1172 + 68] = 'ERC1155: transfer to non ERC1155'
            mem[_1172 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
            revert with memory
              from mem[64]
               len _1172 + -mem[64] + 132
        _1156 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
        mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1194 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
        mem[_1156 + 68 len ceil32(_1194)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1194)]
        if ceil32(_1194) > _1194:
            mem[_1156 + _1194 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1194) + _1156 + -mem[64] + 68
    mem[ceil32(ceil32(arg5.length)) + arg5.length + 421] = 0
    require ext_code.size(arg2)
    call arg2.0xf23a6e61 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
    mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        emit transferItem(address(arg1), address(arg2), arg3);
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(arg2) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[ceil32(ceil32(arg5.length)) + 225 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if return_data.size < ext_call.return_data[0] + 36 or ext_call.return_data[0] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 < 225 or ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
    if not ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225:
        _1196 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
        mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 52
        mem[_1196 + 68] = 'ERC1155: transfer to non ERC1155'
        mem[_1196 + 100] = 0x526563656976657220696d706c656d656e746572000000000000000000000000
        revert with memory
          from mem[64]
           len _1196 + -mem[64] + 132
    _1173 = ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226
    mem[ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225] + 31) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1216 = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
    mem[mem[64] + 36] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 225]
    mem[_1173 + 68 len ceil32(_1216)] = mem[ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 257 len ceil32(_1216)]
    if ceil32(_1216) > _1216:
        mem[_1173 + _1216 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_1216) + _1173 + -mem[64] + 68
}



}

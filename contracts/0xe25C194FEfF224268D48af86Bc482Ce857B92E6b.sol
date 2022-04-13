contract main {




// =====================  Runtime code  =====================


#
#  - mintRandomYeti(uint256 arg1)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - reserveYeti(uint256 arg1, address arg2)
#
array of struct tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor2;
mapping of address approved;
mapping of uint8 stor4;
array of struct stor5;
array of struct stor6;
array of struct stor7;
uint64 YETI_TO_ASSIGN; offset 160
address owner;
uint256 stor9; offset 64
mapping of address orderTo;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function orderToAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return orderTo[arg1]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tokenOfOwnerByIndex[address(arg1)].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg2 >= tokenOfOwnerByIndex[address(arg1)].field_0:
        revert with 'NH{q', 50
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    if arg1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor2[arg1] < 1:
        revert with 'NH{q', 17
    if stor2[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    return address(tokenByIndex[stor2[arg1] - 1].field_256)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)].field_0
}

function owner() {
    return owner
}

function YETI_TO_ASSIGN() {
    return YETI_TO_ASSIGN
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function startSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = 1
}

function withdrawMintFunds() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function changeBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor7[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor7.length = 0
            idx = 0
            while uint255(stor7.length.field_1) + 31 / 32 > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor7[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor7.length = 0
            idx = 0
            while stor7.length.field_1 % 128 + 31 / 32 > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor2[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor2[arg2] < 1:
        revert with 'NH{q', 17
    if stor2[arg2] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if arg1 == address(tokenByIndex[stor2[arg2] - 1].field_256):
        revert with 0, 'ERC721: approval to current owner'
    if address(tokenByIndex[stor2[arg2] - 1].field_256) != msg.sender:
        if not stor4[address(stor1[stor2[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor2[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor2[arg2] < 1:
        revert with 'NH{q', 17
    if stor2[arg2] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(address(tokenByIndex[stor2[arg2] - 1].field_256), arg1, arg2);
}

function name() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor5.length.field_1):
                if 31 < uint255(stor5.length.field_1):
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor5.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor5.length.field_1)), data=mem[128 len ceil32(uint255(stor5.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor5.length.field_8)
        else:
            if bool(stor5.length) == stor5.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1 % 128:
                if 31 < stor5.length.field_1 % 128:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor5.length.field_1)), data=mem[128 len ceil32(uint255(stor5.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor5.length.field_8)
        mem[ceil32(uint255(stor5.length.field_1)) + 192 len ceil32(uint255(stor5.length.field_1))] = mem[128 len ceil32(uint255(stor5.length.field_1))]
        if ceil32(uint255(stor5.length.field_1)) > uint255(stor5.length.field_1):
            mem[ceil32(uint255(stor5.length.field_1)) + uint255(stor5.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor5.length.field_1)), data=mem[128 len ceil32(uint255(stor5.length.field_1))], mem[(2 * ceil32(uint255(stor5.length.field_1))) + 192 len 2 * ceil32(uint255(stor5.length.field_1))]), 
    if bool(stor5.length) == stor5.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor5.length.field_1):
            if 31 < uint255(stor5.length.field_1):
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while uint255(stor5.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5.length.field_8)
    else:
        if bool(stor5.length) == stor5.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1 % 128:
            if 31 < stor5.length.field_1 % 128:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5.length.field_8)
    mem[ceil32(stor5.length.field_1 % 128) + 192 len ceil32(stor5.length.field_1 % 128)] = mem[128 len ceil32(stor5.length.field_1 % 128)]
    if ceil32(stor5.length.field_1 % 128) > stor5.length.field_1 % 128:
        mem[ceil32(stor5.length.field_1 % 128) + stor5.length.field_1 % 128 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1 % 128)], mem[(2 * ceil32(stor5.length.field_1 % 128)) + 192 len 2 * ceil32(stor5.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor6.length.field_1):
                if 31 < uint255(stor6.length.field_1):
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor6.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor6.length.field_1)), data=mem[128 len ceil32(uint255(stor6.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor6.length.field_8)
        else:
            if bool(stor6.length) == stor6.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1 % 128:
                if 31 < stor6.length.field_1 % 128:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor6.length.field_1)), data=mem[128 len ceil32(uint255(stor6.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor6.length.field_8)
        mem[ceil32(uint255(stor6.length.field_1)) + 192 len ceil32(uint255(stor6.length.field_1))] = mem[128 len ceil32(uint255(stor6.length.field_1))]
        if ceil32(uint255(stor6.length.field_1)) > uint255(stor6.length.field_1):
            mem[ceil32(uint255(stor6.length.field_1)) + uint255(stor6.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor6.length.field_1)), data=mem[128 len ceil32(uint255(stor6.length.field_1))], mem[(2 * ceil32(uint255(stor6.length.field_1))) + 192 len 2 * ceil32(uint255(stor6.length.field_1))]), 
    if bool(stor6.length) == stor6.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor6.length.field_1):
            if 31 < uint255(stor6.length.field_1):
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while uint255(stor6.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6.length.field_8)
    else:
        if bool(stor6.length) == stor6.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1 % 128:
            if 31 < stor6.length.field_1 % 128:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6.length.field_8)
    mem[ceil32(stor6.length.field_1 % 128) + 192 len ceil32(stor6.length.field_1 % 128)] = mem[128 len ceil32(stor6.length.field_1 % 128)]
    if ceil32(stor6.length.field_1 % 128) > stor6.length.field_1 % 128:
        mem[ceil32(stor6.length.field_1 % 128) + stor6.length.field_1 % 128 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1 % 128)], mem[(2 * ceil32(stor6.length.field_1 % 128)) + 192 len 2 * ceil32(stor6.length.field_1 % 128)]), 
}

function baseURI() {
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor7.length.field_1):
                if 31 < uint255(stor7.length.field_1):
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor7.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor7.length.field_1)), data=mem[128 len ceil32(uint255(stor7.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
        else:
            if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1 % 128:
                if 31 < stor7.length.field_1 % 128:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor7.length.field_1)), data=mem[128 len ceil32(uint255(stor7.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
        mem[ceil32(uint255(stor7.length.field_1)) + 192 len ceil32(uint255(stor7.length.field_1))] = mem[128 len ceil32(uint255(stor7.length.field_1))]
        if ceil32(uint255(stor7.length.field_1)) > uint255(stor7.length.field_1):
            mem[ceil32(uint255(stor7.length.field_1)) + uint255(stor7.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor7.length.field_1)), data=mem[128 len ceil32(uint255(stor7.length.field_1))], mem[(2 * ceil32(uint255(stor7.length.field_1))) + 192 len 2 * ceil32(uint255(stor7.length.field_1))]), 
    if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor7.length.field_1):
            if 31 < uint255(stor7.length.field_1):
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while uint255(stor7.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
    else:
        if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1 % 128:
            if 31 < stor7.length.field_1 % 128:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
    mem[ceil32(stor7.length.field_1 % 128) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
    if ceil32(stor7.length.field_1 % 128) > stor7.length.field_1 % 128:
        mem[ceil32(stor7.length.field_1 % 128) + stor7.length.field_1 % 128 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + 192 len 2 * ceil32(stor7.length.field_1 % 128)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor2[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor2[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor2[arg3] < 1:
        revert with 'NH{q', 17
    if stor2[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if address(tokenByIndex[stor2[arg3] - 1].field_256) != msg.sender:
        if not stor2[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor4[address(stor1[stor2[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor2[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor2[arg3] < 1:
        revert with 'NH{q', 17
    if stor2[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if address(tokenByIndex[stor2[arg3] - 1].field_256) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor2[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    if stor2[arg3] < 1:
        revert with 'NH{q', 17
    if stor2[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(address(tokenByIndex[stor2[arg3] - 1].field_256), 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0:
        if tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)].field_0 - 1 >= tokenOfOwnerByIndex[address(arg1)].field_0:
            revert with 'NH{q', 50
        if tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 - 1 >= tokenOfOwnerByIndex[address(arg1)].field_0:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        if tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 - 1 > -2:
            revert with 'NH{q', 17
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0].field_0 = tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0
        if not tokenOfOwnerByIndex[address(arg1)].field_0:
            revert with 'NH{q', 49
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
        tokenOfOwnerByIndex[address(arg1)].field_0--
        tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0:
        tokenOfOwnerByIndex[address(arg2)].field_0++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0 = tokenOfOwnerByIndex[address(arg2)].field_0
    if stor2[arg3]:
        if stor2[arg3] < 1:
            revert with 'NH{q', 17
        if stor2[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        address(tokenByIndex[stor2[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor2[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor2[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function getAllTokensIdsOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if tokenOfOwnerByIndex[address(arg1)].field_0 > test266151307():
        revert with 'NH{q', 65
    mem[96] = tokenOfOwnerByIndex[address(arg1)].field_0
    mem[64] = (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
    if not tokenOfOwnerByIndex[address(arg1)].field_0:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if var62002 >= var62001:
            mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
            mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
            mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0] = mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0]
            return memory
              from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
               len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
        mem[32] = 0
        if stor[var70002] <= var70001:
            revert with 0, 'EnumerableSet: index out of bounds'
        if var72002 >= stor[var72003]:
            revert with 'NH{q', 50
        mem[0] = var74002
        if var80002 >= tokenOfOwnerByIndex[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[(32 * var80002) + 128] = var80001
        s = var80002
        t = var80001
        idx = var80002
        while idx != -1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx + 1 >= tokenOfOwnerByIndex[address(arg1)].field_0:
                mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
                mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
                idx = 0
                u = 128
                v = (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192
                while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                    mem[v] = mem[u]
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
                   len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
            mem[32] = 0
            if tokenOfOwnerByIndex[address(arg1)].field_0 <= idx + 1:
                revert with 0, 'EnumerableSet: index out of bounds'
            if idx + 1 >= tokenOfOwnerByIndex[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 0)
            if idx + 1 >= tokenOfOwnerByIndex[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = tokenOfOwnerByIndex[address(arg1)][idx].field_512
            s = idx + 1
            t = tokenOfOwnerByIndex[address(arg1)][idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)].field_0]
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if var63002 >= var63001:
            mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
            mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
            mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)].field_0]
            return memory
              from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
               len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
        mem[32] = 0
        if stor[var71002] <= var71001:
            revert with 0, 'EnumerableSet: index out of bounds'
        if var73002 >= stor[var73003]:
            revert with 'NH{q', 50
        mem[0] = var75002
        if var81002 >= tokenOfOwnerByIndex[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[(32 * var81002) + 128] = var81001
        s = var81002
        t = var81001
        idx = var81002
        while idx != -1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx + 1 >= tokenOfOwnerByIndex[address(arg1)].field_0:
                mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
                mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
                idx = 0
                u = 128
                v = (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192
                while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                    mem[v] = mem[u]
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
                   len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
            mem[32] = 0
            if tokenOfOwnerByIndex[address(arg1)].field_0 <= idx + 1:
                revert with 0, 'EnumerableSet: index out of bounds'
            if idx + 1 >= tokenOfOwnerByIndex[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 0)
            if idx + 1 >= tokenOfOwnerByIndex[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = tokenOfOwnerByIndex[address(arg1)][idx].field_512
            s = idx + 1
            t = tokenOfOwnerByIndex[address(arg1)][idx].field_256
            idx = idx + 1
            continue 
    revert with 'NH{q', 17
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not stor2[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    mem[ceil32(arg4.length) + 128] = 41
    if not stor2[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 201 len 23] >> 72,
                    0
    if stor2[arg3] < 1:
        revert with 'NH{q', 17
    if stor2[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if address(tokenByIndex[stor2[arg3] - 1].field_256) != msg.sender:
        if not stor2[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor4[address(stor1[stor2[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor2[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 297 len 23] >> 72,
                    0
    if stor2[arg3] < 1:
        revert with 'NH{q', 17
    if stor2[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if address(tokenByIndex[stor2[arg3] - 1].field_256) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor2[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 393 len 23] >> 72,
                    0
    if stor2[arg3] < 1:
        revert with 'NH{q', 17
    if stor2[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(address(tokenByIndex[stor2[arg3] - 1].field_256), 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0:
        if tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)].field_0 - 1 >= tokenOfOwnerByIndex[address(arg1)].field_0:
            revert with 'NH{q', 50
        if tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 - 1 >= tokenOfOwnerByIndex[address(arg1)].field_0:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        if tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 - 1 > -2:
            revert with 'NH{q', 17
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0].field_0 = tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0
        if not tokenOfOwnerByIndex[address(arg1)].field_0:
            revert with 'NH{q', 49
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
        tokenOfOwnerByIndex[address(arg1)].field_0--
        tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0:
        tokenOfOwnerByIndex[address(arg2)].field_0++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0 = tokenOfOwnerByIndex[address(arg2)].field_0
    if stor2[arg3]:
        if stor2[arg3] < 1:
            revert with 'NH{q', 17
        if stor2[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        address(tokenByIndex[stor2[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor2[arg3] - 1].field_416) = 0
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            mem[ceil32(arg4.length) + 580] = arg4.length
            mem[ceil32(arg4.length) + 612 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(arg4.length) + arg4.length + 612] = 0
            mem[(2 * ceil32(arg4.length)) + 612] = 50
            mem[(2 * ceil32(arg4.length)) + 644 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                mem[(2 * ceil32(arg4.length)) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 712] = 32
                mem[(2 * ceil32(arg4.length)) + 744] = 38
                mem[(2 * ceil32(arg4.length)) + 776] = 'Address: insufficient balance fo'
                mem[(2 * ceil32(arg4.length)) + 808] = 'r call'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 708
                   len ceil32(arg4.length) + 132
            if ext_code.size(arg2) <= 0:
                mem[(2 * ceil32(arg4.length)) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 712] = 32
                mem[(2 * ceil32(arg4.length)) + 744] = 29
                mem[(2 * ceil32(arg4.length)) + 776] = 'Address: call to non-contract'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 708
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 708 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 612 len floor32(ceil32(arg4.length) + 195) + -ceil32(arg4.length) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(4 * ceil32(arg4.length)) + 872] = 0
            call arg2.mem[ceil32(arg4.length) + floor32(ceil32(arg4.length) + 195) + 416 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg4.length)) + 712 len (6 * ceil32(arg4.length)) + 160]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length > 0:
                        revert with arg4[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 694 len 14] >> 144,
                                0
                require arg4.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[(2 * ceil32(arg4.length)) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 694 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[(2 * ceil32(arg4.length)) + 740] == Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 740])
                if Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor2[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            mem[ceil32(arg4.length) + 644] = arg4.length
            mem[ceil32(arg4.length) + 676 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(arg4.length) + arg4.length + 676] = 0
            mem[(2 * ceil32(arg4.length)) + 676] = 50
            mem[(2 * ceil32(arg4.length)) + 708 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                mem[(2 * ceil32(arg4.length)) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 776] = 32
                mem[(2 * ceil32(arg4.length)) + 808] = 38
                mem[(2 * ceil32(arg4.length)) + 840] = 'Address: insufficient balance fo'
                mem[(2 * ceil32(arg4.length)) + 872] = 'r call'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 772
                   len ceil32(arg4.length) + 132
            if ext_code.size(arg2) <= 0:
                mem[(2 * ceil32(arg4.length)) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 776] = 32
                mem[(2 * ceil32(arg4.length)) + 808] = 29
                mem[(2 * ceil32(arg4.length)) + 840] = 'Address: call to non-contract'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 772
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 772 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 676 len floor32(ceil32(arg4.length) + 195) + -ceil32(arg4.length) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(4 * ceil32(arg4.length)) + 936] = 0
            call arg2.mem[ceil32(arg4.length) + floor32(ceil32(arg4.length) + 195) + 480 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg4.length)) + 776 len (6 * ceil32(arg4.length)) + 160]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length > 0:
                        revert with arg4[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 758 len 14] >> 144,
                                0
                require arg4.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[(2 * ceil32(arg4.length)) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 758 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[(2 * ceil32(arg4.length)) + 804] == Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 804])
                if Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not stor2[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
            revert with 'NH{q', 34
        mem[96] = uint255(stor7.length.field_1)
        if not bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor7.length.field_1 % 128:
                if not arg1:
                    return ''
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(uint255(stor7.length.field_1)) + 128] = s
                if s:
                    mem[ceil32(uint255(stor7.length.field_1)) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if idx / 10 and 10 > -1 / idx / 10:
                        revert with 'NH{q', 17
                    if idx < 10 * idx / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(uint255(stor7.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor7.length.field_1))] = mem[128 len ceil32(uint255(stor7.length.field_1))]
                if ceil32(uint255(stor7.length.field_1)) > uint255(stor7.length.field_1):
                    mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192] = 0
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])] = mem[ceil32(uint255(stor7.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128]) > mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                    return ''
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31)] = mem[128 len ceil32(uint255(stor7.length.field_1))], mem[(2 * ceil32(uint255(stor7.length.field_1))) + ceil32(s) + 192 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31) - ceil32(uint255(stor7.length.field_1))]
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 224] = '.json'
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 229] = 32
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 261] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]
                if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]) <= mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]:
                    return Array(len=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192], data=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]), 
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192] + 293] = 0
                return 32, mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 261 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]) + 32], 
            if 31 >= stor7.length.field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
            else:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if not arg1:
                return ''
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(uint255(stor7.length.field_1)) + 128] = s
            if s:
                mem[ceil32(uint255(stor7.length.field_1)) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor7.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor7.length.field_1))] = mem[128 len ceil32(uint255(stor7.length.field_1))]
            if ceil32(uint255(stor7.length.field_1)) > uint255(stor7.length.field_1):
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192] = 0
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])] = mem[ceil32(uint255(stor7.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128]) > mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                return ''
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31)] = mem[128 len ceil32(uint255(stor7.length.field_1))], mem[(2 * ceil32(uint255(stor7.length.field_1))) + ceil32(s) + 192 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31) - ceil32(uint255(stor7.length.field_1))]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 224] = '.json'
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 229] = 32
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 261] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]
            if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]) > mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]:
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192] + 293] = 0
            return Array(len=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192], data=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]), 
        if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
            revert with 'NH{q', 34
        if not uint255(stor7.length.field_1):
            if not arg1:
                return ''
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(uint255(stor7.length.field_1)) + 128] = s
            if s:
                mem[ceil32(uint255(stor7.length.field_1)) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor7.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor7.length.field_1))] = mem[128 len ceil32(uint255(stor7.length.field_1))]
            if ceil32(uint255(stor7.length.field_1)) > uint255(stor7.length.field_1):
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192] = 0
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])] = mem[ceil32(uint255(stor7.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128]) > mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                return ''
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31)] = mem[128 len ceil32(uint255(stor7.length.field_1))], mem[(2 * ceil32(uint255(stor7.length.field_1))) + ceil32(s) + 192 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31) - ceil32(uint255(stor7.length.field_1))]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 224] = '.json'
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 229] = 32
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 261] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]
            if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]) > mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]:
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192] + 293] = 0
            return Array(len=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192], data=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]), 
        if 31 < uint255(stor7.length.field_1):
            mem[128] = uint256(stor7.field_0)
            idx = 128
            s = 0
            while uint255(stor7.length.field_1) + 96 > idx:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not arg1:
                return ''
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(uint255(stor7.length.field_1)) + 128] = s
            if s:
                mem[ceil32(uint255(stor7.length.field_1)) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor7.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor7.length.field_1))] = mem[128 len ceil32(uint255(stor7.length.field_1))]
            if ceil32(uint255(stor7.length.field_1)) > uint255(stor7.length.field_1):
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192] = 0
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])] = mem[ceil32(uint255(stor7.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128]) > mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                return ''
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31)] = mem[128 len ceil32(uint255(stor7.length.field_1))], mem[(2 * ceil32(uint255(stor7.length.field_1))) + ceil32(s) + 192 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31) - ceil32(uint255(stor7.length.field_1))]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 224] = '.json'
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 229] = 32
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 261] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]
            if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]) > mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]:
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192] + 293] = 0
            return Array(len=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192], data=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]), 
        mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
        if not arg1:
            return ''
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(uint255(stor7.length.field_1)) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor7.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor7.length.field_1))] = mem[128 len ceil32(uint255(stor7.length.field_1))]
            if ceil32(uint255(stor7.length.field_1)) <= uint255(stor7.length.field_1):
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])] = mem[ceil32(uint255(stor7.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128]) > mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                    return ''
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 160] = uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128]
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31)] = mem[128 len ceil32(uint255(stor7.length.field_1))], mem[(2 * ceil32(uint255(stor7.length.field_1))) + ceil32(s) + 192 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31) - ceil32(uint255(stor7.length.field_1))]
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 224] = '.json'
                mem[64] = ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 229
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 229] = 32
                if floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31) <= uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                    _10314 = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
                    mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 261] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
                    mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]
                    if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]) <= mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]:
                        return Array(len=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192], data=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]), 
                    mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192] + 293] = 0
                    return 32, mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 160] + 261 len ceil32(_10314) + 32], 
                _10382 = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 261] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]
                if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]) <= mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]:
                    return Array(len=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192], data=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]), 
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192] + 293] = 0
                return 32, mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 160] + 261 len ceil32(_10382) + 32], 
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192] = 0
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])] = mem[ceil32(uint255(stor7.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128]) > mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                return ''
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 160] = uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31)] = mem[128 len ceil32(uint255(stor7.length.field_1))], mem[(2 * ceil32(uint255(stor7.length.field_1))) + ceil32(s) + 192 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31) - ceil32(uint255(stor7.length.field_1))]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 224] = '.json'
            mem[64] = ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 229
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 229] = 32
            if floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31) <= uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                _10316 = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 261] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]
                if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]) <= mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]:
                    return Array(len=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192], data=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]), 
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192] + 293] = 0
                return 32, mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 160] + 261 len ceil32(_10316) + 32], 
            _10384 = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 261] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]
            if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]) <= mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]:
                return Array(len=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192], data=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]), 
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192] + 293] = 0
            return 32, mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 160] + 261 len ceil32(_10384) + 32], 
        mem[ceil32(uint255(stor7.length.field_1)) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(uint255(stor7.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor7.length.field_1))] = mem[128 len ceil32(uint255(stor7.length.field_1))]
        if ceil32(uint255(stor7.length.field_1)) <= uint255(stor7.length.field_1):
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])] = mem[ceil32(uint255(stor7.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128]) > mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                return ''
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 160] = uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31)] = mem[128 len ceil32(uint255(stor7.length.field_1))], mem[(2 * ceil32(uint255(stor7.length.field_1))) + ceil32(s) + 192 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31) - ceil32(uint255(stor7.length.field_1))]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 224] = '.json'
            mem[64] = ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 229
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 229] = 32
            if floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31) <= uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128]:
                _10318 = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 261] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]
                if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]) <= mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]:
                    return Array(len=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192], data=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]), 
                mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192] + 293] = 0
                return 32, mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 160] + 261 len ceil32(_10318) + 32], 
            _10386 = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 261] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]
            if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]) <= mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]:
                return Array(len=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192], data=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]), 
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192] + 293] = 0
            return 32, mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 160] + 261 len ceil32(_10386) + 32], 
        mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192] = 0
        mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])] = mem[ceil32(uint255(stor7.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + 128]) > mem[ceil32(uint255(stor7.length.field_1)) + 128]:
            return ''
        mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 160] = uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128]
        mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31)] = mem[128 len ceil32(uint255(stor7.length.field_1))], mem[(2 * ceil32(uint255(stor7.length.field_1))) + ceil32(s) + 192 len floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31) - ceil32(uint255(stor7.length.field_1))]
        mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 224] = '.json'
        mem[64] = ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 229
        mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 229] = 32
        if floor32(uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 31) <= uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128]:
            _10320 = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 261] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]
            if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]) <= mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]:
                return Array(len=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192], data=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]), 
            mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192] + 293] = 0
            return 32, mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 160] + 261 len ceil32(_10320) + 32], 
        _10388 = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
        mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 261] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]
        mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])] = mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 224 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]
        if ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]) <= mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192]:
            return Array(len=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192], data=mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + 293 len ceil32(mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192])]), 
        mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + (2 * uint255(stor7.length.field_1)) + (2 * mem[ceil32(uint255(stor7.length.field_1)) + 128]) + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + 192] + 293] = 0
        return 32, mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + uint255(stor7.length.field_1) + mem[ceil32(uint255(stor7.length.field_1)) + 128] + mem[ceil32(uint255(stor7.length.field_1)) + ceil32(s) + 160] + 261 len ceil32(_10388) + 32], 
    if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    mem[96] = stor7.length.field_1 % 128
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
            revert with 'NH{q', 34
        if not uint255(stor7.length.field_1):
            if not arg1:
                return ''
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor7.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if idx / 10 and 10 > -1 / idx / 10:
                        revert with 'NH{q', 17
                    if idx < 10 * idx / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor7.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
                if ceil32(stor7.length.field_1 % 128) <= stor7.length.field_1 % 128:
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                        return ''
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
                    mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
                    if floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) <= stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]:
                        _10338 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                        if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                            return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                        return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10338) + 32], 
                    _10410 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                    if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                        return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                    return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10410) + 32], 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192] = 0
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    return ''
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
                mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
                if floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) <= stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    _10340 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                    if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                        return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                    return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10340) + 32], 
                _10412 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                    return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10412) + 32], 
            mem[ceil32(stor7.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor7.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
            if ceil32(stor7.length.field_1 % 128) <= stor7.length.field_1 % 128:
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    return ''
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
                mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
                if floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) <= stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    _10342 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                    if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                        return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                    return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10342) + 32], 
                _10414 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                    return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10414) + 32], 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192] = 0
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                return ''
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
            mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
            if floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) <= stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]:
                _10344 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                    return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10344) + 32], 
            _10416 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
            return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10416) + 32], 
        if 31 < uint255(stor7.length.field_1):
            mem[128] = uint256(stor7.field_0)
            idx = 128
            s = 0
            while uint255(stor7.length.field_1) + 96 > idx:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not arg1:
                return ''
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor7.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if idx / 10 and 10 > -1 / idx / 10:
                        revert with 'NH{q', 17
                    if idx < 10 * idx / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor7.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
                if ceil32(stor7.length.field_1 % 128) <= stor7.length.field_1 % 128:
                    _7998 = mem[ceil32(stor7.length.field_1 % 128) + 128]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                        return ''
                    _10010 = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                    if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                        return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                    return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _7998 + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _7998 + _10010 + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _7998 + 192])]), 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192] = 0
                _8070 = mem[ceil32(stor7.length.field_1 % 128) + 128]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    return ''
                _10011 = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                    return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8070 + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8070 + _10011 + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8070 + 192])]), 
            mem[ceil32(stor7.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor7.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
            if ceil32(stor7.length.field_1 % 128) <= stor7.length.field_1 % 128:
                _7999 = mem[ceil32(stor7.length.field_1 % 128) + 128]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    return ''
                _10012 = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                    return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _7999 + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _7999 + _10012 + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _7999 + 192])]), 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192] = 0
            _8071 = mem[ceil32(stor7.length.field_1 % 128) + 128]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                return ''
            _10013 = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
            return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8071 + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8071 + _10013 + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8071 + 192])]), 
        mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
        if not arg1:
            return ''
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor7.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor7.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
            if ceil32(stor7.length.field_1 % 128) <= stor7.length.field_1 % 128:
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    return ''
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
                mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
                if floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) <= stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    _10346 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                    if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                        return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                    return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10346) + 32], 
                _10422 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                    return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10422) + 32], 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192] = 0
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                return ''
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
            mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
            if floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) <= stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]:
                _10348 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                    return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10348) + 32], 
            _10424 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
            return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10424) + 32], 
        mem[ceil32(stor7.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor7.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
        if ceil32(stor7.length.field_1 % 128) <= stor7.length.field_1 % 128:
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                return ''
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
            mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
            if floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) <= stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]:
                _10350 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                    return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10350) + 32], 
            _10426 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
            return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10426) + 32], 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192] = 0
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
            return ''
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
        mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
        if floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) <= stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]:
            _10352 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
            return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10352) + 32], 
        _10428 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
        if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
            return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
        return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10428) + 32], 
    if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not stor7.length.field_1 % 128:
        if not arg1:
            return ''
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor7.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor7.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
            if ceil32(stor7.length.field_1 % 128) <= stor7.length.field_1 % 128:
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) <= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 224] = '.json'
                    if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]:
                        _10094 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
                        mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
                        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
                        _10354 = mem[_10094]
                        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10094]
                        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10354)] = mem[_10094 + 32 len ceil32(_10354)]
                        if ceil32(_10354) > _10354:
                            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10354 + 293] = 0
                        return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10354) + 32], 
                    _10211 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
                    mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
                    _10430 = mem[_10211]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10211]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10430)] = mem[_10211 + 32 len ceil32(_10430)]
                    if ceil32(_10430) > _10430:
                        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10430 + 293] = 0
                    return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10430) + 32], 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] = 0
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 224] = '.json'
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]:
                    _10095 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
                    mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
                    _10355 = mem[_10095]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10095]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10355)] = mem[_10095 + 32 len ceil32(_10355)]
                    if ceil32(_10355) > _10355:
                        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10355 + 293] = 0
                    return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10355) + 32], 
                _10213 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
                mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
                _10431 = mem[_10213]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10213]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10431)] = mem[_10213 + 32 len ceil32(_10431)]
                if ceil32(_10431) > _10431:
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10431 + 293] = 0
                return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10431) + 32], 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192] = 0
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) <= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 224] = '.json'
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]:
                    _10096 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
                    mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
                    _10356 = mem[_10096]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10096]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10356)] = mem[_10096 + 32 len ceil32(_10356)]
                    if ceil32(_10356) > _10356:
                        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10356 + 293] = 0
                    return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10356) + 32], 
                _10215 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
                mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
                _10432 = mem[_10215]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10215]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10432)] = mem[_10215 + 32 len ceil32(_10432)]
                if ceil32(_10432) > _10432:
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10432 + 293] = 0
                return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10432) + 32], 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] = 0
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 224] = '.json'
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]:
                _10097 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
                mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
                _10357 = mem[_10097]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10097]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10357)] = mem[_10097 + 32 len ceil32(_10357)]
                if ceil32(_10357) > _10357:
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10357 + 293] = 0
                return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10357) + 32], 
            _10217 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
            mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
            _10433 = mem[_10217]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10217]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10433)] = mem[_10217 + 32 len ceil32(_10433)]
            if ceil32(_10433) > _10433:
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10433 + 293] = 0
            return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10433) + 32], 
        mem[ceil32(stor7.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor7.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
        if ceil32(stor7.length.field_1 % 128) <= stor7.length.field_1 % 128:
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) <= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 224] = '.json'
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]:
                    _10098 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
                    mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
                    _10358 = mem[_10098]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10098]
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10358)] = mem[_10098 + 32 len ceil32(_10358)]
                    if ceil32(_10358) > _10358:
                        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10358 + 293] = 0
                    return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10358) + 32], 
                _10219 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
                mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
                _10434 = mem[_10219]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10219]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10434)] = mem[_10219 + 32 len ceil32(_10434)]
                if ceil32(_10434) > _10434:
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10434 + 293] = 0
                return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10434) + 32], 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] = 0
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 224] = '.json'
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]:
                _10099 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
                mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
                _10359 = mem[_10099]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10099]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10359)] = mem[_10099 + 32 len ceil32(_10359)]
                if ceil32(_10359) > _10359:
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10359 + 293] = 0
                return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10359) + 32], 
            _10221 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
            mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
            _10435 = mem[_10221]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10221]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10435)] = mem[_10221 + 32 len ceil32(_10435)]
            if ceil32(_10435) > _10435:
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10435 + 293] = 0
            return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10435) + 32], 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192] = 0
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) <= mem[ceil32(stor7.length.field_1 % 128) + 128]:
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 224] = '.json'
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]:
                _10100 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
                mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
                _10360 = mem[_10100]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10100]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10360)] = mem[_10100 + 32 len ceil32(_10360)]
                if ceil32(_10360) > _10360:
                    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10360 + 293] = 0
                return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10360) + 32], 
            _10223 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
            mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
            _10436 = mem[_10223]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10223]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10436)] = mem[_10223 + 32 len ceil32(_10436)]
            if ceil32(_10436) > _10436:
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10436 + 293] = 0
            return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10436) + 32], 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] = 0
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 224] = '.json'
        if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160]:
            _10101 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
            mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
            _10361 = mem[_10101]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10101]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10361)] = mem[_10101 + 32 len ceil32(_10361)]
            if ceil32(_10361) > _10361:
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10361 + 293] = 0
            return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10361) + 32], 
        _10225 = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192
        mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 229] = 32
        _10437 = mem[_10225]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261] = mem[_10225]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 293 len ceil32(_10437)] = mem[_10225 + 32 len ceil32(_10437)]
        if ceil32(_10437) > _10437:
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + _10437 + 293] = 0
        return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10437) + 32], 
    if 31 < stor7.length.field_1 % 128:
        mem[128] = uint256(stor7.field_0)
        idx = 128
        s = 0
        while stor7.length.field_1 % 128 + 96 > idx:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            return ''
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor7.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if idx / 10 and 10 > -1 / idx / 10:
                    revert with 'NH{q', 17
                if idx < 10 * idx / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor7.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
            if ceil32(stor7.length.field_1 % 128) <= stor7.length.field_1 % 128:
                _8016 = mem[ceil32(stor7.length.field_1 % 128) + 128]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                    return ''
                _10022 = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                    return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8016 + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8016 + _10022 + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8016 + 192])]), 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192] = 0
            _8088 = mem[ceil32(stor7.length.field_1 % 128) + 128]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                return ''
            _10023 = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
            return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8088 + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8088 + _10023 + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8088 + 192])]), 
        mem[ceil32(stor7.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor7.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
        if ceil32(stor7.length.field_1 % 128) <= stor7.length.field_1 % 128:
            _8017 = mem[ceil32(stor7.length.field_1 % 128) + 128]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                return ''
            _10024 = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
            return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8017 + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8017 + _10024 + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8017 + 192])]), 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192] = 0
        _8089 = mem[ceil32(stor7.length.field_1 % 128) + 128]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
            return ''
        _10025 = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
        if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
            return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
        return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8089 + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8089 + _10025 + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + _8089 + 192])]), 
    mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
    if not arg1:
        return ''
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(stor7.length.field_1 % 128) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if idx / 10 and 10 > -1 / idx / 10:
                revert with 'NH{q', 17
            if idx < 10 * idx / 10:
                revert with 'NH{q', 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor7.length.field_1 % 128) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor7.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
        if ceil32(stor7.length.field_1 % 128) <= stor7.length.field_1 % 128:
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
                return ''
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
            mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
            if floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) <= stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]:
                _10362 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
                if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                    return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
                mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
                return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10362) + 32], 
            _10442 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
            return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10442) + 32], 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192] = 0
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
            return ''
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
        mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
        if floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) <= stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]:
            _10364 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
            return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10364) + 32], 
        _10444 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
        if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
            return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
        return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10444) + 32], 
    mem[ceil32(stor7.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if idx / 10 and 10 > -1 / idx / 10:
            revert with 'NH{q', 17
        if idx < 10 * idx / 10:
            revert with 'NH{q', 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor7.length.field_1 % 128) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor7.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
    if ceil32(stor7.length.field_1 % 128) <= stor7.length.field_1 % 128:
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
            return ''
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
        mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
        if floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) <= stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]:
            _10366 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
            if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
                return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
            mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
            return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10366) + 32], 
        _10446 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
        if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
            return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
        return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10446) + 32], 
    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192] = 0
    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])] = mem[ceil32(stor7.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128])]
    if ceil32(mem[ceil32(stor7.length.field_1 % 128) + 128]) > mem[ceil32(stor7.length.field_1 % 128) + 128]:
        return ''
    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] = stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]
    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31)] = mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + ceil32(s) + 192 len floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) - ceil32(stor7.length.field_1 % 128)]
    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 224] = '.json'
    mem[64] = ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229
    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 229] = 32
    if floor32(stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 31) <= stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128]:
        _10368 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
        if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
            return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
        mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
        return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10368) + 32], 
    _10448 = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 261] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]
    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])] = mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]
    if ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]) <= mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192]:
        return Array(len=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192], data=mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + 293 len ceil32(mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192])]), 
    mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + (2 * stor7.length.field_1 % 128) + (2 * mem[ceil32(stor7.length.field_1 % 128) + 128]) + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + 192] + 293] = 0
    return 32, mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + stor7.length.field_1 % 128 + mem[ceil32(stor7.length.field_1 % 128) + 128] + mem[ceil32(stor7.length.field_1 % 128) + ceil32(s) + 160] + 261 len ceil32(_10448) + 32], 
}



}

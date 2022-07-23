contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint16 arg1)
#  - sub_ae969a77(?)
#  - sub_d5f7ec8d(?)
#
const sub_88089f0b(?) = 75 * 10^14

const MAX_PER_MINT = 10

const MAX_SUPPLY = 50000

const MINT_PRICE = 10^16

const PAID_TOKENS = 10000


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
address owner;
uint256 mintedTokens;
uint256 saleStartTime;
uint256 sub_9292caaf;
array of struct stor14;
mapping of struct tokenStats;
mapping of uint256 sub_33bb65a9;
mapping of uint16 sub_27dbf41d;
address sub_3b1be07aAddress;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function saleStartTime() {
    return saleStartTime
}

function sub_27dbf41d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_27dbf41d[address(arg1)]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_33bb65a9(?) {
    require calldata.size - 4 >= 32
    return sub_33bb65a9[arg1]
}

function sub_3b1be07a(?) {
    return sub_3b1be07aAddress
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function mintedTokens() {
    return mintedTokens
}

function owner() {
    return owner
}

function sub_9292caaf(?) {
    return sub_9292caaf
}

function tokenStats(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenStats[arg1].field_0, 
           tokenStats[arg1].field_256,
           tokenStats[arg1].field_512,
           tokenStats[arg1].field_768,
           tokenStats[arg1].field_1024
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function saleOpen() {
    if 0 == saleStartTime:
        return saleStartTime != 0
    return block.timestamp >= saleStartTime
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_5977ac7d(?) {
    if 0 == sub_9292caaf:
        return sub_9292caaf != 0
    if block.timestamp < sub_9292caaf:
        return block.timestamp >= sub_9292caaf
    return block.timestamp <= saleStartTime
}

function sub_9e7b123b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3b1be07aAddress = address(arg1)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdrawBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= eth.balance(this.address)
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSaleStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'ST must be in the future'
    if saleStartTime != 0:
        if block.timestamp >= saleStartTime:
            revert with 0, 'Sale already started'
    saleStartTime = arg1
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

function sub_97692e15(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'ST must be in the future'
    if sub_9292caaf != 0:
        if block.timestamp >= sub_9292caaf:
            if block.timestamp <= saleStartTime:
                revert with 0, 'WL Sale already started'
    sub_9292caaf = arg1
}

function mintCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 10000:
        return 0
    if arg1 <= 10000:
        return 20000 * 10^18
    if arg1 <= 20000:
        return 4000 * 10^18
    if arg1 <= 30000:
        return 60000 * 10^18
    if arg1 <= 35000:
        return 70000 * 10^18
    if arg1 <= 40000:
        return 80000 * 10^18
    if arg1 <= 45000:
        return (25 * 10^18 * 3600)
    if arg1 > 47500:
        return 100000 * 10^18
    return 95000 * 10^18
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_1fdc0bc9(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == uint16(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 18
        sub_27dbf41d[address(cd[((32 * idx) + cd[4] + 36)])] = uint16(cd[36])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while (uint255(stor14.length) * 0.5) + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not stor5[stor2[arg3]][address(msg.sender)]:
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not stor5[stor2[arg3]][address(msg.sender)]:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function baseURI() {
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
            mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + 192] = 0
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
        mem[stor14.length.field_1 + ceil32(stor14.length.field_1) + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not stor5[stor2[arg3]][address(msg.sender)]:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_89d2ac55(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_3b1be07aAddress)
    staticcall sub_3b1be07aAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_33bb65a9[arg1]:
        revert with 0, 'Not enough notSno to upgrade'
    require ext_code.size(this.address)
    staticcall this.address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You don't own this NotOwl.'
    require ext_code.size(sub_3b1be07aAddress)
    call sub_3b1be07aAddress.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_33bb65a9[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_33bb65a9[arg1] > 0x253c8253c8253c8253c8253c8253c8253c8253c8253c8253c8253c8253c8253:
        revert with 0, 17
    sub_33bb65a9[arg1] = 110 * sub_33bb65a9[arg1] / 100
    if block.timestamp and sub_33bb65a9[arg1] > -1 / block.timestamp:
        revert with 0, 17
    if block.timestamp * sub_33bb65a9[arg1] > !arg1:
        revert with 0, 17
    if (block.timestamp * sub_33bb65a9[arg1]) + arg1 > -1:
        revert with 0, 17
    if tx.origin != msg.sender:
        revert with 0, 'Only EOA'
    if block.number < 4:
        revert with 0, 17
    if block.number < 2:
        revert with 0, 17
    if block.number < 3:
        revert with 0, 17
    if block.number < 1:
        revert with 0, 17
    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * sub_33bb65a9[arg1]) + arg1, block.timestamp) % 100 < 20:
        if tokenStats[arg1].field_0 > -3:
            revert with 0, 17
        tokenStats[arg1].field_0 += 2
        if tokenStats[arg1].field_768 > -31:
            revert with 0, 17
        tokenStats[arg1].field_768 += 30
    else:
        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * sub_33bb65a9[arg1]) + arg1, block.timestamp) % 100 < 40:
            if tokenStats[arg1].field_256 > -3:
                revert with 0, 17
            tokenStats[arg1].field_256 += 2
            if tokenStats[arg1].field_512 > -3:
                revert with 0, 17
            tokenStats[arg1].field_512 += 2
        else:
            if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * sub_33bb65a9[arg1]) + arg1, block.timestamp) % 100 < 60:
                if tokenStats[arg1].field_1024 > -2:
                    revert with 0, 17
                tokenStats[arg1].field_1024++
                if tokenStats[arg1].field_0 > -3:
                    revert with 0, 17
                tokenStats[arg1].field_0 += 2
            else:
                if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * sub_33bb65a9[arg1]) + arg1, block.timestamp) % 100 >= 80:
                    if tokenStats[arg1].field_1024 > -2:
                        revert with 0, 17
                    tokenStats[arg1].field_1024++
                    if tokenStats[arg1].field_256 > -3:
                        revert with 0, 17
                    tokenStats[arg1].field_256 += 2
                else:
                    if tokenStats[arg1].field_768 > -31:
                        revert with 0, 17
                    tokenStats[arg1].field_768 += 30
                    if tokenStats[arg1].field_512 > -3:
                        revert with 0, 17
                    tokenStats[arg1].field_512 += 2
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor14.length):
                mem[192] = Mask(248, 8, stor14.length)
            else:
                if bool(stor14.length) != 1:
                    mem[64] = 7
                    _119 = mem[160]
                    mem[39] = mem[160]
                    mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_119) > _119:
                        mem[_119 + 71] = 0
                    return memory
                      from mem[64]
                       len ceil32(_119) + -mem[64] + 71
                idx = 0
                s = 0
                while idx < uint255(stor14.length) * 0.5:
                    mem[idx + 192] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor14.length) * 0.5) + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor14.length) * 0.5) + 193] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor14.length) * 0.5) + 194] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor14.length) * 0.5) + 199] = 32
            mem[(uint255(stor14.length) * 0.5) + 231] = mem[160]
            mem[(uint255(stor14.length) * 0.5) + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + (uint255(stor14.length) * 0.5) + 263] = 0
            return Array(len=mem[160], data=mem[(uint255(stor14.length) * 0.5) + 263 len ceil32(mem[160])])
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor14.length):
            mem[192] = Mask(248, 8, stor14.length)
        else:
            if bool(stor14.length) != 1:
                mem[64] = 7
                _123 = mem[160]
                mem[39] = mem[160]
                mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_123) > _123:
                    mem[_123 + 71] = 0
                return memory
                  from mem[64]
                   len ceil32(_123) + -mem[64] + 71
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[idx + 192] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor14.length.field_1 + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        mem[stor14.length.field_1 + 193] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor14.length.field_1 + 194] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[stor14.length.field_1 + 199] = 32
        mem[stor14.length.field_1 + 231] = mem[160]
        mem[stor14.length.field_1 + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor14.length.field_1 + 263] = 0
        return Array(len=mem[160], data=mem[stor14.length.field_1 + 263 len ceil32(mem[160])])
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _356 = mem[64]
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor14.length):
                mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                mem[mem[64] + (uint255(stor14.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _386 = mem[96]
                mem[mem[64] + (uint255(stor14.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _596 = mem[64]
                    mem[64] = _386 + _356 + (uint255(stor14.length) * 0.5) + 38
                    mem[_386 + _356 + (uint255(stor14.length) * 0.5) + 38] = 32
                    _632 = mem[_596]
                    mem[_386 + _356 + (uint255(stor14.length) * 0.5) + 70] = mem[_596]
                    mem[_386 + _356 + (uint255(stor14.length) * 0.5) + 102 len ceil32(_632)] = mem[_596 + 32 len ceil32(_632)]
                    if ceil32(_632) > _632:
                        mem[_632 + _386 + _356 + (uint255(stor14.length) * 0.5) + 102] = 0
                    return 32, mem[_386 + _356 + (uint255(stor14.length) * 0.5) + 70 len ceil32(_632) + 32]
                _597 = mem[64]
                mem[64] = _386 + _356 + (uint255(stor14.length) * 0.5) + 38
                mem[_386 + _356 + (uint255(stor14.length) * 0.5) + 38] = 32
                _633 = mem[_597]
                mem[_386 + _356 + (uint255(stor14.length) * 0.5) + 70] = mem[_597]
                mem[_386 + _356 + (uint255(stor14.length) * 0.5) + 102 len ceil32(_633)] = mem[_597 + 32 len ceil32(_633)]
                if ceil32(_633) > _633:
                    mem[_633 + _386 + _356 + (uint255(stor14.length) * 0.5) + 102] = 0
                return 32, mem[_386 + _356 + (uint255(stor14.length) * 0.5) + 70 len ceil32(_633) + 32]
            if bool(stor14.length) != 1:
                mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                _392 = mem[96]
                mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_392 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_392) <= _392:
                    _598 = mem[64]
                    mem[64] = _392 + 6
                    mem[_392 + 6] = 32
                    _634 = mem[_598]
                    mem[_392 + 38] = mem[_598]
                    mem[_392 + 70 len ceil32(_634)] = mem[_598 + 32 len ceil32(_634)]
                    if ceil32(_634) > _634:
                        mem[_634 + _392 + 70] = 0
                    return 32, mem[_392 + 38 len ceil32(_634) + 32]
                _599 = mem[64]
                mem[64] = _392 + 6
                mem[_392 + 6] = 32
                _635 = mem[_599]
                mem[_392 + 38] = mem[_599]
                mem[_392 + 70 len ceil32(_635)] = mem[_599 + 32 len ceil32(_635)]
                if ceil32(_635) > _635:
                    mem[_635 + _392 + 70] = 0
                return 32, mem[_392 + 38 len ceil32(_635) + 32]
            mem[0] = 14
            idx = 0
            s = 0
            while idx < uint255(stor14.length) * 0.5:
                mem[idx + _356 + 32] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_356 + (uint255(stor14.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _584 = mem[96]
            mem[_356 + (uint255(stor14.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_584 + _356 + (uint255(stor14.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_584) <= _584:
                _796 = mem[64]
                mem[64] = _584 + _356 + (uint255(stor14.length) * 0.5) + 38
                mem[_584 + _356 + (uint255(stor14.length) * 0.5) + 38] = 32
                _812 = mem[_796]
                mem[_584 + _356 + (uint255(stor14.length) * 0.5) + 70] = mem[_796]
                mem[_584 + _356 + (uint255(stor14.length) * 0.5) + 102 len ceil32(_812)] = mem[_796 + 32 len ceil32(_812)]
                if ceil32(_812) > _812:
                    mem[_812 + _584 + _356 + (uint255(stor14.length) * 0.5) + 102] = 0
                return 32, mem[_584 + _356 + (uint255(stor14.length) * 0.5) + 70 len ceil32(_812) + 32]
            _797 = mem[64]
            mem[64] = _584 + _356 + (uint255(stor14.length) * 0.5) + 38
            mem[_584 + _356 + (uint255(stor14.length) * 0.5) + 38] = 32
            _813 = mem[_797]
            mem[_584 + _356 + (uint255(stor14.length) * 0.5) + 70] = mem[_797]
            mem[_584 + _356 + (uint255(stor14.length) * 0.5) + 102 len ceil32(_813)] = mem[_797 + 32 len ceil32(_813)]
            if ceil32(_813) > _813:
                mem[_813 + _584 + _356 + (uint255(stor14.length) * 0.5) + 102] = 0
            return 32, mem[_584 + _356 + (uint255(stor14.length) * 0.5) + 70 len ceil32(_813) + 32]
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            mem[mem[64] + stor14.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _393 = mem[96]
            mem[_356 + stor14.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_393 + _356 + stor14.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_393) <= _393:
                _600 = mem[64]
                mem[64] = _393 + _356 + stor14.length.field_1 + 38
                mem[_393 + _356 + stor14.length.field_1 + 38] = 32
                _636 = mem[_600]
                mem[_393 + _356 + stor14.length.field_1 + 70] = mem[_600]
                mem[_393 + _356 + stor14.length.field_1 + 102 len ceil32(_636)] = mem[_600 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_636 + _393 + _356 + stor14.length.field_1 + 102] = 0
                return 32, mem[_393 + _356 + stor14.length.field_1 + 70 len ceil32(_636) + 32]
            _601 = mem[64]
            mem[64] = _393 + _356 + stor14.length.field_1 + 38
            mem[_393 + _356 + stor14.length.field_1 + 38] = 32
            _637 = mem[_601]
            mem[_393 + _356 + stor14.length.field_1 + 70] = mem[_601]
            mem[_393 + _356 + stor14.length.field_1 + 102 len ceil32(_637)] = mem[_601 + 32 len ceil32(_637)]
            if ceil32(_637) > _637:
                mem[_637 + _393 + _356 + stor14.length.field_1 + 102] = 0
            return 32, mem[_393 + _356 + stor14.length.field_1 + 70 len ceil32(_637) + 32]
        if bool(stor14.length) != 1:
            mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _398 = mem[96]
            mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_398 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_398) <= _398:
                _602 = mem[64]
                mem[64] = _398 + 6
                mem[_398 + 6] = 32
                _638 = mem[_602]
                mem[_398 + 38] = mem[_602]
                mem[_398 + 70 len ceil32(_638)] = mem[_602 + 32 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_638 + _398 + 70] = 0
                return 32, mem[_398 + 38 len ceil32(_638) + 32]
            _603 = mem[64]
            mem[64] = _398 + 6
            mem[_398 + 6] = 32
            _639 = mem[_603]
            mem[_398 + 38] = mem[_603]
            mem[_398 + 70 len ceil32(_639)] = mem[_603 + 32 len ceil32(_639)]
            if ceil32(_639) > _639:
                mem[_639 + _398 + 70] = 0
            return 32, mem[_398 + 38 len ceil32(_639) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < stor14.length.field_1:
            mem[idx + _356 + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_356 + stor14.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        _585 = mem[96]
        mem[_356 + stor14.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_585 + _356 + stor14.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_585) <= _585:
            _798 = mem[64]
            mem[64] = _585 + _356 + stor14.length.field_1 + 38
            mem[_585 + _356 + stor14.length.field_1 + 38] = 32
            _814 = mem[_798]
            mem[_585 + _356 + stor14.length.field_1 + 70] = mem[_798]
            mem[_585 + _356 + stor14.length.field_1 + 102 len ceil32(_814)] = mem[_798 + 32 len ceil32(_814)]
            if ceil32(_814) > _814:
                mem[_814 + _585 + _356 + stor14.length.field_1 + 102] = 0
            return 32, mem[_585 + _356 + stor14.length.field_1 + 70 len ceil32(_814) + 32]
        _799 = mem[64]
        mem[64] = _585 + _356 + stor14.length.field_1 + 38
        mem[_585 + _356 + stor14.length.field_1 + 38] = 32
        _815 = mem[_799]
        mem[_585 + _356 + stor14.length.field_1 + 70] = mem[_799]
        mem[_585 + _356 + stor14.length.field_1 + 102 len ceil32(_815)] = mem[_799 + 32 len ceil32(_815)]
        if ceil32(_815) > _815:
            mem[_815 + _585 + _356 + stor14.length.field_1 + 102] = 0
        return 32, mem[_585 + _356 + stor14.length.field_1 + 70 len ceil32(_815) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _357 = mem[64]
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            mem[mem[64] + (uint255(stor14.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _387 = mem[96]
            mem[mem[64] + (uint255(stor14.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _604 = mem[64]
                mem[64] = _387 + _357 + (uint255(stor14.length) * 0.5) + 38
                mem[_387 + _357 + (uint255(stor14.length) * 0.5) + 38] = 32
                _640 = mem[_604]
                mem[_387 + _357 + (uint255(stor14.length) * 0.5) + 70] = mem[_604]
                mem[_387 + _357 + (uint255(stor14.length) * 0.5) + 102 len ceil32(_640)] = mem[_604 + 32 len ceil32(_640)]
                if ceil32(_640) > _640:
                    mem[_640 + _387 + _357 + (uint255(stor14.length) * 0.5) + 102] = 0
                return 32, mem[_387 + _357 + (uint255(stor14.length) * 0.5) + 70 len ceil32(_640) + 32]
            _605 = mem[64]
            mem[64] = _387 + _357 + (uint255(stor14.length) * 0.5) + 38
            mem[_387 + _357 + (uint255(stor14.length) * 0.5) + 38] = 32
            _641 = mem[_605]
            mem[_387 + _357 + (uint255(stor14.length) * 0.5) + 70] = mem[_605]
            mem[_387 + _357 + (uint255(stor14.length) * 0.5) + 102 len ceil32(_641)] = mem[_605 + 32 len ceil32(_641)]
            if ceil32(_641) > _641:
                mem[_641 + _387 + _357 + (uint255(stor14.length) * 0.5) + 102] = 0
            return 32, mem[_387 + _357 + (uint255(stor14.length) * 0.5) + 70 len ceil32(_641) + 32]
        if bool(stor14.length) != 1:
            mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _395 = mem[96]
            mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_395 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_395) <= _395:
                _606 = mem[64]
                mem[64] = _395 + 6
                mem[_395 + 6] = 32
                _642 = mem[_606]
                mem[_395 + 38] = mem[_606]
                mem[_395 + 70 len ceil32(_642)] = mem[_606 + 32 len ceil32(_642)]
                if ceil32(_642) > _642:
                    mem[_642 + _395 + 70] = 0
                return 32, mem[_395 + 38 len ceil32(_642) + 32]
            _607 = mem[64]
            mem[64] = _395 + 6
            mem[_395 + 6] = 32
            _643 = mem[_607]
            mem[_395 + 38] = mem[_607]
            mem[_395 + 70 len ceil32(_643)] = mem[_607 + 32 len ceil32(_643)]
            if ceil32(_643) > _643:
                mem[_643 + _395 + 70] = 0
            return 32, mem[_395 + 38 len ceil32(_643) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < uint255(stor14.length) * 0.5:
            mem[idx + _357 + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_357 + (uint255(stor14.length) * 0.5) + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        _586 = mem[96]
        mem[_357 + (uint255(stor14.length) * 0.5) + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_586 + _357 + (uint255(stor14.length) * 0.5) + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_586) <= _586:
            _800 = mem[64]
            mem[64] = _586 + _357 + (uint255(stor14.length) * 0.5) + 38
            mem[_586 + _357 + (uint255(stor14.length) * 0.5) + 38] = 32
            _816 = mem[_800]
            mem[_586 + _357 + (uint255(stor14.length) * 0.5) + 70] = mem[_800]
            mem[_586 + _357 + (uint255(stor14.length) * 0.5) + 102 len ceil32(_816)] = mem[_800 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_816 + _586 + _357 + (uint255(stor14.length) * 0.5) + 102] = 0
            return 32, mem[_586 + _357 + (uint255(stor14.length) * 0.5) + 70 len ceil32(_816) + 32]
        _801 = mem[64]
        mem[64] = _586 + _357 + (uint255(stor14.length) * 0.5) + 38
        mem[_586 + _357 + (uint255(stor14.length) * 0.5) + 38] = 32
        _817 = mem[_801]
        mem[_586 + _357 + (uint255(stor14.length) * 0.5) + 70] = mem[_801]
        mem[_586 + _357 + (uint255(stor14.length) * 0.5) + 102 len ceil32(_817)] = mem[_801 + 32 len ceil32(_817)]
        if ceil32(_817) > _817:
            mem[_817 + _586 + _357 + (uint255(stor14.length) * 0.5) + 102] = 0
        return 32, mem[_586 + _357 + (uint255(stor14.length) * 0.5) + 70 len ceil32(_817) + 32]
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor14.length):
        mem[mem[64] + 32] = Mask(248, 8, stor14.length)
        mem[mem[64] + stor14.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        _396 = mem[96]
        mem[_357 + stor14.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_396 + _357 + stor14.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_396) <= _396:
            _608 = mem[64]
            mem[64] = _396 + _357 + stor14.length.field_1 + 38
            mem[_396 + _357 + stor14.length.field_1 + 38] = 32
            _644 = mem[_608]
            mem[_396 + _357 + stor14.length.field_1 + 70] = mem[_608]
            mem[_396 + _357 + stor14.length.field_1 + 102 len ceil32(_644)] = mem[_608 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_644 + _396 + _357 + stor14.length.field_1 + 102] = 0
            return 32, mem[_396 + _357 + stor14.length.field_1 + 70 len ceil32(_644) + 32]
        _609 = mem[64]
        mem[64] = _396 + _357 + stor14.length.field_1 + 38
        mem[_396 + _357 + stor14.length.field_1 + 38] = 32
        _645 = mem[_609]
        mem[_396 + _357 + stor14.length.field_1 + 70] = mem[_609]
        mem[_396 + _357 + stor14.length.field_1 + 102 len ceil32(_645)] = mem[_609 + 32 len ceil32(_645)]
        if ceil32(_645) > _645:
            mem[_645 + _396 + _357 + stor14.length.field_1 + 102] = 0
        return 32, mem[_396 + _357 + stor14.length.field_1 + 70 len ceil32(_645) + 32]
    if bool(stor14.length) != 1:
        mem[0] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        _399 = mem[96]
        mem[1 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_399 + 1] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_399) <= _399:
            _610 = mem[64]
            mem[64] = _399 + 6
            mem[_399 + 6] = 32
            _646 = mem[_610]
            mem[_399 + 38] = mem[_610]
            mem[_399 + 70 len ceil32(_646)] = mem[_610 + 32 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_646 + _399 + 70] = 0
            return 32, mem[_399 + 38 len ceil32(_646) + 32]
        _611 = mem[64]
        mem[64] = _399 + 6
        mem[_399 + 6] = 32
        _647 = mem[_611]
        mem[_399 + 38] = mem[_611]
        mem[_399 + 70 len ceil32(_647)] = mem[_611 + 32 len ceil32(_647)]
        if ceil32(_647) > _647:
            mem[_647 + _399 + 70] = 0
        return 32, mem[_399 + 38 len ceil32(_647) + 32]
    mem[0] = 14
    idx = 0
    s = 0
    while idx < stor14.length.field_1:
        mem[idx + _357 + 32] = stor14[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    mem[_357 + stor14.length.field_1 + 32] = 0x2f00000000000000000000000000000000000000000000000000000000000000
    _587 = mem[96]
    mem[_357 + stor14.length.field_1 + 33 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_587 + _357 + stor14.length.field_1 + 33] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    if ceil32(_587) <= _587:
        _802 = mem[64]
        mem[64] = _587 + _357 + stor14.length.field_1 + 38
        mem[_587 + _357 + stor14.length.field_1 + 38] = 32
        _818 = mem[_802]
        mem[_587 + _357 + stor14.length.field_1 + 70] = mem[_802]
        mem[_587 + _357 + stor14.length.field_1 + 102 len ceil32(_818)] = mem[_802 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_818 + _587 + _357 + stor14.length.field_1 + 102] = 0
        return 32, mem[_587 + _357 + stor14.length.field_1 + 70 len ceil32(_818) + 32]
    _803 = mem[64]
    mem[64] = _587 + _357 + stor14.length.field_1 + 38
    mem[_587 + _357 + stor14.length.field_1 + 38] = 32
    _819 = mem[_803]
    mem[_587 + _357 + stor14.length.field_1 + 70] = mem[_803]
    mem[_587 + _357 + stor14.length.field_1 + 102 len ceil32(_819)] = mem[_803 + 32 len ceil32(_819)]
    if ceil32(_819) > _819:
        mem[_819 + _587 + _357 + stor14.length.field_1 + 102] = 0
    return 32, mem[_587 + _357 + stor14.length.field_1 + 70 len ceil32(_819) + 32]
}



}

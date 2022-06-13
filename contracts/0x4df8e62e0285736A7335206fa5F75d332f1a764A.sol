contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint16 arg1)
#  - sub_ae969a77(?)
#  - sub_d5f7ec8d(?)
#
const sub_88089f0b(?) = 15 * 10^17

const MAX_PER_MINT = 10

const MAX_SUPPLY = 50000

const MINT_PRICE = 2 * 10^18

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
mapping of uint256 stor17;
mapping of uint16 sub_27dbf41d;
address sub_fac9ac2eAddress;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_33bb65a9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_33bb65a9[arg1]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg1 == arg1
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

function sub_fac9ac2e(?) {
    return sub_fac9ac2eAddress
}

function _fallback() payable {
    revert
}

function saleOpen() {
    if not saleStartTime:
        return not not saleStartTime
    return block.timestamp >= saleStartTime
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_5977ac7d(?) {
    if not sub_9292caaf:
        return not not sub_9292caaf
    if block.timestamp < sub_9292caaf:
        return block.timestamp >= sub_9292caaf
    return block.timestamp <= saleStartTime
}

function sub_a8417955(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fac9ac2eAddress = address(arg1)
}

function mintCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 10000:
        return 0
    if arg1 <= 20000:
        return 20000 * 10^18
    if arg1 > 40000:
        return 100000 * 10^18
    return 40000 * 10^18
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

function setSaleStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'ST must be in the future'
    if saleStartTime:
        if block.timestamp >= saleStartTime:
            revert with 0, 'Sale already started'
    saleStartTime = arg1
}

function withdrawBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= eth.balance(this.address)
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_97692e15(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'ST must be in the future'
    if sub_9292caaf:
        if block.timestamp >= sub_9292caaf:
            if block.timestamp <= saleStartTime:
                revert with 0, 'WL Sale already started'
    sub_9292caaf = arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
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
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
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
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
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
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
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
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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

function baseURI() {
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
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
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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

function sub_1be673d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_fac9ac2eAddress)
    staticcall sub_fac9ac2eAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_33bb65a9[arg1]:
        revert with 0, 'Not enough pebbles to upgrade'
    require ext_code.size(this.address)
    staticcall this.address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You don't own this Rock.'
    require ext_code.size(sub_fac9ac2eAddress)
    call sub_fac9ac2eAddress.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_33bb65a9[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_33bb65a9[arg1] and 110 > -1 / sub_33bb65a9[arg1]:
        revert with 'NH{q', 17
    sub_33bb65a9[arg1] = 110 * sub_33bb65a9[arg1] / 100
    if block.timestamp and sub_33bb65a9[arg1] > -1 / block.timestamp:
        revert with 'NH{q', 17
    if block.timestamp * sub_33bb65a9[arg1] > -arg1 - 1:
        revert with 'NH{q', 17
    if (block.timestamp * sub_33bb65a9[arg1]) + arg1 > -1:
        revert with 'NH{q', 17
    if msg.sender != tx.origin:
        revert with 0, 'Only EOA'
    if block.number < 4:
        revert with 'NH{q', 17
    if block.number < 2:
        revert with 'NH{q', 17
    if block.number < 3:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * sub_33bb65a9[arg1]) + arg1, block.timestamp) % 100 < 20:
        if tokenStats[arg1].field_0 > -3:
            revert with 'NH{q', 17
        tokenStats[arg1].field_0 += 2
        if tokenStats[arg1].field_768 > -31:
            revert with 'NH{q', 17
        tokenStats[arg1].field_768 += 30
    else:
        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * sub_33bb65a9[arg1]) + arg1, block.timestamp) % 100 < 40:
            if tokenStats[arg1].field_256 > -3:
                revert with 'NH{q', 17
            tokenStats[arg1].field_256 += 2
            if tokenStats[arg1].field_512 > -3:
                revert with 'NH{q', 17
            tokenStats[arg1].field_512 += 2
        else:
            if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * sub_33bb65a9[arg1]) + arg1, block.timestamp) % 100 < 60:
                if tokenStats[arg1].field_1024 > -2:
                    revert with 'NH{q', 17
                tokenStats[arg1].field_1024++
                if tokenStats[arg1].field_0 > -3:
                    revert with 'NH{q', 17
                tokenStats[arg1].field_0 += 2
            else:
                if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), (block.timestamp * sub_33bb65a9[arg1]) + arg1, block.timestamp) % 100 >= 80:
                    if tokenStats[arg1].field_1024 > -2:
                        revert with 'NH{q', 17
                    tokenStats[arg1].field_1024++
                    if tokenStats[arg1].field_256 > -3:
                        revert with 'NH{q', 17
                    tokenStats[arg1].field_256 += 2
                else:
                    if tokenStats[arg1].field_768 > -31:
                        revert with 'NH{q', 17
                    tokenStats[arg1].field_768 += 30
                    if tokenStats[arg1].field_512 > -3:
                        revert with 'NH{q', 17
                    tokenStats[arg1].field_512 += 2
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 17
    if stor17[arg1] == 2:
        if not arg1:
            mem[96] = 1
            mem[128] = '0'
            if bool(stor14.length):
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[192] = Mask(248, 8, stor14.length)
                else:
                    if bool(stor14.length) != 1:
                        mem[64] = 19
                        _368 = mem[160]
                        mem[51] = mem[160]
                        mem[83 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_368) > _368:
                            mem[_368 + 83] = 0
                        return memory
                          from mem[64]
                           len ceil32(_368) + -mem[64] + 83
                    idx = 0
                    s = 0
                    while idx < stor14.length.field_1:
                        mem[idx + 192] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[stor14.length.field_1 + 192] = '/diamond-rock'
                mem[stor14.length.field_1 + 205] = '0'
                mem[stor14.length.field_1 + 206] = '.json'
                mem[stor14.length.field_1 + 211] = 32
                mem[stor14.length.field_1 + 243] = mem[160]
                mem[stor14.length.field_1 + 275 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[stor14.length.field_1 + mem[160] + 275] = 0
                return Array(len=mem[160], data=mem[stor14.length.field_1 + 275 len ceil32(mem[160])])
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[192] = Mask(248, 8, stor14.length)
            else:
                if bool(stor14.length) != 1:
                    mem[64] = 19
                    _371 = mem[160]
                    mem[51] = mem[160]
                    mem[83 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_371) > _371:
                        mem[_371 + 83] = 0
                    return memory
                      from mem[64]
                       len ceil32(_371) + -mem[64] + 83
                idx = 0
                s = 0
                while idx < stor14.length.field_1:
                    mem[idx + 192] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor14.length.field_1 + 192] = '/diamond-rock'
            mem[stor14.length.field_1 + 205] = '0'
            mem[stor14.length.field_1 + 206] = '.json'
            mem[stor14.length.field_1 + 211] = 32
            mem[stor14.length.field_1 + 243] = mem[160]
            mem[stor14.length.field_1 + 275 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor14.length.field_1 + mem[160] + 275] = 0
            return Array(len=mem[160], data=mem[stor14.length.field_1 + 275 len ceil32(mem[160])])
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
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1072 = mem[64]
            if bool(stor14.length):
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                    mem[mem[64] + stor14.length.field_1 + 32] = '/diamond-rock'
                    _1182 = mem[96]
                    mem[_1072 + stor14.length.field_1 + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1072 + stor14.length.field_1 + _1182 + 45] = '.json'
                    if ceil32(_1182) <= _1182:
                        _1800 = mem[64]
                        mem[64] = _1072 + stor14.length.field_1 + _1182 + 50
                        mem[_1072 + stor14.length.field_1 + _1182 + 50] = 32
                        _1900 = mem[_1800]
                        mem[_1072 + stor14.length.field_1 + _1182 + 82] = mem[_1800]
                        mem[_1072 + stor14.length.field_1 + _1182 + 114 len ceil32(_1900)] = mem[_1800 + 32 len ceil32(_1900)]
                        if ceil32(_1900) > _1900:
                            mem[_1072 + stor14.length.field_1 + _1182 + _1900 + 114] = 0
                        return 32, mem[_1072 + stor14.length.field_1 + _1182 + 82 len ceil32(_1900) + 32]
                    _1828 = mem[64]
                    mem[64] = _1072 + stor14.length.field_1 + _1182 + 50
                    mem[_1072 + stor14.length.field_1 + _1182 + 50] = 32
                    _1932 = mem[_1828]
                    mem[_1072 + stor14.length.field_1 + _1182 + 82] = mem[_1828]
                    mem[_1072 + stor14.length.field_1 + _1182 + 114 len ceil32(_1932)] = mem[_1828 + 32 len ceil32(_1932)]
                    if ceil32(_1932) > _1932:
                        mem[_1072 + stor14.length.field_1 + _1182 + _1932 + 114] = 0
                    return 32, mem[_1072 + stor14.length.field_1 + _1182 + 82 len ceil32(_1932) + 32]
                if bool(stor14.length) != 1:
                    mem[0] = '/diamond-rock'
                    _1200 = mem[96]
                    mem[13 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1200 + 13] = '.json'
                    if ceil32(_1200) <= _1200:
                        _1802 = mem[64]
                        mem[64] = _1200 + 18
                        mem[_1200 + 18] = 32
                        _1901 = mem[_1802]
                        mem[_1200 + 50] = mem[_1802]
                        mem[_1200 + 82 len ceil32(_1901)] = mem[_1802 + 32 len ceil32(_1901)]
                        if ceil32(_1901) > _1901:
                            mem[_1200 + _1901 + 82] = 0
                        return 32, mem[_1200 + 50 len ceil32(_1901) + 32]
                    _1829 = mem[64]
                    mem[64] = _1200 + 18
                    mem[_1200 + 18] = 32
                    _1934 = mem[_1829]
                    mem[_1200 + 50] = mem[_1829]
                    mem[_1200 + 82 len ceil32(_1934)] = mem[_1829 + 32 len ceil32(_1934)]
                    if ceil32(_1934) > _1934:
                        mem[_1200 + _1934 + 82] = 0
                    return 32, mem[_1200 + 50 len ceil32(_1934) + 32]
                mem[0] = 14
                idx = 0
                s = 0
                while idx < stor14.length.field_1:
                    mem[_1072 + idx + 32] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_1072 + stor14.length.field_1 + 32] = '/diamond-rock'
                _1801 = mem[96]
                mem[_1072 + stor14.length.field_1 + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1072 + stor14.length.field_1 + _1801 + 45] = '.json'
                if ceil32(_1801) <= _1801:
                    _2396 = mem[64]
                    mem[64] = _1072 + stor14.length.field_1 + _1801 + 50
                    mem[_1072 + stor14.length.field_1 + _1801 + 50] = 32
                    _2444 = mem[_2396]
                    mem[_1072 + stor14.length.field_1 + _1801 + 82] = mem[_2396]
                    mem[_1072 + stor14.length.field_1 + _1801 + 114 len ceil32(_2444)] = mem[_2396 + 32 len ceil32(_2444)]
                    if ceil32(_2444) > _2444:
                        mem[_1072 + stor14.length.field_1 + _1801 + _2444 + 114] = 0
                    return 32, mem[_1072 + stor14.length.field_1 + _1801 + 82 len ceil32(_2444) + 32]
                _2408 = mem[64]
                mem[64] = _1072 + stor14.length.field_1 + _1801 + 50
                mem[_1072 + stor14.length.field_1 + _1801 + 50] = 32
                _2456 = mem[_2408]
                mem[_1072 + stor14.length.field_1 + _1801 + 82] = mem[_2408]
                mem[_1072 + stor14.length.field_1 + _1801 + 114 len ceil32(_2456)] = mem[_2408 + 32 len ceil32(_2456)]
                if ceil32(_2456) > _2456:
                    mem[_1072 + stor14.length.field_1 + _1801 + _2456 + 114] = 0
                return 32, mem[_1072 + stor14.length.field_1 + _1801 + 82 len ceil32(_2456) + 32]
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                mem[mem[64] + stor14.length.field_1 + 32] = '/diamond-rock'
                _1201 = mem[96]
                mem[mem[64] + stor14.length.field_1 + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor14.length.field_1 + mem[96] + 45] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _1803 = mem[64]
                    mem[64] = _1072 + stor14.length.field_1 + _1201 + 50
                    mem[_1072 + stor14.length.field_1 + _1201 + 50] = 32
                    _1902 = mem[_1803]
                    mem[_1072 + stor14.length.field_1 + _1201 + 82] = mem[_1803]
                    mem[_1072 + stor14.length.field_1 + _1201 + 114 len ceil32(_1902)] = mem[_1803 + 32 len ceil32(_1902)]
                    if ceil32(_1902) > _1902:
                        mem[_1072 + stor14.length.field_1 + _1201 + _1902 + 114] = 0
                    return 32, mem[_1072 + stor14.length.field_1 + _1201 + 82 len ceil32(_1902) + 32]
                _1830 = mem[64]
                mem[64] = _1072 + stor14.length.field_1 + _1201 + 50
                mem[_1072 + stor14.length.field_1 + _1201 + 50] = 32
                _1935 = mem[_1830]
                mem[_1072 + stor14.length.field_1 + _1201 + 82] = mem[_1830]
                mem[_1072 + stor14.length.field_1 + _1201 + 114 len ceil32(_1935)] = mem[_1830 + 32 len ceil32(_1935)]
                if ceil32(_1935) > _1935:
                    mem[_1072 + stor14.length.field_1 + _1201 + _1935 + 114] = 0
                return 32, mem[_1072 + stor14.length.field_1 + _1201 + 82 len ceil32(_1935) + 32]
            if bool(stor14.length) != 1:
                mem[0] = '/diamond-rock'
                _1210 = mem[96]
                mem[13 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1210 + 13] = '.json'
                if ceil32(_1210) <= _1210:
                    _1805 = mem[64]
                    mem[64] = _1210 + 18
                    mem[_1210 + 18] = 32
                    _1903 = mem[_1805]
                    mem[_1210 + 50] = mem[_1805]
                    mem[_1210 + 82 len ceil32(_1903)] = mem[_1805 + 32 len ceil32(_1903)]
                    if ceil32(_1903) > _1903:
                        mem[_1210 + _1903 + 82] = 0
                    return 32, mem[_1210 + 50 len ceil32(_1903) + 32]
                _1831 = mem[64]
                mem[64] = _1210 + 18
                mem[_1210 + 18] = 32
                _1937 = mem[_1831]
                mem[_1210 + 50] = mem[_1831]
                mem[_1210 + 82 len ceil32(_1937)] = mem[_1831 + 32 len ceil32(_1937)]
                if ceil32(_1937) > _1937:
                    mem[_1210 + _1937 + 82] = 0
                return 32, mem[_1210 + 50 len ceil32(_1937) + 32]
            mem[0] = 14
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[_1072 + idx + 32] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1072 + stor14.length.field_1 + 32] = '/diamond-rock'
            _1804 = mem[96]
            mem[_1072 + stor14.length.field_1 + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1072 + stor14.length.field_1 + _1804 + 45] = '.json'
            if ceil32(_1804) <= _1804:
                _2397 = mem[64]
                mem[64] = _1072 + stor14.length.field_1 + _1804 + 50
                mem[_1072 + stor14.length.field_1 + _1804 + 50] = 32
                _2445 = mem[_2397]
                mem[_1072 + stor14.length.field_1 + _1804 + 82] = mem[_2397]
                mem[_1072 + stor14.length.field_1 + _1804 + 114 len ceil32(_2445)] = mem[_2397 + 32 len ceil32(_2445)]
                if ceil32(_2445) > _2445:
                    mem[_1072 + stor14.length.field_1 + _1804 + _2445 + 114] = 0
                return 32, mem[_1072 + stor14.length.field_1 + _1804 + 82 len ceil32(_2445) + 32]
            _2409 = mem[64]
            mem[64] = _1072 + stor14.length.field_1 + _1804 + 50
            mem[_1072 + stor14.length.field_1 + _1804 + 50] = 32
            _2457 = mem[_2409]
            mem[_1072 + stor14.length.field_1 + _1804 + 82] = mem[_2409]
            mem[_1072 + stor14.length.field_1 + _1804 + 114 len ceil32(_2457)] = mem[_2409 + 32 len ceil32(_2457)]
            if ceil32(_2457) > _2457:
                mem[_1072 + stor14.length.field_1 + _1804 + _2457 + 114] = 0
            return 32, mem[_1072 + stor14.length.field_1 + _1804 + 82 len ceil32(_2457) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1073 = mem[64]
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                mem[mem[64] + stor14.length.field_1 + 32] = '/diamond-rock'
                _1184 = mem[96]
                mem[_1073 + stor14.length.field_1 + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1073 + stor14.length.field_1 + _1184 + 45] = '.json'
                if ceil32(_1184) <= _1184:
                    _1806 = mem[64]
                    mem[64] = _1073 + stor14.length.field_1 + _1184 + 50
                    mem[_1073 + stor14.length.field_1 + _1184 + 50] = 32
                    _1904 = mem[_1806]
                    mem[_1073 + stor14.length.field_1 + _1184 + 82] = mem[_1806]
                    mem[_1073 + stor14.length.field_1 + _1184 + 114 len ceil32(_1904)] = mem[_1806 + 32 len ceil32(_1904)]
                    if ceil32(_1904) > _1904:
                        mem[_1073 + stor14.length.field_1 + _1184 + _1904 + 114] = 0
                    return 32, mem[_1073 + stor14.length.field_1 + _1184 + 82 len ceil32(_1904) + 32]
                _1832 = mem[64]
                mem[64] = _1073 + stor14.length.field_1 + _1184 + 50
                mem[_1073 + stor14.length.field_1 + _1184 + 50] = 32
                _1938 = mem[_1832]
                mem[_1073 + stor14.length.field_1 + _1184 + 82] = mem[_1832]
                mem[_1073 + stor14.length.field_1 + _1184 + 114 len ceil32(_1938)] = mem[_1832 + 32 len ceil32(_1938)]
                if ceil32(_1938) > _1938:
                    mem[_1073 + stor14.length.field_1 + _1184 + _1938 + 114] = 0
                return 32, mem[_1073 + stor14.length.field_1 + _1184 + 82 len ceil32(_1938) + 32]
            if bool(stor14.length) != 1:
                mem[0] = '/diamond-rock'
                _1202 = mem[96]
                mem[13 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1202 + 13] = '.json'
                if ceil32(_1202) <= _1202:
                    _1808 = mem[64]
                    mem[64] = _1202 + 18
                    mem[_1202 + 18] = 32
                    _1905 = mem[_1808]
                    mem[_1202 + 50] = mem[_1808]
                    mem[_1202 + 82 len ceil32(_1905)] = mem[_1808 + 32 len ceil32(_1905)]
                    if ceil32(_1905) > _1905:
                        mem[_1202 + _1905 + 82] = 0
                    return 32, mem[_1202 + 50 len ceil32(_1905) + 32]
                _1833 = mem[64]
                mem[64] = _1202 + 18
                mem[_1202 + 18] = 32
                _1940 = mem[_1833]
                mem[_1202 + 50] = mem[_1833]
                mem[_1202 + 82 len ceil32(_1940)] = mem[_1833 + 32 len ceil32(_1940)]
                if ceil32(_1940) > _1940:
                    mem[_1202 + _1940 + 82] = 0
                return 32, mem[_1202 + 50 len ceil32(_1940) + 32]
            mem[0] = 14
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[_1073 + idx + 32] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1073 + stor14.length.field_1 + 32] = '/diamond-rock'
            _1807 = mem[96]
            mem[_1073 + stor14.length.field_1 + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1073 + stor14.length.field_1 + _1807 + 45] = '.json'
            if ceil32(_1807) <= _1807:
                _2398 = mem[64]
                mem[64] = _1073 + stor14.length.field_1 + _1807 + 50
                mem[_1073 + stor14.length.field_1 + _1807 + 50] = 32
                _2446 = mem[_2398]
                mem[_1073 + stor14.length.field_1 + _1807 + 82] = mem[_2398]
                mem[_1073 + stor14.length.field_1 + _1807 + 114 len ceil32(_2446)] = mem[_2398 + 32 len ceil32(_2446)]
                if ceil32(_2446) > _2446:
                    mem[_1073 + stor14.length.field_1 + _1807 + _2446 + 114] = 0
                return 32, mem[_1073 + stor14.length.field_1 + _1807 + 82 len ceil32(_2446) + 32]
            _2410 = mem[64]
            mem[64] = _1073 + stor14.length.field_1 + _1807 + 50
            mem[_1073 + stor14.length.field_1 + _1807 + 50] = 32
            _2458 = mem[_2410]
            mem[_1073 + stor14.length.field_1 + _1807 + 82] = mem[_2410]
            mem[_1073 + stor14.length.field_1 + _1807 + 114 len ceil32(_2458)] = mem[_2410 + 32 len ceil32(_2458)]
            if ceil32(_2458) > _2458:
                mem[_1073 + stor14.length.field_1 + _1807 + _2458 + 114] = 0
            return 32, mem[_1073 + stor14.length.field_1 + _1807 + 82 len ceil32(_2458) + 32]
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            mem[mem[64] + stor14.length.field_1 + 32] = '/diamond-rock'
            _1203 = mem[96]
            mem[mem[64] + stor14.length.field_1 + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor14.length.field_1 + mem[96] + 45] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _1809 = mem[64]
                mem[64] = _1073 + stor14.length.field_1 + _1203 + 50
                mem[_1073 + stor14.length.field_1 + _1203 + 50] = 32
                _1906 = mem[_1809]
                mem[_1073 + stor14.length.field_1 + _1203 + 82] = mem[_1809]
                mem[_1073 + stor14.length.field_1 + _1203 + 114 len ceil32(_1906)] = mem[_1809 + 32 len ceil32(_1906)]
                if ceil32(_1906) > _1906:
                    mem[_1073 + stor14.length.field_1 + _1203 + _1906 + 114] = 0
                return 32, mem[_1073 + stor14.length.field_1 + _1203 + 82 len ceil32(_1906) + 32]
            _1834 = mem[64]
            mem[64] = _1073 + stor14.length.field_1 + _1203 + 50
            mem[_1073 + stor14.length.field_1 + _1203 + 50] = 32
            _1941 = mem[_1834]
            mem[_1073 + stor14.length.field_1 + _1203 + 82] = mem[_1834]
            mem[_1073 + stor14.length.field_1 + _1203 + 114 len ceil32(_1941)] = mem[_1834 + 32 len ceil32(_1941)]
            if ceil32(_1941) > _1941:
                mem[_1073 + stor14.length.field_1 + _1203 + _1941 + 114] = 0
            return 32, mem[_1073 + stor14.length.field_1 + _1203 + 82 len ceil32(_1941) + 32]
        if bool(stor14.length) != 1:
            mem[0] = '/diamond-rock'
            _1211 = mem[96]
            mem[13 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1211 + 13] = '.json'
            if ceil32(_1211) <= _1211:
                _1811 = mem[64]
                mem[64] = _1211 + 18
                mem[_1211 + 18] = 32
                _1907 = mem[_1811]
                mem[_1211 + 50] = mem[_1811]
                mem[_1211 + 82 len ceil32(_1907)] = mem[_1811 + 32 len ceil32(_1907)]
                if ceil32(_1907) > _1907:
                    mem[_1211 + _1907 + 82] = 0
                return 32, mem[_1211 + 50 len ceil32(_1907) + 32]
            _1835 = mem[64]
            mem[64] = _1211 + 18
            mem[_1211 + 18] = 32
            _1943 = mem[_1835]
            mem[_1211 + 50] = mem[_1835]
            mem[_1211 + 82 len ceil32(_1943)] = mem[_1835 + 32 len ceil32(_1943)]
            if ceil32(_1943) > _1943:
                mem[_1211 + _1943 + 82] = 0
            return 32, mem[_1211 + 50 len ceil32(_1943) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < stor14.length.field_1:
            mem[_1073 + idx + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1073 + stor14.length.field_1 + 32] = '/diamond-rock'
        _1810 = mem[96]
        mem[_1073 + stor14.length.field_1 + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1073 + stor14.length.field_1 + _1810 + 45] = '.json'
        if ceil32(_1810) <= _1810:
            _2399 = mem[64]
            mem[64] = _1073 + stor14.length.field_1 + _1810 + 50
            mem[_1073 + stor14.length.field_1 + _1810 + 50] = 32
            _2447 = mem[_2399]
            mem[_1073 + stor14.length.field_1 + _1810 + 82] = mem[_2399]
            mem[_1073 + stor14.length.field_1 + _1810 + 114 len ceil32(_2447)] = mem[_2399 + 32 len ceil32(_2447)]
            if ceil32(_2447) > _2447:
                mem[_1073 + stor14.length.field_1 + _1810 + _2447 + 114] = 0
            return 32, mem[_1073 + stor14.length.field_1 + _1810 + 82 len ceil32(_2447) + 32]
        _2411 = mem[64]
        mem[64] = _1073 + stor14.length.field_1 + _1810 + 50
        mem[_1073 + stor14.length.field_1 + _1810 + 50] = 32
        _2459 = mem[_2411]
        mem[_1073 + stor14.length.field_1 + _1810 + 82] = mem[_2411]
        mem[_1073 + stor14.length.field_1 + _1810 + 114 len ceil32(_2459)] = mem[_2411 + 32 len ceil32(_2459)]
        if ceil32(_2459) > _2459:
            mem[_1073 + stor14.length.field_1 + _1810 + _2459 + 114] = 0
        return 32, mem[_1073 + stor14.length.field_1 + _1810 + 82 len ceil32(_2459) + 32]
    mem[0] = arg1
    mem[32] = 17
    if stor17[arg1] != 1:
        if not arg1:
            mem[96] = 1
            mem[128] = '0'
            if bool(stor14.length):
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[192] = Mask(248, 8, stor14.length)
                else:
                    if bool(stor14.length) != 1:
                        mem[64] = 11
                        _356 = mem[160]
                        mem[43] = mem[160]
                        mem[75 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_356) > _356:
                            mem[_356 + 75] = 0
                        return memory
                          from mem[64]
                           len ceil32(_356) + -mem[64] + 75
                    idx = 0
                    s = 0
                    while idx < stor14.length.field_1:
                        mem[idx + 192] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[stor14.length.field_1 + 192] = '/rock'
                mem[stor14.length.field_1 + 197] = '0'
                mem[stor14.length.field_1 + 198] = '.json'
                mem[stor14.length.field_1 + 203] = 32
                mem[stor14.length.field_1 + 235] = mem[160]
                mem[stor14.length.field_1 + 267 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[stor14.length.field_1 + mem[160] + 267] = 0
                return Array(len=mem[160], data=mem[stor14.length.field_1 + 267 len ceil32(mem[160])])
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[192] = Mask(248, 8, stor14.length)
            else:
                if bool(stor14.length) != 1:
                    mem[64] = 11
                    _359 = mem[160]
                    mem[43] = mem[160]
                    mem[75 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_359) > _359:
                        mem[_359 + 75] = 0
                    return memory
                      from mem[64]
                       len ceil32(_359) + -mem[64] + 75
                idx = 0
                s = 0
                while idx < stor14.length.field_1:
                    mem[idx + 192] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor14.length.field_1 + 192] = '/rock'
            mem[stor14.length.field_1 + 197] = '0'
            mem[stor14.length.field_1 + 198] = '.json'
            mem[stor14.length.field_1 + 203] = 32
            mem[stor14.length.field_1 + 235] = mem[160]
            mem[stor14.length.field_1 + 267 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor14.length.field_1 + mem[160] + 267] = 0
            return Array(len=mem[160], data=mem[stor14.length.field_1 + 267 len ceil32(mem[160])])
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
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1068 = mem[64]
            if bool(stor14.length):
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                    mem[mem[64] + stor14.length.field_1 + 32] = '/rock'
                    _1170 = mem[96]
                    mem[_1068 + stor14.length.field_1 + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1068 + stor14.length.field_1 + _1170 + 37] = '.json'
                    if ceil32(_1170) <= _1170:
                        _1776 = mem[64]
                        mem[64] = _1068 + stor14.length.field_1 + _1170 + 42
                        mem[_1068 + stor14.length.field_1 + _1170 + 42] = 32
                        _1884 = mem[_1776]
                        mem[_1068 + stor14.length.field_1 + _1170 + 74] = mem[_1776]
                        mem[_1068 + stor14.length.field_1 + _1170 + 106 len ceil32(_1884)] = mem[_1776 + 32 len ceil32(_1884)]
                        if ceil32(_1884) > _1884:
                            mem[_1068 + stor14.length.field_1 + _1170 + _1884 + 106] = 0
                        return 32, mem[_1068 + stor14.length.field_1 + _1170 + 74 len ceil32(_1884) + 32]
                    _1812 = mem[64]
                    mem[64] = _1068 + stor14.length.field_1 + _1170 + 42
                    mem[_1068 + stor14.length.field_1 + _1170 + 42] = 32
                    _1908 = mem[_1812]
                    mem[_1068 + stor14.length.field_1 + _1170 + 74] = mem[_1812]
                    mem[_1068 + stor14.length.field_1 + _1170 + 106 len ceil32(_1908)] = mem[_1812 + 32 len ceil32(_1908)]
                    if ceil32(_1908) > _1908:
                        mem[_1068 + stor14.length.field_1 + _1170 + _1908 + 106] = 0
                    return 32, mem[_1068 + stor14.length.field_1 + _1170 + 74 len ceil32(_1908) + 32]
                if bool(stor14.length) != 1:
                    mem[0] = '/rock'
                    _1188 = mem[96]
                    mem[5 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1188 + 5] = '.json'
                    if ceil32(_1188) <= _1188:
                        _1778 = mem[64]
                        mem[64] = _1188 + 10
                        mem[_1188 + 10] = 32
                        _1885 = mem[_1778]
                        mem[_1188 + 42] = mem[_1778]
                        mem[_1188 + 74 len ceil32(_1885)] = mem[_1778 + 32 len ceil32(_1885)]
                        if ceil32(_1885) > _1885:
                            mem[_1188 + _1885 + 74] = 0
                        return 32, mem[_1188 + 42 len ceil32(_1885) + 32]
                    _1813 = mem[64]
                    mem[64] = _1188 + 10
                    mem[_1188 + 10] = 32
                    _1910 = mem[_1813]
                    mem[_1188 + 42] = mem[_1813]
                    mem[_1188 + 74 len ceil32(_1910)] = mem[_1813 + 32 len ceil32(_1910)]
                    if ceil32(_1910) > _1910:
                        mem[_1188 + _1910 + 74] = 0
                    return 32, mem[_1188 + 42 len ceil32(_1910) + 32]
                mem[0] = 14
                idx = 0
                s = 0
                while idx < stor14.length.field_1:
                    mem[_1068 + idx + 32] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_1068 + stor14.length.field_1 + 32] = '/rock'
                _1777 = mem[96]
                mem[_1068 + stor14.length.field_1 + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1068 + stor14.length.field_1 + _1777 + 37] = '.json'
                if ceil32(_1777) <= _1777:
                    _2388 = mem[64]
                    mem[64] = _1068 + stor14.length.field_1 + _1777 + 42
                    mem[_1068 + stor14.length.field_1 + _1777 + 42] = 32
                    _2436 = mem[_2388]
                    mem[_1068 + stor14.length.field_1 + _1777 + 74] = mem[_2388]
                    mem[_1068 + stor14.length.field_1 + _1777 + 106 len ceil32(_2436)] = mem[_2388 + 32 len ceil32(_2436)]
                    if ceil32(_2436) > _2436:
                        mem[_1068 + stor14.length.field_1 + _1777 + _2436 + 106] = 0
                    return 32, mem[_1068 + stor14.length.field_1 + _1777 + 74 len ceil32(_2436) + 32]
                _2400 = mem[64]
                mem[64] = _1068 + stor14.length.field_1 + _1777 + 42
                mem[_1068 + stor14.length.field_1 + _1777 + 42] = 32
                _2448 = mem[_2400]
                mem[_1068 + stor14.length.field_1 + _1777 + 74] = mem[_2400]
                mem[_1068 + stor14.length.field_1 + _1777 + 106 len ceil32(_2448)] = mem[_2400 + 32 len ceil32(_2448)]
                if ceil32(_2448) > _2448:
                    mem[_1068 + stor14.length.field_1 + _1777 + _2448 + 106] = 0
                return 32, mem[_1068 + stor14.length.field_1 + _1777 + 74 len ceil32(_2448) + 32]
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                mem[mem[64] + stor14.length.field_1 + 32] = '/rock'
                _1189 = mem[96]
                mem[mem[64] + stor14.length.field_1 + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor14.length.field_1 + mem[96] + 37] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _1779 = mem[64]
                    mem[64] = _1068 + stor14.length.field_1 + _1189 + 42
                    mem[_1068 + stor14.length.field_1 + _1189 + 42] = 32
                    _1886 = mem[_1779]
                    mem[_1068 + stor14.length.field_1 + _1189 + 74] = mem[_1779]
                    mem[_1068 + stor14.length.field_1 + _1189 + 106 len ceil32(_1886)] = mem[_1779 + 32 len ceil32(_1886)]
                    if ceil32(_1886) > _1886:
                        mem[_1068 + stor14.length.field_1 + _1189 + _1886 + 106] = 0
                    return 32, mem[_1068 + stor14.length.field_1 + _1189 + 74 len ceil32(_1886) + 32]
                _1814 = mem[64]
                mem[64] = _1068 + stor14.length.field_1 + _1189 + 42
                mem[_1068 + stor14.length.field_1 + _1189 + 42] = 32
                _1911 = mem[_1814]
                mem[_1068 + stor14.length.field_1 + _1189 + 74] = mem[_1814]
                mem[_1068 + stor14.length.field_1 + _1189 + 106 len ceil32(_1911)] = mem[_1814 + 32 len ceil32(_1911)]
                if ceil32(_1911) > _1911:
                    mem[_1068 + stor14.length.field_1 + _1189 + _1911 + 106] = 0
                return 32, mem[_1068 + stor14.length.field_1 + _1189 + 74 len ceil32(_1911) + 32]
            if bool(stor14.length) != 1:
                mem[0] = '/rock'
                _1206 = mem[96]
                mem[5 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1206 + 5] = '.json'
                if ceil32(_1206) <= _1206:
                    _1781 = mem[64]
                    mem[64] = _1206 + 10
                    mem[_1206 + 10] = 32
                    _1887 = mem[_1781]
                    mem[_1206 + 42] = mem[_1781]
                    mem[_1206 + 74 len ceil32(_1887)] = mem[_1781 + 32 len ceil32(_1887)]
                    if ceil32(_1887) > _1887:
                        mem[_1206 + _1887 + 74] = 0
                    return 32, mem[_1206 + 42 len ceil32(_1887) + 32]
                _1815 = mem[64]
                mem[64] = _1206 + 10
                mem[_1206 + 10] = 32
                _1913 = mem[_1815]
                mem[_1206 + 42] = mem[_1815]
                mem[_1206 + 74 len ceil32(_1913)] = mem[_1815 + 32 len ceil32(_1913)]
                if ceil32(_1913) > _1913:
                    mem[_1206 + _1913 + 74] = 0
                return 32, mem[_1206 + 42 len ceil32(_1913) + 32]
            mem[0] = 14
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[_1068 + idx + 32] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1068 + stor14.length.field_1 + 32] = '/rock'
            _1780 = mem[96]
            mem[_1068 + stor14.length.field_1 + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1068 + stor14.length.field_1 + _1780 + 37] = '.json'
            if ceil32(_1780) <= _1780:
                _2389 = mem[64]
                mem[64] = _1068 + stor14.length.field_1 + _1780 + 42
                mem[_1068 + stor14.length.field_1 + _1780 + 42] = 32
                _2437 = mem[_2389]
                mem[_1068 + stor14.length.field_1 + _1780 + 74] = mem[_2389]
                mem[_1068 + stor14.length.field_1 + _1780 + 106 len ceil32(_2437)] = mem[_2389 + 32 len ceil32(_2437)]
                if ceil32(_2437) > _2437:
                    mem[_1068 + stor14.length.field_1 + _1780 + _2437 + 106] = 0
                return 32, mem[_1068 + stor14.length.field_1 + _1780 + 74 len ceil32(_2437) + 32]
            _2401 = mem[64]
            mem[64] = _1068 + stor14.length.field_1 + _1780 + 42
            mem[_1068 + stor14.length.field_1 + _1780 + 42] = 32
            _2449 = mem[_2401]
            mem[_1068 + stor14.length.field_1 + _1780 + 74] = mem[_2401]
            mem[_1068 + stor14.length.field_1 + _1780 + 106 len ceil32(_2449)] = mem[_2401 + 32 len ceil32(_2449)]
            if ceil32(_2449) > _2449:
                mem[_1068 + stor14.length.field_1 + _1780 + _2449 + 106] = 0
            return 32, mem[_1068 + stor14.length.field_1 + _1780 + 74 len ceil32(_2449) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1069 = mem[64]
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                mem[mem[64] + stor14.length.field_1 + 32] = '/rock'
                _1172 = mem[96]
                mem[_1069 + stor14.length.field_1 + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1069 + stor14.length.field_1 + _1172 + 37] = '.json'
                if ceil32(_1172) <= _1172:
                    _1782 = mem[64]
                    mem[64] = _1069 + stor14.length.field_1 + _1172 + 42
                    mem[_1069 + stor14.length.field_1 + _1172 + 42] = 32
                    _1888 = mem[_1782]
                    mem[_1069 + stor14.length.field_1 + _1172 + 74] = mem[_1782]
                    mem[_1069 + stor14.length.field_1 + _1172 + 106 len ceil32(_1888)] = mem[_1782 + 32 len ceil32(_1888)]
                    if ceil32(_1888) > _1888:
                        mem[_1069 + stor14.length.field_1 + _1172 + _1888 + 106] = 0
                    return 32, mem[_1069 + stor14.length.field_1 + _1172 + 74 len ceil32(_1888) + 32]
                _1816 = mem[64]
                mem[64] = _1069 + stor14.length.field_1 + _1172 + 42
                mem[_1069 + stor14.length.field_1 + _1172 + 42] = 32
                _1914 = mem[_1816]
                mem[_1069 + stor14.length.field_1 + _1172 + 74] = mem[_1816]
                mem[_1069 + stor14.length.field_1 + _1172 + 106 len ceil32(_1914)] = mem[_1816 + 32 len ceil32(_1914)]
                if ceil32(_1914) > _1914:
                    mem[_1069 + stor14.length.field_1 + _1172 + _1914 + 106] = 0
                return 32, mem[_1069 + stor14.length.field_1 + _1172 + 74 len ceil32(_1914) + 32]
            if bool(stor14.length) != 1:
                mem[0] = '/rock'
                _1190 = mem[96]
                mem[5 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1190 + 5] = '.json'
                if ceil32(_1190) <= _1190:
                    _1784 = mem[64]
                    mem[64] = _1190 + 10
                    mem[_1190 + 10] = 32
                    _1889 = mem[_1784]
                    mem[_1190 + 42] = mem[_1784]
                    mem[_1190 + 74 len ceil32(_1889)] = mem[_1784 + 32 len ceil32(_1889)]
                    if ceil32(_1889) > _1889:
                        mem[_1190 + _1889 + 74] = 0
                    return 32, mem[_1190 + 42 len ceil32(_1889) + 32]
                _1817 = mem[64]
                mem[64] = _1190 + 10
                mem[_1190 + 10] = 32
                _1916 = mem[_1817]
                mem[_1190 + 42] = mem[_1817]
                mem[_1190 + 74 len ceil32(_1916)] = mem[_1817 + 32 len ceil32(_1916)]
                if ceil32(_1916) > _1916:
                    mem[_1190 + _1916 + 74] = 0
                return 32, mem[_1190 + 42 len ceil32(_1916) + 32]
            mem[0] = 14
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[_1069 + idx + 32] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1069 + stor14.length.field_1 + 32] = '/rock'
            _1783 = mem[96]
            mem[_1069 + stor14.length.field_1 + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1069 + stor14.length.field_1 + _1783 + 37] = '.json'
            if ceil32(_1783) <= _1783:
                _2390 = mem[64]
                mem[64] = _1069 + stor14.length.field_1 + _1783 + 42
                mem[_1069 + stor14.length.field_1 + _1783 + 42] = 32
                _2438 = mem[_2390]
                mem[_1069 + stor14.length.field_1 + _1783 + 74] = mem[_2390]
                mem[_1069 + stor14.length.field_1 + _1783 + 106 len ceil32(_2438)] = mem[_2390 + 32 len ceil32(_2438)]
                if ceil32(_2438) > _2438:
                    mem[_1069 + stor14.length.field_1 + _1783 + _2438 + 106] = 0
                return 32, mem[_1069 + stor14.length.field_1 + _1783 + 74 len ceil32(_2438) + 32]
            _2402 = mem[64]
            mem[64] = _1069 + stor14.length.field_1 + _1783 + 42
            mem[_1069 + stor14.length.field_1 + _1783 + 42] = 32
            _2450 = mem[_2402]
            mem[_1069 + stor14.length.field_1 + _1783 + 74] = mem[_2402]
            mem[_1069 + stor14.length.field_1 + _1783 + 106 len ceil32(_2450)] = mem[_2402 + 32 len ceil32(_2450)]
            if ceil32(_2450) > _2450:
                mem[_1069 + stor14.length.field_1 + _1783 + _2450 + 106] = 0
            return 32, mem[_1069 + stor14.length.field_1 + _1783 + 74 len ceil32(_2450) + 32]
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            mem[mem[64] + stor14.length.field_1 + 32] = '/rock'
            _1191 = mem[96]
            mem[mem[64] + stor14.length.field_1 + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor14.length.field_1 + mem[96] + 37] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _1785 = mem[64]
                mem[64] = _1069 + stor14.length.field_1 + _1191 + 42
                mem[_1069 + stor14.length.field_1 + _1191 + 42] = 32
                _1890 = mem[_1785]
                mem[_1069 + stor14.length.field_1 + _1191 + 74] = mem[_1785]
                mem[_1069 + stor14.length.field_1 + _1191 + 106 len ceil32(_1890)] = mem[_1785 + 32 len ceil32(_1890)]
                if ceil32(_1890) > _1890:
                    mem[_1069 + stor14.length.field_1 + _1191 + _1890 + 106] = 0
                return 32, mem[_1069 + stor14.length.field_1 + _1191 + 74 len ceil32(_1890) + 32]
            _1818 = mem[64]
            mem[64] = _1069 + stor14.length.field_1 + _1191 + 42
            mem[_1069 + stor14.length.field_1 + _1191 + 42] = 32
            _1917 = mem[_1818]
            mem[_1069 + stor14.length.field_1 + _1191 + 74] = mem[_1818]
            mem[_1069 + stor14.length.field_1 + _1191 + 106 len ceil32(_1917)] = mem[_1818 + 32 len ceil32(_1917)]
            if ceil32(_1917) > _1917:
                mem[_1069 + stor14.length.field_1 + _1191 + _1917 + 106] = 0
            return 32, mem[_1069 + stor14.length.field_1 + _1191 + 74 len ceil32(_1917) + 32]
        if bool(stor14.length) != 1:
            mem[0] = '/rock'
            _1207 = mem[96]
            mem[5 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1207 + 5] = '.json'
            if ceil32(_1207) <= _1207:
                _1787 = mem[64]
                mem[64] = _1207 + 10
                mem[_1207 + 10] = 32
                _1891 = mem[_1787]
                mem[_1207 + 42] = mem[_1787]
                mem[_1207 + 74 len ceil32(_1891)] = mem[_1787 + 32 len ceil32(_1891)]
                if ceil32(_1891) > _1891:
                    mem[_1207 + _1891 + 74] = 0
                return 32, mem[_1207 + 42 len ceil32(_1891) + 32]
            _1819 = mem[64]
            mem[64] = _1207 + 10
            mem[_1207 + 10] = 32
            _1919 = mem[_1819]
            mem[_1207 + 42] = mem[_1819]
            mem[_1207 + 74 len ceil32(_1919)] = mem[_1819 + 32 len ceil32(_1919)]
            if ceil32(_1919) > _1919:
                mem[_1207 + _1919 + 74] = 0
            return 32, mem[_1207 + 42 len ceil32(_1919) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < stor14.length.field_1:
            mem[_1069 + idx + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1069 + stor14.length.field_1 + 32] = '/rock'
        _1786 = mem[96]
        mem[_1069 + stor14.length.field_1 + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1069 + stor14.length.field_1 + _1786 + 37] = '.json'
        if ceil32(_1786) <= _1786:
            _2391 = mem[64]
            mem[64] = _1069 + stor14.length.field_1 + _1786 + 42
            mem[_1069 + stor14.length.field_1 + _1786 + 42] = 32
            _2439 = mem[_2391]
            mem[_1069 + stor14.length.field_1 + _1786 + 74] = mem[_2391]
            mem[_1069 + stor14.length.field_1 + _1786 + 106 len ceil32(_2439)] = mem[_2391 + 32 len ceil32(_2439)]
            if ceil32(_2439) > _2439:
                mem[_1069 + stor14.length.field_1 + _1786 + _2439 + 106] = 0
            return 32, mem[_1069 + stor14.length.field_1 + _1786 + 74 len ceil32(_2439) + 32]
        _2403 = mem[64]
        mem[64] = _1069 + stor14.length.field_1 + _1786 + 42
        mem[_1069 + stor14.length.field_1 + _1786 + 42] = 32
        _2451 = mem[_2403]
        mem[_1069 + stor14.length.field_1 + _1786 + 74] = mem[_2403]
        mem[_1069 + stor14.length.field_1 + _1786 + 106 len ceil32(_2451)] = mem[_2403 + 32 len ceil32(_2451)]
        if ceil32(_2451) > _2451:
            mem[_1069 + stor14.length.field_1 + _1786 + _2451 + 106] = 0
        return 32, mem[_1069 + stor14.length.field_1 + _1786 + 74 len ceil32(_2451) + 32]
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[192] = Mask(248, 8, stor14.length)
            else:
                if bool(stor14.length) != 1:
                    mem[64] = 16
                    _362 = mem[160]
                    mem[48] = mem[160]
                    mem[80 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_362) > _362:
                        mem[_362 + 80] = 0
                    return memory
                      from mem[64]
                       len ceil32(_362) + -mem[64] + 80
                idx = 0
                s = 0
                while idx < stor14.length.field_1:
                    mem[idx + 192] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor14.length.field_1 + 192] = '/gold-rock'
            mem[stor14.length.field_1 + 202] = '0'
            mem[stor14.length.field_1 + 203] = '.json'
            mem[stor14.length.field_1 + 208] = 32
            mem[stor14.length.field_1 + 240] = mem[160]
            mem[stor14.length.field_1 + 272 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor14.length.field_1 + mem[160] + 272] = 0
            return Array(len=mem[160], data=mem[stor14.length.field_1 + 272 len ceil32(mem[160])])
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            mem[192] = Mask(248, 8, stor14.length)
        else:
            if bool(stor14.length) != 1:
                mem[64] = 16
                _365 = mem[160]
                mem[48] = mem[160]
                mem[80 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_365) > _365:
                    mem[_365 + 80] = 0
                return memory
                  from mem[64]
                   len ceil32(_365) + -mem[64] + 80
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[idx + 192] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor14.length.field_1 + 192] = '/gold-rock'
        mem[stor14.length.field_1 + 202] = '0'
        mem[stor14.length.field_1 + 203] = '.json'
        mem[stor14.length.field_1 + 208] = 32
        mem[stor14.length.field_1 + 240] = mem[160]
        mem[stor14.length.field_1 + 272 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor14.length.field_1 + mem[160] + 272] = 0
        return Array(len=mem[160], data=mem[stor14.length.field_1 + 272 len ceil32(mem[160])])
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
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1070 = mem[64]
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                mem[mem[64] + stor14.length.field_1 + 32] = '/gold-rock'
                _1176 = mem[96]
                mem[_1070 + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1070 + stor14.length.field_1 + _1176 + 42] = '.json'
                if ceil32(_1176) <= _1176:
                    _1788 = mem[64]
                    mem[64] = _1070 + stor14.length.field_1 + _1176 + 47
                    mem[_1070 + stor14.length.field_1 + _1176 + 47] = 32
                    _1892 = mem[_1788]
                    mem[_1070 + stor14.length.field_1 + _1176 + 79] = mem[_1788]
                    mem[_1070 + stor14.length.field_1 + _1176 + 111 len ceil32(_1892)] = mem[_1788 + 32 len ceil32(_1892)]
                    if ceil32(_1892) > _1892:
                        mem[_1070 + stor14.length.field_1 + _1176 + _1892 + 111] = 0
                    return 32, mem[_1070 + stor14.length.field_1 + _1176 + 79 len ceil32(_1892) + 32]
                _1820 = mem[64]
                mem[64] = _1070 + stor14.length.field_1 + _1176 + 47
                mem[_1070 + stor14.length.field_1 + _1176 + 47] = 32
                _1920 = mem[_1820]
                mem[_1070 + stor14.length.field_1 + _1176 + 79] = mem[_1820]
                mem[_1070 + stor14.length.field_1 + _1176 + 111 len ceil32(_1920)] = mem[_1820 + 32 len ceil32(_1920)]
                if ceil32(_1920) > _1920:
                    mem[_1070 + stor14.length.field_1 + _1176 + _1920 + 111] = 0
                return 32, mem[_1070 + stor14.length.field_1 + _1176 + 79 len ceil32(_1920) + 32]
            if bool(stor14.length) != 1:
                mem[0] = '/gold-rock'
                _1194 = mem[96]
                mem[10 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1194 + 10] = '.json'
                if ceil32(_1194) <= _1194:
                    _1790 = mem[64]
                    mem[64] = _1194 + 15
                    mem[_1194 + 15] = 32
                    _1893 = mem[_1790]
                    mem[_1194 + 47] = mem[_1790]
                    mem[_1194 + 79 len ceil32(_1893)] = mem[_1790 + 32 len ceil32(_1893)]
                    if ceil32(_1893) > _1893:
                        mem[_1194 + _1893 + 79] = 0
                    return 32, mem[_1194 + 47 len ceil32(_1893) + 32]
                _1821 = mem[64]
                mem[64] = _1194 + 15
                mem[_1194 + 15] = 32
                _1922 = mem[_1821]
                mem[_1194 + 47] = mem[_1821]
                mem[_1194 + 79 len ceil32(_1922)] = mem[_1821 + 32 len ceil32(_1922)]
                if ceil32(_1922) > _1922:
                    mem[_1194 + _1922 + 79] = 0
                return 32, mem[_1194 + 47 len ceil32(_1922) + 32]
            mem[0] = 14
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[_1070 + idx + 32] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1070 + stor14.length.field_1 + 32] = '/gold-rock'
            _1789 = mem[96]
            mem[_1070 + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1070 + stor14.length.field_1 + _1789 + 42] = '.json'
            if ceil32(_1789) <= _1789:
                _2392 = mem[64]
                mem[64] = _1070 + stor14.length.field_1 + _1789 + 47
                mem[_1070 + stor14.length.field_1 + _1789 + 47] = 32
                _2440 = mem[_2392]
                mem[_1070 + stor14.length.field_1 + _1789 + 79] = mem[_2392]
                mem[_1070 + stor14.length.field_1 + _1789 + 111 len ceil32(_2440)] = mem[_2392 + 32 len ceil32(_2440)]
                if ceil32(_2440) > _2440:
                    mem[_1070 + stor14.length.field_1 + _1789 + _2440 + 111] = 0
                return 32, mem[_1070 + stor14.length.field_1 + _1789 + 79 len ceil32(_2440) + 32]
            _2404 = mem[64]
            mem[64] = _1070 + stor14.length.field_1 + _1789 + 47
            mem[_1070 + stor14.length.field_1 + _1789 + 47] = 32
            _2452 = mem[_2404]
            mem[_1070 + stor14.length.field_1 + _1789 + 79] = mem[_2404]
            mem[_1070 + stor14.length.field_1 + _1789 + 111 len ceil32(_2452)] = mem[_2404 + 32 len ceil32(_2452)]
            if ceil32(_2452) > _2452:
                mem[_1070 + stor14.length.field_1 + _1789 + _2452 + 111] = 0
            return 32, mem[_1070 + stor14.length.field_1 + _1789 + 79 len ceil32(_2452) + 32]
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            mem[mem[64] + stor14.length.field_1 + 32] = '/gold-rock'
            _1195 = mem[96]
            mem[mem[64] + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor14.length.field_1 + mem[96] + 42] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _1791 = mem[64]
                mem[64] = _1070 + stor14.length.field_1 + _1195 + 47
                mem[_1070 + stor14.length.field_1 + _1195 + 47] = 32
                _1894 = mem[_1791]
                mem[_1070 + stor14.length.field_1 + _1195 + 79] = mem[_1791]
                mem[_1070 + stor14.length.field_1 + _1195 + 111 len ceil32(_1894)] = mem[_1791 + 32 len ceil32(_1894)]
                if ceil32(_1894) > _1894:
                    mem[_1070 + stor14.length.field_1 + _1195 + _1894 + 111] = 0
                return 32, mem[_1070 + stor14.length.field_1 + _1195 + 79 len ceil32(_1894) + 32]
            _1822 = mem[64]
            mem[64] = _1070 + stor14.length.field_1 + _1195 + 47
            mem[_1070 + stor14.length.field_1 + _1195 + 47] = 32
            _1923 = mem[_1822]
            mem[_1070 + stor14.length.field_1 + _1195 + 79] = mem[_1822]
            mem[_1070 + stor14.length.field_1 + _1195 + 111 len ceil32(_1923)] = mem[_1822 + 32 len ceil32(_1923)]
            if ceil32(_1923) > _1923:
                mem[_1070 + stor14.length.field_1 + _1195 + _1923 + 111] = 0
            return 32, mem[_1070 + stor14.length.field_1 + _1195 + 79 len ceil32(_1923) + 32]
        if bool(stor14.length) != 1:
            mem[0] = '/gold-rock'
            _1208 = mem[96]
            mem[10 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1208 + 10] = '.json'
            if ceil32(_1208) <= _1208:
                _1793 = mem[64]
                mem[64] = _1208 + 15
                mem[_1208 + 15] = 32
                _1895 = mem[_1793]
                mem[_1208 + 47] = mem[_1793]
                mem[_1208 + 79 len ceil32(_1895)] = mem[_1793 + 32 len ceil32(_1895)]
                if ceil32(_1895) > _1895:
                    mem[_1208 + _1895 + 79] = 0
                return 32, mem[_1208 + 47 len ceil32(_1895) + 32]
            _1823 = mem[64]
            mem[64] = _1208 + 15
            mem[_1208 + 15] = 32
            _1925 = mem[_1823]
            mem[_1208 + 47] = mem[_1823]
            mem[_1208 + 79 len ceil32(_1925)] = mem[_1823 + 32 len ceil32(_1925)]
            if ceil32(_1925) > _1925:
                mem[_1208 + _1925 + 79] = 0
            return 32, mem[_1208 + 47 len ceil32(_1925) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < stor14.length.field_1:
            mem[_1070 + idx + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1070 + stor14.length.field_1 + 32] = '/gold-rock'
        _1792 = mem[96]
        mem[_1070 + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1070 + stor14.length.field_1 + _1792 + 42] = '.json'
        if ceil32(_1792) <= _1792:
            _2393 = mem[64]
            mem[64] = _1070 + stor14.length.field_1 + _1792 + 47
            mem[_1070 + stor14.length.field_1 + _1792 + 47] = 32
            _2441 = mem[_2393]
            mem[_1070 + stor14.length.field_1 + _1792 + 79] = mem[_2393]
            mem[_1070 + stor14.length.field_1 + _1792 + 111 len ceil32(_2441)] = mem[_2393 + 32 len ceil32(_2441)]
            if ceil32(_2441) > _2441:
                mem[_1070 + stor14.length.field_1 + _1792 + _2441 + 111] = 0
            return 32, mem[_1070 + stor14.length.field_1 + _1792 + 79 len ceil32(_2441) + 32]
        _2405 = mem[64]
        mem[64] = _1070 + stor14.length.field_1 + _1792 + 47
        mem[_1070 + stor14.length.field_1 + _1792 + 47] = 32
        _2453 = mem[_2405]
        mem[_1070 + stor14.length.field_1 + _1792 + 79] = mem[_2405]
        mem[_1070 + stor14.length.field_1 + _1792 + 111 len ceil32(_2453)] = mem[_2405 + 32 len ceil32(_2453)]
        if ceil32(_2453) > _2453:
            mem[_1070 + stor14.length.field_1 + _1792 + _2453 + 111] = 0
        return 32, mem[_1070 + stor14.length.field_1 + _1792 + 79 len ceil32(_2453) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _1071 = mem[64]
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            mem[mem[64] + stor14.length.field_1 + 32] = '/gold-rock'
            _1178 = mem[96]
            mem[_1071 + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1071 + stor14.length.field_1 + _1178 + 42] = '.json'
            if ceil32(_1178) <= _1178:
                _1794 = mem[64]
                mem[64] = _1071 + stor14.length.field_1 + _1178 + 47
                mem[_1071 + stor14.length.field_1 + _1178 + 47] = 32
                _1896 = mem[_1794]
                mem[_1071 + stor14.length.field_1 + _1178 + 79] = mem[_1794]
                mem[_1071 + stor14.length.field_1 + _1178 + 111 len ceil32(_1896)] = mem[_1794 + 32 len ceil32(_1896)]
                if ceil32(_1896) > _1896:
                    mem[_1071 + stor14.length.field_1 + _1178 + _1896 + 111] = 0
                return 32, mem[_1071 + stor14.length.field_1 + _1178 + 79 len ceil32(_1896) + 32]
            _1824 = mem[64]
            mem[64] = _1071 + stor14.length.field_1 + _1178 + 47
            mem[_1071 + stor14.length.field_1 + _1178 + 47] = 32
            _1926 = mem[_1824]
            mem[_1071 + stor14.length.field_1 + _1178 + 79] = mem[_1824]
            mem[_1071 + stor14.length.field_1 + _1178 + 111 len ceil32(_1926)] = mem[_1824 + 32 len ceil32(_1926)]
            if ceil32(_1926) > _1926:
                mem[_1071 + stor14.length.field_1 + _1178 + _1926 + 111] = 0
            return 32, mem[_1071 + stor14.length.field_1 + _1178 + 79 len ceil32(_1926) + 32]
        if bool(stor14.length) != 1:
            mem[0] = '/gold-rock'
            _1196 = mem[96]
            mem[10 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1196 + 10] = '.json'
            if ceil32(_1196) <= _1196:
                _1796 = mem[64]
                mem[64] = _1196 + 15
                mem[_1196 + 15] = 32
                _1897 = mem[_1796]
                mem[_1196 + 47] = mem[_1796]
                mem[_1196 + 79 len ceil32(_1897)] = mem[_1796 + 32 len ceil32(_1897)]
                if ceil32(_1897) > _1897:
                    mem[_1196 + _1897 + 79] = 0
                return 32, mem[_1196 + 47 len ceil32(_1897) + 32]
            _1825 = mem[64]
            mem[64] = _1196 + 15
            mem[_1196 + 15] = 32
            _1928 = mem[_1825]
            mem[_1196 + 47] = mem[_1825]
            mem[_1196 + 79 len ceil32(_1928)] = mem[_1825 + 32 len ceil32(_1928)]
            if ceil32(_1928) > _1928:
                mem[_1196 + _1928 + 79] = 0
            return 32, mem[_1196 + 47 len ceil32(_1928) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < stor14.length.field_1:
            mem[_1071 + idx + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1071 + stor14.length.field_1 + 32] = '/gold-rock'
        _1795 = mem[96]
        mem[_1071 + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1071 + stor14.length.field_1 + _1795 + 42] = '.json'
        if ceil32(_1795) <= _1795:
            _2394 = mem[64]
            mem[64] = _1071 + stor14.length.field_1 + _1795 + 47
            mem[_1071 + stor14.length.field_1 + _1795 + 47] = 32
            _2442 = mem[_2394]
            mem[_1071 + stor14.length.field_1 + _1795 + 79] = mem[_2394]
            mem[_1071 + stor14.length.field_1 + _1795 + 111 len ceil32(_2442)] = mem[_2394 + 32 len ceil32(_2442)]
            if ceil32(_2442) > _2442:
                mem[_1071 + stor14.length.field_1 + _1795 + _2442 + 111] = 0
            return 32, mem[_1071 + stor14.length.field_1 + _1795 + 79 len ceil32(_2442) + 32]
        _2406 = mem[64]
        mem[64] = _1071 + stor14.length.field_1 + _1795 + 47
        mem[_1071 + stor14.length.field_1 + _1795 + 47] = 32
        _2454 = mem[_2406]
        mem[_1071 + stor14.length.field_1 + _1795 + 79] = mem[_2406]
        mem[_1071 + stor14.length.field_1 + _1795 + 111 len ceil32(_2454)] = mem[_2406 + 32 len ceil32(_2454)]
        if ceil32(_2454) > _2454:
            mem[_1071 + stor14.length.field_1 + _1795 + _2454 + 111] = 0
        return 32, mem[_1071 + stor14.length.field_1 + _1795 + 79 len ceil32(_2454) + 32]
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor14.length):
        mem[mem[64] + 32] = Mask(248, 8, stor14.length)
        mem[mem[64] + stor14.length.field_1 + 32] = '/gold-rock'
        _1197 = mem[96]
        mem[mem[64] + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + stor14.length.field_1 + mem[96] + 42] = '.json'
        if ceil32(mem[96]) <= mem[96]:
            _1797 = mem[64]
            mem[64] = _1071 + stor14.length.field_1 + _1197 + 47
            mem[_1071 + stor14.length.field_1 + _1197 + 47] = 32
            _1898 = mem[_1797]
            mem[_1071 + stor14.length.field_1 + _1197 + 79] = mem[_1797]
            mem[_1071 + stor14.length.field_1 + _1197 + 111 len ceil32(_1898)] = mem[_1797 + 32 len ceil32(_1898)]
            if ceil32(_1898) > _1898:
                mem[_1071 + stor14.length.field_1 + _1197 + _1898 + 111] = 0
            return 32, mem[_1071 + stor14.length.field_1 + _1197 + 79 len ceil32(_1898) + 32]
        _1826 = mem[64]
        mem[64] = _1071 + stor14.length.field_1 + _1197 + 47
        mem[_1071 + stor14.length.field_1 + _1197 + 47] = 32
        _1929 = mem[_1826]
        mem[_1071 + stor14.length.field_1 + _1197 + 79] = mem[_1826]
        mem[_1071 + stor14.length.field_1 + _1197 + 111 len ceil32(_1929)] = mem[_1826 + 32 len ceil32(_1929)]
        if ceil32(_1929) > _1929:
            mem[_1071 + stor14.length.field_1 + _1197 + _1929 + 111] = 0
        return 32, mem[_1071 + stor14.length.field_1 + _1197 + 79 len ceil32(_1929) + 32]
    if bool(stor14.length) != 1:
        mem[0] = '/gold-rock'
        _1209 = mem[96]
        mem[10 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1209 + 10] = '.json'
        if ceil32(_1209) <= _1209:
            _1799 = mem[64]
            mem[64] = _1209 + 15
            mem[_1209 + 15] = 32
            _1899 = mem[_1799]
            mem[_1209 + 47] = mem[_1799]
            mem[_1209 + 79 len ceil32(_1899)] = mem[_1799 + 32 len ceil32(_1899)]
            if ceil32(_1899) > _1899:
                mem[_1209 + _1899 + 79] = 0
            return 32, mem[_1209 + 47 len ceil32(_1899) + 32]
        _1827 = mem[64]
        mem[64] = _1209 + 15
        mem[_1209 + 15] = 32
        _1931 = mem[_1827]
        mem[_1209 + 47] = mem[_1827]
        mem[_1209 + 79 len ceil32(_1931)] = mem[_1827 + 32 len ceil32(_1931)]
        if ceil32(_1931) > _1931:
            mem[_1209 + _1931 + 79] = 0
        return 32, mem[_1209 + 47 len ceil32(_1931) + 32]
    mem[0] = 14
    idx = 0
    s = 0
    while idx < stor14.length.field_1:
        mem[_1071 + idx + 32] = stor14[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    mem[_1071 + stor14.length.field_1 + 32] = '/gold-rock'
    _1798 = mem[96]
    mem[_1071 + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_1071 + stor14.length.field_1 + _1798 + 42] = '.json'
    if ceil32(_1798) <= _1798:
        _2395 = mem[64]
        mem[64] = _1071 + stor14.length.field_1 + _1798 + 47
        mem[_1071 + stor14.length.field_1 + _1798 + 47] = 32
        _2443 = mem[_2395]
        mem[_1071 + stor14.length.field_1 + _1798 + 79] = mem[_2395]
        mem[_1071 + stor14.length.field_1 + _1798 + 111 len ceil32(_2443)] = mem[_2395 + 32 len ceil32(_2443)]
        if ceil32(_2443) > _2443:
            mem[_1071 + stor14.length.field_1 + _1798 + _2443 + 111] = 0
        return 32, mem[_1071 + stor14.length.field_1 + _1798 + 79 len ceil32(_2443) + 32]
    _2407 = mem[64]
    mem[64] = _1071 + stor14.length.field_1 + _1798 + 47
    mem[_1071 + stor14.length.field_1 + _1798 + 47] = 32
    _2455 = mem[_2407]
    mem[_1071 + stor14.length.field_1 + _1798 + 79] = mem[_2407]
    mem[_1071 + stor14.length.field_1 + _1798 + 111 len ceil32(_2455)] = mem[_2407 + 32 len ceil32(_2455)]
    if ceil32(_2455) > _2455:
        mem[_1071 + stor14.length.field_1 + _1798 + _2455 + 111] = 0
    return 32, mem[_1071 + stor14.length.field_1 + _1798 + 79 len ceil32(_2455) + 32]
}



}

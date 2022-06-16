contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint16 arg1)
#  - sub_ae969a77(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - sub_d5f7ec8d(?)
#
const sub_88089f0b(?) = 15 * 10^17

const MAX_PER_MINT = 10

const MAX_SUPPLY = 50000

const MINT_PRICE = 10^14

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

function sub_fac9ac2e(?) {
    return sub_fac9ac2eAddress
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

function sub_a8417955(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fac9ac2eAddress = address(arg1)
}

function mintCost(uint256 arg1) {
    require calldata.size - 4 >= 32
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

function rand() {
    if block.timestamp and tokenByIndex.length > -1 / block.timestamp:
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
    return sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), block.timestamp * tokenByIndex.length, block.timestamp)
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

function sub_1be673d2(?) {
    require calldata.size - 4 >= 32
    staticcall sub_fac9ac2eAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_33bb65a9[arg1]:
        revert with 0, 'Not enough pebbles to upgrade'
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
    mem[0] = arg1
    mem[32] = 17
    if 2 == stor17[arg1]:
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
                        mem[64] = 19
                        _367 = mem[160]
                        mem[51] = mem[160]
                        mem[83 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_367) > _367:
                            mem[_367 + 83] = 0
                        return memory
                          from mem[64]
                           len ceil32(_367) + -mem[64] + 83
                    idx = 0
                    s = 0
                    while idx < uint255(stor14.length) * 0.5:
                        mem[idx + 192] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(uint255(stor14.length) * 0.5) + 192] = '/diamond-rock' << 152
                mem[(uint255(stor14.length) * 0.5) + 205] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor14.length) * 0.5) + 206] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor14.length) * 0.5) + 211] = 32
                mem[(uint255(stor14.length) * 0.5) + 243] = mem[160]
                mem[(uint255(stor14.length) * 0.5) + 275 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[mem[160] + (uint255(stor14.length) * 0.5) + 275] = 0
                return Array(len=mem[160], data=mem[(uint255(stor14.length) * 0.5) + 275 len ceil32(mem[160])])
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 0, 34
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
            mem[stor14.length.field_1 + 192] = '/diamond-rock' << 152
            mem[stor14.length.field_1 + 205] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor14.length.field_1 + 206] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[stor14.length.field_1 + 211] = 32
            mem[stor14.length.field_1 + 243] = mem[160]
            mem[stor14.length.field_1 + 275 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor14.length.field_1 + 275] = 0
            return Array(len=mem[160], data=mem[stor14.length.field_1 + 275 len ceil32(mem[160])])
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
            _1072 = mem[64]
            if bool(stor14.length):
                if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor14.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                    mem[mem[64] + (uint255(stor14.length) * 0.5) + 32] = '/diamond-rock' << 152
                    _1172 = mem[96]
                    mem[mem[64] + (uint255(stor14.length) * 0.5) + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 45] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(mem[96]) <= mem[96]:
                        _1796 = mem[64]
                        mem[64] = _1172 + _1072 + (uint255(stor14.length) * 0.5) + 50
                        mem[_1172 + _1072 + (uint255(stor14.length) * 0.5) + 50] = 32
                        _1928 = mem[_1796]
                        mem[_1172 + _1072 + (uint255(stor14.length) * 0.5) + 82] = mem[_1796]
                        mem[_1172 + _1072 + (uint255(stor14.length) * 0.5) + 114 len ceil32(_1928)] = mem[_1796 + 32 len ceil32(_1928)]
                        if ceil32(_1928) > _1928:
                            mem[_1928 + _1172 + _1072 + (uint255(stor14.length) * 0.5) + 114] = 0
                        return 32, mem[_1172 + _1072 + (uint255(stor14.length) * 0.5) + 82 len ceil32(_1928) + 32]
                    _1797 = mem[64]
                    mem[64] = _1172 + _1072 + (uint255(stor14.length) * 0.5) + 50
                    mem[_1172 + _1072 + (uint255(stor14.length) * 0.5) + 50] = 32
                    _1929 = mem[_1797]
                    mem[_1172 + _1072 + (uint255(stor14.length) * 0.5) + 82] = mem[_1797]
                    mem[_1172 + _1072 + (uint255(stor14.length) * 0.5) + 114 len ceil32(_1929)] = mem[_1797 + 32 len ceil32(_1929)]
                    if ceil32(_1929) > _1929:
                        mem[_1929 + _1172 + _1072 + (uint255(stor14.length) * 0.5) + 114] = 0
                    return 32, mem[_1172 + _1072 + (uint255(stor14.length) * 0.5) + 82 len ceil32(_1929) + 32]
                if bool(stor14.length) != 1:
                    mem[0] = '/diamond-rock' << 152
                    _1196 = mem[96]
                    mem[13 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1196 + 13] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_1196) <= _1196:
                        _1798 = mem[64]
                        mem[64] = _1196 + 18
                        mem[_1196 + 18] = 32
                        _1930 = mem[_1798]
                        mem[_1196 + 50] = mem[_1798]
                        mem[_1196 + 82 len ceil32(_1930)] = mem[_1798 + 32 len ceil32(_1930)]
                        if ceil32(_1930) > _1930:
                            mem[_1930 + _1196 + 82] = 0
                        return 32, mem[_1196 + 50 len ceil32(_1930) + 32]
                    _1799 = mem[64]
                    mem[64] = _1196 + 18
                    mem[_1196 + 18] = 32
                    _1931 = mem[_1799]
                    mem[_1196 + 50] = mem[_1799]
                    mem[_1196 + 82 len ceil32(_1931)] = mem[_1799 + 32 len ceil32(_1931)]
                    if ceil32(_1931) > _1931:
                        mem[_1931 + _1196 + 82] = 0
                    return 32, mem[_1196 + 50 len ceil32(_1931) + 32]
                mem[0] = 14
                idx = 0
                s = 0
                while idx < uint255(stor14.length) * 0.5:
                    mem[idx + _1072 + 32] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_1072 + (uint255(stor14.length) * 0.5) + 32] = '/diamond-rock' << 152
                _1760 = mem[96]
                mem[_1072 + (uint255(stor14.length) * 0.5) + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1760 + _1072 + (uint255(stor14.length) * 0.5) + 45] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1760) <= _1760:
                    _2308 = mem[64]
                    mem[64] = _1760 + _1072 + (uint255(stor14.length) * 0.5) + 50
                    mem[_1760 + _1072 + (uint255(stor14.length) * 0.5) + 50] = 32
                    _2452 = mem[_2308]
                    mem[_1760 + _1072 + (uint255(stor14.length) * 0.5) + 82] = mem[_2308]
                    mem[_1760 + _1072 + (uint255(stor14.length) * 0.5) + 114 len ceil32(_2452)] = mem[_2308 + 32 len ceil32(_2452)]
                    if ceil32(_2452) > _2452:
                        mem[_2452 + _1760 + _1072 + (uint255(stor14.length) * 0.5) + 114] = 0
                    return 32, mem[_1760 + _1072 + (uint255(stor14.length) * 0.5) + 82 len ceil32(_2452) + 32]
                _2309 = mem[64]
                mem[64] = _1760 + _1072 + (uint255(stor14.length) * 0.5) + 50
                mem[_1760 + _1072 + (uint255(stor14.length) * 0.5) + 50] = 32
                _2453 = mem[_2309]
                mem[_1760 + _1072 + (uint255(stor14.length) * 0.5) + 82] = mem[_2309]
                mem[_1760 + _1072 + (uint255(stor14.length) * 0.5) + 114 len ceil32(_2453)] = mem[_2309 + 32 len ceil32(_2453)]
                if ceil32(_2453) > _2453:
                    mem[_2453 + _1760 + _1072 + (uint255(stor14.length) * 0.5) + 114] = 0
                return 32, mem[_1760 + _1072 + (uint255(stor14.length) * 0.5) + 82 len ceil32(_2453) + 32]
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor14.length):
                mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                mem[mem[64] + stor14.length.field_1 + 32] = '/diamond-rock' << 152
                _1197 = mem[96]
                mem[mem[64] + stor14.length.field_1 + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + stor14.length.field_1 + 45] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _1800 = mem[64]
                    mem[64] = _1197 + _1072 + stor14.length.field_1 + 50
                    mem[_1197 + _1072 + stor14.length.field_1 + 50] = 32
                    _1932 = mem[_1800]
                    mem[_1197 + _1072 + stor14.length.field_1 + 82] = mem[_1800]
                    mem[_1197 + _1072 + stor14.length.field_1 + 114 len ceil32(_1932)] = mem[_1800 + 32 len ceil32(_1932)]
                    if ceil32(_1932) > _1932:
                        mem[_1932 + _1197 + _1072 + stor14.length.field_1 + 114] = 0
                    return 32, mem[_1197 + _1072 + stor14.length.field_1 + 82 len ceil32(_1932) + 32]
                _1801 = mem[64]
                mem[64] = _1197 + _1072 + stor14.length.field_1 + 50
                mem[_1197 + _1072 + stor14.length.field_1 + 50] = 32
                _1933 = mem[_1801]
                mem[_1197 + _1072 + stor14.length.field_1 + 82] = mem[_1801]
                mem[_1197 + _1072 + stor14.length.field_1 + 114 len ceil32(_1933)] = mem[_1801 + 32 len ceil32(_1933)]
                if ceil32(_1933) > _1933:
                    mem[_1933 + _1197 + _1072 + stor14.length.field_1 + 114] = 0
                return 32, mem[_1197 + _1072 + stor14.length.field_1 + 82 len ceil32(_1933) + 32]
            if bool(stor14.length) != 1:
                mem[0] = '/diamond-rock' << 152
                _1210 = mem[96]
                mem[13 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1210 + 13] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1210) <= _1210:
                    _1802 = mem[64]
                    mem[64] = _1210 + 18
                    mem[_1210 + 18] = 32
                    _1934 = mem[_1802]
                    mem[_1210 + 50] = mem[_1802]
                    mem[_1210 + 82 len ceil32(_1934)] = mem[_1802 + 32 len ceil32(_1934)]
                    if ceil32(_1934) > _1934:
                        mem[_1934 + _1210 + 82] = 0
                    return 32, mem[_1210 + 50 len ceil32(_1934) + 32]
                _1803 = mem[64]
                mem[64] = _1210 + 18
                mem[_1210 + 18] = 32
                _1935 = mem[_1803]
                mem[_1210 + 50] = mem[_1803]
                mem[_1210 + 82 len ceil32(_1935)] = mem[_1803 + 32 len ceil32(_1935)]
                if ceil32(_1935) > _1935:
                    mem[_1935 + _1210 + 82] = 0
                return 32, mem[_1210 + 50 len ceil32(_1935) + 32]
            mem[0] = 14
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[idx + _1072 + 32] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1072 + stor14.length.field_1 + 32] = '/diamond-rock' << 152
            _1761 = mem[96]
            mem[_1072 + stor14.length.field_1 + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1761 + _1072 + stor14.length.field_1 + 45] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1761) <= _1761:
                _2310 = mem[64]
                mem[64] = _1761 + _1072 + stor14.length.field_1 + 50
                mem[_1761 + _1072 + stor14.length.field_1 + 50] = 32
                _2454 = mem[_2310]
                mem[_1761 + _1072 + stor14.length.field_1 + 82] = mem[_2310]
                mem[_1761 + _1072 + stor14.length.field_1 + 114 len ceil32(_2454)] = mem[_2310 + 32 len ceil32(_2454)]
                if ceil32(_2454) > _2454:
                    mem[_2454 + _1761 + _1072 + stor14.length.field_1 + 114] = 0
                return 32, mem[_1761 + _1072 + stor14.length.field_1 + 82 len ceil32(_2454) + 32]
            _2311 = mem[64]
            mem[64] = _1761 + _1072 + stor14.length.field_1 + 50
            mem[_1761 + _1072 + stor14.length.field_1 + 50] = 32
            _2455 = mem[_2311]
            mem[_1761 + _1072 + stor14.length.field_1 + 82] = mem[_2311]
            mem[_1761 + _1072 + stor14.length.field_1 + 114 len ceil32(_2455)] = mem[_2311 + 32 len ceil32(_2455)]
            if ceil32(_2455) > _2455:
                mem[_2455 + _1761 + _1072 + stor14.length.field_1 + 114] = 0
            return 32, mem[_1761 + _1072 + stor14.length.field_1 + 82 len ceil32(_2455) + 32]
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
        _1073 = mem[64]
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor14.length):
                mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                mem[mem[64] + (uint255(stor14.length) * 0.5) + 32] = '/diamond-rock' << 152
                _1174 = mem[96]
                mem[mem[64] + (uint255(stor14.length) * 0.5) + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 45] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _1804 = mem[64]
                    mem[64] = _1174 + _1073 + (uint255(stor14.length) * 0.5) + 50
                    mem[_1174 + _1073 + (uint255(stor14.length) * 0.5) + 50] = 32
                    _1936 = mem[_1804]
                    mem[_1174 + _1073 + (uint255(stor14.length) * 0.5) + 82] = mem[_1804]
                    mem[_1174 + _1073 + (uint255(stor14.length) * 0.5) + 114 len ceil32(_1936)] = mem[_1804 + 32 len ceil32(_1936)]
                    if ceil32(_1936) > _1936:
                        mem[_1936 + _1174 + _1073 + (uint255(stor14.length) * 0.5) + 114] = 0
                    return 32, mem[_1174 + _1073 + (uint255(stor14.length) * 0.5) + 82 len ceil32(_1936) + 32]
                _1805 = mem[64]
                mem[64] = _1174 + _1073 + (uint255(stor14.length) * 0.5) + 50
                mem[_1174 + _1073 + (uint255(stor14.length) * 0.5) + 50] = 32
                _1937 = mem[_1805]
                mem[_1174 + _1073 + (uint255(stor14.length) * 0.5) + 82] = mem[_1805]
                mem[_1174 + _1073 + (uint255(stor14.length) * 0.5) + 114 len ceil32(_1937)] = mem[_1805 + 32 len ceil32(_1937)]
                if ceil32(_1937) > _1937:
                    mem[_1937 + _1174 + _1073 + (uint255(stor14.length) * 0.5) + 114] = 0
                return 32, mem[_1174 + _1073 + (uint255(stor14.length) * 0.5) + 82 len ceil32(_1937) + 32]
            if bool(stor14.length) != 1:
                mem[0] = '/diamond-rock' << 152
                _1199 = mem[96]
                mem[13 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1199 + 13] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1199) <= _1199:
                    _1806 = mem[64]
                    mem[64] = _1199 + 18
                    mem[_1199 + 18] = 32
                    _1938 = mem[_1806]
                    mem[_1199 + 50] = mem[_1806]
                    mem[_1199 + 82 len ceil32(_1938)] = mem[_1806 + 32 len ceil32(_1938)]
                    if ceil32(_1938) > _1938:
                        mem[_1938 + _1199 + 82] = 0
                    return 32, mem[_1199 + 50 len ceil32(_1938) + 32]
                _1807 = mem[64]
                mem[64] = _1199 + 18
                mem[_1199 + 18] = 32
                _1939 = mem[_1807]
                mem[_1199 + 50] = mem[_1807]
                mem[_1199 + 82 len ceil32(_1939)] = mem[_1807 + 32 len ceil32(_1939)]
                if ceil32(_1939) > _1939:
                    mem[_1939 + _1199 + 82] = 0
                return 32, mem[_1199 + 50 len ceil32(_1939) + 32]
            mem[0] = 14
            idx = 0
            s = 0
            while idx < uint255(stor14.length) * 0.5:
                mem[idx + _1073 + 32] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1073 + (uint255(stor14.length) * 0.5) + 32] = '/diamond-rock' << 152
            _1762 = mem[96]
            mem[_1073 + (uint255(stor14.length) * 0.5) + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1762 + _1073 + (uint255(stor14.length) * 0.5) + 45] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1762) <= _1762:
                _2312 = mem[64]
                mem[64] = _1762 + _1073 + (uint255(stor14.length) * 0.5) + 50
                mem[_1762 + _1073 + (uint255(stor14.length) * 0.5) + 50] = 32
                _2456 = mem[_2312]
                mem[_1762 + _1073 + (uint255(stor14.length) * 0.5) + 82] = mem[_2312]
                mem[_1762 + _1073 + (uint255(stor14.length) * 0.5) + 114 len ceil32(_2456)] = mem[_2312 + 32 len ceil32(_2456)]
                if ceil32(_2456) > _2456:
                    mem[_2456 + _1762 + _1073 + (uint255(stor14.length) * 0.5) + 114] = 0
                return 32, mem[_1762 + _1073 + (uint255(stor14.length) * 0.5) + 82 len ceil32(_2456) + 32]
            _2313 = mem[64]
            mem[64] = _1762 + _1073 + (uint255(stor14.length) * 0.5) + 50
            mem[_1762 + _1073 + (uint255(stor14.length) * 0.5) + 50] = 32
            _2457 = mem[_2313]
            mem[_1762 + _1073 + (uint255(stor14.length) * 0.5) + 82] = mem[_2313]
            mem[_1762 + _1073 + (uint255(stor14.length) * 0.5) + 114 len ceil32(_2457)] = mem[_2313 + 32 len ceil32(_2457)]
            if ceil32(_2457) > _2457:
                mem[_2457 + _1762 + _1073 + (uint255(stor14.length) * 0.5) + 114] = 0
            return 32, mem[_1762 + _1073 + (uint255(stor14.length) * 0.5) + 82 len ceil32(_2457) + 32]
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            mem[mem[64] + stor14.length.field_1 + 32] = '/diamond-rock' << 152
            _1200 = mem[96]
            mem[mem[64] + stor14.length.field_1 + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor14.length.field_1 + 45] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _1808 = mem[64]
                mem[64] = _1200 + _1073 + stor14.length.field_1 + 50
                mem[_1200 + _1073 + stor14.length.field_1 + 50] = 32
                _1940 = mem[_1808]
                mem[_1200 + _1073 + stor14.length.field_1 + 82] = mem[_1808]
                mem[_1200 + _1073 + stor14.length.field_1 + 114 len ceil32(_1940)] = mem[_1808 + 32 len ceil32(_1940)]
                if ceil32(_1940) > _1940:
                    mem[_1940 + _1200 + _1073 + stor14.length.field_1 + 114] = 0
                return 32, mem[_1200 + _1073 + stor14.length.field_1 + 82 len ceil32(_1940) + 32]
            _1809 = mem[64]
            mem[64] = _1200 + _1073 + stor14.length.field_1 + 50
            mem[_1200 + _1073 + stor14.length.field_1 + 50] = 32
            _1941 = mem[_1809]
            mem[_1200 + _1073 + stor14.length.field_1 + 82] = mem[_1809]
            mem[_1200 + _1073 + stor14.length.field_1 + 114 len ceil32(_1941)] = mem[_1809 + 32 len ceil32(_1941)]
            if ceil32(_1941) > _1941:
                mem[_1941 + _1200 + _1073 + stor14.length.field_1 + 114] = 0
            return 32, mem[_1200 + _1073 + stor14.length.field_1 + 82 len ceil32(_1941) + 32]
        if bool(stor14.length) != 1:
            mem[0] = '/diamond-rock' << 152
            _1211 = mem[96]
            mem[13 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1211 + 13] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1211) <= _1211:
                _1810 = mem[64]
                mem[64] = _1211 + 18
                mem[_1211 + 18] = 32
                _1942 = mem[_1810]
                mem[_1211 + 50] = mem[_1810]
                mem[_1211 + 82 len ceil32(_1942)] = mem[_1810 + 32 len ceil32(_1942)]
                if ceil32(_1942) > _1942:
                    mem[_1942 + _1211 + 82] = 0
                return 32, mem[_1211 + 50 len ceil32(_1942) + 32]
            _1811 = mem[64]
            mem[64] = _1211 + 18
            mem[_1211 + 18] = 32
            _1943 = mem[_1811]
            mem[_1211 + 50] = mem[_1811]
            mem[_1211 + 82 len ceil32(_1943)] = mem[_1811 + 32 len ceil32(_1943)]
            if ceil32(_1943) > _1943:
                mem[_1943 + _1211 + 82] = 0
            return 32, mem[_1211 + 50 len ceil32(_1943) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < stor14.length.field_1:
            mem[idx + _1073 + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1073 + stor14.length.field_1 + 32] = '/diamond-rock' << 152
        _1763 = mem[96]
        mem[_1073 + stor14.length.field_1 + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1763 + _1073 + stor14.length.field_1 + 45] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_1763) <= _1763:
            _2314 = mem[64]
            mem[64] = _1763 + _1073 + stor14.length.field_1 + 50
            mem[_1763 + _1073 + stor14.length.field_1 + 50] = 32
            _2458 = mem[_2314]
            mem[_1763 + _1073 + stor14.length.field_1 + 82] = mem[_2314]
            mem[_1763 + _1073 + stor14.length.field_1 + 114 len ceil32(_2458)] = mem[_2314 + 32 len ceil32(_2458)]
            if ceil32(_2458) > _2458:
                mem[_2458 + _1763 + _1073 + stor14.length.field_1 + 114] = 0
            return 32, mem[_1763 + _1073 + stor14.length.field_1 + 82 len ceil32(_2458) + 32]
        _2315 = mem[64]
        mem[64] = _1763 + _1073 + stor14.length.field_1 + 50
        mem[_1763 + _1073 + stor14.length.field_1 + 50] = 32
        _2459 = mem[_2315]
        mem[_1763 + _1073 + stor14.length.field_1 + 82] = mem[_2315]
        mem[_1763 + _1073 + stor14.length.field_1 + 114 len ceil32(_2459)] = mem[_2315 + 32 len ceil32(_2459)]
        if ceil32(_2459) > _2459:
            mem[_2459 + _1763 + _1073 + stor14.length.field_1 + 114] = 0
        return 32, mem[_1763 + _1073 + stor14.length.field_1 + 82 len ceil32(_2459) + 32]
    mem[0] = arg1
    mem[32] = 17
    if stor17[arg1] != 1:
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
                        mem[64] = 11
                        _349 = mem[160]
                        mem[43] = mem[160]
                        mem[75 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_349) > _349:
                            mem[_349 + 75] = 0
                        return memory
                          from mem[64]
                           len ceil32(_349) + -mem[64] + 75
                    idx = 0
                    s = 0
                    while idx < uint255(stor14.length) * 0.5:
                        mem[idx + 192] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(uint255(stor14.length) * 0.5) + 192] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor14.length) * 0.5) + 197] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor14.length) * 0.5) + 198] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor14.length) * 0.5) + 203] = 32
                mem[(uint255(stor14.length) * 0.5) + 235] = mem[160]
                mem[(uint255(stor14.length) * 0.5) + 267 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[mem[160] + (uint255(stor14.length) * 0.5) + 267] = 0
                return Array(len=mem[160], data=mem[(uint255(stor14.length) * 0.5) + 267 len ceil32(mem[160])])
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor14.length):
                mem[192] = Mask(248, 8, stor14.length)
            else:
                if bool(stor14.length) != 1:
                    mem[64] = 11
                    _353 = mem[160]
                    mem[43] = mem[160]
                    mem[75 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_353) > _353:
                        mem[_353 + 75] = 0
                    return memory
                      from mem[64]
                       len ceil32(_353) + -mem[64] + 75
                idx = 0
                s = 0
                while idx < stor14.length.field_1:
                    mem[idx + 192] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor14.length.field_1 + 192] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
            mem[stor14.length.field_1 + 197] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor14.length.field_1 + 198] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[stor14.length.field_1 + 203] = 32
            mem[stor14.length.field_1 + 235] = mem[160]
            mem[stor14.length.field_1 + 267 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor14.length.field_1 + 267] = 0
            return Array(len=mem[160], data=mem[stor14.length.field_1 + 267 len ceil32(mem[160])])
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
            _1068 = mem[64]
            if bool(stor14.length):
                if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor14.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                    mem[mem[64] + (uint255(stor14.length) * 0.5) + 32] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
                    _1164 = mem[96]
                    mem[mem[64] + (uint255(stor14.length) * 0.5) + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 37] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(mem[96]) <= mem[96]:
                        _1764 = mem[64]
                        mem[64] = _1164 + _1068 + (uint255(stor14.length) * 0.5) + 42
                        mem[_1164 + _1068 + (uint255(stor14.length) * 0.5) + 42] = 32
                        _1896 = mem[_1764]
                        mem[_1164 + _1068 + (uint255(stor14.length) * 0.5) + 74] = mem[_1764]
                        mem[_1164 + _1068 + (uint255(stor14.length) * 0.5) + 106 len ceil32(_1896)] = mem[_1764 + 32 len ceil32(_1896)]
                        if ceil32(_1896) > _1896:
                            mem[_1896 + _1164 + _1068 + (uint255(stor14.length) * 0.5) + 106] = 0
                        return 32, mem[_1164 + _1068 + (uint255(stor14.length) * 0.5) + 74 len ceil32(_1896) + 32]
                    _1765 = mem[64]
                    mem[64] = _1164 + _1068 + (uint255(stor14.length) * 0.5) + 42
                    mem[_1164 + _1068 + (uint255(stor14.length) * 0.5) + 42] = 32
                    _1897 = mem[_1765]
                    mem[_1164 + _1068 + (uint255(stor14.length) * 0.5) + 74] = mem[_1765]
                    mem[_1164 + _1068 + (uint255(stor14.length) * 0.5) + 106 len ceil32(_1897)] = mem[_1765 + 32 len ceil32(_1897)]
                    if ceil32(_1897) > _1897:
                        mem[_1897 + _1164 + _1068 + (uint255(stor14.length) * 0.5) + 106] = 0
                    return 32, mem[_1164 + _1068 + (uint255(stor14.length) * 0.5) + 74 len ceil32(_1897) + 32]
                if bool(stor14.length) != 1:
                    mem[0] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
                    _1176 = mem[96]
                    mem[5 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1176 + 5] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_1176) <= _1176:
                        _1766 = mem[64]
                        mem[64] = _1176 + 10
                        mem[_1176 + 10] = 32
                        _1898 = mem[_1766]
                        mem[_1176 + 42] = mem[_1766]
                        mem[_1176 + 74 len ceil32(_1898)] = mem[_1766 + 32 len ceil32(_1898)]
                        if ceil32(_1898) > _1898:
                            mem[_1898 + _1176 + 74] = 0
                        return 32, mem[_1176 + 42 len ceil32(_1898) + 32]
                    _1767 = mem[64]
                    mem[64] = _1176 + 10
                    mem[_1176 + 10] = 32
                    _1899 = mem[_1767]
                    mem[_1176 + 42] = mem[_1767]
                    mem[_1176 + 74 len ceil32(_1899)] = mem[_1767 + 32 len ceil32(_1899)]
                    if ceil32(_1899) > _1899:
                        mem[_1899 + _1176 + 74] = 0
                    return 32, mem[_1176 + 42 len ceil32(_1899) + 32]
                mem[0] = 14
                idx = 0
                s = 0
                while idx < uint255(stor14.length) * 0.5:
                    mem[idx + _1068 + 32] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_1068 + (uint255(stor14.length) * 0.5) + 32] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
                _1752 = mem[96]
                mem[_1068 + (uint255(stor14.length) * 0.5) + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1752 + _1068 + (uint255(stor14.length) * 0.5) + 37] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1752) <= _1752:
                    _2292 = mem[64]
                    mem[64] = _1752 + _1068 + (uint255(stor14.length) * 0.5) + 42
                    mem[_1752 + _1068 + (uint255(stor14.length) * 0.5) + 42] = 32
                    _2436 = mem[_2292]
                    mem[_1752 + _1068 + (uint255(stor14.length) * 0.5) + 74] = mem[_2292]
                    mem[_1752 + _1068 + (uint255(stor14.length) * 0.5) + 106 len ceil32(_2436)] = mem[_2292 + 32 len ceil32(_2436)]
                    if ceil32(_2436) > _2436:
                        mem[_2436 + _1752 + _1068 + (uint255(stor14.length) * 0.5) + 106] = 0
                    return 32, mem[_1752 + _1068 + (uint255(stor14.length) * 0.5) + 74 len ceil32(_2436) + 32]
                _2293 = mem[64]
                mem[64] = _1752 + _1068 + (uint255(stor14.length) * 0.5) + 42
                mem[_1752 + _1068 + (uint255(stor14.length) * 0.5) + 42] = 32
                _2437 = mem[_2293]
                mem[_1752 + _1068 + (uint255(stor14.length) * 0.5) + 74] = mem[_2293]
                mem[_1752 + _1068 + (uint255(stor14.length) * 0.5) + 106 len ceil32(_2437)] = mem[_2293 + 32 len ceil32(_2437)]
                if ceil32(_2437) > _2437:
                    mem[_2437 + _1752 + _1068 + (uint255(stor14.length) * 0.5) + 106] = 0
                return 32, mem[_1752 + _1068 + (uint255(stor14.length) * 0.5) + 74 len ceil32(_2437) + 32]
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor14.length):
                mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                mem[mem[64] + stor14.length.field_1 + 32] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
                _1177 = mem[96]
                mem[mem[64] + stor14.length.field_1 + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + stor14.length.field_1 + 37] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _1768 = mem[64]
                    mem[64] = _1177 + _1068 + stor14.length.field_1 + 42
                    mem[_1177 + _1068 + stor14.length.field_1 + 42] = 32
                    _1900 = mem[_1768]
                    mem[_1177 + _1068 + stor14.length.field_1 + 74] = mem[_1768]
                    mem[_1177 + _1068 + stor14.length.field_1 + 106 len ceil32(_1900)] = mem[_1768 + 32 len ceil32(_1900)]
                    if ceil32(_1900) > _1900:
                        mem[_1900 + _1177 + _1068 + stor14.length.field_1 + 106] = 0
                    return 32, mem[_1177 + _1068 + stor14.length.field_1 + 74 len ceil32(_1900) + 32]
                _1769 = mem[64]
                mem[64] = _1177 + _1068 + stor14.length.field_1 + 42
                mem[_1177 + _1068 + stor14.length.field_1 + 42] = 32
                _1901 = mem[_1769]
                mem[_1177 + _1068 + stor14.length.field_1 + 74] = mem[_1769]
                mem[_1177 + _1068 + stor14.length.field_1 + 106 len ceil32(_1901)] = mem[_1769 + 32 len ceil32(_1901)]
                if ceil32(_1901) > _1901:
                    mem[_1901 + _1177 + _1068 + stor14.length.field_1 + 106] = 0
                return 32, mem[_1177 + _1068 + stor14.length.field_1 + 74 len ceil32(_1901) + 32]
            if bool(stor14.length) != 1:
                mem[0] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
                _1206 = mem[96]
                mem[5 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1206 + 5] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1206) <= _1206:
                    _1770 = mem[64]
                    mem[64] = _1206 + 10
                    mem[_1206 + 10] = 32
                    _1902 = mem[_1770]
                    mem[_1206 + 42] = mem[_1770]
                    mem[_1206 + 74 len ceil32(_1902)] = mem[_1770 + 32 len ceil32(_1902)]
                    if ceil32(_1902) > _1902:
                        mem[_1902 + _1206 + 74] = 0
                    return 32, mem[_1206 + 42 len ceil32(_1902) + 32]
                _1771 = mem[64]
                mem[64] = _1206 + 10
                mem[_1206 + 10] = 32
                _1903 = mem[_1771]
                mem[_1206 + 42] = mem[_1771]
                mem[_1206 + 74 len ceil32(_1903)] = mem[_1771 + 32 len ceil32(_1903)]
                if ceil32(_1903) > _1903:
                    mem[_1903 + _1206 + 74] = 0
                return 32, mem[_1206 + 42 len ceil32(_1903) + 32]
            mem[0] = 14
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[idx + _1068 + 32] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1068 + stor14.length.field_1 + 32] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
            _1753 = mem[96]
            mem[_1068 + stor14.length.field_1 + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1753 + _1068 + stor14.length.field_1 + 37] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1753) <= _1753:
                _2294 = mem[64]
                mem[64] = _1753 + _1068 + stor14.length.field_1 + 42
                mem[_1753 + _1068 + stor14.length.field_1 + 42] = 32
                _2438 = mem[_2294]
                mem[_1753 + _1068 + stor14.length.field_1 + 74] = mem[_2294]
                mem[_1753 + _1068 + stor14.length.field_1 + 106 len ceil32(_2438)] = mem[_2294 + 32 len ceil32(_2438)]
                if ceil32(_2438) > _2438:
                    mem[_2438 + _1753 + _1068 + stor14.length.field_1 + 106] = 0
                return 32, mem[_1753 + _1068 + stor14.length.field_1 + 74 len ceil32(_2438) + 32]
            _2295 = mem[64]
            mem[64] = _1753 + _1068 + stor14.length.field_1 + 42
            mem[_1753 + _1068 + stor14.length.field_1 + 42] = 32
            _2439 = mem[_2295]
            mem[_1753 + _1068 + stor14.length.field_1 + 74] = mem[_2295]
            mem[_1753 + _1068 + stor14.length.field_1 + 106 len ceil32(_2439)] = mem[_2295 + 32 len ceil32(_2439)]
            if ceil32(_2439) > _2439:
                mem[_2439 + _1753 + _1068 + stor14.length.field_1 + 106] = 0
            return 32, mem[_1753 + _1068 + stor14.length.field_1 + 74 len ceil32(_2439) + 32]
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
        _1069 = mem[64]
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor14.length):
                mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                mem[mem[64] + (uint255(stor14.length) * 0.5) + 32] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
                _1166 = mem[96]
                mem[mem[64] + (uint255(stor14.length) * 0.5) + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 37] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _1772 = mem[64]
                    mem[64] = _1166 + _1069 + (uint255(stor14.length) * 0.5) + 42
                    mem[_1166 + _1069 + (uint255(stor14.length) * 0.5) + 42] = 32
                    _1904 = mem[_1772]
                    mem[_1166 + _1069 + (uint255(stor14.length) * 0.5) + 74] = mem[_1772]
                    mem[_1166 + _1069 + (uint255(stor14.length) * 0.5) + 106 len ceil32(_1904)] = mem[_1772 + 32 len ceil32(_1904)]
                    if ceil32(_1904) > _1904:
                        mem[_1904 + _1166 + _1069 + (uint255(stor14.length) * 0.5) + 106] = 0
                    return 32, mem[_1166 + _1069 + (uint255(stor14.length) * 0.5) + 74 len ceil32(_1904) + 32]
                _1773 = mem[64]
                mem[64] = _1166 + _1069 + (uint255(stor14.length) * 0.5) + 42
                mem[_1166 + _1069 + (uint255(stor14.length) * 0.5) + 42] = 32
                _1905 = mem[_1773]
                mem[_1166 + _1069 + (uint255(stor14.length) * 0.5) + 74] = mem[_1773]
                mem[_1166 + _1069 + (uint255(stor14.length) * 0.5) + 106 len ceil32(_1905)] = mem[_1773 + 32 len ceil32(_1905)]
                if ceil32(_1905) > _1905:
                    mem[_1905 + _1166 + _1069 + (uint255(stor14.length) * 0.5) + 106] = 0
                return 32, mem[_1166 + _1069 + (uint255(stor14.length) * 0.5) + 74 len ceil32(_1905) + 32]
            if bool(stor14.length) != 1:
                mem[0] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
                _1179 = mem[96]
                mem[5 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1179 + 5] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1179) <= _1179:
                    _1774 = mem[64]
                    mem[64] = _1179 + 10
                    mem[_1179 + 10] = 32
                    _1906 = mem[_1774]
                    mem[_1179 + 42] = mem[_1774]
                    mem[_1179 + 74 len ceil32(_1906)] = mem[_1774 + 32 len ceil32(_1906)]
                    if ceil32(_1906) > _1906:
                        mem[_1906 + _1179 + 74] = 0
                    return 32, mem[_1179 + 42 len ceil32(_1906) + 32]
                _1775 = mem[64]
                mem[64] = _1179 + 10
                mem[_1179 + 10] = 32
                _1907 = mem[_1775]
                mem[_1179 + 42] = mem[_1775]
                mem[_1179 + 74 len ceil32(_1907)] = mem[_1775 + 32 len ceil32(_1907)]
                if ceil32(_1907) > _1907:
                    mem[_1907 + _1179 + 74] = 0
                return 32, mem[_1179 + 42 len ceil32(_1907) + 32]
            mem[0] = 14
            idx = 0
            s = 0
            while idx < uint255(stor14.length) * 0.5:
                mem[idx + _1069 + 32] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1069 + (uint255(stor14.length) * 0.5) + 32] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
            _1754 = mem[96]
            mem[_1069 + (uint255(stor14.length) * 0.5) + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1754 + _1069 + (uint255(stor14.length) * 0.5) + 37] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1754) <= _1754:
                _2296 = mem[64]
                mem[64] = _1754 + _1069 + (uint255(stor14.length) * 0.5) + 42
                mem[_1754 + _1069 + (uint255(stor14.length) * 0.5) + 42] = 32
                _2440 = mem[_2296]
                mem[_1754 + _1069 + (uint255(stor14.length) * 0.5) + 74] = mem[_2296]
                mem[_1754 + _1069 + (uint255(stor14.length) * 0.5) + 106 len ceil32(_2440)] = mem[_2296 + 32 len ceil32(_2440)]
                if ceil32(_2440) > _2440:
                    mem[_2440 + _1754 + _1069 + (uint255(stor14.length) * 0.5) + 106] = 0
                return 32, mem[_1754 + _1069 + (uint255(stor14.length) * 0.5) + 74 len ceil32(_2440) + 32]
            _2297 = mem[64]
            mem[64] = _1754 + _1069 + (uint255(stor14.length) * 0.5) + 42
            mem[_1754 + _1069 + (uint255(stor14.length) * 0.5) + 42] = 32
            _2441 = mem[_2297]
            mem[_1754 + _1069 + (uint255(stor14.length) * 0.5) + 74] = mem[_2297]
            mem[_1754 + _1069 + (uint255(stor14.length) * 0.5) + 106 len ceil32(_2441)] = mem[_2297 + 32 len ceil32(_2441)]
            if ceil32(_2441) > _2441:
                mem[_2441 + _1754 + _1069 + (uint255(stor14.length) * 0.5) + 106] = 0
            return 32, mem[_1754 + _1069 + (uint255(stor14.length) * 0.5) + 74 len ceil32(_2441) + 32]
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            mem[mem[64] + stor14.length.field_1 + 32] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
            _1180 = mem[96]
            mem[mem[64] + stor14.length.field_1 + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor14.length.field_1 + 37] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _1776 = mem[64]
                mem[64] = _1180 + _1069 + stor14.length.field_1 + 42
                mem[_1180 + _1069 + stor14.length.field_1 + 42] = 32
                _1908 = mem[_1776]
                mem[_1180 + _1069 + stor14.length.field_1 + 74] = mem[_1776]
                mem[_1180 + _1069 + stor14.length.field_1 + 106 len ceil32(_1908)] = mem[_1776 + 32 len ceil32(_1908)]
                if ceil32(_1908) > _1908:
                    mem[_1908 + _1180 + _1069 + stor14.length.field_1 + 106] = 0
                return 32, mem[_1180 + _1069 + stor14.length.field_1 + 74 len ceil32(_1908) + 32]
            _1777 = mem[64]
            mem[64] = _1180 + _1069 + stor14.length.field_1 + 42
            mem[_1180 + _1069 + stor14.length.field_1 + 42] = 32
            _1909 = mem[_1777]
            mem[_1180 + _1069 + stor14.length.field_1 + 74] = mem[_1777]
            mem[_1180 + _1069 + stor14.length.field_1 + 106 len ceil32(_1909)] = mem[_1777 + 32 len ceil32(_1909)]
            if ceil32(_1909) > _1909:
                mem[_1909 + _1180 + _1069 + stor14.length.field_1 + 106] = 0
            return 32, mem[_1180 + _1069 + stor14.length.field_1 + 74 len ceil32(_1909) + 32]
        if bool(stor14.length) != 1:
            mem[0] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
            _1207 = mem[96]
            mem[5 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1207 + 5] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1207) <= _1207:
                _1778 = mem[64]
                mem[64] = _1207 + 10
                mem[_1207 + 10] = 32
                _1910 = mem[_1778]
                mem[_1207 + 42] = mem[_1778]
                mem[_1207 + 74 len ceil32(_1910)] = mem[_1778 + 32 len ceil32(_1910)]
                if ceil32(_1910) > _1910:
                    mem[_1910 + _1207 + 74] = 0
                return 32, mem[_1207 + 42 len ceil32(_1910) + 32]
            _1779 = mem[64]
            mem[64] = _1207 + 10
            mem[_1207 + 10] = 32
            _1911 = mem[_1779]
            mem[_1207 + 42] = mem[_1779]
            mem[_1207 + 74 len ceil32(_1911)] = mem[_1779 + 32 len ceil32(_1911)]
            if ceil32(_1911) > _1911:
                mem[_1911 + _1207 + 74] = 0
            return 32, mem[_1207 + 42 len ceil32(_1911) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < stor14.length.field_1:
            mem[idx + _1069 + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1069 + stor14.length.field_1 + 32] = 0x2f726f636b000000000000000000000000000000000000000000000000000000
        _1755 = mem[96]
        mem[_1069 + stor14.length.field_1 + 37 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1755 + _1069 + stor14.length.field_1 + 37] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_1755) <= _1755:
            _2298 = mem[64]
            mem[64] = _1755 + _1069 + stor14.length.field_1 + 42
            mem[_1755 + _1069 + stor14.length.field_1 + 42] = 32
            _2442 = mem[_2298]
            mem[_1755 + _1069 + stor14.length.field_1 + 74] = mem[_2298]
            mem[_1755 + _1069 + stor14.length.field_1 + 106 len ceil32(_2442)] = mem[_2298 + 32 len ceil32(_2442)]
            if ceil32(_2442) > _2442:
                mem[_2442 + _1755 + _1069 + stor14.length.field_1 + 106] = 0
            return 32, mem[_1755 + _1069 + stor14.length.field_1 + 74 len ceil32(_2442) + 32]
        _2299 = mem[64]
        mem[64] = _1755 + _1069 + stor14.length.field_1 + 42
        mem[_1755 + _1069 + stor14.length.field_1 + 42] = 32
        _2443 = mem[_2299]
        mem[_1755 + _1069 + stor14.length.field_1 + 74] = mem[_2299]
        mem[_1755 + _1069 + stor14.length.field_1 + 106 len ceil32(_2443)] = mem[_2299 + 32 len ceil32(_2443)]
        if ceil32(_2443) > _2443:
            mem[_2443 + _1755 + _1069 + stor14.length.field_1 + 106] = 0
        return 32, mem[_1755 + _1069 + stor14.length.field_1 + 74 len ceil32(_2443) + 32]
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
                    mem[64] = 16
                    _358 = mem[160]
                    mem[48] = mem[160]
                    mem[80 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_358) > _358:
                        mem[_358 + 80] = 0
                    return memory
                      from mem[64]
                       len ceil32(_358) + -mem[64] + 80
                idx = 0
                s = 0
                while idx < uint255(stor14.length) * 0.5:
                    mem[idx + 192] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor14.length) * 0.5) + 192] = '/gold-rock' << 176
            mem[(uint255(stor14.length) * 0.5) + 202] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor14.length) * 0.5) + 203] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor14.length) * 0.5) + 208] = 32
            mem[(uint255(stor14.length) * 0.5) + 240] = mem[160]
            mem[(uint255(stor14.length) * 0.5) + 272 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + (uint255(stor14.length) * 0.5) + 272] = 0
            return Array(len=mem[160], data=mem[(uint255(stor14.length) * 0.5) + 272 len ceil32(mem[160])])
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor14.length.field_1 + 192] = '/gold-rock' << 176
        mem[stor14.length.field_1 + 202] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor14.length.field_1 + 203] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[stor14.length.field_1 + 208] = 32
        mem[stor14.length.field_1 + 240] = mem[160]
        mem[stor14.length.field_1 + 272 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor14.length.field_1 + 272] = 0
        return Array(len=mem[160], data=mem[stor14.length.field_1 + 272 len ceil32(mem[160])])
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
        _1070 = mem[64]
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor14.length):
                mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                mem[mem[64] + (uint255(stor14.length) * 0.5) + 32] = '/gold-rock' << 176
                _1168 = mem[96]
                mem[mem[64] + (uint255(stor14.length) * 0.5) + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _1780 = mem[64]
                    mem[64] = _1168 + _1070 + (uint255(stor14.length) * 0.5) + 47
                    mem[_1168 + _1070 + (uint255(stor14.length) * 0.5) + 47] = 32
                    _1912 = mem[_1780]
                    mem[_1168 + _1070 + (uint255(stor14.length) * 0.5) + 79] = mem[_1780]
                    mem[_1168 + _1070 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_1912)] = mem[_1780 + 32 len ceil32(_1912)]
                    if ceil32(_1912) > _1912:
                        mem[_1912 + _1168 + _1070 + (uint255(stor14.length) * 0.5) + 111] = 0
                    return 32, mem[_1168 + _1070 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_1912) + 32]
                _1781 = mem[64]
                mem[64] = _1168 + _1070 + (uint255(stor14.length) * 0.5) + 47
                mem[_1168 + _1070 + (uint255(stor14.length) * 0.5) + 47] = 32
                _1913 = mem[_1781]
                mem[_1168 + _1070 + (uint255(stor14.length) * 0.5) + 79] = mem[_1781]
                mem[_1168 + _1070 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_1913)] = mem[_1781 + 32 len ceil32(_1913)]
                if ceil32(_1913) > _1913:
                    mem[_1913 + _1168 + _1070 + (uint255(stor14.length) * 0.5) + 111] = 0
                return 32, mem[_1168 + _1070 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_1913) + 32]
            if bool(stor14.length) != 1:
                mem[0] = '/gold-rock' << 176
                _1186 = mem[96]
                mem[10 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1186 + 10] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1186) <= _1186:
                    _1782 = mem[64]
                    mem[64] = _1186 + 15
                    mem[_1186 + 15] = 32
                    _1914 = mem[_1782]
                    mem[_1186 + 47] = mem[_1782]
                    mem[_1186 + 79 len ceil32(_1914)] = mem[_1782 + 32 len ceil32(_1914)]
                    if ceil32(_1914) > _1914:
                        mem[_1914 + _1186 + 79] = 0
                    return 32, mem[_1186 + 47 len ceil32(_1914) + 32]
                _1783 = mem[64]
                mem[64] = _1186 + 15
                mem[_1186 + 15] = 32
                _1915 = mem[_1783]
                mem[_1186 + 47] = mem[_1783]
                mem[_1186 + 79 len ceil32(_1915)] = mem[_1783 + 32 len ceil32(_1915)]
                if ceil32(_1915) > _1915:
                    mem[_1915 + _1186 + 79] = 0
                return 32, mem[_1186 + 47 len ceil32(_1915) + 32]
            mem[0] = 14
            idx = 0
            s = 0
            while idx < uint255(stor14.length) * 0.5:
                mem[idx + _1070 + 32] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_1070 + (uint255(stor14.length) * 0.5) + 32] = '/gold-rock' << 176
            _1756 = mem[96]
            mem[_1070 + (uint255(stor14.length) * 0.5) + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1756 + _1070 + (uint255(stor14.length) * 0.5) + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1756) <= _1756:
                _2300 = mem[64]
                mem[64] = _1756 + _1070 + (uint255(stor14.length) * 0.5) + 47
                mem[_1756 + _1070 + (uint255(stor14.length) * 0.5) + 47] = 32
                _2444 = mem[_2300]
                mem[_1756 + _1070 + (uint255(stor14.length) * 0.5) + 79] = mem[_2300]
                mem[_1756 + _1070 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_2444)] = mem[_2300 + 32 len ceil32(_2444)]
                if ceil32(_2444) > _2444:
                    mem[_2444 + _1756 + _1070 + (uint255(stor14.length) * 0.5) + 111] = 0
                return 32, mem[_1756 + _1070 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_2444) + 32]
            _2301 = mem[64]
            mem[64] = _1756 + _1070 + (uint255(stor14.length) * 0.5) + 47
            mem[_1756 + _1070 + (uint255(stor14.length) * 0.5) + 47] = 32
            _2445 = mem[_2301]
            mem[_1756 + _1070 + (uint255(stor14.length) * 0.5) + 79] = mem[_2301]
            mem[_1756 + _1070 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_2445)] = mem[_2301 + 32 len ceil32(_2445)]
            if ceil32(_2445) > _2445:
                mem[_2445 + _1756 + _1070 + (uint255(stor14.length) * 0.5) + 111] = 0
            return 32, mem[_1756 + _1070 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_2445) + 32]
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            mem[mem[64] + stor14.length.field_1 + 32] = '/gold-rock' << 176
            _1187 = mem[96]
            mem[mem[64] + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor14.length.field_1 + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _1784 = mem[64]
                mem[64] = _1187 + _1070 + stor14.length.field_1 + 47
                mem[_1187 + _1070 + stor14.length.field_1 + 47] = 32
                _1916 = mem[_1784]
                mem[_1187 + _1070 + stor14.length.field_1 + 79] = mem[_1784]
                mem[_1187 + _1070 + stor14.length.field_1 + 111 len ceil32(_1916)] = mem[_1784 + 32 len ceil32(_1916)]
                if ceil32(_1916) > _1916:
                    mem[_1916 + _1187 + _1070 + stor14.length.field_1 + 111] = 0
                return 32, mem[_1187 + _1070 + stor14.length.field_1 + 79 len ceil32(_1916) + 32]
            _1785 = mem[64]
            mem[64] = _1187 + _1070 + stor14.length.field_1 + 47
            mem[_1187 + _1070 + stor14.length.field_1 + 47] = 32
            _1917 = mem[_1785]
            mem[_1187 + _1070 + stor14.length.field_1 + 79] = mem[_1785]
            mem[_1187 + _1070 + stor14.length.field_1 + 111 len ceil32(_1917)] = mem[_1785 + 32 len ceil32(_1917)]
            if ceil32(_1917) > _1917:
                mem[_1917 + _1187 + _1070 + stor14.length.field_1 + 111] = 0
            return 32, mem[_1187 + _1070 + stor14.length.field_1 + 79 len ceil32(_1917) + 32]
        if bool(stor14.length) != 1:
            mem[0] = '/gold-rock' << 176
            _1208 = mem[96]
            mem[10 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1208 + 10] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1208) <= _1208:
                _1786 = mem[64]
                mem[64] = _1208 + 15
                mem[_1208 + 15] = 32
                _1918 = mem[_1786]
                mem[_1208 + 47] = mem[_1786]
                mem[_1208 + 79 len ceil32(_1918)] = mem[_1786 + 32 len ceil32(_1918)]
                if ceil32(_1918) > _1918:
                    mem[_1918 + _1208 + 79] = 0
                return 32, mem[_1208 + 47 len ceil32(_1918) + 32]
            _1787 = mem[64]
            mem[64] = _1208 + 15
            mem[_1208 + 15] = 32
            _1919 = mem[_1787]
            mem[_1208 + 47] = mem[_1787]
            mem[_1208 + 79 len ceil32(_1919)] = mem[_1787 + 32 len ceil32(_1919)]
            if ceil32(_1919) > _1919:
                mem[_1919 + _1208 + 79] = 0
            return 32, mem[_1208 + 47 len ceil32(_1919) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < stor14.length.field_1:
            mem[idx + _1070 + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1070 + stor14.length.field_1 + 32] = '/gold-rock' << 176
        _1757 = mem[96]
        mem[_1070 + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1757 + _1070 + stor14.length.field_1 + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_1757) <= _1757:
            _2302 = mem[64]
            mem[64] = _1757 + _1070 + stor14.length.field_1 + 47
            mem[_1757 + _1070 + stor14.length.field_1 + 47] = 32
            _2446 = mem[_2302]
            mem[_1757 + _1070 + stor14.length.field_1 + 79] = mem[_2302]
            mem[_1757 + _1070 + stor14.length.field_1 + 111 len ceil32(_2446)] = mem[_2302 + 32 len ceil32(_2446)]
            if ceil32(_2446) > _2446:
                mem[_2446 + _1757 + _1070 + stor14.length.field_1 + 111] = 0
            return 32, mem[_1757 + _1070 + stor14.length.field_1 + 79 len ceil32(_2446) + 32]
        _2303 = mem[64]
        mem[64] = _1757 + _1070 + stor14.length.field_1 + 47
        mem[_1757 + _1070 + stor14.length.field_1 + 47] = 32
        _2447 = mem[_2303]
        mem[_1757 + _1070 + stor14.length.field_1 + 79] = mem[_2303]
        mem[_1757 + _1070 + stor14.length.field_1 + 111 len ceil32(_2447)] = mem[_2303 + 32 len ceil32(_2447)]
        if ceil32(_2447) > _2447:
            mem[_2447 + _1757 + _1070 + stor14.length.field_1 + 111] = 0
        return 32, mem[_1757 + _1070 + stor14.length.field_1 + 79 len ceil32(_2447) + 32]
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
    _1071 = mem[64]
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            mem[mem[64] + (uint255(stor14.length) * 0.5) + 32] = '/gold-rock' << 176
            _1170 = mem[96]
            mem[mem[64] + (uint255(stor14.length) * 0.5) + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _1788 = mem[64]
                mem[64] = _1170 + _1071 + (uint255(stor14.length) * 0.5) + 47
                mem[_1170 + _1071 + (uint255(stor14.length) * 0.5) + 47] = 32
                _1920 = mem[_1788]
                mem[_1170 + _1071 + (uint255(stor14.length) * 0.5) + 79] = mem[_1788]
                mem[_1170 + _1071 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_1920)] = mem[_1788 + 32 len ceil32(_1920)]
                if ceil32(_1920) > _1920:
                    mem[_1920 + _1170 + _1071 + (uint255(stor14.length) * 0.5) + 111] = 0
                return 32, mem[_1170 + _1071 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_1920) + 32]
            _1789 = mem[64]
            mem[64] = _1170 + _1071 + (uint255(stor14.length) * 0.5) + 47
            mem[_1170 + _1071 + (uint255(stor14.length) * 0.5) + 47] = 32
            _1921 = mem[_1789]
            mem[_1170 + _1071 + (uint255(stor14.length) * 0.5) + 79] = mem[_1789]
            mem[_1170 + _1071 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_1921)] = mem[_1789 + 32 len ceil32(_1921)]
            if ceil32(_1921) > _1921:
                mem[_1921 + _1170 + _1071 + (uint255(stor14.length) * 0.5) + 111] = 0
            return 32, mem[_1170 + _1071 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_1921) + 32]
        if bool(stor14.length) != 1:
            mem[0] = '/gold-rock' << 176
            _1189 = mem[96]
            mem[10 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1189 + 10] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1189) <= _1189:
                _1790 = mem[64]
                mem[64] = _1189 + 15
                mem[_1189 + 15] = 32
                _1922 = mem[_1790]
                mem[_1189 + 47] = mem[_1790]
                mem[_1189 + 79 len ceil32(_1922)] = mem[_1790 + 32 len ceil32(_1922)]
                if ceil32(_1922) > _1922:
                    mem[_1922 + _1189 + 79] = 0
                return 32, mem[_1189 + 47 len ceil32(_1922) + 32]
            _1791 = mem[64]
            mem[64] = _1189 + 15
            mem[_1189 + 15] = 32
            _1923 = mem[_1791]
            mem[_1189 + 47] = mem[_1791]
            mem[_1189 + 79 len ceil32(_1923)] = mem[_1791 + 32 len ceil32(_1923)]
            if ceil32(_1923) > _1923:
                mem[_1923 + _1189 + 79] = 0
            return 32, mem[_1189 + 47 len ceil32(_1923) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < uint255(stor14.length) * 0.5:
            mem[idx + _1071 + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1071 + (uint255(stor14.length) * 0.5) + 32] = '/gold-rock' << 176
        _1758 = mem[96]
        mem[_1071 + (uint255(stor14.length) * 0.5) + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1758 + _1071 + (uint255(stor14.length) * 0.5) + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_1758) <= _1758:
            _2304 = mem[64]
            mem[64] = _1758 + _1071 + (uint255(stor14.length) * 0.5) + 47
            mem[_1758 + _1071 + (uint255(stor14.length) * 0.5) + 47] = 32
            _2448 = mem[_2304]
            mem[_1758 + _1071 + (uint255(stor14.length) * 0.5) + 79] = mem[_2304]
            mem[_1758 + _1071 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_2448)] = mem[_2304 + 32 len ceil32(_2448)]
            if ceil32(_2448) > _2448:
                mem[_2448 + _1758 + _1071 + (uint255(stor14.length) * 0.5) + 111] = 0
            return 32, mem[_1758 + _1071 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_2448) + 32]
        _2305 = mem[64]
        mem[64] = _1758 + _1071 + (uint255(stor14.length) * 0.5) + 47
        mem[_1758 + _1071 + (uint255(stor14.length) * 0.5) + 47] = 32
        _2449 = mem[_2305]
        mem[_1758 + _1071 + (uint255(stor14.length) * 0.5) + 79] = mem[_2305]
        mem[_1758 + _1071 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_2449)] = mem[_2305 + 32 len ceil32(_2449)]
        if ceil32(_2449) > _2449:
            mem[_2449 + _1758 + _1071 + (uint255(stor14.length) * 0.5) + 111] = 0
        return 32, mem[_1758 + _1071 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_2449) + 32]
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor14.length):
        mem[mem[64] + 32] = Mask(248, 8, stor14.length)
        mem[mem[64] + stor14.length.field_1 + 32] = '/gold-rock' << 176
        _1190 = mem[96]
        mem[mem[64] + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[96] + mem[64] + stor14.length.field_1 + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(mem[96]) <= mem[96]:
            _1792 = mem[64]
            mem[64] = _1190 + _1071 + stor14.length.field_1 + 47
            mem[_1190 + _1071 + stor14.length.field_1 + 47] = 32
            _1924 = mem[_1792]
            mem[_1190 + _1071 + stor14.length.field_1 + 79] = mem[_1792]
            mem[_1190 + _1071 + stor14.length.field_1 + 111 len ceil32(_1924)] = mem[_1792 + 32 len ceil32(_1924)]
            if ceil32(_1924) > _1924:
                mem[_1924 + _1190 + _1071 + stor14.length.field_1 + 111] = 0
            return 32, mem[_1190 + _1071 + stor14.length.field_1 + 79 len ceil32(_1924) + 32]
        _1793 = mem[64]
        mem[64] = _1190 + _1071 + stor14.length.field_1 + 47
        mem[_1190 + _1071 + stor14.length.field_1 + 47] = 32
        _1925 = mem[_1793]
        mem[_1190 + _1071 + stor14.length.field_1 + 79] = mem[_1793]
        mem[_1190 + _1071 + stor14.length.field_1 + 111 len ceil32(_1925)] = mem[_1793 + 32 len ceil32(_1925)]
        if ceil32(_1925) > _1925:
            mem[_1925 + _1190 + _1071 + stor14.length.field_1 + 111] = 0
        return 32, mem[_1190 + _1071 + stor14.length.field_1 + 79 len ceil32(_1925) + 32]
    if bool(stor14.length) != 1:
        mem[0] = '/gold-rock' << 176
        _1209 = mem[96]
        mem[10 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1209 + 10] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_1209) <= _1209:
            _1794 = mem[64]
            mem[64] = _1209 + 15
            mem[_1209 + 15] = 32
            _1926 = mem[_1794]
            mem[_1209 + 47] = mem[_1794]
            mem[_1209 + 79 len ceil32(_1926)] = mem[_1794 + 32 len ceil32(_1926)]
            if ceil32(_1926) > _1926:
                mem[_1926 + _1209 + 79] = 0
            return 32, mem[_1209 + 47 len ceil32(_1926) + 32]
        _1795 = mem[64]
        mem[64] = _1209 + 15
        mem[_1209 + 15] = 32
        _1927 = mem[_1795]
        mem[_1209 + 47] = mem[_1795]
        mem[_1209 + 79 len ceil32(_1927)] = mem[_1795 + 32 len ceil32(_1927)]
        if ceil32(_1927) > _1927:
            mem[_1927 + _1209 + 79] = 0
        return 32, mem[_1209 + 47 len ceil32(_1927) + 32]
    mem[0] = 14
    idx = 0
    s = 0
    while idx < stor14.length.field_1:
        mem[idx + _1071 + 32] = stor14[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    mem[_1071 + stor14.length.field_1 + 32] = '/gold-rock' << 176
    _1759 = mem[96]
    mem[_1071 + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_1759 + _1071 + stor14.length.field_1 + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    if ceil32(_1759) <= _1759:
        _2306 = mem[64]
        mem[64] = _1759 + _1071 + stor14.length.field_1 + 47
        mem[_1759 + _1071 + stor14.length.field_1 + 47] = 32
        _2450 = mem[_2306]
        mem[_1759 + _1071 + stor14.length.field_1 + 79] = mem[_2306]
        mem[_1759 + _1071 + stor14.length.field_1 + 111 len ceil32(_2450)] = mem[_2306 + 32 len ceil32(_2450)]
        if ceil32(_2450) > _2450:
            mem[_2450 + _1759 + _1071 + stor14.length.field_1 + 111] = 0
        return 32, mem[_1759 + _1071 + stor14.length.field_1 + 79 len ceil32(_2450) + 32]
    _2307 = mem[64]
    mem[64] = _1759 + _1071 + stor14.length.field_1 + 47
    mem[_1759 + _1071 + stor14.length.field_1 + 47] = 32
    _2451 = mem[_2307]
    mem[_1759 + _1071 + stor14.length.field_1 + 79] = mem[_2307]
    mem[_1759 + _1071 + stor14.length.field_1 + 111 len ceil32(_2451)] = mem[_2307 + 32 len ceil32(_2451)]
    if ceil32(_2451) > _2451:
        mem[_2451 + _1759 + _1071 + stor14.length.field_1 + 111] = 0
    return 32, mem[_1759 + _1071 + stor14.length.field_1 + 79 len ceil32(_2451) + 32]
}



}

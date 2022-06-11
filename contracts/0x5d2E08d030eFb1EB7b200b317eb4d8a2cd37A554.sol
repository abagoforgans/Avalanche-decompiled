contract main {




// =====================  Runtime code  =====================


#
#  - sub_c3ee863f(?)
#
const sub_30bb31e6(?) = 0x4ef386a4aee19ff35b14154bde81d7c3da71ba73

const sub_72402378(?) = 30

const sub_756059bd(?) = 50 * 10^18

const sub_bb6e6a9c(?) = 5 * 10^18

const sub_e1bfb529(?) = 1000

const admin = 0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4

const MAX_ENTRIES = 2000

const PRESALE_PERIOD = (48 * 24 * 3600)


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of struct tokenByIndex;
mapping of uint256 stor9;
uint8 stor10; offset 160
address owner;
array of uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 totalMinted;
uint256 blockTime;
uint256 startBlock;
uint8 saleStarted;
uint8 airdropped; offset 8
uint8 sub_e84259f8; offset 16
uint8 sub_e76e4c93; offset 24
uint8 sub_703a8a1c; offset 32
uint256 stor17; offset 32
uint256 stor17; offset 24
uint256 stor17; offset 16
uint256 stor17; offset 8
mapping of struct stor18;
mapping of struct stor19;

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

function airdropped() {
    return bool(airdropped)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function blockTime() {
    return blockTime
}

function startBlock() {
    return startBlock
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1].field_0
}

function saleStarted() {
    return bool(saleStarted)
}

function paused() {
    return bool(stor10)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_703a8a1c(?) {
    return bool(sub_703a8a1c)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function totalMinted() {
    return totalMinted
}

function sub_e76e4c93(?) {
    return bool(sub_e76e4c93)
}

function sub_e84259f8(?) {
    return bool(sub_e84259f8)
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

function sub_61775cf6(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor17.field_16) = 1
}

function sub_bcfbf2db(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(232, 0, stor17.field_24) = 1
}

function sub_f389c859(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(224, 0, stor17.field_32) = 1
}

function startSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleStarted = 1
    startBlock = block.number
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setBlockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    blockTime = arg1
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

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call 0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function getCurrentPrice() {
    if bool(saleStarted) != 1:
        revert with 0, 'Sale has not started'
    if totalMinted >= 2000:
        revert with 0, 'Already minted all'
    if block.number < startBlock:
        revert with 'NH{q', 17
    if block.number - startBlock and blockTime > -1 / block.number - startBlock:
        revert with 'NH{q', 17
    if (block.number * blockTime) - (startBlock * blockTime) >= 48 * 24 * 3600:
        return stor13
    return stor12
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
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while uint255(stor11.length.field_1) + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 % 128 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ownerOf[arg1]:
        revert with 0, 'Token does not exist'
    if bool(stor18[arg1].field_0):
        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor18[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor18[arg1].field_0 = 0
            idx = 0
            while uint255(stor18[arg1].field_1) + 31 / 32 > idx:
                stor18[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor18[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor18[arg1].field_0 = 0
            idx = 0
            while stor18[arg1].field_1 % 128 + 31 / 32 > idx:
                stor18[arg1][idx].field_0 = 0
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
        tokenByIndex[tokenByIndex.length].field_0 = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1].field_0
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1].field_0] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1].field_0 = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]].field_0 = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]].field_0 = tokenByIndex[tokenByIndex.length].field_0
        stor9[stor8[stor8.length].field_0] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length].field_0 = 0
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
        tokenByIndex[tokenByIndex.length].field_0 = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1].field_0
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1].field_0] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1].field_0 = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]].field_0 = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]].field_0 = tokenByIndex[tokenByIndex.length].field_0
        stor9[stor8[stor8.length].field_0] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length].field_0 = 0
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
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor0.length.field_1):
                if 31 < uint255(stor0.length.field_1):
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor0.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length.field_1)) + 192 len ceil32(uint255(stor0.length.field_1))] = mem[128 len ceil32(uint255(stor0.length.field_1))]
        if ceil32(uint255(stor0.length.field_1)) > uint255(stor0.length.field_1):
            mem[ceil32(uint255(stor0.length.field_1)) + uint255(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))], mem[(2 * ceil32(uint255(stor0.length.field_1))) + 192 len 2 * ceil32(uint255(stor0.length.field_1))]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor0.length.field_1):
            if 31 < uint255(stor0.length.field_1):
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while uint255(stor0.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[ceil32(stor0.length.field_1 % 128) + stor0.length.field_1 % 128 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor1.length.field_1):
                if 31 < uint255(stor1.length.field_1):
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor1.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length.field_1)) + 192 len ceil32(uint255(stor1.length.field_1))] = mem[128 len ceil32(uint255(stor1.length.field_1))]
        if ceil32(uint255(stor1.length.field_1)) > uint255(stor1.length.field_1):
            mem[ceil32(uint255(stor1.length.field_1)) + uint255(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))], mem[(2 * ceil32(uint255(stor1.length.field_1))) + 192 len 2 * ceil32(uint255(stor1.length.field_1))]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor1.length.field_1):
            if 31 < uint255(stor1.length.field_1):
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while uint255(stor1.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[ceil32(stor1.length.field_1 % 128) + stor1.length.field_1 % 128 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
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
        tokenByIndex[tokenByIndex.length].field_0 = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1].field_0
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1].field_0] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1].field_0 = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]].field_0 = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]].field_0 = tokenByIndex[tokenByIndex.length].field_0
        stor9[stor8[stor8.length].field_0] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length].field_0 = 0
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

function getState(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0, 'Token does not exist'
    if bool(stor19[arg1].field_0):
        if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor19[arg1].field_0):
            if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor19[arg1].field_1):
                if 31 < uint255(stor19[arg1].field_1):
                    mem[128] = stor19[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor19[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor19[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor19[arg1].field_1)), data=mem[128 len ceil32(uint255(stor19[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor19[arg1].field_8)
        else:
            if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor19[arg1].field_1 % 128:
                if 31 < stor19[arg1].field_1 % 128:
                    mem[128] = stor19[arg1].field_0
                    idx = 128
                    s = 0
                    while stor19[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor19[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor19[arg1].field_1)), data=mem[128 len ceil32(uint255(stor19[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor19[arg1].field_8)
        mem[ceil32(uint255(stor19[arg1].field_1)) + 192 len ceil32(uint255(stor19[arg1].field_1))] = mem[128 len ceil32(uint255(stor19[arg1].field_1))]
        if ceil32(uint255(stor19[arg1].field_1)) > uint255(stor19[arg1].field_1):
            mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor19[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor19[arg1].field_1)), data=mem[128 len ceil32(uint255(stor19[arg1].field_1))], mem[(2 * ceil32(uint255(stor19[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor19[arg1].field_1))]), 
    if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor19[arg1].field_0):
        if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor19[arg1].field_1):
            if 31 < uint255(stor19[arg1].field_1):
                mem[128] = stor19[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor19[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor19[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19[arg1].field_0 % 128, data=mem[128 len ceil32(stor19[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor19[arg1].field_8)
    else:
        if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor19[arg1].field_1 % 128:
            if 31 < stor19[arg1].field_1 % 128:
                mem[128] = stor19[arg1].field_0
                idx = 128
                s = 0
                while stor19[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor19[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19[arg1].field_0 % 128, data=mem[128 len ceil32(stor19[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor19[arg1].field_8)
    mem[ceil32(stor19[arg1].field_1 % 128) + 192 len ceil32(stor19[arg1].field_1 % 128)] = mem[128 len ceil32(stor19[arg1].field_1 % 128)]
    if ceil32(stor19[arg1].field_1 % 128) > stor19[arg1].field_1 % 128:
        mem[ceil32(stor19[arg1].field_1 % 128) + stor19[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor19[arg1].field_0 % 128, data=mem[128 len ceil32(stor19[arg1].field_1 % 128)], mem[(2 * ceil32(stor19[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor19[arg1].field_1 % 128)]), 
}

function giveAway() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if airdropped:
        revert with 0, 'GiveAway amount exceed'
    idx = 1
    while uint8(idx) <= 30:
        _77 = mem[64]
        mem[64] = mem[64] + 32
        mem[_77] = 0
        if ownerOf[idx << 248]:
            revert with 0, 'ERC721: token already minted'
        stor9[idx << 248] = tokenByIndex.length
        tokenByIndex.length++
        uint8(tokenByIndex[tokenByIndex.length].field_0) = uint8(idx)
        Mask(248, 0, tokenByIndex[tokenByIndex.length].field_8) = 0
        uint8(tokenOfOwnerByIndex[0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4][stor3[0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4]].field_0) = uint8(idx)
        Mask(248, 0, tokenOfOwnerByIndex[0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4][stor3[0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4]].field_8) = 0
        stor7[idx << 248] = balanceOf[0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4]
        if balanceOf[0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4] > -2:
            revert with 'NH{q', 17
        balanceOf[0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4]++
        mem[0] = uint8(idx)
        mem[32] = 2
        ownerOf[idx << 248] = 0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4
        emit Transfer(0, 0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4, uint8(idx));
        if ext_code.size(0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4) <= 0:
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 3
            mem[_92 + 32] = 'egg'
        else:
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = uint8(idx)
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 164] = mem[_77 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4)
            call 0x1d7c28fbb0f8dcb4e5622afc63de55d21ebcd1f4.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, 0, idx << 248, 128, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if not return_data.size:
                    if not mem[96]:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with memory
                      from 128
                       len mem[96]
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            _154 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_154] == Mask(32, 224, mem[_154])
            if Mask(32, 224, mem[_154]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            _178 = mem[64]
            mem[64] = mem[64] + 64
            mem[_178] = 3
            mem[_178 + 32] = 'egg'
        mem[32] = 19
        if bool(stor19[idx << 248].field_0):
            if bool(stor19[idx << 248].field_0) == uint255(stor19[idx << 248].field_1) < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(idx << 248, 19)
            bool(stor19[idx << 248].field_0) = 0
            uint255(stor19[idx << 248].field_1) = 3
            Mask(248, 0, stor19[idx << 248].field_8) = 'egg' / 256
            s = sha3(sha3(idx << 248, 19))
            while sha3(sha3(idx << 248, 19)) + (uint255(stor19[idx << 248].field_1) + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        else:
            if bool(stor19[idx << 248].field_0) == stor19[idx << 248].field_1 % 128 < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(idx << 248, 19)
            bool(stor19[idx << 248].field_0) = 0
            uint255(stor19[idx << 248].field_1) = 3
            Mask(248, 0, stor19[idx << 248].field_8) = 'egg' / 256
            s = sha3(sha3(idx << 248, 19))
            while sha3(sha3(idx << 248, 19)) + (stor19[idx << 248].field_1 % 128 + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
    if totalMinted > -31:
        revert with 'NH{q', 17
    totalMinted += 30
    Mask(248, 0, stor17.field_8) = 1
}

function sub_4c902c82(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[arg2.length + 128] = 0
    if bool(sub_703a8a1c) != 1:
        revert with 0, 'Legendary Evolve has not started'
    if not ownerOf[arg1]:
        revert with 0, 'Token does not exist'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'You are not the owner of this token'
    if bool(stor19[arg1].field_0):
        if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor19[arg1].field_0):
            if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor19[arg1].field_1):
                if 31 >= uint255(stor19[arg1].field_1):
                    mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor19[arg1].field_8)
                else:
                    mem[ceil32(ceil32(arg2.length)) + 129] = stor19[arg1].field_0
                    idx = ceil32(ceil32(arg2.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg2.length)) + uint255(stor19[arg1].field_1) + 97 > idx:
                        mem[idx + 32] = stor19[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor19[arg1].field_1 % 128:
                if 31 >= stor19[arg1].field_1 % 128:
                    mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor19[arg1].field_8)
                else:
                    mem[ceil32(ceil32(arg2.length)) + 129] = stor19[arg1].field_0
                    idx = ceil32(ceil32(arg2.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg2.length)) + stor19[arg1].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = stor19[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if sha3(mem[ceil32(ceil32(arg2.length)) + 129 len uint255(stor19[arg1].field_1)]) != sha3('adult'):
            revert with 0, 'This token is not adult'
    else:
        if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor19[arg1].field_0):
            if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor19[arg1].field_1):
                if 31 >= uint255(stor19[arg1].field_1):
                    mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor19[arg1].field_8)
                else:
                    mem[ceil32(ceil32(arg2.length)) + 129] = stor19[arg1].field_0
                    idx = ceil32(ceil32(arg2.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg2.length)) + uint255(stor19[arg1].field_1) + 97 > idx:
                        mem[idx + 32] = stor19[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor19[arg1].field_1 % 128:
                if 31 >= stor19[arg1].field_1 % 128:
                    mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor19[arg1].field_8)
                else:
                    mem[ceil32(ceil32(arg2.length)) + 129] = stor19[arg1].field_0
                    idx = ceil32(ceil32(arg2.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg2.length)) + stor19[arg1].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = stor19[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if sha3(mem[ceil32(ceil32(arg2.length)) + 129 len stor19[arg1].field_1 % 128]) != sha3('adult'):
            revert with 0, 'This token is not adult'
    if msg.value < 5 * 10^18:
        revert with 0, 'Insufficient price'
    if msg.value > 5 * 10^18:
        if msg.value < 5 * 10^18:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - 5 * 10^18 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if bool(stor18[arg1].field_0):
        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor18[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor18[arg1].field_0 = 0
            idx = 0
            while uint255(stor18[arg1].field_1) + 31 / 32 > idx:
                stor18[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor18[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor18[arg1].field_0 = 0
            idx = 0
            while stor18[arg1].field_1 % 128 + 31 / 32 > idx:
                stor18[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor19[arg1].field_0):
        if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
            revert with 'NH{q', 34
        bool(stor19[arg1].field_0) = 0
        uint255(stor19[arg1].field_1) = 6
        Mask(248, 0, stor19[arg1].field_8) = 'legend' / 256
        idx = 0
        while uint255(stor19[arg1].field_1) + 31 / 32 > idx:
            stor19[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        bool(stor19[arg1].field_0) = 0
        uint255(stor19[arg1].field_1) = 6
        Mask(248, 0, stor19[arg1].field_8) = 'legend' / 256
        idx = 0
        while stor19[arg1].field_1 % 128 + 31 / 32 > idx:
            stor19[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_0d59d463(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[arg2.length + 128] = 0
    if bool(sub_e76e4c93) != 1:
        revert with 0, 'Evolve has not started'
    if not ownerOf[arg1]:
        revert with 0, 'Token does not exist'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'You are not the owner of this token'
    if bool(stor19[arg1].field_0):
        if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor19[arg1].field_0):
            if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor19[arg1].field_1):
                if 31 >= uint255(stor19[arg1].field_1):
                    mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor19[arg1].field_8)
                else:
                    mem[ceil32(ceil32(arg2.length)) + 129] = stor19[arg1].field_0
                    idx = ceil32(ceil32(arg2.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg2.length)) + uint255(stor19[arg1].field_1) + 97 > idx:
                        mem[idx + 32] = stor19[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor19[arg1].field_1 % 128:
                if 31 >= stor19[arg1].field_1 % 128:
                    mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor19[arg1].field_8)
                else:
                    mem[ceil32(ceil32(arg2.length)) + 129] = stor19[arg1].field_0
                    idx = ceil32(ceil32(arg2.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg2.length)) + stor19[arg1].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = stor19[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if sha3(mem[ceil32(ceil32(arg2.length)) + 129 len uint255(stor19[arg1].field_1)]) != sha3('baby'):
            revert with 0, 'This token is not baby'
    else:
        if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor19[arg1].field_0):
            if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor19[arg1].field_1):
                if 31 >= uint255(stor19[arg1].field_1):
                    mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor19[arg1].field_8)
                else:
                    mem[ceil32(ceil32(arg2.length)) + 129] = stor19[arg1].field_0
                    idx = ceil32(ceil32(arg2.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg2.length)) + uint255(stor19[arg1].field_1) + 97 > idx:
                        mem[idx + 32] = stor19[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor19[arg1].field_1 % 128:
                if 31 >= stor19[arg1].field_1 % 128:
                    mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor19[arg1].field_8)
                else:
                    mem[ceil32(ceil32(arg2.length)) + 129] = stor19[arg1].field_0
                    idx = ceil32(ceil32(arg2.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg2.length)) + stor19[arg1].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = stor19[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if sha3(mem[ceil32(ceil32(arg2.length)) + 129 len stor19[arg1].field_1 % 128]) != sha3('baby'):
            revert with 0, 'This token is not baby'
    require ext_code.size(0x4ef386a4aee19ff35b14154bde81d7c3da71ba73)
    staticcall 0x4ef386a4aee19ff35b14154bde81d7c3da71ba73.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 50 * 10^18:
        revert with 0, 'You don't have enough Denergy token!'
    if bool(stor18[arg1].field_0):
        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor18[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor18[arg1].field_0 = 0
            idx = 0
            while uint255(stor18[arg1].field_1) + 31 / 32 > idx:
                stor18[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor18[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor18[arg1].field_0 = 0
            idx = 0
            while stor18[arg1].field_1 % 128 + 31 / 32 > idx:
                stor18[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor19[arg1].field_0):
        if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
            revert with 'NH{q', 34
        bool(stor19[arg1].field_0) = 0
        uint255(stor19[arg1].field_1) = 5
        Mask(248, 0, stor19[arg1].field_8) = 'adult' / 256
        idx = 0
        while uint255(stor19[arg1].field_1) + 31 / 32 > idx:
            stor19[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        bool(stor19[arg1].field_0) = 0
        uint255(stor19[arg1].field_1) = 5
        Mask(248, 0, stor19[arg1].field_8) = 'adult' / 256
        idx = 0
        while stor19[arg1].field_1 % 128 + 31 / 32 > idx:
            stor19[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(saleStarted) != 1:
        revert with 0, 'Sale has not started'
    if arg1 > -totalMinted - 1:
        revert with 'NH{q', 17
    if arg1 + totalMinted > 2000:
        revert with 0, 'Amount exceed'
    if block.number < startBlock:
        revert with 'NH{q', 17
    if block.number - startBlock and blockTime > -1 / block.number - startBlock:
        revert with 'NH{q', 17
    if totalMinted > -arg1 - 1:
        revert with 'NH{q', 17
    if (block.number * blockTime) - (startBlock * blockTime) >= 48 * 24 * 3600:
        if totalMinted + arg1 > 2000:
            revert with 0, 'BUYABLE LIMIT EXCEED'
        if arg1 > 10:
            revert with 0, '10 EGGS PER TRANSACTION'
        if stor13 and arg1 > -1 / stor13:
            revert with 'NH{q', 17
        if msg.value < stor13 * arg1:
            revert with 0, 'Insufficient price'
        if msg.value <= stor13 * arg1:
            idx = 1
            while uint8(idx) <= arg1:
                if totalMinted > -uint8(idx) - 1:
                    revert with 'NH{q', 17
                _589 = mem[64]
                mem[64] = mem[64] + 32
                mem[_589] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor14 + uint8(idx)]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor14 + uint8(idx)] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = totalMinted + uint8(idx)
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]].field_0 = totalMinted + uint8(idx)
                    stor7[stor14 + uint8(idx)] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = totalMinted + uint8(idx)
                    mem[32] = 2
                    ownerOf[stor14 + uint8(idx)] = msg.sender
                    emit Transfer(0, msg.sender, totalMinted + uint8(idx));
                    if ext_code.size(msg.sender) <= 0:
                        _697 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_697] = 3
                        mem[_697 + 32] = 'egg'
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalMinted + uint8(idx)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_589 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalMinted + uint8(idx), 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _1197 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1197] == Mask(32, 224, mem[_1197])
                        if Mask(32, 224, mem[_1197]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1389 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1389] = 3
                        mem[_1389 + 32] = 'egg'
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor14 + uint8(idx)] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor14 + uint8(idx)]].field_0 = tokenByIndex[tokenByIndex.length].field_0
                    stor9[stor8[stor8.length].field_0] = stor9[stor14 + uint8(idx)]
                    stor9[stor14 + uint8(idx)] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length].field_0 = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = totalMinted + uint8(idx)
                    mem[32] = 2
                    ownerOf[stor14 + uint8(idx)] = msg.sender
                    emit Transfer(0, msg.sender, totalMinted + uint8(idx));
                    if ext_code.size(msg.sender) <= 0:
                        _705 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_705] = 3
                        mem[_705 + 32] = 'egg'
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalMinted + uint8(idx)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_589 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalMinted + uint8(idx), 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _1198 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1198] == Mask(32, 224, mem[_1198])
                        if Mask(32, 224, mem[_1198]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1390 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1390] = 3
                        mem[_1390 + 32] = 'egg'
                if totalMinted > -uint8(idx) - 1:
                    revert with 'NH{q', 17
                mem[32] = 19
                if bool(stor19[stor14 + uint8(idx)].field_0):
                    if bool(stor19[stor14 + uint8(idx)].field_0) == uint255(stor19[stor14 + uint8(idx)].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(totalMinted + uint8(idx), 19)
                    bool(stor19[stor14 + uint8(idx)].field_0) = 0
                    uint255(stor19[stor14 + uint8(idx)].field_1) = 3
                    Mask(248, 0, stor19[stor14 + uint8(idx)].field_8) = 'egg' / 256
                    s = sha3(sha3(totalMinted + uint8(idx), 19))
                    while sha3(sha3(totalMinted + uint8(idx), 19)) + (uint255(stor19[stor14 + uint8(idx)].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    if bool(stor19[stor14 + uint8(idx)].field_0) == stor19[stor14 + uint8(idx)].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(totalMinted + uint8(idx), 19)
                    bool(stor19[stor14 + uint8(idx)].field_0) = 0
                    uint255(stor19[stor14 + uint8(idx)].field_1) = 3
                    Mask(248, 0, stor19[stor14 + uint8(idx)].field_8) = 'egg' / 256
                    s = sha3(sha3(totalMinted + uint8(idx), 19))
                    while sha3(sha3(totalMinted + uint8(idx), 19)) + (stor19[stor14 + uint8(idx)].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
        else:
            if msg.value < stor13 * arg1:
                revert with 'NH{q', 17
            call msg.sender with:
               value msg.value - (stor13 * arg1) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 1
            while uint8(idx) <= arg1:
                if totalMinted > -uint8(idx) - 1:
                    revert with 'NH{q', 17
                _590 = mem[64]
                mem[64] = mem[64] + 32
                mem[_590] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor14 + uint8(idx)]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor14 + uint8(idx)] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = totalMinted + uint8(idx)
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]].field_0 = totalMinted + uint8(idx)
                    stor7[stor14 + uint8(idx)] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = totalMinted + uint8(idx)
                    mem[32] = 2
                    ownerOf[stor14 + uint8(idx)] = msg.sender
                    emit Transfer(0, msg.sender, totalMinted + uint8(idx));
                    if ext_code.size(msg.sender) <= 0:
                        _698 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_698] = 3
                        mem[_698 + 32] = 'egg'
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalMinted + uint8(idx)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_590 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalMinted + uint8(idx), 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _1199 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1199] == Mask(32, 224, mem[_1199])
                        if Mask(32, 224, mem[_1199]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1391 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1391] = 3
                        mem[_1391 + 32] = 'egg'
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor14 + uint8(idx)] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor14 + uint8(idx)]].field_0 = tokenByIndex[tokenByIndex.length].field_0
                    stor9[stor8[stor8.length].field_0] = stor9[stor14 + uint8(idx)]
                    stor9[stor14 + uint8(idx)] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length].field_0 = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = totalMinted + uint8(idx)
                    mem[32] = 2
                    ownerOf[stor14 + uint8(idx)] = msg.sender
                    emit Transfer(0, msg.sender, totalMinted + uint8(idx));
                    if ext_code.size(msg.sender) <= 0:
                        _706 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_706] = 3
                        mem[_706 + 32] = 'egg'
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalMinted + uint8(idx)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_590 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalMinted + uint8(idx), 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _1200 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1200] == Mask(32, 224, mem[_1200])
                        if Mask(32, 224, mem[_1200]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1392] = 3
                        mem[_1392 + 32] = 'egg'
                if totalMinted > -uint8(idx) - 1:
                    revert with 'NH{q', 17
                mem[32] = 19
                if bool(stor19[stor14 + uint8(idx)].field_0):
                    if bool(stor19[stor14 + uint8(idx)].field_0) == uint255(stor19[stor14 + uint8(idx)].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(totalMinted + uint8(idx), 19)
                    bool(stor19[stor14 + uint8(idx)].field_0) = 0
                    uint255(stor19[stor14 + uint8(idx)].field_1) = 3
                    Mask(248, 0, stor19[stor14 + uint8(idx)].field_8) = 'egg' / 256
                    s = sha3(sha3(totalMinted + uint8(idx), 19))
                    while sha3(sha3(totalMinted + uint8(idx), 19)) + (uint255(stor19[stor14 + uint8(idx)].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    if bool(stor19[stor14 + uint8(idx)].field_0) == stor19[stor14 + uint8(idx)].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(totalMinted + uint8(idx), 19)
                    bool(stor19[stor14 + uint8(idx)].field_0) = 0
                    uint255(stor19[stor14 + uint8(idx)].field_1) = 3
                    Mask(248, 0, stor19[stor14 + uint8(idx)].field_8) = 'egg' / 256
                    s = sha3(sha3(totalMinted + uint8(idx), 19))
                    while sha3(sha3(totalMinted + uint8(idx), 19)) + (stor19[stor14 + uint8(idx)].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
    else:
        if totalMinted + arg1 > 1000:
            revert with 0, 'PRESALE LIMIT EXCEED'
        if arg1 > 5:
            revert with 0, '5 EGGS PER TRANSACTION'
        if stor12 and arg1 > -1 / stor12:
            revert with 'NH{q', 17
        if msg.value < stor12 * arg1:
            revert with 0, 'Insufficient price'
        if msg.value <= stor12 * arg1:
            idx = 1
            while uint8(idx) <= arg1:
                if totalMinted > -uint8(idx) - 1:
                    revert with 'NH{q', 17
                _591 = mem[64]
                mem[64] = mem[64] + 32
                mem[_591] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor14 + uint8(idx)]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor14 + uint8(idx)] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = totalMinted + uint8(idx)
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]].field_0 = totalMinted + uint8(idx)
                    stor7[stor14 + uint8(idx)] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = totalMinted + uint8(idx)
                    mem[32] = 2
                    ownerOf[stor14 + uint8(idx)] = msg.sender
                    emit Transfer(0, msg.sender, totalMinted + uint8(idx));
                    if ext_code.size(msg.sender) <= 0:
                        _699 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_699] = 3
                        mem[_699 + 32] = 'egg'
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalMinted + uint8(idx)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_591 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalMinted + uint8(idx), 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _1201 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1201] == Mask(32, 224, mem[_1201])
                        if Mask(32, 224, mem[_1201]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1393 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1393] = 3
                        mem[_1393 + 32] = 'egg'
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor14 + uint8(idx)] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor14 + uint8(idx)]].field_0 = tokenByIndex[tokenByIndex.length].field_0
                    stor9[stor8[stor8.length].field_0] = stor9[stor14 + uint8(idx)]
                    stor9[stor14 + uint8(idx)] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length].field_0 = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = totalMinted + uint8(idx)
                    mem[32] = 2
                    ownerOf[stor14 + uint8(idx)] = msg.sender
                    emit Transfer(0, msg.sender, totalMinted + uint8(idx));
                    if ext_code.size(msg.sender) <= 0:
                        _707 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_707] = 3
                        mem[_707 + 32] = 'egg'
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalMinted + uint8(idx)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_591 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalMinted + uint8(idx), 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _1202 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1202] == Mask(32, 224, mem[_1202])
                        if Mask(32, 224, mem[_1202]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1394 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1394] = 3
                        mem[_1394 + 32] = 'egg'
                if totalMinted > -uint8(idx) - 1:
                    revert with 'NH{q', 17
                mem[32] = 19
                if bool(stor19[stor14 + uint8(idx)].field_0):
                    if bool(stor19[stor14 + uint8(idx)].field_0) == uint255(stor19[stor14 + uint8(idx)].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(totalMinted + uint8(idx), 19)
                    bool(stor19[stor14 + uint8(idx)].field_0) = 0
                    uint255(stor19[stor14 + uint8(idx)].field_1) = 3
                    Mask(248, 0, stor19[stor14 + uint8(idx)].field_8) = 'egg' / 256
                    s = sha3(sha3(totalMinted + uint8(idx), 19))
                    while sha3(sha3(totalMinted + uint8(idx), 19)) + (uint255(stor19[stor14 + uint8(idx)].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    if bool(stor19[stor14 + uint8(idx)].field_0) == stor19[stor14 + uint8(idx)].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(totalMinted + uint8(idx), 19)
                    bool(stor19[stor14 + uint8(idx)].field_0) = 0
                    uint255(stor19[stor14 + uint8(idx)].field_1) = 3
                    Mask(248, 0, stor19[stor14 + uint8(idx)].field_8) = 'egg' / 256
                    s = sha3(sha3(totalMinted + uint8(idx), 19))
                    while sha3(sha3(totalMinted + uint8(idx), 19)) + (stor19[stor14 + uint8(idx)].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
        else:
            if msg.value < stor12 * arg1:
                revert with 'NH{q', 17
            call msg.sender with:
               value msg.value - (stor12 * arg1) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 1
            while uint8(idx) <= arg1:
                if totalMinted > -uint8(idx) - 1:
                    revert with 'NH{q', 17
                _592 = mem[64]
                mem[64] = mem[64] + 32
                mem[_592] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor14 + uint8(idx)]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor14 + uint8(idx)] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = totalMinted + uint8(idx)
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]].field_0 = totalMinted + uint8(idx)
                    stor7[stor14 + uint8(idx)] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = totalMinted + uint8(idx)
                    mem[32] = 2
                    ownerOf[stor14 + uint8(idx)] = msg.sender
                    emit Transfer(0, msg.sender, totalMinted + uint8(idx));
                    if ext_code.size(msg.sender) <= 0:
                        _700 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_700] = 3
                        mem[_700 + 32] = 'egg'
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalMinted + uint8(idx)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_592 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalMinted + uint8(idx), 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _1203 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1203] == Mask(32, 224, mem[_1203])
                        if Mask(32, 224, mem[_1203]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1395 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1395] = 3
                        mem[_1395 + 32] = 'egg'
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor14 + uint8(idx)] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor14 + uint8(idx)]].field_0 = tokenByIndex[tokenByIndex.length].field_0
                    stor9[stor8[stor8.length].field_0] = stor9[stor14 + uint8(idx)]
                    stor9[stor14 + uint8(idx)] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length].field_0 = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = totalMinted + uint8(idx)
                    mem[32] = 2
                    ownerOf[stor14 + uint8(idx)] = msg.sender
                    emit Transfer(0, msg.sender, totalMinted + uint8(idx));
                    if ext_code.size(msg.sender) <= 0:
                        _708 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_708] = 3
                        mem[_708 + 32] = 'egg'
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalMinted + uint8(idx)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_592 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalMinted + uint8(idx), 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _1204 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1204] == Mask(32, 224, mem[_1204])
                        if Mask(32, 224, mem[_1204]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1396 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1396] = 3
                        mem[_1396 + 32] = 'egg'
                if totalMinted > -uint8(idx) - 1:
                    revert with 'NH{q', 17
                mem[32] = 19
                if bool(stor19[stor14 + uint8(idx)].field_0):
                    if bool(stor19[stor14 + uint8(idx)].field_0) == uint255(stor19[stor14 + uint8(idx)].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(totalMinted + uint8(idx), 19)
                    bool(stor19[stor14 + uint8(idx)].field_0) = 0
                    uint255(stor19[stor14 + uint8(idx)].field_1) = 3
                    Mask(248, 0, stor19[stor14 + uint8(idx)].field_8) = 'egg' / 256
                    s = sha3(sha3(totalMinted + uint8(idx), 19))
                    while sha3(sha3(totalMinted + uint8(idx), 19)) + (uint255(stor19[stor14 + uint8(idx)].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    if bool(stor19[stor14 + uint8(idx)].field_0) == stor19[stor14 + uint8(idx)].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(totalMinted + uint8(idx), 19)
                    bool(stor19[stor14 + uint8(idx)].field_0) = 0
                    uint255(stor19[stor14 + uint8(idx)].field_1) = 3
                    Mask(248, 0, stor19[stor14 + uint8(idx)].field_8) = 'egg' / 256
                    s = sha3(sha3(totalMinted + uint8(idx), 19))
                    while sha3(sha3(totalMinted + uint8(idx), 19)) + (stor19[stor14 + uint8(idx)].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
    if totalMinted > -arg1 - 1:
        revert with 'NH{q', 17
    totalMinted += arg1
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0, 'This token does not exist'
    mem[0] = arg1
    mem[32] = 19
    if bool(stor19[arg1].field_0):
        if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
            revert with 'NH{q', 34
        mem[96] = uint255(stor19[arg1].field_1)
        if bool(stor19[arg1].field_0):
            if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor19[arg1].field_1):
                mem[ceil32(uint255(stor19[arg1].field_1)) + 128] = 3
                mem[ceil32(uint255(stor19[arg1].field_1)) + 160] = 'egg'
                if sha3(mem[128 len uint255(stor19[arg1].field_1)]) != sha3('egg'):
                    if bool(stor18[arg1].field_0):
                        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                            revert with 'NH{q', 34
                        if bool(stor18[arg1].field_0):
                            if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor18[arg1].field_1):
                                if 31 < uint255(stor18[arg1].field_1):
                                    mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                    idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                    s = 0
                                    while ceil32(uint255(stor19[arg1].field_1)) + uint255(stor18[arg1].field_1) + 192 > idx:
                                        mem[idx + 32] = stor18[arg1][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                        else:
                            if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor18[arg1].field_1 % 128:
                                if 31 < stor18[arg1].field_1 % 128:
                                    mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                    idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                    s = 0
                                    while ceil32(uint255(stor19[arg1].field_1)) + stor18[arg1].field_1 % 128 + 192 > idx:
                                        mem[idx + 32] = stor18[arg1][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(uint255(stor18[arg1].field_1)) + 288 len ceil32(uint255(stor18[arg1].field_1))] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]
                        if ceil32(uint255(stor18[arg1].field_1)) > uint255(stor18[arg1].field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(uint255(stor18[arg1].field_1)) + uint255(stor18[arg1].field_1) + 288] = 0
                        return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))], mem[ceil32(uint255(stor19[arg1].field_1)) + (2 * ceil32(uint255(stor18[arg1].field_1))) + 288 len 2 * ceil32(uint255(stor18[arg1].field_1))]), 
                    if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if bool(stor18[arg1].field_0):
                        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                            revert with 'NH{q', 34
                        if uint255(stor18[arg1].field_1):
                            if 31 < uint255(stor18[arg1].field_1):
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                s = 0
                                while ceil32(uint255(stor19[arg1].field_1)) + uint255(stor18[arg1].field_1) + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    else:
                        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if stor18[arg1].field_1 % 128:
                            if 31 < stor18[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                s = 0
                                while ceil32(uint255(stor19[arg1].field_1)) + stor18[arg1].field_1 % 128 + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(stor18[arg1].field_1 % 128) + 288 len ceil32(stor18[arg1].field_1 % 128)] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]
                    if ceil32(stor18[arg1].field_1 % 128) > stor18[arg1].field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(stor18[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 288] = 0
                    return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)], mem[ceil32(uint255(stor19[arg1].field_1)) + (2 * ceil32(stor18[arg1].field_1 % 128)) + 288 len 2 * ceil32(stor18[arg1].field_1 % 128)]), 
                if not arg1:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + 192] = 1
                    mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = '0'
                    if bool(stor11.length):
                        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor11.length):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                        else:
                            if bool(stor11.length) != 1:
                                mem[64] = 6
                                _2524 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                                mem[38] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                                mem[70 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                                if ceil32(_2524) > _2524:
                                    mem[_2524 + 70] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2524) + -mem[64] + 70
                            idx = 0
                            s = 0
                            while idx < uint255(stor11.length.field_1):
                                mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 288] = '0'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 289] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 294] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 326] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 358] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
                    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                    else:
                        if bool(stor11.length) != 1:
                            mem[64] = 6
                            _2526 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[38] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[70 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                            if ceil32(_2526) > _2526:
                                mem[_2526 + 70] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2526) + -mem[64] + 70
                        idx = 0
                        s = 0
                        while idx < stor11.length.field_1 % 128:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 288] = '0'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 289] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 294] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 326] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 358] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
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
                mem[ceil32(uint255(stor19[arg1].field_1)) + 192] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(uint255(stor19[arg1].field_1)) + 192]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(uint255(stor19[arg1].field_1)) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    if bool(stor11.length):
                        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor11.length):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                        if bool(stor11.length) == 1:
                            idx = 0
                            t = 0
                            while idx < uint255(stor11.length.field_1):
                                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                        _5695 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                        mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[_5695] = '.json'
                        mem[64] = _5695 + 5
                        mem[_5695 + 5] = 32
                        if ceil32(_5695) <= _5695:
                            _8776 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[_5695 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[_5695 + 69 len ceil32(_8776)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8776)]
                            if ceil32(_8776) > _8776:
                                mem[_5695 + _8776 + 69] = 0
                            return 32, mem[_5695 + 37 len ceil32(_8776) + 32]
                        _8856 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5695 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5695 + 69 len ceil32(_8856)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8856)]
                        if ceil32(_8856) > _8856:
                            mem[_5695 + _8856 + 69] = 0
                        return 32, mem[_5695 + 37 len ceil32(_8856) + 32]
                    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < stor11.length.field_1 % 128:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _5759 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[_5759] = '.json'
                    mem[64] = _5759 + 5
                    mem[_5759 + 5] = 32
                    if ceil32(_5759) <= _5759:
                        _8778 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5759 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5759 + 69 len ceil32(_8778)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8778)]
                        if ceil32(_8778) > _8778:
                            mem[_5759 + _8778 + 69] = 0
                        return 32, mem[_5759 + 37 len ceil32(_8778) + 32]
                    _8858 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5759 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5759 + 69 len ceil32(_8858)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8858)]
                    if ceil32(_8858) > _8858:
                        mem[_5759 + _8858 + 69] = 0
                    return 32, mem[_5759 + 37 len ceil32(_8858) + 32]
                mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(uint255(stor19[arg1].field_1)) + 192]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(uint255(stor19[arg1].field_1)) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _5697 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[_5697] = '.json'
                    mem[64] = _5697 + 5
                    mem[_5697 + 5] = 32
                    if ceil32(_5697) <= _5697:
                        _8780 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5697 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5697 + 69 len ceil32(_8780)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8780)]
                        if ceil32(_8780) > _8780:
                            mem[_5697 + _8780 + 69] = 0
                        return 32, mem[_5697 + 37 len ceil32(_8780) + 32]
                    _8860 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5697 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5697 + 69 len ceil32(_8860)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8860)]
                    if ceil32(_8860) > _8860:
                        mem[_5697 + _8860 + 69] = 0
                    return 32, mem[_5697 + 37 len ceil32(_8860) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _5760 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[_5760] = '.json'
                mem[64] = _5760 + 5
                mem[_5760 + 5] = 32
                if ceil32(_5760) <= _5760:
                    _8782 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5760 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5760 + 69 len ceil32(_8782)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8782)]
                    if ceil32(_8782) > _8782:
                        mem[_5760 + _8782 + 69] = 0
                    return 32, mem[_5760 + 37 len ceil32(_8782) + 32]
                _8862 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5760 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5760 + 69 len ceil32(_8862)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8862)]
                if ceil32(_8862) > _8862:
                    mem[_5760 + _8862 + 69] = 0
                return 32, mem[_5760 + 37 len ceil32(_8862) + 32]
            if 31 >= uint255(stor19[arg1].field_1):
                mem[128] = 256 * Mask(248, 0, stor19[arg1].field_8)
                mem[ceil32(uint255(stor19[arg1].field_1)) + 128] = 3
                mem[ceil32(uint255(stor19[arg1].field_1)) + 160] = 'egg'
                if sha3(mem[128 len uint255(stor19[arg1].field_1)]) != sha3('egg'):
                    if bool(stor18[arg1].field_0):
                        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                            revert with 'NH{q', 34
                        if bool(stor18[arg1].field_0):
                            if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                                revert with 'NH{q', 34
                            if uint255(stor18[arg1].field_1):
                                if 31 < uint255(stor18[arg1].field_1):
                                    mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                    idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                    s = 0
                                    while ceil32(uint255(stor19[arg1].field_1)) + uint255(stor18[arg1].field_1) + 192 > idx:
                                        mem[idx + 32] = stor18[arg1][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                        else:
                            if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if stor18[arg1].field_1 % 128:
                                if 31 < stor18[arg1].field_1 % 128:
                                    mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                    idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                    s = 0
                                    while ceil32(uint255(stor19[arg1].field_1)) + stor18[arg1].field_1 % 128 + 192 > idx:
                                        mem[idx + 32] = stor18[arg1][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(uint255(stor18[arg1].field_1)) + 288 len ceil32(uint255(stor18[arg1].field_1))] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]
                        if ceil32(uint255(stor18[arg1].field_1)) > uint255(stor18[arg1].field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(uint255(stor18[arg1].field_1)) + uint255(stor18[arg1].field_1) + 288] = 0
                        return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))], mem[ceil32(uint255(stor19[arg1].field_1)) + (2 * ceil32(uint255(stor18[arg1].field_1))) + 288 len 2 * ceil32(uint255(stor18[arg1].field_1))]), 
                    if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if bool(stor18[arg1].field_0):
                        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                            revert with 'NH{q', 34
                        if uint255(stor18[arg1].field_1):
                            if 31 < uint255(stor18[arg1].field_1):
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                s = 0
                                while ceil32(uint255(stor19[arg1].field_1)) + uint255(stor18[arg1].field_1) + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    else:
                        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if stor18[arg1].field_1 % 128:
                            if 31 < stor18[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                s = 0
                                while ceil32(uint255(stor19[arg1].field_1)) + stor18[arg1].field_1 % 128 + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(stor18[arg1].field_1 % 128) + 288 len ceil32(stor18[arg1].field_1 % 128)] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]
                    if ceil32(stor18[arg1].field_1 % 128) > stor18[arg1].field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(stor18[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 288] = 0
                    return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)], mem[ceil32(uint255(stor19[arg1].field_1)) + (2 * ceil32(stor18[arg1].field_1 % 128)) + 288 len 2 * ceil32(stor18[arg1].field_1 % 128)]), 
                if not arg1:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + 192] = 1
                    mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = '0'
                    if bool(stor11.length):
                        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor11.length):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                        else:
                            if bool(stor11.length) != 1:
                                mem[64] = 6
                                _2531 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                                mem[38] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                                mem[70 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                                if ceil32(_2531) > _2531:
                                    mem[_2531 + 70] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2531) + -mem[64] + 70
                            idx = 0
                            s = 0
                            while idx < uint255(stor11.length.field_1):
                                mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 288] = '0'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 289] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 294] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 326] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 358] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
                    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                    else:
                        if bool(stor11.length) != 1:
                            mem[64] = 6
                            _2533 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[38] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[70 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                            if ceil32(_2533) > _2533:
                                mem[_2533 + 70] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2533) + -mem[64] + 70
                        idx = 0
                        s = 0
                        while idx < stor11.length.field_1 % 128:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 288] = '0'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 289] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 294] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 326] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 358] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
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
                mem[ceil32(uint255(stor19[arg1].field_1)) + 192] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(uint255(stor19[arg1].field_1)) + 192]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(uint255(stor19[arg1].field_1)) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    if bool(stor11.length):
                        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor11.length):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                        if bool(stor11.length) == 1:
                            idx = 0
                            t = 0
                            while idx < uint255(stor11.length.field_1):
                                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                        _5705 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                        mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[_5705] = '.json'
                        mem[64] = _5705 + 5
                        mem[_5705 + 5] = 32
                        if ceil32(_5705) <= _5705:
                            _8788 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[_5705 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[_5705 + 69 len ceil32(_8788)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8788)]
                            if ceil32(_8788) > _8788:
                                mem[_5705 + _8788 + 69] = 0
                            return 32, mem[_5705 + 37 len ceil32(_8788) + 32]
                        _8870 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5705 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5705 + 69 len ceil32(_8870)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8870)]
                        if ceil32(_8870) > _8870:
                            mem[_5705 + _8870 + 69] = 0
                        return 32, mem[_5705 + 37 len ceil32(_8870) + 32]
                    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < stor11.length.field_1 % 128:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _5762 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[_5762] = '.json'
                    mem[64] = _5762 + 5
                    mem[_5762 + 5] = 32
                    if ceil32(_5762) <= _5762:
                        _8790 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5762 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5762 + 69 len ceil32(_8790)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8790)]
                        if ceil32(_8790) > _8790:
                            mem[_5762 + _8790 + 69] = 0
                        return 32, mem[_5762 + 37 len ceil32(_8790) + 32]
                    _8872 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5762 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5762 + 69 len ceil32(_8872)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8872)]
                    if ceil32(_8872) > _8872:
                        mem[_5762 + _8872 + 69] = 0
                    return 32, mem[_5762 + 37 len ceil32(_8872) + 32]
                mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(uint255(stor19[arg1].field_1)) + 192]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(uint255(stor19[arg1].field_1)) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _5707 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[_5707] = '.json'
                    mem[64] = _5707 + 5
                    mem[_5707 + 5] = 32
                    if ceil32(_5707) <= _5707:
                        _8792 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5707 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5707 + 69 len ceil32(_8792)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8792)]
                        if ceil32(_8792) > _8792:
                            mem[_5707 + _8792 + 69] = 0
                        return 32, mem[_5707 + 37 len ceil32(_8792) + 32]
                    _8874 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5707 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5707 + 69 len ceil32(_8874)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8874)]
                    if ceil32(_8874) > _8874:
                        mem[_5707 + _8874 + 69] = 0
                    return 32, mem[_5707 + 37 len ceil32(_8874) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _5763 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[_5763] = '.json'
                mem[64] = _5763 + 5
                mem[_5763 + 5] = 32
                if ceil32(_5763) <= _5763:
                    _8794 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5763 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5763 + 69 len ceil32(_8794)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8794)]
                    if ceil32(_8794) > _8794:
                        mem[_5763 + _8794 + 69] = 0
                    return 32, mem[_5763 + 37 len ceil32(_8794) + 32]
                _8876 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5763 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5763 + 69 len ceil32(_8876)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8876)]
                if ceil32(_8876) > _8876:
                    mem[_5763 + _8876 + 69] = 0
                return 32, mem[_5763 + 37 len ceil32(_8876) + 32]
            mem[0] = sha3(arg1, 19)
            mem[128] = stor19[arg1].field_0
            idx = 128
            s = 0
            while uint255(stor19[arg1].field_1) + 96 > idx:
                mem[idx + 32] = stor19[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(uint255(stor19[arg1].field_1)) + 128] = 3
            mem[ceil32(uint255(stor19[arg1].field_1)) + 160] = 'egg'
            if sha3(mem[128 len uint255(stor19[arg1].field_1)]) != sha3('egg'):
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if bool(stor18[arg1].field_0):
                        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                            revert with 'NH{q', 34
                        if uint255(stor18[arg1].field_1):
                            if 31 >= uint255(stor18[arg1].field_1):
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                            else:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                s = 0
                                while ceil32(uint255(stor19[arg1].field_1)) + uint255(stor18[arg1].field_1) + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if stor18[arg1].field_1 % 128:
                            if 31 >= stor18[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                            else:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                s = 0
                                while ceil32(uint255(stor19[arg1].field_1)) + stor18[arg1].field_1 % 128 + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                var60001 = ceil32(uint255(stor18[arg1].field_1))
                    return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor18[arg1].field_1):
                        if 31 >= uint255(stor18[arg1].field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                            idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                            s = 0
                            while ceil32(uint255(stor19[arg1].field_1)) + uint255(stor18[arg1].field_1) + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            var60001 = ceil32(stor18[arg1].field_1 % 128)
                else:
                    if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor18[arg1].field_1 % 128:
                        if 31 >= stor18[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                            idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                            s = 0
                            while ceil32(uint255(stor19[arg1].field_1)) + stor18[arg1].field_1 % 128 + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            var61001 = ceil32(stor18[arg1].field_1 % 128)
                return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
            if not arg1:
                mem[ceil32(uint255(stor19[arg1].field_1)) + 192] = 1
                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = '0'
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                    else:
                        if bool(stor11.length) != 1:
                            mem[64] = 6
                            _5702 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[38] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[70 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                            if ceil32(_5702) > _5702:
                                mem[_5702 + 70] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5702) + -mem[64] + 70
                        idx = 0
                        s = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 288] = '0'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 289] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 294] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 326] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 358] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 6
                        _5704 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[38] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[70 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                        if ceil32(_5704) > _5704:
                            mem[_5704 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5704) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 288] = '0'
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 289] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 294] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 326] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 358] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
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
            mem[ceil32(uint255(stor19[arg1].field_1)) + 192] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(uint255(stor19[arg1].field_1)) + 192]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(uint255(stor19[arg1].field_1)) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _8863 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[_8863] = '.json'
                    mem[64] = _8863 + 5
                    mem[_8863 + 5] = 32
                    if ceil32(_8863) <= _8863:
                        _11204 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_8863 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_8863 + 69 len ceil32(_11204)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11204)]
                        if ceil32(_11204) > _11204:
                            mem[_8863 + _11204 + 69] = 0
                        return 32, mem[_8863 + 37 len ceil32(_11204) + 32]
                    _11268 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_8863 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_8863 + 69 len ceil32(_11268)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11268)]
                    if ceil32(_11268) > _11268:
                        mem[_8863 + _11268 + 69] = 0
                    return 32, mem[_8863 + 37 len ceil32(_11268) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _8943 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[_8943] = '.json'
                mem[64] = _8943 + 5
                mem[_8943 + 5] = 32
                if ceil32(_8943) <= _8943:
                    _11206 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_8943 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_8943 + 69 len ceil32(_11206)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11206)]
                    if ceil32(_11206) > _11206:
                        mem[_8943 + _11206 + 69] = 0
                    return 32, mem[_8943 + 37 len ceil32(_11206) + 32]
                _11270 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_8943 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_8943 + 69 len ceil32(_11270)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11270)]
                if ceil32(_11270) > _11270:
                    mem[_8943 + _11270 + 69] = 0
                return 32, mem[_8943 + 37 len ceil32(_11270) + 32]
            mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor19[arg1].field_1)) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor19[arg1].field_1)) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _8865 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[_8865] = '.json'
                mem[64] = _8865 + 5
                mem[_8865 + 5] = 32
                if ceil32(_8865) <= _8865:
                    _11208 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_8865 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_8865 + 69 len ceil32(_11208)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11208)]
                    if ceil32(_11208) > _11208:
                        mem[_8865 + _11208 + 69] = 0
                    return 32, mem[_8865 + 37 len ceil32(_11208) + 32]
                _11272 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_8865 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_8865 + 69 len ceil32(_11272)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11272)]
                if ceil32(_11272) > _11272:
                    mem[_8865 + _11272 + 69] = 0
                return 32, mem[_8865 + 37 len ceil32(_11272) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                idx = 0
                t = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            _8944 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
            mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[_8944] = '.json'
            mem[64] = _8944 + 5
            mem[_8944 + 5] = 32
            if ceil32(_8944) <= _8944:
                _11210 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_8944 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_8944 + 69 len ceil32(_11210)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11210)]
                if ceil32(_11210) > _11210:
                    mem[_8944 + _11210 + 69] = 0
                return 32, mem[_8944 + 37 len ceil32(_11210) + 32]
            _11274 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_8944 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_8944 + 69 len ceil32(_11274)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11274)]
            if ceil32(_11274) > _11274:
                mem[_8944 + _11274 + 69] = 0
            return 32, mem[_8944 + 37 len ceil32(_11274) + 32]
        if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not stor19[arg1].field_1 % 128:
            mem[ceil32(uint255(stor19[arg1].field_1)) + 128] = 3
            mem[ceil32(uint255(stor19[arg1].field_1)) + 160] = 'egg'
            if sha3(mem[128 len uint255(stor19[arg1].field_1)]) != sha3('egg'):
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if bool(stor18[arg1].field_0):
                        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                            revert with 'NH{q', 34
                        if uint255(stor18[arg1].field_1):
                            if 31 < uint255(stor18[arg1].field_1):
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                s = 0
                                while ceil32(uint255(stor19[arg1].field_1)) + uint255(stor18[arg1].field_1) + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    else:
                        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if stor18[arg1].field_1 % 128:
                            if 31 < stor18[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                s = 0
                                while ceil32(uint255(stor19[arg1].field_1)) + stor18[arg1].field_1 % 128 + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(uint255(stor18[arg1].field_1)) + 288 len ceil32(uint255(stor18[arg1].field_1))] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]
                    if ceil32(uint255(stor18[arg1].field_1)) > uint255(stor18[arg1].field_1):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(uint255(stor18[arg1].field_1)) + uint255(stor18[arg1].field_1) + 288] = 0
                    return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))], mem[ceil32(uint255(stor19[arg1].field_1)) + (2 * ceil32(uint255(stor18[arg1].field_1))) + 288 len 2 * ceil32(uint255(stor18[arg1].field_1))]), 
                if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor18[arg1].field_1):
                        if 31 < uint255(stor18[arg1].field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                            idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                            s = 0
                            while ceil32(uint255(stor19[arg1].field_1)) + uint255(stor18[arg1].field_1) + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                else:
                    if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor18[arg1].field_1 % 128:
                        if 31 < stor18[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                            idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                            s = 0
                            while ceil32(uint255(stor19[arg1].field_1)) + stor18[arg1].field_1 % 128 + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(stor18[arg1].field_1 % 128) + 288 len ceil32(stor18[arg1].field_1 % 128)] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]
                if ceil32(stor18[arg1].field_1 % 128) > stor18[arg1].field_1 % 128:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(stor18[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 288] = 0
                return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)], mem[ceil32(uint255(stor19[arg1].field_1)) + (2 * ceil32(stor18[arg1].field_1 % 128)) + 288 len 2 * ceil32(stor18[arg1].field_1 % 128)]), 
            if not arg1:
                mem[ceil32(uint255(stor19[arg1].field_1)) + 192] = 1
                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = '0'
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                    else:
                        if bool(stor11.length) != 1:
                            mem[64] = 6
                            _2535 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[38] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[70 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                            if ceil32(_2535) > _2535:
                                mem[_2535 + 70] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2535) + -mem[64] + 70
                        idx = 0
                        s = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 288] = '0'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 289] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 294] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 326] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 358] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 6
                        _2537 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[38] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[70 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                        if ceil32(_2537) > _2537:
                            mem[_2537 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_2537) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 288] = '0'
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 289] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 294] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 326] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 358] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
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
            mem[ceil32(uint255(stor19[arg1].field_1)) + 192] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(uint255(stor19[arg1].field_1)) + 192]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(uint255(stor19[arg1].field_1)) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _5711 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[_5711] = '.json'
                    mem[64] = _5711 + 5
                    mem[_5711 + 5] = 32
                    if ceil32(_5711) <= _5711:
                        _8796 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5711 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5711 + 69 len ceil32(_8796)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8796)]
                        if ceil32(_8796) > _8796:
                            mem[_5711 + _8796 + 69] = 0
                        return 32, mem[_5711 + 37 len ceil32(_8796) + 32]
                    _8878 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5711 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5711 + 69 len ceil32(_8878)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8878)]
                    if ceil32(_8878) > _8878:
                        mem[_5711 + _8878 + 69] = 0
                    return 32, mem[_5711 + 37 len ceil32(_8878) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _5764 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[_5764] = '.json'
                mem[64] = _5764 + 5
                mem[_5764 + 5] = 32
                if ceil32(_5764) <= _5764:
                    _8798 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5764 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5764 + 69 len ceil32(_8798)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8798)]
                    if ceil32(_8798) > _8798:
                        mem[_5764 + _8798 + 69] = 0
                    return 32, mem[_5764 + 37 len ceil32(_8798) + 32]
                _8880 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5764 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5764 + 69 len ceil32(_8880)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8880)]
                if ceil32(_8880) > _8880:
                    mem[_5764 + _8880 + 69] = 0
                return 32, mem[_5764 + 37 len ceil32(_8880) + 32]
            mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor19[arg1].field_1)) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor19[arg1].field_1)) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _5713 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[_5713] = '.json'
                mem[64] = _5713 + 5
                mem[_5713 + 5] = 32
                if ceil32(_5713) <= _5713:
                    _8800 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5713 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5713 + 69 len ceil32(_8800)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8800)]
                    if ceil32(_8800) > _8800:
                        mem[_5713 + _8800 + 69] = 0
                    return 32, mem[_5713 + 37 len ceil32(_8800) + 32]
                _8882 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5713 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5713 + 69 len ceil32(_8882)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8882)]
                if ceil32(_8882) > _8882:
                    mem[_5713 + _8882 + 69] = 0
                return 32, mem[_5713 + 37 len ceil32(_8882) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                idx = 0
                t = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            _5765 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
            mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[_5765] = '.json'
            mem[64] = _5765 + 5
            mem[_5765 + 5] = 32
            if ceil32(_5765) <= _5765:
                _8802 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5765 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5765 + 69 len ceil32(_8802)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8802)]
                if ceil32(_8802) > _8802:
                    mem[_5765 + _8802 + 69] = 0
                return 32, mem[_5765 + 37 len ceil32(_8802) + 32]
            _8884 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_5765 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_5765 + 69 len ceil32(_8884)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8884)]
            if ceil32(_8884) > _8884:
                mem[_5765 + _8884 + 69] = 0
            return 32, mem[_5765 + 37 len ceil32(_8884) + 32]
        if 31 >= stor19[arg1].field_1 % 128:
            mem[128] = 256 * Mask(248, 0, stor19[arg1].field_8)
            mem[ceil32(uint255(stor19[arg1].field_1)) + 128] = 3
            mem[ceil32(uint255(stor19[arg1].field_1)) + 160] = 'egg'
            if sha3(mem[128 len uint255(stor19[arg1].field_1)]) != sha3('egg'):
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if bool(stor18[arg1].field_0):
                        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                            revert with 'NH{q', 34
                        if uint255(stor18[arg1].field_1):
                            if 31 < uint255(stor18[arg1].field_1):
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                s = 0
                                while ceil32(uint255(stor19[arg1].field_1)) + uint255(stor18[arg1].field_1) + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    else:
                        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if stor18[arg1].field_1 % 128:
                            if 31 < stor18[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                                idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                                s = 0
                                while ceil32(uint255(stor19[arg1].field_1)) + stor18[arg1].field_1 % 128 + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(uint255(stor18[arg1].field_1)) + 288 len ceil32(uint255(stor18[arg1].field_1))] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]
                    if ceil32(uint255(stor18[arg1].field_1)) > uint255(stor18[arg1].field_1):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(uint255(stor18[arg1].field_1)) + uint255(stor18[arg1].field_1) + 288] = 0
                    return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))], mem[ceil32(uint255(stor19[arg1].field_1)) + (2 * ceil32(uint255(stor18[arg1].field_1))) + 288 len 2 * ceil32(uint255(stor18[arg1].field_1))]), 
                if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor18[arg1].field_1):
                        if 31 < uint255(stor18[arg1].field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                            idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                            s = 0
                            while ceil32(uint255(stor19[arg1].field_1)) + uint255(stor18[arg1].field_1) + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                else:
                    if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor18[arg1].field_1 % 128:
                        if 31 < stor18[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                            idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                            s = 0
                            while ceil32(uint255(stor19[arg1].field_1)) + stor18[arg1].field_1 % 128 + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(stor18[arg1].field_1 % 128) + 288 len ceil32(stor18[arg1].field_1 % 128)] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]
                if ceil32(stor18[arg1].field_1 % 128) > stor18[arg1].field_1 % 128:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(stor18[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 288] = 0
                return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)], mem[ceil32(uint255(stor19[arg1].field_1)) + (2 * ceil32(stor18[arg1].field_1 % 128)) + 288 len 2 * ceil32(stor18[arg1].field_1 % 128)]), 
            if not arg1:
                mem[ceil32(uint255(stor19[arg1].field_1)) + 192] = 1
                mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = '0'
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                    else:
                        if bool(stor11.length) != 1:
                            mem[64] = 6
                            _2542 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[38] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[70 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                            if ceil32(_2542) > _2542:
                                mem[_2542 + 70] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2542) + -mem[64] + 70
                        idx = 0
                        s = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 288] = '0'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 289] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 294] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 326] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 358] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 6
                        _2544 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[38] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[70 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                        if ceil32(_2544) > _2544:
                            mem[_2544 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_2544) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 288] = '0'
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 289] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 294] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 326] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 358] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
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
            mem[ceil32(uint255(stor19[arg1].field_1)) + 192] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(uint255(stor19[arg1].field_1)) + 192]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(uint255(stor19[arg1].field_1)) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _5721 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[_5721] = '.json'
                    mem[64] = _5721 + 5
                    mem[_5721 + 5] = 32
                    if ceil32(_5721) <= _5721:
                        _8808 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5721 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5721 + 69 len ceil32(_8808)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8808)]
                        if ceil32(_8808) > _8808:
                            mem[_5721 + _8808 + 69] = 0
                        return 32, mem[_5721 + 37 len ceil32(_8808) + 32]
                    _8892 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5721 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5721 + 69 len ceil32(_8892)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8892)]
                    if ceil32(_8892) > _8892:
                        mem[_5721 + _8892 + 69] = 0
                    return 32, mem[_5721 + 37 len ceil32(_8892) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _5767 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[_5767] = '.json'
                mem[64] = _5767 + 5
                mem[_5767 + 5] = 32
                if ceil32(_5767) <= _5767:
                    _8810 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5767 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5767 + 69 len ceil32(_8810)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8810)]
                    if ceil32(_8810) > _8810:
                        mem[_5767 + _8810 + 69] = 0
                    return 32, mem[_5767 + 37 len ceil32(_8810) + 32]
                _8894 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5767 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5767 + 69 len ceil32(_8894)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8894)]
                if ceil32(_8894) > _8894:
                    mem[_5767 + _8894 + 69] = 0
                return 32, mem[_5767 + 37 len ceil32(_8894) + 32]
            mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor19[arg1].field_1)) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor19[arg1].field_1)) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _5723 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[_5723] = '.json'
                mem[64] = _5723 + 5
                mem[_5723 + 5] = 32
                if ceil32(_5723) <= _5723:
                    _8812 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5723 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5723 + 69 len ceil32(_8812)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8812)]
                    if ceil32(_8812) > _8812:
                        mem[_5723 + _8812 + 69] = 0
                    return 32, mem[_5723 + 37 len ceil32(_8812) + 32]
                _8896 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5723 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5723 + 69 len ceil32(_8896)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8896)]
                if ceil32(_8896) > _8896:
                    mem[_5723 + _8896 + 69] = 0
                return 32, mem[_5723 + 37 len ceil32(_8896) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                idx = 0
                t = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            _5768 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
            mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[_5768] = '.json'
            mem[64] = _5768 + 5
            mem[_5768 + 5] = 32
            if ceil32(_5768) <= _5768:
                _8814 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5768 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5768 + 69 len ceil32(_8814)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8814)]
                if ceil32(_8814) > _8814:
                    mem[_5768 + _8814 + 69] = 0
                return 32, mem[_5768 + 37 len ceil32(_8814) + 32]
            _8898 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_5768 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_5768 + 69 len ceil32(_8898)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8898)]
            if ceil32(_8898) > _8898:
                mem[_5768 + _8898 + 69] = 0
            return 32, mem[_5768 + 37 len ceil32(_8898) + 32]
        mem[0] = sha3(arg1, 19)
        mem[128] = stor19[arg1].field_0
        idx = 128
        s = 0
        while stor19[arg1].field_1 % 128 + 96 > idx:
            mem[idx + 32] = stor19[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(uint255(stor19[arg1].field_1)) + 128] = 3
        mem[ceil32(uint255(stor19[arg1].field_1)) + 160] = 'egg'
        if sha3(mem[128 len uint255(stor19[arg1].field_1)]) != sha3('egg'):
            if bool(stor18[arg1].field_0):
                if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor18[arg1].field_1):
                        if 31 >= uint255(stor18[arg1].field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                            idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                            s = 0
                            while ceil32(uint255(stor19[arg1].field_1)) + uint255(stor18[arg1].field_1) + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor18[arg1].field_1 % 128:
                        if 31 >= stor18[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                            idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                            s = 0
                            while ceil32(uint255(stor19[arg1].field_1)) + stor18[arg1].field_1 % 128 + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            var61001 = ceil32(uint255(stor18[arg1].field_1))
                return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
            if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if bool(stor18[arg1].field_0):
                if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor18[arg1].field_1):
                    if 31 >= uint255(stor18[arg1].field_1):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    else:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                        idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                        s = 0
                        while ceil32(uint255(stor19[arg1].field_1)) + uint255(stor18[arg1].field_1) + 192 > idx:
                            mem[idx + 32] = stor18[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        var61001 = ceil32(stor18[arg1].field_1 % 128)
            else:
                if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if stor18[arg1].field_1 % 128:
                    if 31 >= stor18[arg1].field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    else:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = stor18[arg1].field_0
                        idx = ceil32(uint255(stor19[arg1].field_1)) + 224
                        s = 0
                        while ceil32(uint255(stor19[arg1].field_1)) + stor18[arg1].field_1 % 128 + 192 > idx:
                            mem[idx + 32] = stor18[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        var62001 = ceil32(stor18[arg1].field_1 % 128)
            return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
        if not arg1:
            mem[ceil32(uint255(stor19[arg1].field_1)) + 192] = 1
            mem[ceil32(uint255(stor19[arg1].field_1)) + 224] = '0'
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 6
                        _5718 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[38] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[70 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                        if ceil32(_5718) > _5718:
                            mem[_5718 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5718) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 288] = '0'
                mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 289] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 294] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 326] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 358] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 6
                    _5720 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[38] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[70 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                    if ceil32(_5720) > _5720:
                        mem[_5720 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_5720) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 288] = '0'
            mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 289] = '.json'
            mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 294] = 32
            mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 326] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
            mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 358] = 0
            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
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
        mem[ceil32(uint255(stor19[arg1].field_1)) + 192] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor19[arg1].field_1)) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor19[arg1].field_1)) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _8885 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[_8885] = '.json'
                mem[64] = _8885 + 5
                mem[_8885 + 5] = 32
                if ceil32(_8885) <= _8885:
                    _11220 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_8885 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_8885 + 69 len ceil32(_11220)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11220)]
                    if ceil32(_11220) > _11220:
                        mem[_8885 + _11220 + 69] = 0
                    return 32, mem[_8885 + 37 len ceil32(_11220) + 32]
                _11284 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_8885 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_8885 + 69 len ceil32(_11284)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11284)]
                if ceil32(_11284) > _11284:
                    mem[_8885 + _11284 + 69] = 0
                return 32, mem[_8885 + 37 len ceil32(_11284) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                idx = 0
                t = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            _8945 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
            mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[_8945] = '.json'
            mem[64] = _8945 + 5
            mem[_8945 + 5] = 32
            if ceil32(_8945) <= _8945:
                _11222 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_8945 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_8945 + 69 len ceil32(_11222)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11222)]
                if ceil32(_11222) > _11222:
                    mem[_8945 + _11222 + 69] = 0
                return 32, mem[_8945 + 37 len ceil32(_11222) + 32]
            _11286 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_8945 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_8945 + 69 len ceil32(_11286)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11286)]
            if ceil32(_11286) > _11286:
                mem[_8945 + _11286 + 69] = 0
            return 32, mem[_8945 + 37 len ceil32(_11286) + 32]
        mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(uint255(stor19[arg1].field_1)) + 192]:
                revert with 'NH{q', 50
            mem[t + ceil32(uint255(stor19[arg1].field_1)) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                idx = 0
                t = 0
                while idx < uint255(stor11.length.field_1):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            _8887 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
            mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[_8887] = '.json'
            mem[64] = _8887 + 5
            mem[_8887 + 5] = 32
            if ceil32(_8887) <= _8887:
                _11224 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_8887 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_8887 + 69 len ceil32(_11224)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11224)]
                if ceil32(_11224) > _11224:
                    mem[_8887 + _11224 + 69] = 0
                return 32, mem[_8887 + 37 len ceil32(_11224) + 32]
            _11288 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_8887 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_8887 + 69 len ceil32(_11288)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11288)]
            if ceil32(_11288) > _11288:
                mem[_8887 + _11288 + 69] = 0
            return 32, mem[_8887 + 37 len ceil32(_11288) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
        if bool(stor11.length) == 1:
            idx = 0
            t = 0
            while idx < stor11.length.field_1 % 128:
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = '.json'
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 261] = 32
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 293] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 325] = 0
            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 325 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
        _8946 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
        mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
        mem[_8946] = '.json'
        mem[64] = _8946 + 5
        mem[_8946 + 5] = 32
        if ceil32(_8946) <= _8946:
            _11226 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_8946 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_8946 + 69 len ceil32(_11226)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11226)]
            if ceil32(_11226) > _11226:
                mem[_8946 + _11226 + 69] = 0
            return 32, mem[_8946 + 37 len ceil32(_11226) + 32]
        _11290 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
        mem[_8946 + 37] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
        mem[_8946 + 69 len ceil32(_11290)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11290)]
        if ceil32(_11290) > _11290:
            mem[_8946 + _11290 + 69] = 0
        return 32, mem[_8946 + 37 len ceil32(_11290) + 32]
    if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    mem[96] = stor19[arg1].field_1 % 128
    if bool(stor19[arg1].field_0):
        if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if not uint255(stor19[arg1].field_1):
            mem[ceil32(stor19[arg1].field_1 % 128) + 128] = 3
            mem[ceil32(stor19[arg1].field_1 % 128) + 160] = 'egg'
            if sha3(mem[128 len stor19[arg1].field_1 % 128]) != sha3('egg'):
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if bool(stor18[arg1].field_0):
                        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                            revert with 'NH{q', 34
                        if uint255(stor18[arg1].field_1):
                            if 31 < uint255(stor18[arg1].field_1):
                                mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                                idx = ceil32(stor19[arg1].field_1 % 128) + 224
                                s = 0
                                while ceil32(stor19[arg1].field_1 % 128) + uint255(stor18[arg1].field_1) + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    else:
                        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if stor18[arg1].field_1 % 128:
                            if 31 < stor18[arg1].field_1 % 128:
                                mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                                idx = ceil32(stor19[arg1].field_1 % 128) + 224
                                s = 0
                                while ceil32(stor19[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(uint255(stor18[arg1].field_1)) + 288 len ceil32(uint255(stor18[arg1].field_1))] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]
                    if ceil32(uint255(stor18[arg1].field_1)) > uint255(stor18[arg1].field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(uint255(stor18[arg1].field_1)) + uint255(stor18[arg1].field_1) + 288] = 0
                    return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))], mem[ceil32(stor19[arg1].field_1 % 128) + (2 * ceil32(uint255(stor18[arg1].field_1))) + 288 len 2 * ceil32(uint255(stor18[arg1].field_1))]), 
                if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor18[arg1].field_1):
                        if 31 < uint255(stor18[arg1].field_1):
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                            idx = ceil32(stor19[arg1].field_1 % 128) + 224
                            s = 0
                            while ceil32(stor19[arg1].field_1 % 128) + uint255(stor18[arg1].field_1) + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                else:
                    if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor18[arg1].field_1 % 128:
                        if 31 < stor18[arg1].field_1 % 128:
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                            idx = ceil32(stor19[arg1].field_1 % 128) + 224
                            s = 0
                            while ceil32(stor19[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(stor18[arg1].field_1 % 128) + 288 len ceil32(stor18[arg1].field_1 % 128)] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]
                if ceil32(stor18[arg1].field_1 % 128) > stor18[arg1].field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(stor18[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 288] = 0
                return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)], mem[ceil32(stor19[arg1].field_1 % 128) + (2 * ceil32(stor18[arg1].field_1 % 128)) + 288 len 2 * ceil32(stor18[arg1].field_1 % 128)]), 
            if not arg1:
                mem[ceil32(stor19[arg1].field_1 % 128) + 192] = 1
                mem[ceil32(stor19[arg1].field_1 % 128) + 224] = '0'
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
                    else:
                        if bool(stor11.length) != 1:
                            mem[64] = 6
                            _2546 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                            mem[38] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                            mem[70 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                            if ceil32(_2546) > _2546:
                                mem[_2546 + 70] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2546) + -mem[64] + 70
                        idx = 0
                        s = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 288] = '0'
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 289] = '.json'
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 294] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 326] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 358] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 6
                        _2548 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[38] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[70 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                        if ceil32(_2548) > _2548:
                            mem[_2548 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_2548) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 288] = '0'
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 289] = '.json'
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 294] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 326] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 358] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
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
            mem[ceil32(stor19[arg1].field_1 % 128) + 192] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor19[arg1].field_1 % 128) + 192]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor19[arg1].field_1 % 128) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                        mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        mem[0] = 11
                        idx = 0
                        t = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                        mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                    _5727 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                    mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[_5727] = '.json'
                    mem[64] = _5727 + 5
                    mem[_5727 + 5] = 32
                    if ceil32(_5727) <= _5727:
                        _8816 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[_5727 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[_5727 + 69 len ceil32(_8816)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8816)]
                        if ceil32(_8816) > _8816:
                            mem[_5727 + _8816 + 69] = 0
                        return 32, mem[_5727 + 37 len ceil32(_8816) + 32]
                    _8900 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5727 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5727 + 69 len ceil32(_8900)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8900)]
                    if ceil32(_8900) > _8900:
                        mem[_5727 + _8900 + 69] = 0
                    return 32, mem[_5727 + 37 len ceil32(_8900) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    mem[0] = 11
                    idx = 0
                    t = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _5769 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[_5769] = '.json'
                mem[64] = _5769 + 5
                mem[_5769 + 5] = 32
                if ceil32(_5769) <= _5769:
                    _8818 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5769 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5769 + 69 len ceil32(_8818)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8818)]
                    if ceil32(_8818) > _8818:
                        mem[_5769 + _8818 + 69] = 0
                    return 32, mem[_5769 + 37 len ceil32(_8818) + 32]
                _8902 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5769 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5769 + 69 len ceil32(_8902)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8902)]
                if ceil32(_8902) > _8902:
                    mem[_5769 + _8902 + 69] = 0
                return 32, mem[_5769 + 37 len ceil32(_8902) + 32]
            mem[ceil32(stor19[arg1].field_1 % 128) + 224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19[arg1].field_1 % 128) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19[arg1].field_1 % 128) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    mem[0] = 11
                    idx = 0
                    t = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _5729 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[_5729] = '.json'
                mem[64] = _5729 + 5
                mem[_5729 + 5] = 32
                if ceil32(_5729) <= _5729:
                    _8820 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5729 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5729 + 69 len ceil32(_8820)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8820)]
                    if ceil32(_8820) > _8820:
                        mem[_5729 + _8820 + 69] = 0
                    return 32, mem[_5729 + 37 len ceil32(_8820) + 32]
                _8904 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5729 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5729 + 69 len ceil32(_8904)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8904)]
                if ceil32(_8904) > _8904:
                    mem[_5729 + _8904 + 69] = 0
                return 32, mem[_5729 + 37 len ceil32(_8904) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                mem[0] = 11
                idx = 0
                t = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _5770 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[_5770] = '.json'
            mem[64] = _5770 + 5
            mem[_5770 + 5] = 32
            if ceil32(_5770) <= _5770:
                _8822 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5770 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5770 + 69 len ceil32(_8822)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8822)]
                if ceil32(_8822) > _8822:
                    mem[_5770 + _8822 + 69] = 0
                return 32, mem[_5770 + 37 len ceil32(_8822) + 32]
            _8906 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5770 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5770 + 69 len ceil32(_8906)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8906)]
            if ceil32(_8906) > _8906:
                mem[_5770 + _8906 + 69] = 0
            return 32, mem[_5770 + 37 len ceil32(_8906) + 32]
        if 31 >= uint255(stor19[arg1].field_1):
            mem[128] = 256 * Mask(248, 0, stor19[arg1].field_8)
            mem[ceil32(stor19[arg1].field_1 % 128) + 128] = 3
            mem[ceil32(stor19[arg1].field_1 % 128) + 160] = 'egg'
            if sha3(mem[128 len stor19[arg1].field_1 % 128]) != sha3('egg'):
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if bool(stor18[arg1].field_0):
                        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                            revert with 'NH{q', 34
                        if uint255(stor18[arg1].field_1):
                            if 31 < uint255(stor18[arg1].field_1):
                                mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                                idx = ceil32(stor19[arg1].field_1 % 128) + 224
                                s = 0
                                while ceil32(stor19[arg1].field_1 % 128) + uint255(stor18[arg1].field_1) + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    else:
                        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if stor18[arg1].field_1 % 128:
                            if 31 < stor18[arg1].field_1 % 128:
                                mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                                idx = ceil32(stor19[arg1].field_1 % 128) + 224
                                s = 0
                                while ceil32(stor19[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 192 > idx:
                                    mem[idx + 32] = stor18[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(uint255(stor18[arg1].field_1)) + 288 len ceil32(uint255(stor18[arg1].field_1))] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]
                    if ceil32(uint255(stor18[arg1].field_1)) > uint255(stor18[arg1].field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(uint255(stor18[arg1].field_1)) + uint255(stor18[arg1].field_1) + 288] = 0
                    return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))], mem[ceil32(stor19[arg1].field_1 % 128) + (2 * ceil32(uint255(stor18[arg1].field_1))) + 288 len 2 * ceil32(uint255(stor18[arg1].field_1))]), 
                if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor18[arg1].field_1):
                        if 31 < uint255(stor18[arg1].field_1):
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                            idx = ceil32(stor19[arg1].field_1 % 128) + 224
                            s = 0
                            while ceil32(stor19[arg1].field_1 % 128) + uint255(stor18[arg1].field_1) + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                else:
                    if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor18[arg1].field_1 % 128:
                        if 31 < stor18[arg1].field_1 % 128:
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                            idx = ceil32(stor19[arg1].field_1 % 128) + 224
                            s = 0
                            while ceil32(stor19[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(stor18[arg1].field_1 % 128) + 288 len ceil32(stor18[arg1].field_1 % 128)] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]
                if ceil32(stor18[arg1].field_1 % 128) > stor18[arg1].field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(stor18[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 288] = 0
                return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)], mem[ceil32(stor19[arg1].field_1 % 128) + (2 * ceil32(stor18[arg1].field_1 % 128)) + 288 len 2 * ceil32(stor18[arg1].field_1 % 128)]), 
            if not arg1:
                mem[ceil32(stor19[arg1].field_1 % 128) + 192] = 1
                mem[ceil32(stor19[arg1].field_1 % 128) + 224] = '0'
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
                    else:
                        if bool(stor11.length) != 1:
                            mem[64] = 6
                            _2553 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                            mem[38] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                            mem[70 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                            if ceil32(_2553) > _2553:
                                mem[_2553 + 70] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2553) + -mem[64] + 70
                        idx = 0
                        s = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 288] = '0'
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 289] = '.json'
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 294] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 326] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 358] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 6
                        _2555 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[38] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[70 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                        if ceil32(_2555) > _2555:
                            mem[_2555 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_2555) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 288] = '0'
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 289] = '.json'
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 294] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 326] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 358] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
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
            mem[ceil32(stor19[arg1].field_1 % 128) + 192] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor19[arg1].field_1 % 128) + 192]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor19[arg1].field_1 % 128) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                        mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        mem[0] = 11
                        idx = 0
                        t = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                        mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                    _5737 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                    mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[_5737] = '.json'
                    mem[64] = _5737 + 5
                    mem[_5737 + 5] = 32
                    if ceil32(_5737) <= _5737:
                        _8828 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[_5737 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[_5737 + 69 len ceil32(_8828)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8828)]
                        if ceil32(_8828) > _8828:
                            mem[_5737 + _8828 + 69] = 0
                        return 32, mem[_5737 + 37 len ceil32(_8828) + 32]
                    _8914 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5737 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5737 + 69 len ceil32(_8914)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8914)]
                    if ceil32(_8914) > _8914:
                        mem[_5737 + _8914 + 69] = 0
                    return 32, mem[_5737 + 37 len ceil32(_8914) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    mem[0] = 11
                    idx = 0
                    t = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _5772 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[_5772] = '.json'
                mem[64] = _5772 + 5
                mem[_5772 + 5] = 32
                if ceil32(_5772) <= _5772:
                    _8830 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5772 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5772 + 69 len ceil32(_8830)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8830)]
                    if ceil32(_8830) > _8830:
                        mem[_5772 + _8830 + 69] = 0
                    return 32, mem[_5772 + 37 len ceil32(_8830) + 32]
                _8916 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5772 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5772 + 69 len ceil32(_8916)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8916)]
                if ceil32(_8916) > _8916:
                    mem[_5772 + _8916 + 69] = 0
                return 32, mem[_5772 + 37 len ceil32(_8916) + 32]
            mem[ceil32(stor19[arg1].field_1 % 128) + 224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19[arg1].field_1 % 128) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19[arg1].field_1 % 128) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    mem[0] = 11
                    idx = 0
                    t = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _5739 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[_5739] = '.json'
                mem[64] = _5739 + 5
                mem[_5739 + 5] = 32
                if ceil32(_5739) <= _5739:
                    _8832 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5739 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5739 + 69 len ceil32(_8832)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8832)]
                    if ceil32(_8832) > _8832:
                        mem[_5739 + _8832 + 69] = 0
                    return 32, mem[_5739 + 37 len ceil32(_8832) + 32]
                _8918 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5739 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5739 + 69 len ceil32(_8918)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8918)]
                if ceil32(_8918) > _8918:
                    mem[_5739 + _8918 + 69] = 0
                return 32, mem[_5739 + 37 len ceil32(_8918) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                mem[0] = 11
                idx = 0
                t = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _5773 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[_5773] = '.json'
            mem[64] = _5773 + 5
            mem[_5773 + 5] = 32
            if ceil32(_5773) <= _5773:
                _8834 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5773 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5773 + 69 len ceil32(_8834)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8834)]
                if ceil32(_8834) > _8834:
                    mem[_5773 + _8834 + 69] = 0
                return 32, mem[_5773 + 37 len ceil32(_8834) + 32]
            _8920 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5773 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5773 + 69 len ceil32(_8920)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8920)]
            if ceil32(_8920) > _8920:
                mem[_5773 + _8920 + 69] = 0
            return 32, mem[_5773 + 37 len ceil32(_8920) + 32]
        mem[0] = sha3(arg1, 19)
        mem[128] = stor19[arg1].field_0
        idx = 128
        s = 0
        while uint255(stor19[arg1].field_1) + 96 > idx:
            mem[idx + 32] = stor19[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor19[arg1].field_1 % 128) + 128] = 3
        mem[ceil32(stor19[arg1].field_1 % 128) + 160] = 'egg'
        if sha3(mem[128 len stor19[arg1].field_1 % 128]) != sha3('egg'):
            if bool(stor18[arg1].field_0):
                if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor18[arg1].field_1):
                        if 31 >= uint255(stor18[arg1].field_1):
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                        else:
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                            idx = ceil32(stor19[arg1].field_1 % 128) + 224
                            s = 0
                            while ceil32(stor19[arg1].field_1 % 128) + uint255(stor18[arg1].field_1) + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor18[arg1].field_1 % 128:
                        if 31 >= stor18[arg1].field_1 % 128:
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                        else:
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                            idx = ceil32(stor19[arg1].field_1 % 128) + 224
                            s = 0
                            while ceil32(stor19[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            var61001 = ceil32(uint255(stor18[arg1].field_1))
                return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
            if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if bool(stor18[arg1].field_0):
                if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor18[arg1].field_1):
                    if 31 >= uint255(stor18[arg1].field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    else:
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                        idx = ceil32(stor19[arg1].field_1 % 128) + 224
                        s = 0
                        while ceil32(stor19[arg1].field_1 % 128) + uint255(stor18[arg1].field_1) + 192 > idx:
                            mem[idx + 32] = stor18[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        var61001 = ceil32(stor18[arg1].field_1 % 128)
            else:
                if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if stor18[arg1].field_1 % 128:
                    if 31 >= stor18[arg1].field_1 % 128:
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    else:
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                        idx = ceil32(stor19[arg1].field_1 % 128) + 224
                        s = 0
                        while ceil32(stor19[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 192 > idx:
                            mem[idx + 32] = stor18[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        var62001 = ceil32(stor18[arg1].field_1 % 128)
            return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
        if not arg1:
            mem[ceil32(stor19[arg1].field_1 % 128) + 192] = 1
            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = '0'
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 6
                        _5734 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[38] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[70 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                        if ceil32(_5734) > _5734:
                            mem[_5734 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5734) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 288] = '0'
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 289] = '.json'
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 294] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 326] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 358] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 6
                    _5736 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[38] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[70 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                    if ceil32(_5736) > _5736:
                        mem[_5736 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_5736) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 288] = '0'
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 289] = '.json'
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 294] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 326] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 358] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
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
        mem[ceil32(stor19[arg1].field_1 % 128) + 192] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19[arg1].field_1 % 128) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19[arg1].field_1 % 128) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    mem[0] = 11
                    idx = 0
                    t = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _8907 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[_8907] = '.json'
                mem[64] = _8907 + 5
                mem[_8907 + 5] = 32
                if ceil32(_8907) <= _8907:
                    _11236 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_8907 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_8907 + 69 len ceil32(_11236)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11236)]
                    if ceil32(_11236) > _11236:
                        mem[_8907 + _11236 + 69] = 0
                    return 32, mem[_8907 + 37 len ceil32(_11236) + 32]
                _11300 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_8907 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_8907 + 69 len ceil32(_11300)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11300)]
                if ceil32(_11300) > _11300:
                    mem[_8907 + _11300 + 69] = 0
                return 32, mem[_8907 + 37 len ceil32(_11300) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                mem[0] = 11
                idx = 0
                t = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _8947 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[_8947] = '.json'
            mem[64] = _8947 + 5
            mem[_8947 + 5] = 32
            if ceil32(_8947) <= _8947:
                _11238 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_8947 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_8947 + 69 len ceil32(_11238)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11238)]
                if ceil32(_11238) > _11238:
                    mem[_8947 + _11238 + 69] = 0
                return 32, mem[_8947 + 37 len ceil32(_11238) + 32]
            _11302 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_8947 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_8947 + 69 len ceil32(_11302)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11302)]
            if ceil32(_11302) > _11302:
                mem[_8947 + _11302 + 69] = 0
            return 32, mem[_8947 + 37 len ceil32(_11302) + 32]
        mem[ceil32(stor19[arg1].field_1 % 128) + 224 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19[arg1].field_1 % 128) + 192]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19[arg1].field_1 % 128) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                mem[0] = 11
                idx = 0
                t = 0
                while idx < uint255(stor11.length.field_1):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _8909 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[_8909] = '.json'
            mem[64] = _8909 + 5
            mem[_8909 + 5] = 32
            if ceil32(_8909) <= _8909:
                _11240 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_8909 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_8909 + 69 len ceil32(_11240)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11240)]
                if ceil32(_11240) > _11240:
                    mem[_8909 + _11240 + 69] = 0
                return 32, mem[_8909 + 37 len ceil32(_11240) + 32]
            _11304 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_8909 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_8909 + 69 len ceil32(_11304)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11304)]
            if ceil32(_11304) > _11304:
                mem[_8909 + _11304 + 69] = 0
            return 32, mem[_8909 + 37 len ceil32(_11304) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        if bool(stor11.length) == 1:
            mem[0] = 11
            idx = 0
            t = 0
            while idx < stor11.length.field_1 % 128:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        _8948 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
        mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
        mem[_8948] = '.json'
        mem[64] = _8948 + 5
        mem[_8948 + 5] = 32
        if ceil32(_8948) <= _8948:
            _11242 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_8948 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_8948 + 69 len ceil32(_11242)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11242)]
            if ceil32(_11242) > _11242:
                mem[_8948 + _11242 + 69] = 0
            return 32, mem[_8948 + 37 len ceil32(_11242) + 32]
        _11306 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_8948 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_8948 + 69 len ceil32(_11306)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11306)]
        if ceil32(_11306) > _11306:
            mem[_8948 + _11306 + 69] = 0
        return 32, mem[_8948 + 37 len ceil32(_11306) + 32]
    if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not stor19[arg1].field_1 % 128:
        mem[ceil32(stor19[arg1].field_1 % 128) + 128] = 3
        mem[ceil32(stor19[arg1].field_1 % 128) + 160] = 'egg'
        if sha3(mem[128 len stor19[arg1].field_1 % 128]) != sha3('egg'):
            if bool(stor18[arg1].field_0):
                if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor18[arg1].field_1):
                        if 31 < uint255(stor18[arg1].field_1):
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                            idx = ceil32(stor19[arg1].field_1 % 128) + 224
                            s = 0
                            while ceil32(stor19[arg1].field_1 % 128) + uint255(stor18[arg1].field_1) + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                else:
                    if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor18[arg1].field_1 % 128:
                        if 31 < stor18[arg1].field_1 % 128:
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                            idx = ceil32(stor19[arg1].field_1 % 128) + 224
                            s = 0
                            while ceil32(stor19[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(uint255(stor18[arg1].field_1)) + 288 len ceil32(uint255(stor18[arg1].field_1))] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]
                if ceil32(uint255(stor18[arg1].field_1)) > uint255(stor18[arg1].field_1):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(uint255(stor18[arg1].field_1)) + uint255(stor18[arg1].field_1) + 288] = 0
                return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))], mem[ceil32(stor19[arg1].field_1 % 128) + (2 * ceil32(uint255(stor18[arg1].field_1))) + 288 len 2 * ceil32(uint255(stor18[arg1].field_1))]), 
            if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if bool(stor18[arg1].field_0):
                if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor18[arg1].field_1):
                    if 31 < uint255(stor18[arg1].field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                        idx = ceil32(stor19[arg1].field_1 % 128) + 224
                        s = 0
                        while ceil32(stor19[arg1].field_1 % 128) + uint255(stor18[arg1].field_1) + 192 > idx:
                            mem[idx + 32] = stor18[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                    mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
            else:
                if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if stor18[arg1].field_1 % 128:
                    if 31 < stor18[arg1].field_1 % 128:
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                        idx = ceil32(stor19[arg1].field_1 % 128) + 224
                        s = 0
                        while ceil32(stor19[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 192 > idx:
                            mem[idx + 32] = stor18[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                    mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(stor18[arg1].field_1 % 128) + 288 len ceil32(stor18[arg1].field_1 % 128)] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]
            if ceil32(stor18[arg1].field_1 % 128) > stor18[arg1].field_1 % 128:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(stor18[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 288] = 0
            return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)], mem[ceil32(stor19[arg1].field_1 % 128) + (2 * ceil32(stor18[arg1].field_1 % 128)) + 288 len 2 * ceil32(stor18[arg1].field_1 % 128)]), 
        if not arg1:
            mem[ceil32(stor19[arg1].field_1 % 128) + 192] = 1
            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = '0'
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 6
                        _2557 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[38] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[70 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                        if ceil32(_2557) > _2557:
                            mem[_2557 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_2557) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 288] = '0'
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 289] = '.json'
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 294] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 326] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 358] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 6
                    _2559 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[38] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[70 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                    if ceil32(_2559) > _2559:
                        mem[_2559 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_2559) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 288] = '0'
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 289] = '.json'
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 294] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 326] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 358] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
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
        mem[ceil32(stor19[arg1].field_1 % 128) + 192] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19[arg1].field_1 % 128) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19[arg1].field_1 % 128) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    mem[0] = 11
                    idx = 0
                    t = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _5743 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[_5743] = '.json'
                mem[64] = _5743 + 5
                mem[_5743 + 5] = 32
                if ceil32(_5743) <= _5743:
                    _8836 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5743 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5743 + 69 len ceil32(_8836)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8836)]
                    if ceil32(_8836) > _8836:
                        mem[_5743 + _8836 + 69] = 0
                    return 32, mem[_5743 + 37 len ceil32(_8836) + 32]
                _8922 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5743 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5743 + 69 len ceil32(_8922)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8922)]
                if ceil32(_8922) > _8922:
                    mem[_5743 + _8922 + 69] = 0
                return 32, mem[_5743 + 37 len ceil32(_8922) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                mem[0] = 11
                idx = 0
                t = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _5774 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[_5774] = '.json'
            mem[64] = _5774 + 5
            mem[_5774 + 5] = 32
            if ceil32(_5774) <= _5774:
                _8838 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5774 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5774 + 69 len ceil32(_8838)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8838)]
                if ceil32(_8838) > _8838:
                    mem[_5774 + _8838 + 69] = 0
                return 32, mem[_5774 + 37 len ceil32(_8838) + 32]
            _8924 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5774 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5774 + 69 len ceil32(_8924)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8924)]
            if ceil32(_8924) > _8924:
                mem[_5774 + _8924 + 69] = 0
            return 32, mem[_5774 + 37 len ceil32(_8924) + 32]
        mem[ceil32(stor19[arg1].field_1 % 128) + 224 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19[arg1].field_1 % 128) + 192]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19[arg1].field_1 % 128) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                mem[0] = 11
                idx = 0
                t = 0
                while idx < uint255(stor11.length.field_1):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _5745 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[_5745] = '.json'
            mem[64] = _5745 + 5
            mem[_5745 + 5] = 32
            if ceil32(_5745) <= _5745:
                _8840 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5745 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5745 + 69 len ceil32(_8840)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8840)]
                if ceil32(_8840) > _8840:
                    mem[_5745 + _8840 + 69] = 0
                return 32, mem[_5745 + 37 len ceil32(_8840) + 32]
            _8926 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5745 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5745 + 69 len ceil32(_8926)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8926)]
            if ceil32(_8926) > _8926:
                mem[_5745 + _8926 + 69] = 0
            return 32, mem[_5745 + 37 len ceil32(_8926) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        if bool(stor11.length) == 1:
            mem[0] = 11
            idx = 0
            t = 0
            while idx < stor11.length.field_1 % 128:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        _5775 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
        mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
        mem[_5775] = '.json'
        mem[64] = _5775 + 5
        mem[_5775 + 5] = 32
        if ceil32(_5775) <= _5775:
            _8842 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5775 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5775 + 69 len ceil32(_8842)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8842)]
            if ceil32(_8842) > _8842:
                mem[_5775 + _8842 + 69] = 0
            return 32, mem[_5775 + 37 len ceil32(_8842) + 32]
        _8928 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_5775 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_5775 + 69 len ceil32(_8928)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8928)]
        if ceil32(_8928) > _8928:
            mem[_5775 + _8928 + 69] = 0
        return 32, mem[_5775 + 37 len ceil32(_8928) + 32]
    if 31 >= stor19[arg1].field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor19[arg1].field_8)
        mem[ceil32(stor19[arg1].field_1 % 128) + 128] = 3
        mem[ceil32(stor19[arg1].field_1 % 128) + 160] = 'egg'
        if sha3(mem[128 len stor19[arg1].field_1 % 128]) != sha3('egg'):
            if bool(stor18[arg1].field_0):
                if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                if bool(stor18[arg1].field_0):
                    if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor18[arg1].field_1):
                        if 31 < uint255(stor18[arg1].field_1):
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                            idx = ceil32(stor19[arg1].field_1 % 128) + 224
                            s = 0
                            while ceil32(stor19[arg1].field_1 % 128) + uint255(stor18[arg1].field_1) + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                else:
                    if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor18[arg1].field_1 % 128:
                        if 31 < stor18[arg1].field_1 % 128:
                            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                            idx = ceil32(stor19[arg1].field_1 % 128) + 224
                            s = 0
                            while ceil32(stor19[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 192 > idx:
                                mem[idx + 32] = stor18[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(uint255(stor18[arg1].field_1)) + 288 len ceil32(uint255(stor18[arg1].field_1))] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]
                if ceil32(uint255(stor18[arg1].field_1)) > uint255(stor18[arg1].field_1):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(uint255(stor18[arg1].field_1)) + uint255(stor18[arg1].field_1) + 288] = 0
                return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))], mem[ceil32(stor19[arg1].field_1 % 128) + (2 * ceil32(uint255(stor18[arg1].field_1))) + 288 len 2 * ceil32(uint255(stor18[arg1].field_1))]), 
            if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if bool(stor18[arg1].field_0):
                if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor18[arg1].field_1):
                    if 31 < uint255(stor18[arg1].field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                        idx = ceil32(stor19[arg1].field_1 % 128) + 224
                        s = 0
                        while ceil32(stor19[arg1].field_1 % 128) + uint255(stor18[arg1].field_1) + 192 > idx:
                            mem[idx + 32] = stor18[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                    mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
            else:
                if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if stor18[arg1].field_1 % 128:
                    if 31 < stor18[arg1].field_1 % 128:
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                        idx = ceil32(stor19[arg1].field_1 % 128) + 224
                        s = 0
                        while ceil32(stor19[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 192 > idx:
                            mem[idx + 32] = stor18[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
                    mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(stor18[arg1].field_1 % 128) + 288 len ceil32(stor18[arg1].field_1 % 128)] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]
            if ceil32(stor18[arg1].field_1 % 128) > stor18[arg1].field_1 % 128:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(stor18[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 288] = 0
            return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)], mem[ceil32(stor19[arg1].field_1 % 128) + (2 * ceil32(stor18[arg1].field_1 % 128)) + 288 len 2 * ceil32(stor18[arg1].field_1 % 128)]), 
        if not arg1:
            mem[ceil32(stor19[arg1].field_1 % 128) + 192] = 1
            mem[ceil32(stor19[arg1].field_1 % 128) + 224] = '0'
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 6
                        _2564 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[38] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[70 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                        if ceil32(_2564) > _2564:
                            mem[_2564 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_2564) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 288] = '0'
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 289] = '.json'
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 294] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 326] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 358] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 6
                    _2566 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[38] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[70 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                    if ceil32(_2566) > _2566:
                        mem[_2566 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_2566) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 288] = '0'
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 289] = '.json'
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 294] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 326] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 358] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
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
        mem[ceil32(stor19[arg1].field_1 % 128) + 192] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19[arg1].field_1 % 128) + 192]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19[arg1].field_1 % 128) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    mem[0] = 11
                    idx = 0
                    t = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _5753 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[_5753] = '.json'
                mem[64] = _5753 + 5
                mem[_5753 + 5] = 32
                if ceil32(_5753) <= _5753:
                    _8848 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5753 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5753 + 69 len ceil32(_8848)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8848)]
                    if ceil32(_8848) > _8848:
                        mem[_5753 + _8848 + 69] = 0
                    return 32, mem[_5753 + 37 len ceil32(_8848) + 32]
                _8936 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5753 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5753 + 69 len ceil32(_8936)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8936)]
                if ceil32(_8936) > _8936:
                    mem[_5753 + _8936 + 69] = 0
                return 32, mem[_5753 + 37 len ceil32(_8936) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                mem[0] = 11
                idx = 0
                t = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _5777 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[_5777] = '.json'
            mem[64] = _5777 + 5
            mem[_5777 + 5] = 32
            if ceil32(_5777) <= _5777:
                _8850 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5777 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5777 + 69 len ceil32(_8850)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8850)]
                if ceil32(_8850) > _8850:
                    mem[_5777 + _8850 + 69] = 0
                return 32, mem[_5777 + 37 len ceil32(_8850) + 32]
            _8938 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5777 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5777 + 69 len ceil32(_8938)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8938)]
            if ceil32(_8938) > _8938:
                mem[_5777 + _8938 + 69] = 0
            return 32, mem[_5777 + 37 len ceil32(_8938) + 32]
        mem[ceil32(stor19[arg1].field_1 % 128) + 224 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19[arg1].field_1 % 128) + 192]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19[arg1].field_1 % 128) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                mem[0] = 11
                idx = 0
                t = 0
                while idx < uint255(stor11.length.field_1):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _5755 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[_5755] = '.json'
            mem[64] = _5755 + 5
            mem[_5755 + 5] = 32
            if ceil32(_5755) <= _5755:
                _8852 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5755 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5755 + 69 len ceil32(_8852)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8852)]
                if ceil32(_8852) > _8852:
                    mem[_5755 + _8852 + 69] = 0
                return 32, mem[_5755 + 37 len ceil32(_8852) + 32]
            _8940 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5755 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5755 + 69 len ceil32(_8940)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8940)]
            if ceil32(_8940) > _8940:
                mem[_5755 + _8940 + 69] = 0
            return 32, mem[_5755 + 37 len ceil32(_8940) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        if bool(stor11.length) == 1:
            mem[0] = 11
            idx = 0
            t = 0
            while idx < stor11.length.field_1 % 128:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        _5778 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
        mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
        mem[_5778] = '.json'
        mem[64] = _5778 + 5
        mem[_5778 + 5] = 32
        if ceil32(_5778) <= _5778:
            _8854 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5778 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5778 + 69 len ceil32(_8854)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8854)]
            if ceil32(_8854) > _8854:
                mem[_5778 + _8854 + 69] = 0
            return 32, mem[_5778 + 37 len ceil32(_8854) + 32]
        _8942 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_5778 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_5778 + 69 len ceil32(_8942)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8942)]
        if ceil32(_8942) > _8942:
            mem[_5778 + _8942 + 69] = 0
        return 32, mem[_5778 + 37 len ceil32(_8942) + 32]
    mem[0] = sha3(arg1, 19)
    mem[128] = stor19[arg1].field_0
    idx = 128
    s = 0
    while stor19[arg1].field_1 % 128 + 96 > idx:
        mem[idx + 32] = stor19[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor19[arg1].field_1 % 128) + 128] = 3
    mem[ceil32(stor19[arg1].field_1 % 128) + 160] = 'egg'
    if sha3(mem[128 len stor19[arg1].field_1 % 128]) != sha3('egg'):
        if bool(stor18[arg1].field_0):
            if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if bool(stor18[arg1].field_0):
                if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor18[arg1].field_1):
                    if 31 >= uint255(stor18[arg1].field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    else:
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                        idx = ceil32(stor19[arg1].field_1 % 128) + 224
                        s = 0
                        while ceil32(stor19[arg1].field_1 % 128) + uint255(stor18[arg1].field_1) + 192 > idx:
                            mem[idx + 32] = stor18[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if stor18[arg1].field_1 % 128:
                    if 31 >= stor18[arg1].field_1 % 128:
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                    else:
                        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                        idx = ceil32(stor19[arg1].field_1 % 128) + 224
                        s = 0
                        while ceil32(stor19[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 192 > idx:
                            mem[idx + 32] = stor18[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        var62001 = ceil32(uint255(stor18[arg1].field_1))
            return Array(len=2 * Mask(256, -1, uint255(stor18[arg1].field_1)), data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(uint255(stor18[arg1].field_1))]), 
        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor18[arg1].field_0):
            if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor18[arg1].field_1):
                if 31 >= uint255(stor18[arg1].field_1):
                    mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                else:
                    mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                    idx = ceil32(stor19[arg1].field_1 % 128) + 224
                    s = 0
                    while ceil32(stor19[arg1].field_1 % 128) + uint255(stor18[arg1].field_1) + 192 > idx:
                        mem[idx + 32] = stor18[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    var62001 = ceil32(stor18[arg1].field_1 % 128)
        else:
            if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor18[arg1].field_1 % 128:
                if 31 >= stor18[arg1].field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + 224] = 256 * Mask(248, 0, stor18[arg1].field_8)
                else:
                    mem[ceil32(stor19[arg1].field_1 % 128) + 224] = stor18[arg1].field_0
                    idx = ceil32(stor19[arg1].field_1 % 128) + 224
                    s = 0
                    while ceil32(stor19[arg1].field_1 % 128) + stor18[arg1].field_1 % 128 + 192 > idx:
                        mem[idx + 32] = stor18[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    var63001 = ceil32(stor18[arg1].field_1 % 128)
        return Array(len=stor18[arg1].field_0 % 128, data=mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(stor18[arg1].field_1 % 128)]), 
    if not arg1:
        mem[ceil32(stor19[arg1].field_1 % 128) + 192] = 1
        mem[ceil32(stor19[arg1].field_1 % 128) + 224] = '0'
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 6
                    _5750 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[38] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[70 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                    if ceil32(_5750) > _5750:
                        mem[_5750 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_5750) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < uint255(stor11.length.field_1):
                    mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 288] = '0'
            mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 289] = '.json'
            mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 294] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 326] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
            mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 358] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
        else:
            if bool(stor11.length) != 1:
                mem[64] = 6
                _5752 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[38] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[70 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                if ceil32(_5752) > _5752:
                    mem[_5752 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_5752) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor11.length.field_1 % 128:
                mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 288] = '0'
        mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 289] = '.json'
        mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 294] = 32
        mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 326] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
        mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 358] = 0
        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 358 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
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
    mem[ceil32(stor19[arg1].field_1 % 128) + 192] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19[arg1].field_1 % 128) + 192]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19[arg1].field_1 % 128) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                mem[0] = 11
                idx = 0
                t = 0
                while idx < uint255(stor11.length.field_1):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _8929 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[_8929] = '.json'
            mem[64] = _8929 + 5
            mem[_8929 + 5] = 32
            if ceil32(_8929) <= _8929:
                _11252 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_8929 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_8929 + 69 len ceil32(_11252)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11252)]
                if ceil32(_11252) > _11252:
                    mem[_8929 + _11252 + 69] = 0
                return 32, mem[_8929 + 37 len ceil32(_11252) + 32]
            _11316 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_8929 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_8929 + 69 len ceil32(_11316)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11316)]
            if ceil32(_11316) > _11316:
                mem[_8929 + _11316 + 69] = 0
            return 32, mem[_8929 + 37 len ceil32(_11316) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        if bool(stor11.length) == 1:
            mem[0] = 11
            idx = 0
            t = 0
            while idx < stor11.length.field_1 % 128:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        _8949 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
        mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
        mem[_8949] = '.json'
        mem[64] = _8949 + 5
        mem[_8949 + 5] = 32
        if ceil32(_8949) <= _8949:
            _11254 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_8949 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_8949 + 69 len ceil32(_11254)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11254)]
            if ceil32(_11254) > _11254:
                mem[_8949 + _11254 + 69] = 0
            return 32, mem[_8949 + 37 len ceil32(_11254) + 32]
        _11318 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_8949 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_8949 + 69 len ceil32(_11318)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11318)]
        if ceil32(_11318) > _11318:
            mem[_8949 + _11318 + 69] = 0
        return 32, mem[_8949 + 37 len ceil32(_11318) + 32]
    mem[ceil32(stor19[arg1].field_1 % 128) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor19[arg1].field_1 % 128) + 192]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor19[arg1].field_1 % 128) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        if bool(stor11.length) == 1:
            mem[0] = 11
            idx = 0
            t = 0
            while idx < uint255(stor11.length.field_1):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        _8931 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
        mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
        mem[_8931] = '.json'
        mem[64] = _8931 + 5
        mem[_8931 + 5] = 32
        if ceil32(_8931) <= _8931:
            _11256 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_8931 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_8931 + 69 len ceil32(_11256)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11256)]
            if ceil32(_11256) > _11256:
                mem[_8931 + _11256 + 69] = 0
            return 32, mem[_8931 + 37 len ceil32(_11256) + 32]
        _11320 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_8931 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_8931 + 69 len ceil32(_11320)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11320)]
        if ceil32(_11320) > _11320:
            mem[_8931 + _11320 + 69] = 0
        return 32, mem[_8931 + 37 len ceil32(_11320) + 32]
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not bool(stor11.length):
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
        mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
    if bool(stor11.length) == 1:
        mem[0] = 11
        idx = 0
        t = 0
        while idx < stor11.length.field_1 % 128:
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + idx + 256] = stor11[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = '.json'
        mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 261] = 32
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 293] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 325] = 0
        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 325 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
    _8950 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
    mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
    mem[_8950] = '.json'
    mem[64] = _8950 + 5
    mem[_8950 + 5] = 32
    if ceil32(_8950) <= _8950:
        _11258 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_8950 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_8950 + 69 len ceil32(_11258)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11258)]
        if ceil32(_11258) > _11258:
            mem[_8950 + _11258 + 69] = 0
        return 32, mem[_8950 + 37 len ceil32(_11258) + 32]
    _11322 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
    mem[_8950 + 37] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
    mem[_8950 + 69 len ceil32(_11322)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11322)]
    if ceil32(_11322) > _11322:
        mem[_8950 + _11322 + 69] = 0
    return 32, mem[_8950 + 37 len ceil32(_11322) + 32]
}



}

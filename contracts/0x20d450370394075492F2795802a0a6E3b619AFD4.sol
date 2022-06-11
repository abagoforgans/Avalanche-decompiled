contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint256 arg1)
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

function sub_c3ee863f(?) {
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
    if bool(sub_e84259f8) != 1:
        revert with 0, 'Hatch has not started'
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
        if sha3(mem[ceil32(ceil32(arg2.length)) + 129 len uint255(stor19[arg1].field_1)]) != sha3('egg'):
            revert with 0, 'This token is not egg'
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
        if sha3(mem[ceil32(ceil32(arg2.length)) + 129 len stor19[arg1].field_1 % 128]) != sha3('egg'):
            revert with 0, 'This token is not egg'
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
        uint255(stor19[arg1].field_1) = 4
        Mask(248, 0, stor19[arg1].field_8) = 'baby' / 256
        idx = 0
        while uint255(stor19[arg1].field_1) + 31 / 32 > idx:
            stor19[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        bool(stor19[arg1].field_0) = 0
        uint255(stor19[arg1].field_1) = 4
        Mask(248, 0, stor19[arg1].field_8) = 'baby' / 256
        idx = 0
        while stor19[arg1].field_1 % 128 + 31 / 32 > idx:
            stor19[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
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
                                mem[64] = 1
                                _2461 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                                mem[33] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                                mem[65 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                                if ceil32(_2461) > _2461:
                                    mem[_2461 + 65] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2461) + -mem[64] + 65
                            idx = 0
                            s = 0
                            while idx < uint255(stor11.length.field_1):
                                mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 288] = '0'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 289] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 321] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 353] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
                    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                    else:
                        if bool(stor11.length) != 1:
                            mem[64] = 1
                            _2464 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[33] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[65 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                            if ceil32(_2464) > _2464:
                                mem[_2464 + 65] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2464) + -mem[64] + 65
                        idx = 0
                        s = 0
                        while idx < stor11.length.field_1 % 128:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 288] = '0'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 289] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 321] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 353] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
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
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                        if bool(stor11.length) == 1:
                            idx = 0
                            t = 0
                            while idx < uint255(stor11.length.field_1):
                                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                        _5775 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                        mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[64] = _5775
                        mem[_5775] = 32
                        if ceil32(_5775) <= _5775:
                            _8728 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[_5775 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[_5775 + 64 len ceil32(_8728)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8728)]
                            if ceil32(_8728) > _8728:
                                mem[_5775 + _8728 + 64] = 0
                            return 32, mem[_5775 + 32 len ceil32(_8728) + 32]
                        _8801 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5775 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5775 + 64 len ceil32(_8801)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8801)]
                        if ceil32(_8801) > _8801:
                            mem[_5775 + _8801 + 64] = 0
                        return 32, mem[_5775 + 32 len ceil32(_8801) + 32]
                    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < stor11.length.field_1 % 128:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _5847 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[64] = _5847
                    mem[_5847] = 32
                    if ceil32(_5847) <= _5847:
                        _8730 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5847 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5847 + 64 len ceil32(_8730)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8730)]
                        if ceil32(_8730) > _8730:
                            mem[_5847 + _8730 + 64] = 0
                        return 32, mem[_5847 + 32 len ceil32(_8730) + 32]
                    _8804 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5847 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5847 + 64 len ceil32(_8804)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8804)]
                    if ceil32(_8804) > _8804:
                        mem[_5847 + _8804 + 64] = 0
                    return 32, mem[_5847 + 32 len ceil32(_8804) + 32]
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
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _5777 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[64] = _5777
                    mem[_5777] = 32
                    if ceil32(_5777) <= _5777:
                        _8732 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5777 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5777 + 64 len ceil32(_8732)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8732)]
                        if ceil32(_8732) > _8732:
                            mem[_5777 + _8732 + 64] = 0
                        return 32, mem[_5777 + 32 len ceil32(_8732) + 32]
                    _8807 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5777 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5777 + 64 len ceil32(_8807)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8807)]
                    if ceil32(_8807) > _8807:
                        mem[_5777 + _8807 + 64] = 0
                    return 32, mem[_5777 + 32 len ceil32(_8807) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _5848 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[64] = _5848
                mem[_5848] = 32
                if ceil32(_5848) <= _5848:
                    _8734 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5848 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5848 + 64 len ceil32(_8734)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8734)]
                    if ceil32(_8734) > _8734:
                        mem[_5848 + _8734 + 64] = 0
                    return 32, mem[_5848 + 32 len ceil32(_8734) + 32]
                _8810 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5848 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5848 + 64 len ceil32(_8810)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8810)]
                if ceil32(_8810) > _8810:
                    mem[_5848 + _8810 + 64] = 0
                return 32, mem[_5848 + 32 len ceil32(_8810) + 32]
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
                                mem[64] = 1
                                _2467 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                                mem[33] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                                mem[65 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                                if ceil32(_2467) > _2467:
                                    mem[_2467 + 65] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2467) + -mem[64] + 65
                            idx = 0
                            s = 0
                            while idx < uint255(stor11.length.field_1):
                                mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 288] = '0'
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 289] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 321] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 353] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
                    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                    else:
                        if bool(stor11.length) != 1:
                            mem[64] = 1
                            _2470 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[33] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[65 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                            if ceil32(_2470) > _2470:
                                mem[_2470 + 65] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2470) + -mem[64] + 65
                        idx = 0
                        s = 0
                        while idx < stor11.length.field_1 % 128:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 288] = '0'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 289] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 321] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 353] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
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
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                        if bool(stor11.length) == 1:
                            idx = 0
                            t = 0
                            while idx < uint255(stor11.length.field_1):
                                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                        _5787 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                        mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[64] = _5787
                        mem[_5787] = 32
                        if ceil32(_5787) <= _5787:
                            _8738 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[_5787 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                            mem[_5787 + 64 len ceil32(_8738)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8738)]
                            if ceil32(_8738) > _8738:
                                mem[_5787 + _8738 + 64] = 0
                            return 32, mem[_5787 + 32 len ceil32(_8738) + 32]
                        _8815 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5787 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5787 + 64 len ceil32(_8815)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8815)]
                        if ceil32(_8815) > _8815:
                            mem[_5787 + _8815 + 64] = 0
                        return 32, mem[_5787 + 32 len ceil32(_8815) + 32]
                    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor11.length):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < stor11.length.field_1 % 128:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _5852 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[64] = _5852
                    mem[_5852] = 32
                    if ceil32(_5852) <= _5852:
                        _8740 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5852 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5852 + 64 len ceil32(_8740)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8740)]
                        if ceil32(_8740) > _8740:
                            mem[_5852 + _8740 + 64] = 0
                        return 32, mem[_5852 + 32 len ceil32(_8740) + 32]
                    _8818 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5852 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5852 + 64 len ceil32(_8818)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8818)]
                    if ceil32(_8818) > _8818:
                        mem[_5852 + _8818 + 64] = 0
                    return 32, mem[_5852 + 32 len ceil32(_8818) + 32]
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
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _5789 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[64] = _5789
                    mem[_5789] = 32
                    if ceil32(_5789) <= _5789:
                        _8742 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5789 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5789 + 64 len ceil32(_8742)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8742)]
                        if ceil32(_8742) > _8742:
                            mem[_5789 + _8742 + 64] = 0
                        return 32, mem[_5789 + 32 len ceil32(_8742) + 32]
                    _8821 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5789 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5789 + 64 len ceil32(_8821)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8821)]
                    if ceil32(_8821) > _8821:
                        mem[_5789 + _8821 + 64] = 0
                    return 32, mem[_5789 + 32 len ceil32(_8821) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _5853 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[64] = _5853
                mem[_5853] = 32
                if ceil32(_5853) <= _5853:
                    _8744 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5853 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5853 + 64 len ceil32(_8744)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8744)]
                    if ceil32(_8744) > _8744:
                        mem[_5853 + _8744 + 64] = 0
                    return 32, mem[_5853 + 32 len ceil32(_8744) + 32]
                _8824 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5853 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5853 + 64 len ceil32(_8824)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8824)]
                if ceil32(_8824) > _8824:
                    mem[_5853 + _8824 + 64] = 0
                return 32, mem[_5853 + 32 len ceil32(_8824) + 32]
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
                            mem[64] = 1
                            _5627 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[33] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[65 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                            if ceil32(_5627) > _5627:
                                mem[_5627 + 65] = 0
                            return memory
                              from mem[64]
                               len ceil32(_5627) + -mem[64] + 65
                        idx = 0
                        s = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 288] = '0'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 289] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 321] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 353] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 1
                        _5630 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[33] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[65 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                        if ceil32(_5630) > _5630:
                            mem[_5630 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5630) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 288] = '0'
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 289] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 321] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 353] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
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
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _9075 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[64] = _9075
                    mem[_9075] = 32
                    if ceil32(_9075) <= _9075:
                        _11188 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_9075 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_9075 + 64 len ceil32(_11188)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11188)]
                        if ceil32(_11188) > _11188:
                            mem[_9075 + _11188 + 64] = 0
                        return 32, mem[_9075 + 32 len ceil32(_11188) + 32]
                    _11253 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_9075 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_9075 + 64 len ceil32(_11253)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11253)]
                    if ceil32(_11253) > _11253:
                        mem[_9075 + _11253 + 64] = 0
                    return 32, mem[_9075 + 32 len ceil32(_11253) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _9187 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[64] = _9187
                mem[_9187] = 32
                if ceil32(_9187) <= _9187:
                    _11190 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_9187 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_9187 + 64 len ceil32(_11190)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11190)]
                    if ceil32(_11190) > _11190:
                        mem[_9187 + _11190 + 64] = 0
                    return 32, mem[_9187 + 32 len ceil32(_11190) + 32]
                _11256 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_9187 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_9187 + 64 len ceil32(_11256)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11256)]
                if ceil32(_11256) > _11256:
                    mem[_9187 + _11256 + 64] = 0
                return 32, mem[_9187 + 32 len ceil32(_11256) + 32]
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
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _9077 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[64] = _9077
                mem[_9077] = 32
                if ceil32(_9077) <= _9077:
                    _11192 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_9077 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_9077 + 64 len ceil32(_11192)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11192)]
                    if ceil32(_11192) > _11192:
                        mem[_9077 + _11192 + 64] = 0
                    return 32, mem[_9077 + 32 len ceil32(_11192) + 32]
                _11259 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_9077 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_9077 + 64 len ceil32(_11259)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11259)]
                if ceil32(_11259) > _11259:
                    mem[_9077 + _11259 + 64] = 0
                return 32, mem[_9077 + 32 len ceil32(_11259) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                idx = 0
                t = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            _9188 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
            mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[64] = _9188
            mem[_9188] = 32
            if ceil32(_9188) <= _9188:
                _11194 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_9188 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_9188 + 64 len ceil32(_11194)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11194)]
                if ceil32(_11194) > _11194:
                    mem[_9188 + _11194 + 64] = 0
                return 32, mem[_9188 + 32 len ceil32(_11194) + 32]
            _11262 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_9188 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_9188 + 64 len ceil32(_11262)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11262)]
            if ceil32(_11262) > _11262:
                mem[_9188 + _11262 + 64] = 0
            return 32, mem[_9188 + 32 len ceil32(_11262) + 32]
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
                            mem[64] = 1
                            _2473 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[33] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[65 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                            if ceil32(_2473) > _2473:
                                mem[_2473 + 65] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2473) + -mem[64] + 65
                        idx = 0
                        s = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 288] = '0'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 289] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 321] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 353] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 1
                        _2476 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[33] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[65 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                        if ceil32(_2476) > _2476:
                            mem[_2476 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_2476) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 288] = '0'
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 289] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 321] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 353] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
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
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _5793 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[64] = _5793
                    mem[_5793] = 32
                    if ceil32(_5793) <= _5793:
                        _8746 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5793 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5793 + 64 len ceil32(_8746)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8746)]
                        if ceil32(_8746) > _8746:
                            mem[_5793 + _8746 + 64] = 0
                        return 32, mem[_5793 + 32 len ceil32(_8746) + 32]
                    _8827 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5793 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5793 + 64 len ceil32(_8827)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8827)]
                    if ceil32(_8827) > _8827:
                        mem[_5793 + _8827 + 64] = 0
                    return 32, mem[_5793 + 32 len ceil32(_8827) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _5854 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[64] = _5854
                mem[_5854] = 32
                if ceil32(_5854) <= _5854:
                    _8748 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5854 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5854 + 64 len ceil32(_8748)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8748)]
                    if ceil32(_8748) > _8748:
                        mem[_5854 + _8748 + 64] = 0
                    return 32, mem[_5854 + 32 len ceil32(_8748) + 32]
                _8830 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5854 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5854 + 64 len ceil32(_8830)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8830)]
                if ceil32(_8830) > _8830:
                    mem[_5854 + _8830 + 64] = 0
                return 32, mem[_5854 + 32 len ceil32(_8830) + 32]
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
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _5795 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[64] = _5795
                mem[_5795] = 32
                if ceil32(_5795) <= _5795:
                    _8750 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5795 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5795 + 64 len ceil32(_8750)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8750)]
                    if ceil32(_8750) > _8750:
                        mem[_5795 + _8750 + 64] = 0
                    return 32, mem[_5795 + 32 len ceil32(_8750) + 32]
                _8833 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5795 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5795 + 64 len ceil32(_8833)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8833)]
                if ceil32(_8833) > _8833:
                    mem[_5795 + _8833 + 64] = 0
                return 32, mem[_5795 + 32 len ceil32(_8833) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                idx = 0
                t = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            _5855 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
            mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[64] = _5855
            mem[_5855] = 32
            if ceil32(_5855) <= _5855:
                _8752 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5855 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5855 + 64 len ceil32(_8752)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8752)]
                if ceil32(_8752) > _8752:
                    mem[_5855 + _8752 + 64] = 0
                return 32, mem[_5855 + 32 len ceil32(_8752) + 32]
            _8836 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_5855 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_5855 + 64 len ceil32(_8836)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8836)]
            if ceil32(_8836) > _8836:
                mem[_5855 + _8836 + 64] = 0
            return 32, mem[_5855 + 32 len ceil32(_8836) + 32]
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
                            mem[64] = 1
                            _2479 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[33] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                            mem[65 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                            if ceil32(_2479) > _2479:
                                mem[_2479 + 65] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2479) + -mem[64] + 65
                        idx = 0
                        s = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 288] = '0'
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 289] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 321] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 353] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 1
                        _2482 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[33] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[65 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                        if ceil32(_2482) > _2482:
                            mem[_2482 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_2482) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 288] = '0'
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 289] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 321] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 353] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
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
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    if bool(stor11.length) == 1:
                        idx = 0
                        t = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                    _5805 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                    mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[64] = _5805
                    mem[_5805] = 32
                    if ceil32(_5805) <= _5805:
                        _8756 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5805 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                        mem[_5805 + 64 len ceil32(_8756)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8756)]
                        if ceil32(_8756) > _8756:
                            mem[_5805 + _8756 + 64] = 0
                        return 32, mem[_5805 + 32 len ceil32(_8756) + 32]
                    _8841 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5805 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5805 + 64 len ceil32(_8841)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8841)]
                    if ceil32(_8841) > _8841:
                        mem[_5805 + _8841 + 64] = 0
                    return 32, mem[_5805 + 32 len ceil32(_8841) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _5859 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[64] = _5859
                mem[_5859] = 32
                if ceil32(_5859) <= _5859:
                    _8758 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5859 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5859 + 64 len ceil32(_8758)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8758)]
                    if ceil32(_8758) > _8758:
                        mem[_5859 + _8758 + 64] = 0
                    return 32, mem[_5859 + 32 len ceil32(_8758) + 32]
                _8844 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5859 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5859 + 64 len ceil32(_8844)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8844)]
                if ceil32(_8844) > _8844:
                    mem[_5859 + _8844 + 64] = 0
                return 32, mem[_5859 + 32 len ceil32(_8844) + 32]
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
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _5807 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[64] = _5807
                mem[_5807] = 32
                if ceil32(_5807) <= _5807:
                    _8760 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5807 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_5807 + 64 len ceil32(_8760)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8760)]
                    if ceil32(_8760) > _8760:
                        mem[_5807 + _8760 + 64] = 0
                    return 32, mem[_5807 + 32 len ceil32(_8760) + 32]
                _8847 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5807 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5807 + 64 len ceil32(_8847)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8847)]
                if ceil32(_8847) > _8847:
                    mem[_5807 + _8847 + 64] = 0
                return 32, mem[_5807 + 32 len ceil32(_8847) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                idx = 0
                t = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            _5860 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
            mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[64] = _5860
            mem[_5860] = 32
            if ceil32(_5860) <= _5860:
                _8762 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5860 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_5860 + 64 len ceil32(_8762)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8762)]
                if ceil32(_8762) > _8762:
                    mem[_5860 + _8762 + 64] = 0
                return 32, mem[_5860 + 32 len ceil32(_8762) + 32]
            _8850 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_5860 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_5860 + 64 len ceil32(_8850)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_8850)]
            if ceil32(_8850) > _8850:
                mem[_5860 + _8850 + 64] = 0
            return 32, mem[_5860 + 32 len ceil32(_8850) + 32]
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
                        mem[64] = 1
                        _5637 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[33] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                        mem[65 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                        if ceil32(_5637) > _5637:
                            mem[_5637 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5637) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 288] = '0'
                mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 289] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 321] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 353] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor19[arg1].field_1)) + 288] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 1
                    _5640 = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[33] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
                    mem[65 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
                    if ceil32(_5640) > _5640:
                        mem[_5640 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_5640) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + idx + 288] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 288] = '0'
            mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 289] = 32
            mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 321] = mem[ceil32(uint255(stor19[arg1].field_1)) + 256]
            mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 288 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]
            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256]) > mem[ceil32(uint255(stor19[arg1].field_1)) + 256]:
                mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 256] + 353] = 0
            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + 256], data=mem[ceil32(uint255(stor19[arg1].field_1)) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 256])]), 
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
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                if bool(stor11.length) == 1:
                    idx = 0
                    t = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                        mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
                _9105 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
                mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[64] = _9105
                mem[_9105] = 32
                if ceil32(_9105) <= _9105:
                    _11204 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_9105 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                    mem[_9105 + 64 len ceil32(_11204)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11204)]
                    if ceil32(_11204) > _11204:
                        mem[_9105 + _11204 + 64] = 0
                    return 32, mem[_9105 + 32 len ceil32(_11204) + 32]
                _11273 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_9105 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_9105 + 64 len ceil32(_11273)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11273)]
                if ceil32(_11273) > _11273:
                    mem[_9105 + _11273 + 64] = 0
                return 32, mem[_9105 + 32 len ceil32(_11273) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                idx = 0
                t = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            _9197 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
            mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[64] = _9197
            mem[_9197] = 32
            if ceil32(_9197) <= _9197:
                _11206 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_9197 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_9197 + 64 len ceil32(_11206)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11206)]
                if ceil32(_11206) > _11206:
                    mem[_9197 + _11206 + 64] = 0
                return 32, mem[_9197 + 32 len ceil32(_11206) + 32]
            _11276 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_9197 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_9197 + 64 len ceil32(_11276)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11276)]
            if ceil32(_11276) > _11276:
                mem[_9197 + _11276 + 64] = 0
            return 32, mem[_9197 + 32 len ceil32(_11276) + 32]
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
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            if bool(stor11.length) == 1:
                idx = 0
                t = 0
                while idx < uint255(stor11.length.field_1):
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                    mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
            _9107 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
            mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[64] = _9107
            mem[_9107] = 32
            if ceil32(_9107) <= _9107:
                _11208 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_9107 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
                mem[_9107 + 64 len ceil32(_11208)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11208)]
                if ceil32(_11208) > _11208:
                    mem[_9107 + _11208 + 64] = 0
                return 32, mem[_9107 + 32 len ceil32(_11208) + 32]
            _11279 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_9107 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_9107 + 64 len ceil32(_11279)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11279)]
            if ceil32(_11279) > _11279:
                mem[_9107 + _11279 + 64] = 0
            return 32, mem[_9107 + 32 len ceil32(_11279) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
        if bool(stor11.length) == 1:
            idx = 0
            t = 0
            while idx < stor11.length.field_1 % 128:
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + idx + 256] = stor11[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 256] = 32
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 288] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]) > mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]:
                mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224] + 320] = 0
            return Array(len=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224], data=mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(uint255(stor19[arg1].field_1)) + 192] + 320 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224])]), 
        _9198 = mem[ceil32(uint255(stor19[arg1].field_1)) + 192]
        mem[0 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])] = mem[ceil32(uint255(stor19[arg1].field_1)) + 224 len ceil32(mem[ceil32(uint255(stor19[arg1].field_1)) + 192])]
        mem[64] = _9198
        mem[_9198] = 32
        if ceil32(_9198) <= _9198:
            _11210 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_9198 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
            mem[_9198 + 64 len ceil32(_11210)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11210)]
            if ceil32(_11210) > _11210:
                mem[_9198 + _11210 + 64] = 0
            return 32, mem[_9198 + 32 len ceil32(_11210) + 32]
        _11282 = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
        mem[_9198 + 32] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 224]
        mem[_9198 + 64 len ceil32(_11282)] = mem[ceil32(uint255(stor19[arg1].field_1)) + ceil32(s) + 256 len ceil32(_11282)]
        if ceil32(_11282) > _11282:
            mem[_9198 + _11282 + 64] = 0
        return 32, mem[_9198 + 32 len ceil32(_11282) + 32]
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
                            mem[64] = 1
                            _2485 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                            mem[33] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                            mem[65 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                            if ceil32(_2485) > _2485:
                                mem[_2485 + 65] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2485) + -mem[64] + 65
                        idx = 0
                        s = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 288] = '0'
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 289] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 321] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 353] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 1
                        _2488 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[33] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[65 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                        if ceil32(_2488) > _2488:
                            mem[_2488 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_2488) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 288] = '0'
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 289] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 321] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 353] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
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
                        mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                        mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                    _5811 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                    mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[64] = _5811
                    mem[_5811] = 32
                    if ceil32(_5811) <= _5811:
                        _8764 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[_5811 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[_5811 + 64 len ceil32(_8764)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8764)]
                        if ceil32(_8764) > _8764:
                            mem[_5811 + _8764 + 64] = 0
                        return 32, mem[_5811 + 32 len ceil32(_8764) + 32]
                    _8853 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5811 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5811 + 64 len ceil32(_8853)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8853)]
                    if ceil32(_8853) > _8853:
                        mem[_5811 + _8853 + 64] = 0
                    return 32, mem[_5811 + 32 len ceil32(_8853) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _5861 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[64] = _5861
                mem[_5861] = 32
                if ceil32(_5861) <= _5861:
                    _8766 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5861 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5861 + 64 len ceil32(_8766)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8766)]
                    if ceil32(_8766) > _8766:
                        mem[_5861 + _8766 + 64] = 0
                    return 32, mem[_5861 + 32 len ceil32(_8766) + 32]
                _8856 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5861 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5861 + 64 len ceil32(_8856)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8856)]
                if ceil32(_8856) > _8856:
                    mem[_5861 + _8856 + 64] = 0
                return 32, mem[_5861 + 32 len ceil32(_8856) + 32]
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
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _5813 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[64] = _5813
                mem[_5813] = 32
                if ceil32(_5813) <= _5813:
                    _8768 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5813 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5813 + 64 len ceil32(_8768)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8768)]
                    if ceil32(_8768) > _8768:
                        mem[_5813 + _8768 + 64] = 0
                    return 32, mem[_5813 + 32 len ceil32(_8768) + 32]
                _8859 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5813 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5813 + 64 len ceil32(_8859)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8859)]
                if ceil32(_8859) > _8859:
                    mem[_5813 + _8859 + 64] = 0
                return 32, mem[_5813 + 32 len ceil32(_8859) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _5862 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[64] = _5862
            mem[_5862] = 32
            if ceil32(_5862) <= _5862:
                _8770 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5862 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5862 + 64 len ceil32(_8770)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8770)]
                if ceil32(_8770) > _8770:
                    mem[_5862 + _8770 + 64] = 0
                return 32, mem[_5862 + 32 len ceil32(_8770) + 32]
            _8862 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5862 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5862 + 64 len ceil32(_8862)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8862)]
            if ceil32(_8862) > _8862:
                mem[_5862 + _8862 + 64] = 0
            return 32, mem[_5862 + 32 len ceil32(_8862) + 32]
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
                            mem[64] = 1
                            _2491 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                            mem[33] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                            mem[65 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                            if ceil32(_2491) > _2491:
                                mem[_2491 + 65] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2491) + -mem[64] + 65
                        idx = 0
                        s = 0
                        while idx < uint255(stor11.length.field_1):
                            mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 288] = '0'
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 289] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 321] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 353] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 1
                        _2494 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[33] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[65 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                        if ceil32(_2494) > _2494:
                            mem[_2494 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_2494) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 288] = '0'
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 289] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 321] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 353] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
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
                        mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                        mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                    _5823 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                    mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[64] = _5823
                    mem[_5823] = 32
                    if ceil32(_5823) <= _5823:
                        _8774 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[_5823 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                        mem[_5823 + 64 len ceil32(_8774)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8774)]
                        if ceil32(_8774) > _8774:
                            mem[_5823 + _8774 + 64] = 0
                        return 32, mem[_5823 + 32 len ceil32(_8774) + 32]
                    _8867 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5823 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5823 + 64 len ceil32(_8867)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8867)]
                    if ceil32(_8867) > _8867:
                        mem[_5823 + _8867 + 64] = 0
                    return 32, mem[_5823 + 32 len ceil32(_8867) + 32]
                if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _5866 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[64] = _5866
                mem[_5866] = 32
                if ceil32(_5866) <= _5866:
                    _8776 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5866 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5866 + 64 len ceil32(_8776)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8776)]
                    if ceil32(_8776) > _8776:
                        mem[_5866 + _8776 + 64] = 0
                    return 32, mem[_5866 + 32 len ceil32(_8776) + 32]
                _8870 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5866 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5866 + 64 len ceil32(_8870)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8870)]
                if ceil32(_8870) > _8870:
                    mem[_5866 + _8870 + 64] = 0
                return 32, mem[_5866 + 32 len ceil32(_8870) + 32]
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
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _5825 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[64] = _5825
                mem[_5825] = 32
                if ceil32(_5825) <= _5825:
                    _8778 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5825 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5825 + 64 len ceil32(_8778)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8778)]
                    if ceil32(_8778) > _8778:
                        mem[_5825 + _8778 + 64] = 0
                    return 32, mem[_5825 + 32 len ceil32(_8778) + 32]
                _8873 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5825 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5825 + 64 len ceil32(_8873)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8873)]
                if ceil32(_8873) > _8873:
                    mem[_5825 + _8873 + 64] = 0
                return 32, mem[_5825 + 32 len ceil32(_8873) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _5867 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[64] = _5867
            mem[_5867] = 32
            if ceil32(_5867) <= _5867:
                _8780 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5867 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5867 + 64 len ceil32(_8780)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8780)]
                if ceil32(_8780) > _8780:
                    mem[_5867 + _8780 + 64] = 0
                return 32, mem[_5867 + 32 len ceil32(_8780) + 32]
            _8876 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5867 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5867 + 64 len ceil32(_8876)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8876)]
            if ceil32(_8876) > _8876:
                mem[_5867 + _8876 + 64] = 0
            return 32, mem[_5867 + 32 len ceil32(_8876) + 32]
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
                        mem[64] = 1
                        _5647 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[33] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[65 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                        if ceil32(_5647) > _5647:
                            mem[_5647 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_5647) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 288] = '0'
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 289] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 321] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 353] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 1
                    _5650 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[33] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[65 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                    if ceil32(_5650) > _5650:
                        mem[_5650 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_5650) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 288] = '0'
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 289] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 321] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 353] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
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
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _9135 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[64] = _9135
                mem[_9135] = 32
                if ceil32(_9135) <= _9135:
                    _11220 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_9135 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_9135 + 64 len ceil32(_11220)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11220)]
                    if ceil32(_11220) > _11220:
                        mem[_9135 + _11220 + 64] = 0
                    return 32, mem[_9135 + 32 len ceil32(_11220) + 32]
                _11293 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_9135 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_9135 + 64 len ceil32(_11293)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11293)]
                if ceil32(_11293) > _11293:
                    mem[_9135 + _11293 + 64] = 0
                return 32, mem[_9135 + 32 len ceil32(_11293) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _9207 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[64] = _9207
            mem[_9207] = 32
            if ceil32(_9207) <= _9207:
                _11222 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_9207 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_9207 + 64 len ceil32(_11222)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11222)]
                if ceil32(_11222) > _11222:
                    mem[_9207 + _11222 + 64] = 0
                return 32, mem[_9207 + 32 len ceil32(_11222) + 32]
            _11296 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_9207 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_9207 + 64 len ceil32(_11296)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11296)]
            if ceil32(_11296) > _11296:
                mem[_9207 + _11296 + 64] = 0
            return 32, mem[_9207 + 32 len ceil32(_11296) + 32]
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
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _9137 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[64] = _9137
            mem[_9137] = 32
            if ceil32(_9137) <= _9137:
                _11224 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_9137 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_9137 + 64 len ceil32(_11224)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11224)]
                if ceil32(_11224) > _11224:
                    mem[_9137 + _11224 + 64] = 0
                return 32, mem[_9137 + 32 len ceil32(_11224) + 32]
            _11299 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_9137 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_9137 + 64 len ceil32(_11299)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11299)]
            if ceil32(_11299) > _11299:
                mem[_9137 + _11299 + 64] = 0
            return 32, mem[_9137 + 32 len ceil32(_11299) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        _9208 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
        mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
        mem[64] = _9208
        mem[_9208] = 32
        if ceil32(_9208) <= _9208:
            _11226 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_9208 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_9208 + 64 len ceil32(_11226)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11226)]
            if ceil32(_11226) > _11226:
                mem[_9208 + _11226 + 64] = 0
            return 32, mem[_9208 + 32 len ceil32(_11226) + 32]
        _11302 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_9208 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_9208 + 64 len ceil32(_11302)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11302)]
        if ceil32(_11302) > _11302:
            mem[_9208 + _11302 + 64] = 0
        return 32, mem[_9208 + 32 len ceil32(_11302) + 32]
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
                        mem[64] = 1
                        _2497 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[33] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[65 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                        if ceil32(_2497) > _2497:
                            mem[_2497 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_2497) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 288] = '0'
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 289] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 321] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 353] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 1
                    _2500 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[33] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[65 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                    if ceil32(_2500) > _2500:
                        mem[_2500 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_2500) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 288] = '0'
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 289] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 321] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 353] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
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
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _5829 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[64] = _5829
                mem[_5829] = 32
                if ceil32(_5829) <= _5829:
                    _8782 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5829 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5829 + 64 len ceil32(_8782)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8782)]
                    if ceil32(_8782) > _8782:
                        mem[_5829 + _8782 + 64] = 0
                    return 32, mem[_5829 + 32 len ceil32(_8782) + 32]
                _8879 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5829 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5829 + 64 len ceil32(_8879)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8879)]
                if ceil32(_8879) > _8879:
                    mem[_5829 + _8879 + 64] = 0
                return 32, mem[_5829 + 32 len ceil32(_8879) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _5868 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[64] = _5868
            mem[_5868] = 32
            if ceil32(_5868) <= _5868:
                _8784 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5868 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5868 + 64 len ceil32(_8784)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8784)]
                if ceil32(_8784) > _8784:
                    mem[_5868 + _8784 + 64] = 0
                return 32, mem[_5868 + 32 len ceil32(_8784) + 32]
            _8882 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5868 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5868 + 64 len ceil32(_8882)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8882)]
            if ceil32(_8882) > _8882:
                mem[_5868 + _8882 + 64] = 0
            return 32, mem[_5868 + 32 len ceil32(_8882) + 32]
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
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _5831 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[64] = _5831
            mem[_5831] = 32
            if ceil32(_5831) <= _5831:
                _8786 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5831 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5831 + 64 len ceil32(_8786)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8786)]
                if ceil32(_8786) > _8786:
                    mem[_5831 + _8786 + 64] = 0
                return 32, mem[_5831 + 32 len ceil32(_8786) + 32]
            _8885 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5831 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5831 + 64 len ceil32(_8885)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8885)]
            if ceil32(_8885) > _8885:
                mem[_5831 + _8885 + 64] = 0
            return 32, mem[_5831 + 32 len ceil32(_8885) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        _5869 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
        mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
        mem[64] = _5869
        mem[_5869] = 32
        if ceil32(_5869) <= _5869:
            _8788 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5869 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5869 + 64 len ceil32(_8788)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8788)]
            if ceil32(_8788) > _8788:
                mem[_5869 + _8788 + 64] = 0
            return 32, mem[_5869 + 32 len ceil32(_8788) + 32]
        _8888 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_5869 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_5869 + 64 len ceil32(_8888)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8888)]
        if ceil32(_8888) > _8888:
            mem[_5869 + _8888 + 64] = 0
        return 32, mem[_5869 + 32 len ceil32(_8888) + 32]
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
                        mem[64] = 1
                        _2503 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[33] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                        mem[65 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                        if ceil32(_2503) > _2503:
                            mem[_2503 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_2503) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 288] = '0'
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 289] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 321] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 353] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 1
                    _2506 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[33] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[65 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                    if ceil32(_2506) > _2506:
                        mem[_2506 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_2506) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 288] = '0'
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 289] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 321] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 353] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
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
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                    mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                    if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                    return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
                _5841 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
                mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[64] = _5841
                mem[_5841] = 32
                if ceil32(_5841) <= _5841:
                    _8792 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5841 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                    mem[_5841 + 64 len ceil32(_8792)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8792)]
                    if ceil32(_8792) > _8792:
                        mem[_5841 + _8792 + 64] = 0
                    return 32, mem[_5841 + 32 len ceil32(_8792) + 32]
                _8893 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5841 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5841 + 64 len ceil32(_8893)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8893)]
                if ceil32(_8893) > _8893:
                    mem[_5841 + _8893 + 64] = 0
                return 32, mem[_5841 + 32 len ceil32(_8893) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _5873 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[64] = _5873
            mem[_5873] = 32
            if ceil32(_5873) <= _5873:
                _8794 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5873 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5873 + 64 len ceil32(_8794)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8794)]
                if ceil32(_8794) > _8794:
                    mem[_5873 + _8794 + 64] = 0
                return 32, mem[_5873 + 32 len ceil32(_8794) + 32]
            _8896 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5873 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5873 + 64 len ceil32(_8896)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8896)]
            if ceil32(_8896) > _8896:
                mem[_5873 + _8896 + 64] = 0
            return 32, mem[_5873 + 32 len ceil32(_8896) + 32]
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
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _5843 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[64] = _5843
            mem[_5843] = 32
            if ceil32(_5843) <= _5843:
                _8796 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5843 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_5843 + 64 len ceil32(_8796)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8796)]
                if ceil32(_8796) > _8796:
                    mem[_5843 + _8796 + 64] = 0
                return 32, mem[_5843 + 32 len ceil32(_8796) + 32]
            _8899 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5843 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5843 + 64 len ceil32(_8899)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8899)]
            if ceil32(_8899) > _8899:
                mem[_5843 + _8899 + 64] = 0
            return 32, mem[_5843 + 32 len ceil32(_8899) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        _5874 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
        mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
        mem[64] = _5874
        mem[_5874] = 32
        if ceil32(_5874) <= _5874:
            _8798 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5874 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_5874 + 64 len ceil32(_8798)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8798)]
            if ceil32(_8798) > _8798:
                mem[_5874 + _8798 + 64] = 0
            return 32, mem[_5874 + 32 len ceil32(_8798) + 32]
        _8902 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_5874 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_5874 + 64 len ceil32(_8902)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_8902)]
        if ceil32(_8902) > _8902:
            mem[_5874 + _8902 + 64] = 0
        return 32, mem[_5874 + 32 len ceil32(_8902) + 32]
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
                    mem[64] = 1
                    _5657 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[33] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                    mem[65 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                    if ceil32(_5657) > _5657:
                        mem[_5657 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_5657) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < uint255(stor11.length.field_1):
                    mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 288] = '0'
            mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 289] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 321] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
            mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
                mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 353] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + uint255(stor11.length.field_1) + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor19[arg1].field_1 % 128) + 288] = Mask(248, 8, stor11.length)
        else:
            if bool(stor11.length) != 1:
                mem[64] = 1
                _5660 = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[33] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
                mem[65 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
                if ceil32(_5660) > _5660:
                    mem[_5660 + 65] = 0
                return memory
                  from mem[64]
                   len ceil32(_5660) + -mem[64] + 65
            idx = 0
            s = 0
            while idx < stor11.length.field_1 % 128:
                mem[ceil32(stor19[arg1].field_1 % 128) + idx + 288] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 288] = '0'
        mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 289] = 32
        mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 321] = mem[ceil32(stor19[arg1].field_1 % 128) + 256]
        mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])] = mem[ceil32(stor19[arg1].field_1 % 128) + 288 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]
        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256]) > mem[ceil32(stor19[arg1].field_1 % 128) + 256]:
            mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 256] + 353] = 0
        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + 256], data=mem[ceil32(stor19[arg1].field_1 % 128) + stor11.length.field_1 % 128 + 353 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 256])]), 
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
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
                mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
                if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                    mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
                return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
            _9165 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
            mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[64] = _9165
            mem[_9165] = 32
            if ceil32(_9165) <= _9165:
                _11236 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_9165 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
                mem[_9165 + 64 len ceil32(_11236)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11236)]
                if ceil32(_11236) > _11236:
                    mem[_9165 + _11236 + 64] = 0
                return 32, mem[_9165 + 32 len ceil32(_11236) + 32]
            _11313 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_9165 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_9165 + 64 len ceil32(_11313)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11313)]
            if ceil32(_11313) > _11313:
                mem[_9165 + _11313 + 64] = 0
            return 32, mem[_9165 + 32 len ceil32(_11313) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        _9217 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
        mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
        mem[64] = _9217
        mem[_9217] = 32
        if ceil32(_9217) <= _9217:
            _11238 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_9217 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_9217 + 64 len ceil32(_11238)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11238)]
            if ceil32(_11238) > _11238:
                mem[_9217 + _11238 + 64] = 0
            return 32, mem[_9217 + 32 len ceil32(_11238) + 32]
        _11316 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_9217 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_9217 + 64 len ceil32(_11316)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11316)]
        if ceil32(_11316) > _11316:
            mem[_9217 + _11316 + 64] = 0
        return 32, mem[_9217 + 32 len ceil32(_11316) + 32]
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
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
            mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
            if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
                mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
            return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
        _9167 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
        mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
        mem[64] = _9167
        mem[_9167] = 32
        if ceil32(_9167) <= _9167:
            _11240 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_9167 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
            mem[_9167 + 64 len ceil32(_11240)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11240)]
            if ceil32(_11240) > _11240:
                mem[_9167 + _11240 + 64] = 0
            return 32, mem[_9167 + 32 len ceil32(_11240) + 32]
        _11319 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_9167 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_9167 + 64 len ceil32(_11319)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11319)]
        if ceil32(_11319) > _11319:
            mem[_9167 + _11319 + 64] = 0
        return 32, mem[_9167 + 32 len ceil32(_11319) + 32]
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not bool(stor11.length):
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256] = Mask(248, 8, stor11.length)
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
        mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
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
        mem[64] = ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 256] = 32
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 288] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]
        if ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]) > mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]:
            mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224] + 320] = 0
        return Array(len=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224], data=mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor19[arg1].field_1 % 128) + 192] + 320 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224])]), 
    _9218 = mem[ceil32(stor19[arg1].field_1 % 128) + 192]
    mem[0 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])] = mem[ceil32(stor19[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor19[arg1].field_1 % 128) + 192])]
    mem[64] = _9218
    mem[_9218] = 32
    if ceil32(_9218) <= _9218:
        _11242 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_9218 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
        mem[_9218 + 64 len ceil32(_11242)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11242)]
        if ceil32(_11242) > _11242:
            mem[_9218 + _11242 + 64] = 0
        return 32, mem[_9218 + 32 len ceil32(_11242) + 32]
    _11322 = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
    mem[_9218 + 32] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 224]
    mem[_9218 + 64 len ceil32(_11322)] = mem[ceil32(stor19[arg1].field_1 % 128) + ceil32(s) + 256 len ceil32(_11322)]
    if ceil32(_11322) > _11322:
        mem[_9218 + _11322 + 64] = 0
    return 32, mem[_9218 + 32 len ceil32(_11322) + 32]
}



}

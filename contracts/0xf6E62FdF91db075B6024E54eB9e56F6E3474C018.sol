contract main {




// =====================  Runtime code  =====================


#
#  - sub_43f37b98(?)
#  - tokenURI(uint256 arg1)
#
const sub_007c6c67(?) = 3333

const sub_07d4f238(?) = 8 * 10^17

const sub_16cd209a(?) = 4

const sub_407753c6(?) = 1

const sub_4e4d80a9(?) = 1

const sub_5ef44cec(?) = 3333

const sub_65587a5f(?) = 333

const sub_7e388a45(?) = 2

const sub_86bad4ef(?) = 12 * 10^17

const sub_8dd36241(?) = 30

const sub_bdd5e281(?) = 3

const sub_e384ea24(?) = 1650


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
uint8 stor10; offset 160
address owner;
address cryptoAddress;
address sub_d44c6ab2Address;
address sub_91716633Address;
array of struct stor14;
mapping of uint256 type;
mapping of uint256 sub_0805d884;
uint256 sub_4ee5b2af;
uint256 sub_e158badc;
uint256 sub_0e7f589f;
uint256 sub_d58b25c7;
uint256 sub_dde1a540;
uint256 sub_2476703e;
uint256 sub_a682f862;
uint256 sub_4d45a426;
bool stor25;
uint256 stor25;
uint256 stor25; offset 1
uint256 sub_bd09c4f2;
uint256 merkleRoot;
mapping of uint256 whitelistClaimed;

function sub_0805d884(?) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'token does not exist'
    return sub_0805d884[stor15[arg1]]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0e7f589f(?) {
    return sub_0e7f589f
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_2476703e(?) {
    return sub_2476703e
}

function merkleRoot() {
    return merkleRoot
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

function tokenTypes(uint256 arg1) {
    require calldata.size - 4 >= 32
    return type[arg1]
}

function getType(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'token does not exist'
    return type[arg1]
}

function sub_4d45a426(?) {
    return sub_4d45a426
}

function sub_4ee5b2af(?) {
    return sub_4ee5b2af
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(stor10)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function crypto() {
    return cryptoAddress
}

function sub_6de1a6d9(?) {
    require calldata.size - 4 >= 32
    return sub_0805d884[arg1]
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

function sub_91716633(?) {
    return sub_91716633Address
}

function sub_a682f862(?) {
    return sub_a682f862
}

function sub_bd09c4f2(?) {
    return sub_bd09c4f2
}

function sub_d44c6ab2(?) {
    return sub_d44c6ab2Address
}

function sub_d58b25c7(?) {
    return sub_d58b25c7
}

function whitelistClaimed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return whitelistClaimed[arg1]
}

function sub_dde1a540(?) {
    return sub_dde1a540
}

function sub_e158badc(?) {
    return sub_e158badc
}

function _fallback() payable {
    revert
}

function sub_710cc9f8(?) {
    if 0 == sub_4d45a426:
        return sub_4d45a426 != 0
    return block.timestamp >= sub_4d45a426
}

function sub_a377d7ef(?) {
    if 0 == sub_a682f862:
        return sub_a682f862 != 0
    return block.timestamp >= sub_a682f862
}

function sub_efe0d7ce(?) {
    if 0 == sub_2476703e:
        return sub_2476703e != 0
    return block.timestamp >= sub_2476703e
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMerkleRoot(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    merkleRoot = arg1
}

function sub_e3bb8e04(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cryptoAddress = address(arg1)
}

function sub_43142d74(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d44c6ab2Address = address(arg1)
}

function sub_c40fe2df(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_91716633Address = address(arg1)
}

function sub_3c1d4de7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < block.timestamp:
        revert with 0, 'startTime cannot be in the past'
    sub_a682f862 = arg1
}

function sub_68f7e4da(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < block.timestamp:
        revert with 0, 'startTime cannot be in the past'
    sub_4d45a426 = arg1
}

function sub_eb41903a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < block.timestamp:
        revert with 0, 'startTime cannot be in the past'
    sub_2476703e = arg1
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

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not sub_d44c6ab2Address:
        return bool(stor5[address(arg1)][address(arg2)])
    if sub_d44c6ab2Address != arg2:
        return bool(stor5[address(arg1)][address(arg2)])
    return 1
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

function withdrawAVAX(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'not enough AVAX'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send AVAX'
}

function sub_a3b71c73(?) {
    require calldata.size - 4 >= 64
    if sub_91716633Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msgsender does not have permission'
    if type[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'that token's type has already been set'
    if arg2 != 1:
        if arg2 != 2:
            revert with 0, 'invalid fighter type'
    type[arg1] = arg2
    emit 0x8d14cebc: arg1, arg2
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not sub_d44c6ab2Address:
            if not stor5[stor2[arg2]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ERC721: approve caller is not owner nor approved for all'
        else:
            if sub_d44c6ab2Address != msg.sender:
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
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor14.length = 0
            idx = 0
            while (uint255(stor14.length) * 0.5) + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor14.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor14[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while (uint255(stor14.length) * 0.5) + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if not arg1.length:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor14.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor14[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
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
            if not sub_d44c6ab2Address:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
            else:
                if sub_d44c6ab2Address != msg.sender:
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

function BASE_URI() {
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
            if not sub_d44c6ab2Address:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
            else:
                if sub_d44c6ab2Address != msg.sender:
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
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
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not sub_d44c6ab2Address:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
            else:
                if sub_d44c6ab2Address != msg.sender:
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

function sub_4bc1ecac(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = address(arg1)
    mem[32] = 3
    if arg2 >= balanceOf[address(arg1)]:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = 192
        while idx < mem[96]:
            _87 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_87 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len -mem[64] + 192
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = address(arg1)
    mem[32] = 3
    if arg2 > !arg3:
        revert with 0, 17
    if arg2 + arg3 < balanceOf[address(arg1)]:
        if arg3 > test266151307():
            revert with 0, 65
        mem[96] = arg3
        mem[64] = (32 * arg3) + 128
        if not arg3:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = arg2 + idx
                _125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_125] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                mem[32] = 15
                mem[_125 + 32] = type[stor6[address(arg1)][arg2 + idx]]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _125
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _91 = mem[64]
            mem[mem[64]] = 32
            _93 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _93:
                _155 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_155 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _91 + (64 * _93) + -mem[64] + 64
        mem[64] = (32 * arg3) + 192
        mem[(32 * arg3) + 128] = 0
        mem[(32 * arg3) + 160] = 0
        mem[128] = (32 * arg3) + 128
        s = 128
        idx = arg3
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg3) + 128] = 0
            mem[(32 * arg3) + 160] = 0
            mem[s + 32] = (32 * arg3) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg3:
            if arg2 > !idx:
                revert with 0, 17
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if arg2 + idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = arg2 + idx
            _187 = mem[64]
            mem[64] = mem[64] + 64
            mem[_187] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
            mem[32] = 15
            mem[_187 + 32] = type[stor6[address(arg1)][arg2 + idx]]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _187
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _163 = mem[64]
        mem[mem[64]] = 32
        _165 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _165:
            _195 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_195 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _163 + (64 * _165) + -mem[64] + 64
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = address(arg1)
    mem[32] = 3
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 17
    if balanceOf[address(arg1)] - arg2 > test266151307():
        revert with 0, 65
    mem[96] = balanceOf[address(arg1)] - arg2
    mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 128
    if not balanceOf[address(arg1)] - arg2:
        idx = 0
        while idx < balanceOf[address(arg1)] - arg2:
            if arg2 > !idx:
                revert with 0, 17
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if arg2 + idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = arg2 + idx
            _132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_132] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
            mem[32] = 15
            mem[_132 + 32] = type[stor6[address(arg1)][arg2 + idx]]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _132
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _92 = mem[64]
        mem[mem[64]] = 32
        _94 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _94:
            _158 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_158 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _92 + (64 * _94) + -mem[64] + 64
    mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 192
    mem[(32 * balanceOf[address(arg1)] - arg2) + 128] = 0
    mem[(32 * balanceOf[address(arg1)] - arg2) + 160] = 0
    mem[128] = (32 * balanceOf[address(arg1)] - arg2) + 128
    s = 128
    idx = balanceOf[address(arg1)] - arg2
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * balanceOf[address(arg1)] - arg2) + 128] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 160] = 0
        mem[s + 32] = (32 * balanceOf[address(arg1)] - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < balanceOf[address(arg1)] - arg2:
        if arg2 > !idx:
            revert with 0, 17
        if not address(arg1):
            revert with 0, 'ERC721: balance query for the zero address'
        if arg2 + idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = arg2 + idx
        _191 = mem[64]
        mem[64] = mem[64] + 64
        mem[_191] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
        mem[32] = 15
        mem[_191 + 32] = type[stor6[address(arg1)][arg2 + idx]]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _191
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _164 = mem[64]
    mem[mem[64]] = 32
    _166 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _166:
        _198 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_198 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _164 + (64 * _166) + -mem[64] + 64
}

function sub_d3f505dd(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor10:
        revert with 0, 'Pausable: paused'
    if 0 == sub_a682f862:
        revert with 0, 'cannot mint right now'
    if block.timestamp < sub_a682f862:
        revert with 0, 'cannot mint right now'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if 3333 < sub_0e7f589f:
        revert with 0, 17
    if -sub_0e7f589f + 3333 < 30:
        revert with 0, 17
    if sub_4ee5b2af > !arg1:
        revert with 0, 17
    if sub_4ee5b2af + arg1 > -sub_0e7f589f + 3303:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you can't mint that many right now'
    if arg1 > 0xf5f4e2ed9e30f0616253fe4d4e70b503ff67eac7524cbc49b:
        revert with 0, 17
    if msg.value < 12 * 10^17 * arg1:
        revert with 0, 'not enough AVAX'
    if sub_4ee5b2af > !arg1:
        revert with 0, 17
    sub_4ee5b2af += arg1
    idx = 0
    while idx < arg1:
        if sub_dde1a540 > -2:
            revert with 0, 17
        sub_dde1a540++
        if sub_dde1a540 > 6666:
            revert with 0, 'cannot mint anymore fighters'
        _157 = mem[64]
        mem[64] = mem[64] + 32
        mem[_157] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor21]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor21] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sub_dde1a540
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_dde1a540
                mem[32] = 2
                ownerOf[stor21] = msg.sender
                emit Transfer(0, msg.sender, sub_dde1a540);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_dde1a540
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _157 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_dde1a540, 128, 0
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
                    _306 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_306] == Mask(32, 224, mem[_306])
                    if Mask(32, 224, mem[_306]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_dde1a540
                stor7[stor21] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_dde1a540
                mem[32] = 2
                ownerOf[stor21] = msg.sender
                emit Transfer(0, msg.sender, sub_dde1a540);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_dde1a540
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _157 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_dde1a540, 128, 0
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
                    _308 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_308] == Mask(32, 224, mem[_308])
                    if Mask(32, 224, mem[_308]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor21] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor21]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor21]
            stor9[stor21] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = sub_dde1a540
            mem[32] = 2
            ownerOf[stor21] = msg.sender
            emit Transfer(0, msg.sender, sub_dde1a540);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = sub_dde1a540
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _157 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, sub_dde1a540, 128, 0
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
                _310 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_310] == Mask(32, 224, mem[_310])
                if Mask(32, 224, mem[_310]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        mem[mem[64]] = sub_dde1a540
        emit 0x9a696d85: sub_dde1a540
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_238aa9cd(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'quantity must be greater than 0'
    if sub_d58b25c7 > !arg1:
        revert with 0, 17
    if sub_d58b25c7 + arg1 > 30:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you can't mint that many right now'
    if arg2 == 1:
        idx = 0
        while idx < arg1:
            if sub_d58b25c7 > -2:
                revert with 0, 17
            sub_d58b25c7++
            if type[stor20]:
                revert with 0, 'that token's type has already been set'
            mem[0] = sub_d58b25c7
            type[stor20] = arg2
            if sub_dde1a540 > 6666:
                revert with 0, 'cannot mint anymore fighters'
            _309 = mem[64]
            mem[64] = mem[64] + 32
            mem[_309] = 0
            if not address(arg3):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor20]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor20] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_d58b25c7
            if address(arg3):
                if not address(arg3):
                    if balanceOf[address(arg3)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg3)]++
                    mem[0] = sub_d58b25c7
                    mem[32] = 2
                    ownerOf[stor20] = address(arg3)
                    emit Transfer(0, address(arg3), sub_d58b25c7);
                    if ext_code.size(address(arg3)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_d58b25c7
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _309 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(arg3))
                        call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_d58b25c7, 128, 0
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
                        _607 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_607] == Mask(32, 224, mem[_607])
                        if Mask(32, 224, mem[_607]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not address(arg3):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(arg3)][stor3[address(arg3)]] = sub_d58b25c7
                    stor7[stor20] = balanceOf[address(arg3)]
                    if balanceOf[address(arg3)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg3)]++
                    mem[0] = sub_d58b25c7
                    mem[32] = 2
                    ownerOf[stor20] = address(arg3)
                    emit Transfer(0, address(arg3), sub_d58b25c7);
                    if ext_code.size(address(arg3)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_d58b25c7
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _309 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(arg3))
                        call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_d58b25c7, 128, 0
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
                        _609 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_609] == Mask(32, 224, mem[_609])
                        if Mask(32, 224, mem[_609]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor20] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor20]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor20]
                stor9[stor20] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(arg3)] > -2:
                    revert with 0, 17
                balanceOf[address(arg3)]++
                mem[0] = sub_d58b25c7
                mem[32] = 2
                ownerOf[stor20] = address(arg3)
                emit Transfer(0, address(arg3), sub_d58b25c7);
                if ext_code.size(address(arg3)):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_d58b25c7
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _309 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(arg3))
                    call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_d58b25c7, 128, 0
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
                    _611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_611] == Mask(32, 224, mem[_611])
                    if Mask(32, 224, mem[_611]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[mem[64]] = sub_d58b25c7
            emit 0x9a696d85: sub_d58b25c7
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if arg2 != 2:
            revert with 0, 'invalid fighter type'
        idx = 0
        while idx < arg1:
            if sub_d58b25c7 > -2:
                revert with 0, 17
            sub_d58b25c7++
            if type[stor20]:
                revert with 0, 'that token's type has already been set'
            mem[0] = sub_d58b25c7
            type[stor20] = arg2
            if sub_dde1a540 > 6666:
                revert with 0, 'cannot mint anymore fighters'
            _311 = mem[64]
            mem[64] = mem[64] + 32
            mem[_311] = 0
            if not address(arg3):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor20]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor20] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_d58b25c7
            if address(arg3):
                if not address(arg3):
                    if balanceOf[address(arg3)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg3)]++
                    mem[0] = sub_d58b25c7
                    mem[32] = 2
                    ownerOf[stor20] = address(arg3)
                    emit Transfer(0, address(arg3), sub_d58b25c7);
                    if ext_code.size(address(arg3)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_d58b25c7
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _311 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(arg3))
                        call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_d58b25c7, 128, 0
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
                        _613 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_613] == Mask(32, 224, mem[_613])
                        if Mask(32, 224, mem[_613]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not address(arg3):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(arg3)][stor3[address(arg3)]] = sub_d58b25c7
                    stor7[stor20] = balanceOf[address(arg3)]
                    if balanceOf[address(arg3)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg3)]++
                    mem[0] = sub_d58b25c7
                    mem[32] = 2
                    ownerOf[stor20] = address(arg3)
                    emit Transfer(0, address(arg3), sub_d58b25c7);
                    if ext_code.size(address(arg3)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_d58b25c7
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _311 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(arg3))
                        call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_d58b25c7, 128, 0
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
                        _615 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_615] == Mask(32, 224, mem[_615])
                        if Mask(32, 224, mem[_615]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor20] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor20]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor20]
                stor9[stor20] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(arg3)] > -2:
                    revert with 0, 17
                balanceOf[address(arg3)]++
                mem[0] = sub_d58b25c7
                mem[32] = 2
                ownerOf[stor20] = address(arg3)
                emit Transfer(0, address(arg3), sub_d58b25c7);
                if ext_code.size(address(arg3)):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_d58b25c7
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _311 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(arg3))
                    call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_d58b25c7, 128, 0
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
                    _617 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_617] == Mask(32, 224, mem[_617])
                    if Mask(32, 224, mem[_617]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[mem[64]] = sub_d58b25c7
            emit 0x9a696d85: sub_d58b25c7
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function mintWhitelist(bytes32[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor10:
        revert with 0, 'Pausable: paused'
    if not merkleRoot:
        revert with 0, 'missing root'
    if 0 == sub_2476703e:
        revert with 0, 'cannot mint right now'
    if block.timestamp < sub_2476703e:
        revert with 0, 'cannot mint right now'
    if 0 == sub_a682f862:
        mem[128] = address(msg.sender)
        mem[96] = 20
        mem[64] = (32 * arg1.length) + 180
        mem[148] = arg1.length
        mem[180 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        mem[(32 * arg1.length) + 180] = 0
        idx = 0
        s = 0
        while idx < arg1.length:
            if idx >= mem[148]:
                revert with 0, 50
            _357 = mem[(32 * idx) + 180]
            if s + sha3(mem[128 len 20]) > mem[(32 * idx) + 180]:
                mem[mem[64] + 32] = mem[(32 * idx) + 180]
                mem[mem[64] + 64] = s + sha3(mem[128 len 20])
                _360 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = sha3(mem[_360 + 32 len mem[_360]])
                continue 
            mem[mem[64] + 32] = s + sha3(mem[128 len 20])
            mem[mem[64] + 64] = _357
            _364 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[_364 + 32 len mem[_364]])
            continue 
        if s != merkleRoot:
            revert with 0, 'this address does not have permission'
        if arg2 <= 0:
            revert with 0, 'quantity must be between 1 and 4'
        if arg2 > 4:
            revert with 0, 'quantity must be between 1 and 4'
        if sub_0e7f589f > !arg2:
            revert with 0, 17
        if sub_0e7f589f + arg2 > 333:
            revert with 0, 'you can't mint that many right now'
        if whitelistClaimed[msg.sender] > !arg2:
            revert with 0, 17
        if whitelistClaimed[msg.sender] + arg2 > 4:
            revert with 0, 'this address can't mint any more whitelist FIGHTERs'
        if arg2 > 0x170ef54646d496892137dfd73f5a90f85ff1be02afb731a6e9:
            revert with 0, 17
        if msg.value < 8 * 10^17 * arg2:
            revert with 0, 'not enough AVAX'
        if sub_0e7f589f > !arg2:
            revert with 0, 17
        sub_0e7f589f += arg2
        mem[0] = msg.sender
        mem[32] = 27
        if whitelistClaimed[msg.sender] > !arg2:
            revert with 0, 17
        whitelistClaimed[msg.sender] += arg2
        idx = 0
        while idx < arg2:
            if sub_dde1a540 > -2:
                revert with 0, 17
            sub_dde1a540++
            if sub_dde1a540 > 6666:
                revert with 0, 'cannot mint anymore fighters'
            _687 = mem[64]
            mem[64] = mem[64] + 32
            mem[_687] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor21]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor21] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_dde1a540
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_dde1a540
                    mem[32] = 2
                    ownerOf[stor21] = msg.sender
                    emit Transfer(0, msg.sender, sub_dde1a540);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_dde1a540
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _687 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_dde1a540, 128, 0
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
                        _985 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_985] == Mask(32, 224, mem[_985])
                        if Mask(32, 224, mem[_985]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_dde1a540
                    stor7[stor21] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_dde1a540
                    mem[32] = 2
                    ownerOf[stor21] = msg.sender
                    emit Transfer(0, msg.sender, sub_dde1a540);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_dde1a540
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _687 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_dde1a540, 128, 0
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
                        _987 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_987] == Mask(32, 224, mem[_987])
                        if Mask(32, 224, mem[_987]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor21] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor21]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor21]
                stor9[stor21] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_dde1a540
                mem[32] = 2
                ownerOf[stor21] = msg.sender
                emit Transfer(0, msg.sender, sub_dde1a540);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_dde1a540
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _687 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_dde1a540, 128, 0
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
                    _989 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_989] == Mask(32, 224, mem[_989])
                    if Mask(32, 224, mem[_989]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[mem[64]] = sub_dde1a540
            emit 0x9a696d85: sub_dde1a540
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if block.timestamp >= sub_a682f862:
            revert with 0, 'whitelist minting is closed'
        mem[128] = address(msg.sender)
        mem[96] = 20
        mem[64] = (32 * arg1.length) + 180
        mem[148] = arg1.length
        mem[180 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        mem[(32 * arg1.length) + 180] = 0
        idx = 0
        s = 0
        while idx < arg1.length:
            if idx >= mem[148]:
                revert with 0, 50
            _358 = mem[(32 * idx) + 180]
            if s + sha3(mem[128 len 20]) > mem[(32 * idx) + 180]:
                mem[mem[64] + 32] = mem[(32 * idx) + 180]
                mem[mem[64] + 64] = s + sha3(mem[128 len 20])
                _368 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = sha3(mem[_368 + 32 len mem[_368]])
                continue 
            mem[mem[64] + 32] = s + sha3(mem[128 len 20])
            mem[mem[64] + 64] = _358
            _372 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[_372 + 32 len mem[_372]])
            continue 
        if s != merkleRoot:
            revert with 0, 'this address does not have permission'
        if arg2 <= 0:
            revert with 0, 'quantity must be between 1 and 4'
        if arg2 > 4:
            revert with 0, 'quantity must be between 1 and 4'
        if sub_0e7f589f > !arg2:
            revert with 0, 17
        if sub_0e7f589f + arg2 > 333:
            revert with 0, 'you can't mint that many right now'
        if whitelistClaimed[msg.sender] > !arg2:
            revert with 0, 17
        if whitelistClaimed[msg.sender] + arg2 > 4:
            revert with 0, 'this address can't mint any more whitelist FIGHTERs'
        if arg2 > 0x170ef54646d496892137dfd73f5a90f85ff1be02afb731a6e9:
            revert with 0, 17
        if msg.value < 8 * 10^17 * arg2:
            revert with 0, 'not enough AVAX'
        if sub_0e7f589f > !arg2:
            revert with 0, 17
        sub_0e7f589f += arg2
        mem[0] = msg.sender
        mem[32] = 27
        if whitelistClaimed[msg.sender] > !arg2:
            revert with 0, 17
        whitelistClaimed[msg.sender] += arg2
        idx = 0
        while idx < arg2:
            if sub_dde1a540 > -2:
                revert with 0, 17
            sub_dde1a540++
            if sub_dde1a540 > 6666:
                revert with 0, 'cannot mint anymore fighters'
            _689 = mem[64]
            mem[64] = mem[64] + 32
            mem[_689] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor21]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor21] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_dde1a540
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_dde1a540
                    mem[32] = 2
                    ownerOf[stor21] = msg.sender
                    emit Transfer(0, msg.sender, sub_dde1a540);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_dde1a540
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _689 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_dde1a540, 128, 0
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
                        _991 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_991] == Mask(32, 224, mem[_991])
                        if Mask(32, 224, mem[_991]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_dde1a540
                    stor7[stor21] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_dde1a540
                    mem[32] = 2
                    ownerOf[stor21] = msg.sender
                    emit Transfer(0, msg.sender, sub_dde1a540);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_dde1a540
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _689 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_dde1a540, 128, 0
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
                        _993 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_993] == Mask(32, 224, mem[_993])
                        if Mask(32, 224, mem[_993]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor21] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor21]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor21]
                stor9[stor21] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_dde1a540
                mem[32] = 2
                ownerOf[stor21] = msg.sender
                emit Transfer(0, msg.sender, sub_dde1a540);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_dde1a540
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _689 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_dde1a540, 128, 0
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
                    _995 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_995] == Mask(32, 224, mem[_995])
                    if Mask(32, 224, mem[_995]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[mem[64]] = sub_dde1a540
            emit 0x9a696d85: sub_dde1a540
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_37c42895(?) {
    require calldata.size - 4 >= 32
    if stor10:
        revert with 0, 'Pausable: paused'
    if 0 == sub_4d45a426:
        revert with 0, 'cannot mint right now'
    if block.timestamp < sub_4d45a426:
        revert with 0, 'cannot mint right now'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if sub_e158badc > !arg1:
        revert with 0, 17
    if sub_e158badc + arg1 > 3333:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you can't mint that many right now'
    if sub_bd09c4f2 and arg1 > -1 / sub_bd09c4f2:
        revert with 0, 17
    mem[100] = msg.sender
    require ext_code.size(cryptoAddress)
    staticcall cryptoAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_bd09c4f2 * arg1:
        revert with 0, 'not enough CRYPTO'
    if sub_e158badc > !arg1:
        revert with 0, 17
    if sub_e158badc > 1650:
        sub_e158badc += arg1
        mem[ceil32(return_data.size) + 96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = sub_bd09c4f2 * arg1
        require ext_code.size(cryptoAddress)
        call cryptoAddress.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, sub_bd09c4f2 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg1:
            if sub_dde1a540 > -2:
                revert with 0, 17
            sub_dde1a540++
            if sub_dde1a540 > 6666:
                revert with 0, 'cannot mint anymore fighters'
            _451 = mem[64]
            mem[64] = mem[64] + 32
            mem[_451] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor21]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor21] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_dde1a540
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_dde1a540
                    mem[32] = 2
                    ownerOf[stor21] = msg.sender
                    emit Transfer(0, msg.sender, sub_dde1a540);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_dde1a540
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _451 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_dde1a540, 128, 0
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
                        _898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_898] == Mask(32, 224, mem[_898])
                        if Mask(32, 224, mem[_898]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_dde1a540
                    stor7[stor21] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_dde1a540
                    mem[32] = 2
                    ownerOf[stor21] = msg.sender
                    emit Transfer(0, msg.sender, sub_dde1a540);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_dde1a540
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _451 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_dde1a540, 128, 0
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
                        _900 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_900] == Mask(32, 224, mem[_900])
                        if Mask(32, 224, mem[_900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor21] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor21]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor21]
                stor9[stor21] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_dde1a540
                mem[32] = 2
                ownerOf[stor21] = msg.sender
                emit Transfer(0, msg.sender, sub_dde1a540);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_dde1a540
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _451 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_dde1a540, 128, 0
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
                    _902 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_902] == Mask(32, 224, mem[_902])
                    if Mask(32, 224, mem[_902]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[mem[64]] = sub_dde1a540
            emit 0x9a696d85: sub_dde1a540
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if sub_e158badc + arg1 <= 1650:
            if sub_e158badc > !arg1:
                revert with 0, 17
            sub_e158badc += arg1
            mem[ceil32(return_data.size) + 96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = msg.sender
            mem[ceil32(return_data.size) + 132] = sub_bd09c4f2 * arg1
            require ext_code.size(cryptoAddress)
            call cryptoAddress.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, sub_bd09c4f2 * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < arg1:
                if sub_dde1a540 > -2:
                    revert with 0, 17
                sub_dde1a540++
                if sub_dde1a540 > 6666:
                    revert with 0, 'cannot mint anymore fighters'
                _453 = mem[64]
                mem[64] = mem[64] + 32
                mem[_453] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor21]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor21] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = sub_dde1a540
                if msg.sender:
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = sub_dde1a540
                        mem[32] = 2
                        ownerOf[stor21] = msg.sender
                        emit Transfer(0, msg.sender, sub_dde1a540);
                        if ext_code.size(msg.sender):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_dde1a540
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _453 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_dde1a540, 128, 0
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
                            _904 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_904] == Mask(32, 224, mem[_904])
                            if Mask(32, 224, mem[_904]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_dde1a540
                        stor7[stor21] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = sub_dde1a540
                        mem[32] = 2
                        ownerOf[stor21] = msg.sender
                        emit Transfer(0, msg.sender, sub_dde1a540);
                        if ext_code.size(msg.sender):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_dde1a540
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _453 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_dde1a540, 128, 0
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
                            _906 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_906] == Mask(32, 224, mem[_906])
                            if Mask(32, 224, mem[_906]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[stor21] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[stor21]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor21]
                    stor9[stor21] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_dde1a540
                    mem[32] = 2
                    ownerOf[stor21] = msg.sender
                    emit Transfer(0, msg.sender, sub_dde1a540);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_dde1a540
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _453 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_dde1a540, 128, 0
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
                        _908 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_908] == Mask(32, 224, mem[_908])
                        if Mask(32, 224, mem[_908]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                mem[mem[64]] = sub_dde1a540
                emit 0x9a696d85: sub_dde1a540
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if sub_bd09c4f2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            bool(stor25.field_0) = 0
            uint255(stor25.field_1) = uint255(stor25.field_0)
            if sub_e158badc > !arg1:
                revert with 0, 17
            sub_e158badc += arg1
            mem[ceil32(return_data.size) + 96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = msg.sender
            mem[ceil32(return_data.size) + 132] = sub_bd09c4f2 * arg1
            require ext_code.size(cryptoAddress)
            call cryptoAddress.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, sub_bd09c4f2 * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < arg1:
                if sub_dde1a540 > -2:
                    revert with 0, 17
                sub_dde1a540++
                if sub_dde1a540 > 6666:
                    revert with 0, 'cannot mint anymore fighters'
                _455 = mem[64]
                mem[64] = mem[64] + 32
                mem[_455] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor21]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor21] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = sub_dde1a540
                if msg.sender:
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = sub_dde1a540
                        mem[32] = 2
                        ownerOf[stor21] = msg.sender
                        emit Transfer(0, msg.sender, sub_dde1a540);
                        if ext_code.size(msg.sender):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_dde1a540
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _455 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_dde1a540, 128, 0
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
                            _910 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_910] == Mask(32, 224, mem[_910])
                            if Mask(32, 224, mem[_910]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_dde1a540
                        stor7[stor21] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = sub_dde1a540
                        mem[32] = 2
                        ownerOf[stor21] = msg.sender
                        emit Transfer(0, msg.sender, sub_dde1a540);
                        if ext_code.size(msg.sender):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_dde1a540
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _455 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_dde1a540, 128, 0
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
                            _912 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_912] == Mask(32, 224, mem[_912])
                            if Mask(32, 224, mem[_912]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[stor21] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[stor21]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor21]
                    stor9[stor21] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_dde1a540
                    mem[32] = 2
                    ownerOf[stor21] = msg.sender
                    emit Transfer(0, msg.sender, sub_dde1a540);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_dde1a540
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _455 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_dde1a540, 128, 0
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
                        _914 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_914] == Mask(32, 224, mem[_914])
                        if Mask(32, 224, mem[_914]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                mem[mem[64]] = sub_dde1a540
                emit 0x9a696d85: sub_dde1a540
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}



}

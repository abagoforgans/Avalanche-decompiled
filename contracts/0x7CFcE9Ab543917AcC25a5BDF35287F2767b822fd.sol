contract main {




// =====================  Runtime code  =====================


#
#  - sub_43f37b98(?)
#  - tokenURI(uint256 arg1)
#
const sub_16cd209a(?) = 10

const sub_1b1fed9e(?) = 3

const sub_36c078bb(?) = 1

const sub_3876462c(?) = 5000

const sub_495b7db4(?) = 4

const sub_6d6bebec(?) = 1

const sub_8751f844(?) = 15 * 10^17

const sub_92fce290(?) = 3

const sub_93e64197(?) = 20

const sub_c168c648(?) = 10000

const sub_c26a04fa(?) = 2

const sub_c478b94b(?) = 9

const sub_eaae6000(?) = 10000

const sub_eba80219(?) = 6

const sub_f0cda785(?) = 125 * 10^16


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
uint8 paused; offset 160
address owner;
address sub_6885f845Address;
address sub_36e821faAddress;
array of struct stor13;
mapping of uint256 type;
mapping of uint256 sub_0805d884;
uint256 sub_70057ba6;
uint256 sub_bf021c02;
uint256 sub_12384e87;
uint256 sub_96125409;
uint256 sub_288fe5ab;
uint256 sub_2476703e;
uint256 sub_a682f862;
uint256 sub_5c68a45d;
bool stor24;
uint256 stor24;
uint256 stor24; offset 1
uint256 sub_26277820;
uint256 merkleRoot;
mapping of uint256 whitelistClaimed;

function sub_0805d884(?) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'token does not exist'
    return sub_0805d884[stor14[arg1]]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_12384e87(?) {
    return sub_12384e87
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_2476703e(?) {
    return sub_2476703e
}

function sub_26277820(?) {
    return sub_26277820
}

function sub_288fe5ab(?) {
    return sub_288fe5ab
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

function sub_36e821fa(?) {
    return sub_36e821faAddress
}

function getType(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'token does not exist'
    return type[arg1]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_5c68a45d(?) {
    return sub_5c68a45d
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_6885f845(?) {
    return sub_6885f845Address
}

function sub_6de1a6d9(?) {
    require calldata.size - 4 >= 32
    return sub_0805d884[arg1]
}

function sub_70057ba6(?) {
    return sub_70057ba6
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

function sub_96125409(?) {
    return sub_96125409
}

function sub_a682f862(?) {
    return sub_a682f862
}

function sub_bf021c02(?) {
    return sub_bf021c02
}

function whitelistClaimed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return whitelistClaimed[arg1]
}

function _fallback() payable {
    revert
}

function sub_14366c92(?) {
    if 0 == sub_5c68a45d:
        return sub_5c68a45d != 0
    return block.timestamp >= sub_5c68a45d
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

function random(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 18
    return (sha3(block.timestamp, block.difficulty, msg.sender) % arg1)
}

function sub_173290c1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_36e821faAddress = address(arg1)
}

function sub_f2a8eb27(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6885f845Address = address(arg1)
}

function sub_29e97037(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < block.timestamp:
        revert with 0, 'startTime cannot be in the past'
    sub_5c68a45d = arg1
}

function sub_3c1d4de7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < block.timestamp:
        revert with 0, 'startTime cannot be in the past'
    sub_a682f862 = arg1
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
    if not sub_36e821faAddress:
        return bool(stor5[address(arg1)][address(arg2)])
    if sub_36e821faAddress != arg2:
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

function sub_017ec429(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if type[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'that token's type has already been set'
    if arg2 != 1:
        if arg2 != 2:
            if arg2 != 3:
                if arg2 != 4:
                    revert with 0, 'invalid foodTruck type'
    type[arg1] = arg2
    emit 0xfeee4383: arg1, arg2
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
        if not sub_36e821faAddress:
            if not stor5[stor2[arg2]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ERC721: approve caller is not owner nor approved for all'
        else:
            if sub_36e821faAddress != msg.sender:
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
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor13.length = 0
            idx = 0
            while (uint255(stor13.length) * 0.5) + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor13.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor13[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while (uint255(stor13.length) * 0.5) + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not arg1.length:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor13.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor13[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_0b69a922(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you can reveal only 10 food trucks at a time'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 14
        if type[cd[((32 * idx) + cd[4] + 36)]] != 0:
            revert with 0, 'that token's type has already been set'
        _37 = mem[64]
        mem[mem[64] + 32] = block.timestamp
        mem[mem[64] + 64] = block.difficulty
        mem[mem[64] + 96] = address(msg.sender)
        _38 = mem[64]
        mem[mem[64]] = 84
        mem[64] = mem[64] + 116
        _40 = sha3(mem[_38 + 32 len mem[_38]])
        if sha3(mem[_38 + 32 len mem[_38]]) % 101 <= 89:
            mem[32] = 14
            type[cd[((32 * idx) + cd[4] + 36)]] = 1
            mem[_37 + 116] = cd[((32 * idx) + cd[4] + 36)]
            mem[_37 + 148] = 1
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            emit 0xfeee4383: cd[((32 * idx) + cd[4] + 36)], 1
            if 100 == _40 % 101:
                mem[32] = 14
                type[cd[((32 * idx) + cd[4] + 36)]] = 3
                mem[_37 + 116] = cd[((32 * idx) + cd[4] + 36)]
                mem[_37 + 148] = 3
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                emit 0xfeee4383: cd[((32 * idx) + cd[4] + 36)], 3
        else:
            if sha3(mem[_38 + 32 len mem[_38]]) % 101 > 99:
                if 100 == sha3(mem[_38 + 32 len mem[_38]]) % 101:
                    mem[32] = 14
                    type[cd[((32 * idx) + cd[4] + 36)]] = 3
                    mem[_37 + 116] = cd[((32 * idx) + cd[4] + 36)]
                    mem[_37 + 148] = 3
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    emit 0xfeee4383: cd[((32 * idx) + cd[4] + 36)], 3
            else:
                mem[32] = 14
                type[cd[((32 * idx) + cd[4] + 36)]] = 2
                mem[_37 + 116] = cd[((32 * idx) + cd[4] + 36)]
                mem[_37 + 148] = 2
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                emit 0xfeee4383: cd[((32 * idx) + cd[4] + 36)], 2
                if 100 == _40 % 101:
                    mem[32] = 14
                    type[cd[((32 * idx) + cd[4] + 36)]] = 3
                    mem[_37 + 116] = cd[((32 * idx) + cd[4] + 36)]
                    mem[_37 + 148] = 3
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    emit 0xfeee4383: cd[((32 * idx) + cd[4] + 36)], 3
        if idx == -1:
            revert with 0, 17
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
            if not sub_36e821faAddress:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
            else:
                if sub_36e821faAddress != msg.sender:
                    if not stor5[stor2[arg3]][address(msg.sender)]:
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
            mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + 192] = 0
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
        mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
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
            if not sub_36e821faAddress:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
            else:
                if sub_36e821faAddress != msg.sender:
                    if not stor5[stor2[arg3]][address(msg.sender)]:
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
            if not sub_36e821faAddress:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
            else:
                if sub_36e821faAddress != msg.sender:
                    if not stor5[stor2[arg3]][address(msg.sender)]:
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

function sub_c1829cf8(?) {
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
                mem[32] = 14
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
            mem[32] = 14
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
            mem[32] = 14
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
        mem[32] = 14
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

function sub_3aaedfd5(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if 0 == sub_a682f862:
        revert with 0, 'cannot mint right now'
    if block.timestamp < sub_a682f862:
        revert with 0, 'cannot mint right now'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if 10000 < sub_12384e87:
        revert with 0, 17
    if -sub_12384e87 + 10000 < 20:
        revert with 0, 17
    if sub_70057ba6 > !arg1:
        revert with 0, 17
    if sub_70057ba6 + arg1 > -sub_12384e87 + 9980:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you can't mint that many right now'
    if arg1 > 0xc4c3e8be182726b44ea9983dd85a2a69991fef05db7096a16:
        revert with 0, 17
    if msg.value < 15 * 10^17 * arg1:
        revert with 0, 'not enough AVAX'
    if sub_70057ba6 > !arg1:
        revert with 0, 17
    sub_70057ba6 += arg1
    idx = 0
    while idx < arg1:
        if sub_288fe5ab > -2:
            revert with 0, 17
        sub_288fe5ab++
        if sub_288fe5ab > 20000:
            revert with 0, 'cannot mint anymore Food Trucks'
        _157 = mem[64]
        mem[64] = mem[64] + 32
        mem[_157] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor20]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor20] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sub_288fe5ab
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_288fe5ab
                mem[32] = 2
                ownerOf[stor20] = msg.sender
                emit Transfer(0, msg.sender, sub_288fe5ab);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_288fe5ab
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
                        args msg.sender, 0, sub_288fe5ab, 128, 0
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
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_288fe5ab
                stor7[stor20] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_288fe5ab
                mem[32] = 2
                ownerOf[stor20] = msg.sender
                emit Transfer(0, msg.sender, sub_288fe5ab);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_288fe5ab
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
                        args msg.sender, 0, sub_288fe5ab, 128, 0
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
            if stor9[stor20] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor20]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor20]
            stor9[stor20] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = sub_288fe5ab
            mem[32] = 2
            ownerOf[stor20] = msg.sender
            emit Transfer(0, msg.sender, sub_288fe5ab);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = sub_288fe5ab
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
                    args msg.sender, 0, sub_288fe5ab, 128, 0
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
        mem[mem[64]] = sub_288fe5ab
        emit 0x52532d86: sub_288fe5ab
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
    if paused:
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
            if idx >= arg1.length:
                revert with 0, 50
            if s + sha3(msg.sender) > mem[(32 * idx) + 180]:
                mem[0] = mem[(32 * idx) + 180]
                mem[32] = s + sha3(msg.sender)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = sha3(mem[(32 * idx) + 180], s)
                continue 
            mem[0] = s + sha3(msg.sender)
            mem[32] = mem[(32 * idx) + 180]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(s, mem[(32 * idx) + 180])
            continue 
        if s != merkleRoot:
            revert with 0, 'this address does not have permission'
        if arg2 <= 0:
            revert with 0, 'quantity must be between 1 and 10'
        if arg2 > 10:
            revert with 0, 'quantity must be between 1 and 10'
        if whitelistClaimed[msg.sender] > !arg2:
            revert with 0, 17
        if whitelistClaimed[msg.sender] + arg2 > 10:
            revert with 0, 'this address can't mint any more whitelist foodTrucks'
        if sub_12384e87 > !arg2:
            revert with 0, 17
        if sub_12384e87 + arg2 > 9980:
            revert with 0, 'you can't mint that many right now'
        if arg2 > 0xec1e4a7db69561a52b31e9e3d06c32e51e2652070753e7f4e:
            revert with 0, 17
        if msg.value < 125 * 10^16 * arg2:
            revert with 0, 'not enough AVAX'
        if sub_12384e87 > !arg2:
            revert with 0, 17
        sub_12384e87 += arg2
        mem[0] = msg.sender
        mem[32] = 26
        if whitelistClaimed[msg.sender] > !arg2:
            revert with 0, 17
        whitelistClaimed[msg.sender] += arg2
        idx = 0
        while idx < arg2:
            if sub_288fe5ab > -2:
                revert with 0, 17
            sub_288fe5ab++
            if sub_288fe5ab > 20000:
                revert with 0, 'cannot mint anymore Food Trucks'
            _663 = mem[64]
            mem[64] = mem[64] + 32
            mem[_663] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor20]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor20] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_288fe5ab
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_288fe5ab
                    mem[32] = 2
                    ownerOf[stor20] = msg.sender
                    emit Transfer(0, msg.sender, sub_288fe5ab);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_288fe5ab
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _663 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_288fe5ab, 128, 0
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
                        _961 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_961] == Mask(32, 224, mem[_961])
                        if Mask(32, 224, mem[_961]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_288fe5ab
                    stor7[stor20] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_288fe5ab
                    mem[32] = 2
                    ownerOf[stor20] = msg.sender
                    emit Transfer(0, msg.sender, sub_288fe5ab);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_288fe5ab
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _663 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_288fe5ab, 128, 0
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
                        _963 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_963] == Mask(32, 224, mem[_963])
                        if Mask(32, 224, mem[_963]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_288fe5ab
                mem[32] = 2
                ownerOf[stor20] = msg.sender
                emit Transfer(0, msg.sender, sub_288fe5ab);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_288fe5ab
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _663 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_288fe5ab, 128, 0
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
                    _965 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_965] == Mask(32, 224, mem[_965])
                    if Mask(32, 224, mem[_965]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[mem[64]] = sub_288fe5ab
            emit 0x52532d86: sub_288fe5ab
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
            if idx >= arg1.length:
                revert with 0, 50
            if s + sha3(msg.sender) > mem[(32 * idx) + 180]:
                mem[0] = mem[(32 * idx) + 180]
                mem[32] = s + sha3(msg.sender)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = sha3(mem[(32 * idx) + 180], s)
                continue 
            mem[0] = s + sha3(msg.sender)
            mem[32] = mem[(32 * idx) + 180]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(s, mem[(32 * idx) + 180])
            continue 
        if s != merkleRoot:
            revert with 0, 'this address does not have permission'
        if arg2 <= 0:
            revert with 0, 'quantity must be between 1 and 10'
        if arg2 > 10:
            revert with 0, 'quantity must be between 1 and 10'
        if whitelistClaimed[msg.sender] > !arg2:
            revert with 0, 17
        if whitelistClaimed[msg.sender] + arg2 > 10:
            revert with 0, 'this address can't mint any more whitelist foodTrucks'
        if sub_12384e87 > !arg2:
            revert with 0, 17
        if sub_12384e87 + arg2 > 9980:
            revert with 0, 'you can't mint that many right now'
        if arg2 > 0xec1e4a7db69561a52b31e9e3d06c32e51e2652070753e7f4e:
            revert with 0, 17
        if msg.value < 125 * 10^16 * arg2:
            revert with 0, 'not enough AVAX'
        if sub_12384e87 > !arg2:
            revert with 0, 17
        sub_12384e87 += arg2
        mem[0] = msg.sender
        mem[32] = 26
        if whitelistClaimed[msg.sender] > !arg2:
            revert with 0, 17
        whitelistClaimed[msg.sender] += arg2
        idx = 0
        while idx < arg2:
            if sub_288fe5ab > -2:
                revert with 0, 17
            sub_288fe5ab++
            if sub_288fe5ab > 20000:
                revert with 0, 'cannot mint anymore Food Trucks'
            _665 = mem[64]
            mem[64] = mem[64] + 32
            mem[_665] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor20]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor20] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_288fe5ab
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_288fe5ab
                    mem[32] = 2
                    ownerOf[stor20] = msg.sender
                    emit Transfer(0, msg.sender, sub_288fe5ab);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_288fe5ab
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _665 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_288fe5ab, 128, 0
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
                        _967 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_967] == Mask(32, 224, mem[_967])
                        if Mask(32, 224, mem[_967]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_288fe5ab
                    stor7[stor20] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_288fe5ab
                    mem[32] = 2
                    ownerOf[stor20] = msg.sender
                    emit Transfer(0, msg.sender, sub_288fe5ab);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_288fe5ab
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _665 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_288fe5ab, 128, 0
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
                        _969 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_969] == Mask(32, 224, mem[_969])
                        if Mask(32, 224, mem[_969]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_288fe5ab
                mem[32] = 2
                ownerOf[stor20] = msg.sender
                emit Transfer(0, msg.sender, sub_288fe5ab);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_288fe5ab
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _665 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_288fe5ab, 128, 0
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
                    _971 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_971] == Mask(32, 224, mem[_971])
                    if Mask(32, 224, mem[_971]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[mem[64]] = sub_288fe5ab
            emit 0x52532d86: sub_288fe5ab
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_20b2ddec(?) {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if 0 == sub_5c68a45d:
        revert with 0, 'cannot mint right now'
    if block.timestamp < sub_5c68a45d:
        revert with 0, 'cannot mint right now'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'quantity must be between 1 and 10'
    if sub_bf021c02 > !arg1:
        revert with 0, 17
    if sub_bf021c02 + arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you can't mint that many right now'
    if sub_26277820 and arg1 > -1 / sub_26277820:
        revert with 0, 17
    mem[100] = msg.sender
    require ext_code.size(sub_6885f845Address)
    staticcall sub_6885f845Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_26277820 * arg1:
        revert with 0, 'not enough HOTDOG'
    if sub_bf021c02 > !arg1:
        revert with 0, 17
    if sub_bf021c02 > 5000:
        sub_bf021c02 += arg1
        mem[ceil32(return_data.size) + 96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = sub_26277820 * arg1
        require ext_code.size(sub_6885f845Address)
        call sub_6885f845Address.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, sub_26277820 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg1:
            if sub_288fe5ab > -2:
                revert with 0, 17
            sub_288fe5ab++
            if sub_288fe5ab > 20000:
                revert with 0, 'cannot mint anymore Food Trucks'
            _451 = mem[64]
            mem[64] = mem[64] + 32
            mem[_451] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor20]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor20] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_288fe5ab
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_288fe5ab
                    mem[32] = 2
                    ownerOf[stor20] = msg.sender
                    emit Transfer(0, msg.sender, sub_288fe5ab);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_288fe5ab
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
                            args msg.sender, 0, sub_288fe5ab, 128, 0
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
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_288fe5ab
                    stor7[stor20] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_288fe5ab
                    mem[32] = 2
                    ownerOf[stor20] = msg.sender
                    emit Transfer(0, msg.sender, sub_288fe5ab);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_288fe5ab
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
                            args msg.sender, 0, sub_288fe5ab, 128, 0
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
                if stor9[stor20] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor20]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor20]
                stor9[stor20] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_288fe5ab
                mem[32] = 2
                ownerOf[stor20] = msg.sender
                emit Transfer(0, msg.sender, sub_288fe5ab);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_288fe5ab
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
                        args msg.sender, 0, sub_288fe5ab, 128, 0
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
            mem[mem[64]] = sub_288fe5ab
            emit 0x52532d86: sub_288fe5ab
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if sub_bf021c02 + arg1 <= 5000:
            if sub_bf021c02 > !arg1:
                revert with 0, 17
            sub_bf021c02 += arg1
            mem[ceil32(return_data.size) + 96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = msg.sender
            mem[ceil32(return_data.size) + 132] = sub_26277820 * arg1
            require ext_code.size(sub_6885f845Address)
            call sub_6885f845Address.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, sub_26277820 * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < arg1:
                if sub_288fe5ab > -2:
                    revert with 0, 17
                sub_288fe5ab++
                if sub_288fe5ab > 20000:
                    revert with 0, 'cannot mint anymore Food Trucks'
                _453 = mem[64]
                mem[64] = mem[64] + 32
                mem[_453] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor20]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor20] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = sub_288fe5ab
                if msg.sender:
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = sub_288fe5ab
                        mem[32] = 2
                        ownerOf[stor20] = msg.sender
                        emit Transfer(0, msg.sender, sub_288fe5ab);
                        if ext_code.size(msg.sender):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_288fe5ab
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
                                args msg.sender, 0, sub_288fe5ab, 128, 0
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
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_288fe5ab
                        stor7[stor20] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = sub_288fe5ab
                        mem[32] = 2
                        ownerOf[stor20] = msg.sender
                        emit Transfer(0, msg.sender, sub_288fe5ab);
                        if ext_code.size(msg.sender):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_288fe5ab
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
                                args msg.sender, 0, sub_288fe5ab, 128, 0
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
                    if stor9[stor20] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[stor20]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor20]
                    stor9[stor20] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_288fe5ab
                    mem[32] = 2
                    ownerOf[stor20] = msg.sender
                    emit Transfer(0, msg.sender, sub_288fe5ab);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_288fe5ab
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
                            args msg.sender, 0, sub_288fe5ab, 128, 0
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
                mem[mem[64]] = sub_288fe5ab
                emit 0x52532d86: sub_288fe5ab
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if sub_26277820 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            bool(stor24.field_0) = 0
            uint255(stor24.field_1) = uint255(stor24.field_0)
            if sub_bf021c02 > !arg1:
                revert with 0, 17
            sub_bf021c02 += arg1
            mem[ceil32(return_data.size) + 96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = msg.sender
            mem[ceil32(return_data.size) + 132] = sub_26277820 * arg1
            require ext_code.size(sub_6885f845Address)
            call sub_6885f845Address.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, sub_26277820 * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < arg1:
                if sub_288fe5ab > -2:
                    revert with 0, 17
                sub_288fe5ab++
                if sub_288fe5ab > 20000:
                    revert with 0, 'cannot mint anymore Food Trucks'
                _455 = mem[64]
                mem[64] = mem[64] + 32
                mem[_455] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor20]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor20] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = sub_288fe5ab
                if msg.sender:
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = sub_288fe5ab
                        mem[32] = 2
                        ownerOf[stor20] = msg.sender
                        emit Transfer(0, msg.sender, sub_288fe5ab);
                        if ext_code.size(msg.sender):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_288fe5ab
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
                                args msg.sender, 0, sub_288fe5ab, 128, 0
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
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_288fe5ab
                        stor7[stor20] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = sub_288fe5ab
                        mem[32] = 2
                        ownerOf[stor20] = msg.sender
                        emit Transfer(0, msg.sender, sub_288fe5ab);
                        if ext_code.size(msg.sender):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_288fe5ab
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
                                args msg.sender, 0, sub_288fe5ab, 128, 0
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
                    if stor9[stor20] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[stor20]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor20]
                    stor9[stor20] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_288fe5ab
                    mem[32] = 2
                    ownerOf[stor20] = msg.sender
                    emit Transfer(0, msg.sender, sub_288fe5ab);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_288fe5ab
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
                            args msg.sender, 0, sub_288fe5ab, 128, 0
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
                mem[mem[64]] = sub_288fe5ab
                emit 0x52532d86: sub_288fe5ab
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
    if sub_96125409 > !arg1:
        revert with 0, 17
    if sub_96125409 + arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you can't mint that many right now'
    if arg2 == 1:
        idx = 0
        while idx < arg1:
            if sub_96125409 > -2:
                revert with 0, 17
            sub_96125409++
            mem[0] = sub_96125409
            if type[stor19]:
                revert with 0, 'that token's type has already been set'
            type[stor19] = arg2
            mem[mem[64] + 32] = arg2
            mem[0] = sub_96125409
            emit 0xfeee4383: sub_96125409, arg2
            if sub_288fe5ab > 20000:
                revert with 0, 'cannot mint anymore Food Trucks'
            _641 = mem[64]
            mem[64] = mem[64] + 32
            mem[_641] = 0
            if not address(arg3):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor19]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor19] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_96125409
            if address(arg3):
                if not address(arg3):
                    if balanceOf[address(arg3)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg3)]++
                    mem[0] = sub_96125409
                    mem[32] = 2
                    ownerOf[stor19] = address(arg3)
                    emit Transfer(0, address(arg3), sub_96125409);
                    if ext_code.size(address(arg3)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_96125409
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _641 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(arg3))
                        call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_96125409, 128, 0
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
                        _1237 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1237] == Mask(32, 224, mem[_1237])
                        if Mask(32, 224, mem[_1237]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not address(arg3):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(arg3)][stor3[address(arg3)]] = sub_96125409
                    stor7[stor19] = balanceOf[address(arg3)]
                    if balanceOf[address(arg3)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg3)]++
                    mem[0] = sub_96125409
                    mem[32] = 2
                    ownerOf[stor19] = address(arg3)
                    emit Transfer(0, address(arg3), sub_96125409);
                    if ext_code.size(address(arg3)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_96125409
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _641 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(arg3))
                        call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_96125409, 128, 0
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
                        _1239 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1239] == Mask(32, 224, mem[_1239])
                        if Mask(32, 224, mem[_1239]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor19] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor19]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor19]
                stor9[stor19] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(arg3)] > -2:
                    revert with 0, 17
                balanceOf[address(arg3)]++
                mem[0] = sub_96125409
                mem[32] = 2
                ownerOf[stor19] = address(arg3)
                emit Transfer(0, address(arg3), sub_96125409);
                if ext_code.size(address(arg3)):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_96125409
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _641 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(arg3))
                    call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_96125409, 128, 0
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
                    _1241 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1241] == Mask(32, 224, mem[_1241])
                    if Mask(32, 224, mem[_1241]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[mem[64]] = sub_96125409
            emit 0x52532d86: sub_96125409
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if arg2 == 2:
            idx = 0
            while idx < arg1:
                if sub_96125409 > -2:
                    revert with 0, 17
                sub_96125409++
                mem[0] = sub_96125409
                if type[stor19]:
                    revert with 0, 'that token's type has already been set'
                type[stor19] = arg2
                mem[mem[64] + 32] = arg2
                mem[0] = sub_96125409
                emit 0xfeee4383: sub_96125409, arg2
                if sub_288fe5ab > 20000:
                    revert with 0, 'cannot mint anymore Food Trucks'
                _643 = mem[64]
                mem[64] = mem[64] + 32
                mem[_643] = 0
                if not address(arg3):
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor19]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor19] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = sub_96125409
                if address(arg3):
                    if not address(arg3):
                        if balanceOf[address(arg3)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg3)]++
                        mem[0] = sub_96125409
                        mem[32] = 2
                        ownerOf[stor19] = address(arg3)
                        emit Transfer(0, address(arg3), sub_96125409);
                        if ext_code.size(address(arg3)):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_96125409
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _643 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(arg3))
                            call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_96125409, 128, 0
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
                            _1243 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1243] == Mask(32, 224, mem[_1243])
                            if Mask(32, 224, mem[_1243]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if not address(arg3):
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg3)][stor3[address(arg3)]] = sub_96125409
                        stor7[stor19] = balanceOf[address(arg3)]
                        if balanceOf[address(arg3)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg3)]++
                        mem[0] = sub_96125409
                        mem[32] = 2
                        ownerOf[stor19] = address(arg3)
                        emit Transfer(0, address(arg3), sub_96125409);
                        if ext_code.size(address(arg3)):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_96125409
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _643 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(arg3))
                            call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_96125409, 128, 0
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
                            _1245 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1245] == Mask(32, 224, mem[_1245])
                            if Mask(32, 224, mem[_1245]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[stor19] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[stor19]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor19]
                    stor9[stor19] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(arg3)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg3)]++
                    mem[0] = sub_96125409
                    mem[32] = 2
                    ownerOf[stor19] = address(arg3)
                    emit Transfer(0, address(arg3), sub_96125409);
                    if ext_code.size(address(arg3)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_96125409
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _643 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(arg3))
                        call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_96125409, 128, 0
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
                        _1247 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1247] == Mask(32, 224, mem[_1247])
                        if Mask(32, 224, mem[_1247]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                mem[mem[64]] = sub_96125409
                emit 0x52532d86: sub_96125409
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if arg2 == 3:
                idx = 0
                while idx < arg1:
                    if sub_96125409 > -2:
                        revert with 0, 17
                    sub_96125409++
                    mem[0] = sub_96125409
                    if type[stor19]:
                        revert with 0, 'that token's type has already been set'
                    type[stor19] = arg2
                    mem[mem[64] + 32] = arg2
                    mem[0] = sub_96125409
                    emit 0xfeee4383: sub_96125409, arg2
                    if sub_288fe5ab > 20000:
                        revert with 0, 'cannot mint anymore Food Trucks'
                    _645 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_645] = 0
                    if not address(arg3):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor19]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor19] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = sub_96125409
                    if address(arg3):
                        if not address(arg3):
                            if balanceOf[address(arg3)] > -2:
                                revert with 0, 17
                            balanceOf[address(arg3)]++
                            mem[0] = sub_96125409
                            mem[32] = 2
                            ownerOf[stor19] = address(arg3)
                            emit Transfer(0, address(arg3), sub_96125409);
                            if ext_code.size(address(arg3)):
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = sub_96125409
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _645 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(arg3))
                                call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_96125409, 128, 0
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
                                _1249 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1249] == Mask(32, 224, mem[_1249])
                                if Mask(32, 224, mem[_1249]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if not address(arg3):
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(arg3)][stor3[address(arg3)]] = sub_96125409
                            stor7[stor19] = balanceOf[address(arg3)]
                            if balanceOf[address(arg3)] > -2:
                                revert with 0, 17
                            balanceOf[address(arg3)]++
                            mem[0] = sub_96125409
                            mem[32] = 2
                            ownerOf[stor19] = address(arg3)
                            emit Transfer(0, address(arg3), sub_96125409);
                            if ext_code.size(address(arg3)):
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = sub_96125409
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _645 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(arg3))
                                call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_96125409, 128, 0
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
                                _1251 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1251] == Mask(32, 224, mem[_1251])
                                if Mask(32, 224, mem[_1251]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[stor19] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[stor19]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor19]
                        stor9[stor19] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(arg3)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg3)]++
                        mem[0] = sub_96125409
                        mem[32] = 2
                        ownerOf[stor19] = address(arg3)
                        emit Transfer(0, address(arg3), sub_96125409);
                        if ext_code.size(address(arg3)):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_96125409
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _645 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(arg3))
                            call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_96125409, 128, 0
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
                            _1253 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1253] == Mask(32, 224, mem[_1253])
                            if Mask(32, 224, mem[_1253]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[mem[64]] = sub_96125409
                    emit 0x52532d86: sub_96125409
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if arg2 != 4:
                    revert with 0, 'invalid foodTruck type'
                idx = 0
                while idx < arg1:
                    if sub_96125409 > -2:
                        revert with 0, 17
                    sub_96125409++
                    mem[0] = sub_96125409
                    if type[stor19]:
                        revert with 0, 'that token's type has already been set'
                    type[stor19] = arg2
                    mem[mem[64] + 32] = arg2
                    mem[0] = sub_96125409
                    emit 0xfeee4383: sub_96125409, arg2
                    if sub_288fe5ab > 20000:
                        revert with 0, 'cannot mint anymore Food Trucks'
                    _647 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_647] = 0
                    if not address(arg3):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor19]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor19] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = sub_96125409
                    if address(arg3):
                        if not address(arg3):
                            if balanceOf[address(arg3)] > -2:
                                revert with 0, 17
                            balanceOf[address(arg3)]++
                            mem[0] = sub_96125409
                            mem[32] = 2
                            ownerOf[stor19] = address(arg3)
                            emit Transfer(0, address(arg3), sub_96125409);
                            if ext_code.size(address(arg3)):
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = sub_96125409
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _647 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(arg3))
                                call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_96125409, 128, 0
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
                                _1255 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1255] == Mask(32, 224, mem[_1255])
                                if Mask(32, 224, mem[_1255]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if not address(arg3):
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(arg3)][stor3[address(arg3)]] = sub_96125409
                            stor7[stor19] = balanceOf[address(arg3)]
                            if balanceOf[address(arg3)] > -2:
                                revert with 0, 17
                            balanceOf[address(arg3)]++
                            mem[0] = sub_96125409
                            mem[32] = 2
                            ownerOf[stor19] = address(arg3)
                            emit Transfer(0, address(arg3), sub_96125409);
                            if ext_code.size(address(arg3)):
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = sub_96125409
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _647 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(arg3))
                                call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_96125409, 128, 0
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
                                _1257 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1257] == Mask(32, 224, mem[_1257])
                                if Mask(32, 224, mem[_1257]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[stor19] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[stor19]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor19]
                        stor9[stor19] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(arg3)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg3)]++
                        mem[0] = sub_96125409
                        mem[32] = 2
                        ownerOf[stor19] = address(arg3)
                        emit Transfer(0, address(arg3), sub_96125409);
                        if ext_code.size(address(arg3)):
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = sub_96125409
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _647 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(arg3))
                            call address(arg3).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_96125409, 128, 0
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
                            _1259 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1259] == Mask(32, 224, mem[_1259])
                            if Mask(32, 224, mem[_1259]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[mem[64]] = sub_96125409
                    emit 0x52532d86: sub_96125409
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
}



}

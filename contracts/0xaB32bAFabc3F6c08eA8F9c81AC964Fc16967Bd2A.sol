contract main {




// =====================  Runtime code  =====================


#
#  - sub_f48d3ee3(?)
#
const sub_09041c90(?) = 500

const sub_3bd0e9f5(?) = 30

const sub_c0003af2(?) = 9999

const sub_dbff0e52(?) = 50

const sub_ec09ca29(?) = 100

const PRICE = 5 * 10^17


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
uint256 stor11;
uint256 giveawayMints;
uint8 sub_ac998f45;
uint8 paused; offset 8
uint256 stor13; offset 8
array of uint256 stor14;
address controllerAddress;
uint256 sub_f80550ef;
uint8 sub_9a275d70;
mapping of uint8 stor18;
mapping of uint256 sub_b3817eb8;
uint256 sub_3b480f68;
uint256 sub_e79e30c4;
uint8 sub_41e7d4f7;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
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

function sub_3b480f68(?) {
    return sub_3b480f68
}

function sub_41e7d4f7(?) {
    return bool(sub_41e7d4f7)
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
}

function sub_5ee8c342(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor18[arg1])
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

function owner() {
    return owner
}

function giveawayMints() {
    return giveawayMints
}

function sub_9a275d70(?) {
    return bool(sub_9a275d70)
}

function sub_ac998f45(?) {
    return bool(sub_ac998f45)
}

function sub_b3817eb8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b3817eb8[arg1]
}

function sub_e79e30c4(?) {
    return sub_e79e30c4
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function controller() {
    return controllerAddress
}

function sub_f80550ef(?) {
    return sub_f80550ef
}

function _fallback() payable {
    revert
}

function sub_2b96c18f(?) {
    if owner != msg.sender:
        revert with 0, 'UNAUTHORIZED_ACCESS'
    sub_41e7d4f7 = 1
    emit 0x5162bf65 
}

function sub_5388e444(?) {
    if owner != msg.sender:
        revert with 0, 'UNAUTHORIZED_ACCESS'
    sub_9a275d70 = 1
    emit 0xc31d75be 
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function toggle() {
    if owner != msg.sender:
        revert with 0, 'UNAUTHORIZED_ACCESS'
    stor13 = Mask(248, 0, not paused)
    emit 0xd5b03c28: bool(0 or uint8(not paused))
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'UNAUTHORIZED_ACCESS'
    if not controllerAddress:
        revert with 0, 'ZERO_CONTROLLER_ADDRESS'
    controllerAddress = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
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

function withdraw() {
    call 0xf54b1a926319bc407edb16ae9809c5fe47c365da with:
       value eth.balance(this.address) / 4 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0x5f4b12a309e20a10d33de271885b1134009d81d0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
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
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function lockTokenURI() {
    if owner != msg.sender:
        revert with 0, 'UNAUTHORIZED_ACCESS'
    if not sub_ac998f45:
        sub_ac998f45 = 1
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor14.length):
                mem[96] = Mask(248, 8, stor14.length)
                emit TokenURILocked(sha3(mem[96 len uint255(stor14.length) * 0.5]));
            else:
                if bool(stor14.length) != 1:
                    emit TokenURILocked(sha3(mem[96 len -96]));
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor14.length) * 0.5:
                        mem[idx + 96] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit TokenURILocked(sha3(mem[96 len uint255(stor14.length) * 0.5]));
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor14.length):
                mem[96] = Mask(248, 8, stor14.length)
                emit TokenURILocked(sha3(mem[96 len stor14.length.field_1]));
            else:
                if bool(stor14.length) != 1:
                    emit TokenURILocked(sha3(mem[96 len -96]));
                else:
                    idx = 0
                    s = 0
                    while idx < stor14.length.field_1:
                        mem[idx + 96] = stor14[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit TokenURILocked(sha3(mem[96 len stor14.length.field_1]));
}

function sub_11a0110a(?) {
    if 30 < giveawayMints:
        revert with 0, 17
    if sub_9a275d70:
        if sub_41e7d4f7:
            if 9999 < tokenByIndex.length:
                revert with 0, 17
            if -tokenByIndex.length + 9999 < -giveawayMints + 30:
                revert with 0, 17
            if -tokenByIndex.length + giveawayMints + 9969 < 0:
                revert with 0, 17
            return (-tokenByIndex.length + giveawayMints + 9969)
        if sub_e79e30c4 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if 100 * sub_e79e30c4 < sub_3b480f68:
            revert with 0, 17
        if 9999 < tokenByIndex.length:
            revert with 0, 17
        if -tokenByIndex.length + 9999 < -giveawayMints + 30:
            revert with 0, 17
        if -tokenByIndex.length + giveawayMints + 9969 < 0:
            revert with 0, 17
        if -tokenByIndex.length + giveawayMints + 9969 < (100 * sub_e79e30c4) - sub_3b480f68:
            revert with 0, 17
        return (-tokenByIndex.length + giveawayMints + (-100 * sub_e79e30c4) + sub_3b480f68 + 9969)
    if 500 < sub_f80550ef:
        revert with 0, 17
    if sub_41e7d4f7:
        if 9999 < tokenByIndex.length:
            revert with 0, 17
        if -tokenByIndex.length + 9999 < -giveawayMints + 30:
            revert with 0, 17
        if -tokenByIndex.length + giveawayMints + 9969 < -sub_f80550ef + 500:
            revert with 0, 17
        if -tokenByIndex.length + giveawayMints + sub_f80550ef + 9469 < 0:
            revert with 0, 17
        return (-tokenByIndex.length + giveawayMints + sub_f80550ef + 9469)
    if sub_e79e30c4 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if 100 * sub_e79e30c4 < sub_3b480f68:
        revert with 0, 17
    if 9999 < tokenByIndex.length:
        revert with 0, 17
    if -tokenByIndex.length + 9999 < -giveawayMints + 30:
        revert with 0, 17
    if -tokenByIndex.length + giveawayMints + 9969 < -sub_f80550ef + 500:
        revert with 0, 17
    if -tokenByIndex.length + giveawayMints + sub_f80550ef + 9469 < (100 * sub_e79e30c4) - sub_3b480f68:
        revert with 0, 17
    return (-tokenByIndex.length + giveawayMints + sub_f80550ef + (-100 * sub_e79e30c4) + sub_3b480f68 + 9469)
}

function setTokenURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'UNAUTHORIZED_ACCESS'
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if sub_ac998f45:
        revert with 0, 'TOKEN_URI_LOCKED'
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
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor14.length):
            mem[ceil32(arg1.length) + 128] = Mask(248, 8, stor14.length)
            emit TokenURISet(sha3(mem[ceil32(arg1.length) + 128 len uint255(stor14.length) * 0.5]));
        else:
            if bool(stor14.length) != 1:
                emit TokenURISet(sha3(mem[ceil32(arg1.length) + 128 len -ceil32(arg1.length) - 128]));
            else:
                idx = 0
                s = 0
                while idx < uint255(stor14.length) * 0.5:
                    mem[idx + ceil32(arg1.length) + 128] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit TokenURISet(sha3(mem[ceil32(arg1.length) + 128 len uint255(stor14.length) * 0.5]));
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor14.length):
            mem[ceil32(arg1.length) + 128] = Mask(248, 8, stor14.length)
            emit TokenURISet(sha3(mem[ceil32(arg1.length) + 128 len stor14.length.field_1]));
        else:
            if bool(stor14.length) != 1:
                emit TokenURISet(sha3(mem[ceil32(arg1.length) + 128 len -ceil32(arg1.length) - 128]));
            else:
                idx = 0
                s = 0
                while idx < stor14.length.field_1:
                    mem[idx + ceil32(arg1.length) + 128] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit TokenURISet(sha3(mem[ceil32(arg1.length) + 128 len stor14.length.field_1]));
}

function sub_6e08933d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'UNAUTHORIZED_ACCESS'
    if not address(arg1):
        revert with 0, 'ZERO_NFT_ADDRESS'
    if stor18[address(arg1)]:
        revert with 0, 'DUPLICATE_COLLAB'
    if 30 < giveawayMints:
        revert with 0, 17
    if sub_9a275d70:
        if sub_41e7d4f7:
            if 9999 < tokenByIndex.length:
                revert with 0, 17
            if -tokenByIndex.length + 9999 < -giveawayMints + 30:
                revert with 0, 17
            if -tokenByIndex.length + giveawayMints + 9969 < 0:
                revert with 0, 17
            if -tokenByIndex.length + giveawayMints + 9969 < 100:
                revert with 0, 'INSUFFICIENT_SUPPLY'
        else:
            if sub_e79e30c4 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if 100 * sub_e79e30c4 < sub_3b480f68:
                revert with 0, 17
            if 9999 < tokenByIndex.length:
                revert with 0, 17
            if -tokenByIndex.length + 9999 < -giveawayMints + 30:
                revert with 0, 17
            if -tokenByIndex.length + giveawayMints + 9969 < 0:
                revert with 0, 17
            if -tokenByIndex.length + giveawayMints + 9969 < (100 * sub_e79e30c4) - sub_3b480f68:
                revert with 0, 17
            if -tokenByIndex.length + giveawayMints + (-100 * sub_e79e30c4) + sub_3b480f68 + 9969 < 100:
                revert with 0, 'INSUFFICIENT_SUPPLY'
    else:
        if 500 < sub_f80550ef:
            revert with 0, 17
        if sub_41e7d4f7:
            if 9999 < tokenByIndex.length:
                revert with 0, 17
            if -tokenByIndex.length + 9999 < -giveawayMints + 30:
                revert with 0, 17
            if -tokenByIndex.length + giveawayMints + 9969 < -sub_f80550ef + 500:
                revert with 0, 17
            if -tokenByIndex.length + giveawayMints + sub_f80550ef + 9469 < 0:
                revert with 0, 17
            if -tokenByIndex.length + giveawayMints + sub_f80550ef + 9469 < 100:
                revert with 0, 'INSUFFICIENT_SUPPLY'
        else:
            if sub_e79e30c4 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if 100 * sub_e79e30c4 < sub_3b480f68:
                revert with 0, 17
            if 9999 < tokenByIndex.length:
                revert with 0, 17
            if -tokenByIndex.length + 9999 < -giveawayMints + 30:
                revert with 0, 17
            if -tokenByIndex.length + giveawayMints + 9969 < -sub_f80550ef + 500:
                revert with 0, 17
            if -tokenByIndex.length + giveawayMints + sub_f80550ef + 9469 < (100 * sub_e79e30c4) - sub_3b480f68:
                revert with 0, 17
            if -tokenByIndex.length + giveawayMints + sub_f80550ef + (-100 * sub_e79e30c4) + sub_3b480f68 + 9469 < 100:
                revert with 0, 'INSUFFICIENT_SUPPLY'
    if sub_e79e30c4 == -1:
        revert with 0, 17
    sub_e79e30c4++
    stor18[address(arg1)] = 1
    emit 0x36b88b28: address(arg1)
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

function mintOwner(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'UNAUTHORIZED_ACCESS'
    if arg2 <= 0:
        revert with 0, 'ZERO_QUANTITY'
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    if giveawayMints > !arg2:
        revert with 0, 17
    if giveawayMints + arg2 > 30:
        revert with 0, 'MINTING_EXCEEDS_GIVEAWAY_RESERVE'
    if giveawayMints > !arg2:
        revert with 0, 17
    giveawayMints += arg2
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    idx = 0
    while idx < arg2:
        if 1 > !tokenByIndex.length:
            revert with 0, 17
        _132 = mem[64]
        mem[64] = mem[64] + 32
        mem[_132] = 0
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8.length + 1]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor8.length + 1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
        if arg1:
            if not arg1:
                if balanceOf[address(arg1)] > -2:
                    revert with 0, 17
                balanceOf[address(arg1)]++
                mem[0] = tokenByIndex.length + 1
                mem[32] = 2
                ownerOf[stor8.length + 1] = arg1
                emit Transfer(0, arg1, tokenByIndex.length + 1);
                if ext_code.size(arg1):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _132 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(arg1)
                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                    _262 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_262] == Mask(32, 224, mem[_262])
                    if Mask(32, 224, mem[_262]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not arg1:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length + 1
                stor7[stor8.length + 1] = balanceOf[address(arg1)]
                if balanceOf[address(arg1)] > -2:
                    revert with 0, 17
                balanceOf[address(arg1)]++
                mem[0] = tokenByIndex.length + 1
                mem[32] = 2
                ownerOf[stor8.length + 1] = arg1
                emit Transfer(0, arg1, tokenByIndex.length + 1);
                if ext_code.size(arg1):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _132 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(arg1)
                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                    _264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_264] == Mask(32, 224, mem[_264])
                    if Mask(32, 224, mem[_264]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor8.length + 1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor8.length + 1]
            stor9[stor8.length + 1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 0, 17
            balanceOf[address(arg1)]++
            mem[0] = tokenByIndex.length + 1
            mem[32] = 2
            ownerOf[stor8.length + 1] = arg1
            emit Transfer(0, arg1, tokenByIndex.length + 1);
            if ext_code.size(arg1):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _132 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg1)
                call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                _266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_266] == Mask(32, 224, mem[_266])
                if Mask(32, 224, mem[_266]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor11 = 1
}

function sub_624f410e(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if paused:
        revert with 0, 'CONTRACT_PAUSED'
    if sub_9a275d70:
        revert with 0, 'WHITELIST_GIVEAWAY_ENDED'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = msg.sender
    mem[32] = 3
    if balanceOf[address(msg.sender)]:
        revert with 0, 'QUOTA_EXCEEDED'
    if sub_f80550ef >= 500:
        revert with 0, 'WL_EXHAUSTED'
    mem[128] = address(msg.sender)
    mem[96] = 20
    mem[148] = 28
    mem[180] = '\x19Ethereum Signed Message:\n32'
    mem[244] = '\x19Ethereum Signed Message:\n32'
    mem[272] = sha3(msg.sender)
    mem[212] = 60
    mem[304] = arg1.length
    mem[336 len arg1.length] = arg1[all]
    mem[arg1.length + 336] = 0
    if 65 == arg1.length:
        if mem[368] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg1.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    _608 = mem[368]
    if uint255(mem[368]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if 27 == uint8((bool(mem[368]) >> 255) + 27):
        mem[64] = ceil32(arg1.length) + 368
        mem[ceil32(arg1.length) + 368] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender))
        mem[ceil32(arg1.length) + 400] = uint8((bool(_608) >> 255) + 27)
        mem[ceil32(arg1.length) + 432] = mem[336]
        mem[ceil32(arg1.length) + 464] = uint255(_608)
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender)), (bool(_608) >> 255) + 27 << 248, mem[336], uint255(_608)) 
        mem[ceil32(arg1.length) + 336] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) != controllerAddress:
            revert with 0, 'INVALID_SIGNATURE'
        if sub_f80550ef > -2:
            revert with 0, 17
        sub_f80550ef++
        emit 0xab1686ab: msg.sender
        if stor11 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor11 = 2
        idx = 0
        while idx < 1:
            if 1 > !tokenByIndex.length:
                revert with 0, 17
            _1159 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1159] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor8.length + 1]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor8.length + 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 2
                    ownerOf[stor8.length + 1] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1159 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _1689 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1689] == Mask(32, 224, mem[_1689])
                        if Mask(32, 224, mem[_1689]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + 1
                    stor7[stor8.length + 1] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 2
                    ownerOf[stor8.length + 1] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1159 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _1691 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1691] == Mask(32, 224, mem[_1691])
                        if Mask(32, 224, mem[_1691]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor8.length + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor8.length + 1]
                stor9[stor8.length + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length + 1
                mem[32] = 2
                ownerOf[stor8.length + 1] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1159 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                    _1693 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1693] == Mask(32, 224, mem[_1693])
                    if Mask(32, 224, mem[_1693]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if uint8((bool(mem[368]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
        mem[64] = ceil32(arg1.length) + 368
        mem[ceil32(arg1.length) + 368] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender))
        mem[ceil32(arg1.length) + 400] = uint8((bool(_608) >> 255) + 27)
        mem[ceil32(arg1.length) + 432] = mem[336]
        mem[ceil32(arg1.length) + 464] = uint255(_608)
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender)), (bool(_608) >> 255) + 27 << 248, mem[336], uint255(_608)) 
        mem[ceil32(arg1.length) + 336] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) != controllerAddress:
            revert with 0, 'INVALID_SIGNATURE'
        if sub_f80550ef > -2:
            revert with 0, 17
        sub_f80550ef++
        emit 0xab1686ab: msg.sender
        if stor11 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor11 = 2
        idx = 0
        while idx < 1:
            if 1 > !tokenByIndex.length:
                revert with 0, 17
            _1160 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1160] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor8.length + 1]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor8.length + 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 2
                    ownerOf[stor8.length + 1] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1160 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _1695 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1695] == Mask(32, 224, mem[_1695])
                        if Mask(32, 224, mem[_1695]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + 1
                    stor7[stor8.length + 1] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 2
                    ownerOf[stor8.length + 1] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1160 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _1697 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1697] == Mask(32, 224, mem[_1697])
                        if Mask(32, 224, mem[_1697]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor8.length + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor8.length + 1]
                stor9[stor8.length + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length + 1
                mem[32] = 2
                ownerOf[stor8.length + 1] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1160 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                    _1699 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1699] == Mask(32, 224, mem[_1699])
                    if Mask(32, 224, mem[_1699]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    stor11 = 1
}

function sub_8d767a43(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if paused:
        revert with 0, 'CONTRACT_PAUSED'
    if sub_41e7d4f7:
        revert with 0, 'COLLAB_GIVEAWAY_ENDED'
    if not stor18[address(arg1)]:
        revert with 0, 'NOT_COLLAB_PARTICIPANT'
    if 100 <= sub_b3817eb8[address(arg1)]:
        revert with 0, 'COLLAB_EXHAUSTED'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)]:
        revert with 0, 'QUOTA_EXCEEDED'
    mem[128] = address(msg.sender)
    mem[148] = address(arg1)
    mem[96] = 40
    mem[168] = 28
    mem[200] = '\x19Ethereum Signed Message:\n32'
    mem[264] = '\x19Ethereum Signed Message:\n32'
    mem[292] = sha3(msg.sender, address(arg1))
    mem[232] = 60
    mem[324] = arg2.length
    mem[356 len arg2.length] = arg2[all]
    mem[arg2.length + 356] = 0
    if 65 == arg2.length:
        if mem[388] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg2.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    _616 = mem[388]
    if uint255(mem[388]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if 27 == uint8((bool(mem[388]) >> 255) + 27):
        mem[64] = ceil32(arg2.length) + 388
        mem[ceil32(arg2.length) + 388] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, address(arg1)))
        mem[ceil32(arg2.length) + 420] = uint8((bool(_616) >> 255) + 27)
        mem[ceil32(arg2.length) + 452] = mem[356]
        mem[ceil32(arg2.length) + 484] = uint255(_616)
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, address(arg1))), (bool(_616) >> 255) + 27 << 248, mem[356], uint255(_616)) 
        mem[ceil32(arg2.length) + 356] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) != controllerAddress:
            revert with 0, 'INVALID_SIGNATURE'
        mem[0] = address(arg1)
        mem[32] = 19
        if sub_b3817eb8[address(arg1)] > -2:
            revert with 0, 17
        sub_b3817eb8[address(arg1)]++
        if sub_3b480f68 > -2:
            revert with 0, 17
        sub_3b480f68++
        emit 0xef3fb386: address(arg1), msg.sender
        if stor11 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor11 = 2
        idx = 0
        while idx < 1:
            if 1 > !tokenByIndex.length:
                revert with 0, 17
            _1171 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1171] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor8.length + 1]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor8.length + 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 2
                    ownerOf[stor8.length + 1] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1171 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _1701 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1701] == Mask(32, 224, mem[_1701])
                        if Mask(32, 224, mem[_1701]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + 1
                    stor7[stor8.length + 1] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 2
                    ownerOf[stor8.length + 1] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1171 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _1703 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1703] == Mask(32, 224, mem[_1703])
                        if Mask(32, 224, mem[_1703]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor8.length + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor8.length + 1]
                stor9[stor8.length + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length + 1
                mem[32] = 2
                ownerOf[stor8.length + 1] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1171 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                    _1705 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1705] == Mask(32, 224, mem[_1705])
                    if Mask(32, 224, mem[_1705]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if uint8((bool(mem[388]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
        mem[64] = ceil32(arg2.length) + 388
        mem[ceil32(arg2.length) + 388] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, address(arg1)))
        mem[ceil32(arg2.length) + 420] = uint8((bool(_616) >> 255) + 27)
        mem[ceil32(arg2.length) + 452] = mem[356]
        mem[ceil32(arg2.length) + 484] = uint255(_616)
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, address(arg1))), (bool(_616) >> 255) + 27 << 248, mem[356], uint255(_616)) 
        mem[ceil32(arg2.length) + 356] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) != controllerAddress:
            revert with 0, 'INVALID_SIGNATURE'
        mem[0] = address(arg1)
        mem[32] = 19
        if sub_b3817eb8[address(arg1)] > -2:
            revert with 0, 17
        sub_b3817eb8[address(arg1)]++
        if sub_3b480f68 > -2:
            revert with 0, 17
        sub_3b480f68++
        emit 0xef3fb386: address(arg1), msg.sender
        if stor11 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor11 = 2
        idx = 0
        while idx < 1:
            if 1 > !tokenByIndex.length:
                revert with 0, 17
            _1172 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1172] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor8.length + 1]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor8.length + 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 2
                    ownerOf[stor8.length + 1] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1172 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _1707 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1707] == Mask(32, 224, mem[_1707])
                        if Mask(32, 224, mem[_1707]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenByIndex.length + 1
                    stor7[stor8.length + 1] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 2
                    ownerOf[stor8.length + 1] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1172 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _1709 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1709] == Mask(32, 224, mem[_1709])
                        if Mask(32, 224, mem[_1709]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor8.length + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor8.length + 1]
                stor9[stor8.length + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length + 1
                mem[32] = 2
                ownerOf[stor8.length + 1] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1172 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                    _1711 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1711] == Mask(32, 224, mem[_1711])
                    if Mask(32, 224, mem[_1711]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    stor11 = 1
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'UNKNOWN_TOKEN_ID'
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
                    _122 = mem[160]
                    mem[48] = mem[160]
                    mem[80 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_122) > _122:
                        mem[_122 + 80] = 0
                    return memory
                      from mem[64]
                       len ceil32(_122) + -mem[64] + 80
                idx = 0
                s = 0
                while idx < uint255(stor14.length) * 0.5:
                    mem[idx + 192] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor14.length) * 0.5) + 192] = '/metadata/' << 176
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
                _126 = mem[160]
                mem[48] = mem[160]
                mem[80 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_126) > _126:
                    mem[_126 + 80] = 0
                return memory
                  from mem[64]
                   len ceil32(_126) + -mem[64] + 80
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[idx + 192] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor14.length.field_1 + 192] = '/metadata/' << 176
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
        _359 = mem[64]
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor14.length):
                mem[mem[64] + 32] = Mask(248, 8, stor14.length)
                mem[mem[64] + (uint255(stor14.length) * 0.5) + 32] = '/metadata/' << 176
                _391 = mem[96]
                mem[mem[64] + (uint255(stor14.length) * 0.5) + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _591 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 47
                    mem[mem[96] + _359 + (uint255(stor14.length) * 0.5) + 47] = 32
                    _635 = mem[_591]
                    mem[_391 + _359 + (uint255(stor14.length) * 0.5) + 79] = mem[_591]
                    mem[_391 + _359 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_635)] = mem[_591 + 32 len ceil32(_635)]
                    if ceil32(_635) > _635:
                        mem[_635 + _391 + _359 + (uint255(stor14.length) * 0.5) + 111] = 0
                    return 32, mem[_391 + _359 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_635) + 32]
                _592 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 47
                mem[mem[96] + _359 + (uint255(stor14.length) * 0.5) + 47] = 32
                _636 = mem[_592]
                mem[_391 + _359 + (uint255(stor14.length) * 0.5) + 79] = mem[_592]
                mem[_391 + _359 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_636)] = mem[_592 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_636 + _391 + _359 + (uint255(stor14.length) * 0.5) + 111] = 0
                return 32, mem[_391 + _359 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_636) + 32]
            if bool(stor14.length) != 1:
                mem[0] = '/metadata/' << 176
                _395 = mem[96]
                mem[10 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_395 + 10] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_395) <= _395:
                    _593 = mem[64]
                    mem[64] = _395 + 15
                    mem[_395 + 15] = 32
                    _637 = mem[_593]
                    mem[_395 + 47] = mem[_593]
                    mem[_395 + 79 len ceil32(_637)] = mem[_593 + 32 len ceil32(_637)]
                    if ceil32(_637) > _637:
                        mem[_637 + _395 + 79] = 0
                    return 32, mem[_395 + 47 len ceil32(_637) + 32]
                _594 = mem[64]
                mem[64] = _395 + 15
                mem[_395 + 15] = 32
                _638 = mem[_594]
                mem[_395 + 47] = mem[_594]
                mem[_395 + 79 len ceil32(_638)] = mem[_594 + 32 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_638 + _395 + 79] = 0
                return 32, mem[_395 + 47 len ceil32(_638) + 32]
            mem[0] = 14
            idx = 0
            s = 0
            while idx < uint255(stor14.length) * 0.5:
                mem[idx + _359 + 32] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_359 + (uint255(stor14.length) * 0.5) + 32] = '/metadata/' << 176
            _587 = mem[96]
            mem[_359 + (uint255(stor14.length) * 0.5) + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_587 + _359 + (uint255(stor14.length) * 0.5) + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_587) <= _587:
                _767 = mem[64]
                mem[64] = _587 + _359 + (uint255(stor14.length) * 0.5) + 47
                mem[_587 + _359 + (uint255(stor14.length) * 0.5) + 47] = 32
                _815 = mem[_767]
                mem[_587 + _359 + (uint255(stor14.length) * 0.5) + 79] = mem[_767]
                mem[_587 + _359 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_815)] = mem[_767 + 32 len ceil32(_815)]
                if ceil32(_815) > _815:
                    mem[_815 + _587 + _359 + (uint255(stor14.length) * 0.5) + 111] = 0
                return 32, mem[_587 + _359 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_815) + 32]
            _768 = mem[64]
            mem[64] = _587 + _359 + (uint255(stor14.length) * 0.5) + 47
            mem[_587 + _359 + (uint255(stor14.length) * 0.5) + 47] = 32
            _816 = mem[_768]
            mem[_587 + _359 + (uint255(stor14.length) * 0.5) + 79] = mem[_768]
            mem[_587 + _359 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_816)] = mem[_768 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_816 + _587 + _359 + (uint255(stor14.length) * 0.5) + 111] = 0
            return 32, mem[_587 + _359 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_816) + 32]
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            mem[mem[64] + stor14.length.field_1 + 32] = '/metadata/' << 176
            _396 = mem[96]
            mem[mem[64] + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor14.length.field_1 + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _595 = mem[64]
                mem[64] = mem[96] + mem[64] + stor14.length.field_1 + 47
                mem[mem[96] + _359 + stor14.length.field_1 + 47] = 32
                _639 = mem[_595]
                mem[_396 + _359 + stor14.length.field_1 + 79] = mem[_595]
                mem[_396 + _359 + stor14.length.field_1 + 111 len ceil32(_639)] = mem[_595 + 32 len ceil32(_639)]
                if ceil32(_639) > _639:
                    mem[_639 + _396 + _359 + stor14.length.field_1 + 111] = 0
                return 32, mem[_396 + _359 + stor14.length.field_1 + 79 len ceil32(_639) + 32]
            _596 = mem[64]
            mem[64] = mem[96] + mem[64] + stor14.length.field_1 + 47
            mem[mem[96] + _359 + stor14.length.field_1 + 47] = 32
            _640 = mem[_596]
            mem[_396 + _359 + stor14.length.field_1 + 79] = mem[_596]
            mem[_396 + _359 + stor14.length.field_1 + 111 len ceil32(_640)] = mem[_596 + 32 len ceil32(_640)]
            if ceil32(_640) > _640:
                mem[_640 + _396 + _359 + stor14.length.field_1 + 111] = 0
            return 32, mem[_396 + _359 + stor14.length.field_1 + 79 len ceil32(_640) + 32]
        if bool(stor14.length) != 1:
            mem[0] = '/metadata/' << 176
            _405 = mem[96]
            mem[10 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_405 + 10] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_405) <= _405:
                _597 = mem[64]
                mem[64] = _405 + 15
                mem[_405 + 15] = 32
                _641 = mem[_597]
                mem[_405 + 47] = mem[_597]
                mem[_405 + 79 len ceil32(_641)] = mem[_597 + 32 len ceil32(_641)]
                if ceil32(_641) > _641:
                    mem[_641 + _405 + 79] = 0
                return 32, mem[_405 + 47 len ceil32(_641) + 32]
            _598 = mem[64]
            mem[64] = _405 + 15
            mem[_405 + 15] = 32
            _642 = mem[_598]
            mem[_405 + 47] = mem[_598]
            mem[_405 + 79 len ceil32(_642)] = mem[_598 + 32 len ceil32(_642)]
            if ceil32(_642) > _642:
                mem[_642 + _405 + 79] = 0
            return 32, mem[_405 + 47 len ceil32(_642) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < stor14.length.field_1:
            mem[idx + _359 + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_359 + stor14.length.field_1 + 32] = '/metadata/' << 176
        _588 = mem[96]
        mem[_359 + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_588 + _359 + stor14.length.field_1 + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_588) <= _588:
            _769 = mem[64]
            mem[64] = _588 + _359 + stor14.length.field_1 + 47
            mem[_588 + _359 + stor14.length.field_1 + 47] = 32
            _817 = mem[_769]
            mem[_588 + _359 + stor14.length.field_1 + 79] = mem[_769]
            mem[_588 + _359 + stor14.length.field_1 + 111 len ceil32(_817)] = mem[_769 + 32 len ceil32(_817)]
            if ceil32(_817) > _817:
                mem[_817 + _588 + _359 + stor14.length.field_1 + 111] = 0
            return 32, mem[_588 + _359 + stor14.length.field_1 + 79 len ceil32(_817) + 32]
        _770 = mem[64]
        mem[64] = _588 + _359 + stor14.length.field_1 + 47
        mem[_588 + _359 + stor14.length.field_1 + 47] = 32
        _818 = mem[_770]
        mem[_588 + _359 + stor14.length.field_1 + 79] = mem[_770]
        mem[_588 + _359 + stor14.length.field_1 + 111 len ceil32(_818)] = mem[_770 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_818 + _588 + _359 + stor14.length.field_1 + 111] = 0
        return 32, mem[_588 + _359 + stor14.length.field_1 + 79 len ceil32(_818) + 32]
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
    _360 = mem[64]
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor14.length):
            mem[mem[64] + 32] = Mask(248, 8, stor14.length)
            mem[mem[64] + (uint255(stor14.length) * 0.5) + 32] = '/metadata/' << 176
            _393 = mem[96]
            mem[mem[64] + (uint255(stor14.length) * 0.5) + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _599 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 47
                mem[mem[96] + _360 + (uint255(stor14.length) * 0.5) + 47] = 32
                _643 = mem[_599]
                mem[_393 + _360 + (uint255(stor14.length) * 0.5) + 79] = mem[_599]
                mem[_393 + _360 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_643)] = mem[_599 + 32 len ceil32(_643)]
                if ceil32(_643) > _643:
                    mem[_643 + _393 + _360 + (uint255(stor14.length) * 0.5) + 111] = 0
                return 32, mem[_393 + _360 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_643) + 32]
            _600 = mem[64]
            mem[64] = mem[96] + mem[64] + (uint255(stor14.length) * 0.5) + 47
            mem[mem[96] + _360 + (uint255(stor14.length) * 0.5) + 47] = 32
            _644 = mem[_600]
            mem[_393 + _360 + (uint255(stor14.length) * 0.5) + 79] = mem[_600]
            mem[_393 + _360 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_644)] = mem[_600 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_644 + _393 + _360 + (uint255(stor14.length) * 0.5) + 111] = 0
            return 32, mem[_393 + _360 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_644) + 32]
        if bool(stor14.length) != 1:
            mem[0] = '/metadata/' << 176
            _398 = mem[96]
            mem[10 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_398 + 10] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_398) <= _398:
                _601 = mem[64]
                mem[64] = _398 + 15
                mem[_398 + 15] = 32
                _645 = mem[_601]
                mem[_398 + 47] = mem[_601]
                mem[_398 + 79 len ceil32(_645)] = mem[_601 + 32 len ceil32(_645)]
                if ceil32(_645) > _645:
                    mem[_645 + _398 + 79] = 0
                return 32, mem[_398 + 47 len ceil32(_645) + 32]
            _602 = mem[64]
            mem[64] = _398 + 15
            mem[_398 + 15] = 32
            _646 = mem[_602]
            mem[_398 + 47] = mem[_602]
            mem[_398 + 79 len ceil32(_646)] = mem[_602 + 32 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_646 + _398 + 79] = 0
            return 32, mem[_398 + 47 len ceil32(_646) + 32]
        mem[0] = 14
        idx = 0
        s = 0
        while idx < uint255(stor14.length) * 0.5:
            mem[idx + _360 + 32] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_360 + (uint255(stor14.length) * 0.5) + 32] = '/metadata/' << 176
        _589 = mem[96]
        mem[_360 + (uint255(stor14.length) * 0.5) + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_589 + _360 + (uint255(stor14.length) * 0.5) + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_589) <= _589:
            _771 = mem[64]
            mem[64] = _589 + _360 + (uint255(stor14.length) * 0.5) + 47
            mem[_589 + _360 + (uint255(stor14.length) * 0.5) + 47] = 32
            _819 = mem[_771]
            mem[_589 + _360 + (uint255(stor14.length) * 0.5) + 79] = mem[_771]
            mem[_589 + _360 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_819)] = mem[_771 + 32 len ceil32(_819)]
            if ceil32(_819) > _819:
                mem[_819 + _589 + _360 + (uint255(stor14.length) * 0.5) + 111] = 0
            return 32, mem[_589 + _360 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_819) + 32]
        _772 = mem[64]
        mem[64] = _589 + _360 + (uint255(stor14.length) * 0.5) + 47
        mem[_589 + _360 + (uint255(stor14.length) * 0.5) + 47] = 32
        _820 = mem[_772]
        mem[_589 + _360 + (uint255(stor14.length) * 0.5) + 79] = mem[_772]
        mem[_589 + _360 + (uint255(stor14.length) * 0.5) + 111 len ceil32(_820)] = mem[_772 + 32 len ceil32(_820)]
        if ceil32(_820) > _820:
            mem[_820 + _589 + _360 + (uint255(stor14.length) * 0.5) + 111] = 0
        return 32, mem[_589 + _360 + (uint255(stor14.length) * 0.5) + 79 len ceil32(_820) + 32]
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor14.length):
        mem[mem[64] + 32] = Mask(248, 8, stor14.length)
        mem[mem[64] + stor14.length.field_1 + 32] = '/metadata/' << 176
        _399 = mem[96]
        mem[mem[64] + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[96] + mem[64] + stor14.length.field_1 + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(mem[96]) <= mem[96]:
            _603 = mem[64]
            mem[64] = mem[96] + mem[64] + stor14.length.field_1 + 47
            mem[mem[96] + _360 + stor14.length.field_1 + 47] = 32
            _647 = mem[_603]
            mem[_399 + _360 + stor14.length.field_1 + 79] = mem[_603]
            mem[_399 + _360 + stor14.length.field_1 + 111 len ceil32(_647)] = mem[_603 + 32 len ceil32(_647)]
            if ceil32(_647) > _647:
                mem[_647 + _399 + _360 + stor14.length.field_1 + 111] = 0
            return 32, mem[_399 + _360 + stor14.length.field_1 + 79 len ceil32(_647) + 32]
        _604 = mem[64]
        mem[64] = mem[96] + mem[64] + stor14.length.field_1 + 47
        mem[mem[96] + _360 + stor14.length.field_1 + 47] = 32
        _648 = mem[_604]
        mem[_399 + _360 + stor14.length.field_1 + 79] = mem[_604]
        mem[_399 + _360 + stor14.length.field_1 + 111 len ceil32(_648)] = mem[_604 + 32 len ceil32(_648)]
        if ceil32(_648) > _648:
            mem[_648 + _399 + _360 + stor14.length.field_1 + 111] = 0
        return 32, mem[_399 + _360 + stor14.length.field_1 + 79 len ceil32(_648) + 32]
    if bool(stor14.length) != 1:
        mem[0] = '/metadata/' << 176
        _406 = mem[96]
        mem[10 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_406 + 10] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_406) <= _406:
            _605 = mem[64]
            mem[64] = _406 + 15
            mem[_406 + 15] = 32
            _649 = mem[_605]
            mem[_406 + 47] = mem[_605]
            mem[_406 + 79 len ceil32(_649)] = mem[_605 + 32 len ceil32(_649)]
            if ceil32(_649) > _649:
                mem[_649 + _406 + 79] = 0
            return 32, mem[_406 + 47 len ceil32(_649) + 32]
        _606 = mem[64]
        mem[64] = _406 + 15
        mem[_406 + 15] = 32
        _650 = mem[_606]
        mem[_406 + 47] = mem[_606]
        mem[_406 + 79 len ceil32(_650)] = mem[_606 + 32 len ceil32(_650)]
        if ceil32(_650) > _650:
            mem[_650 + _406 + 79] = 0
        return 32, mem[_406 + 47 len ceil32(_650) + 32]
    mem[0] = 14
    idx = 0
    s = 0
    while idx < stor14.length.field_1:
        mem[idx + _360 + 32] = stor14[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    mem[_360 + stor14.length.field_1 + 32] = '/metadata/' << 176
    _590 = mem[96]
    mem[_360 + stor14.length.field_1 + 42 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_590 + _360 + stor14.length.field_1 + 42] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    if ceil32(_590) <= _590:
        _773 = mem[64]
        mem[64] = _590 + _360 + stor14.length.field_1 + 47
        mem[_590 + _360 + stor14.length.field_1 + 47] = 32
        _821 = mem[_773]
        mem[_590 + _360 + stor14.length.field_1 + 79] = mem[_773]
        mem[_590 + _360 + stor14.length.field_1 + 111 len ceil32(_821)] = mem[_773 + 32 len ceil32(_821)]
        if ceil32(_821) > _821:
            mem[_821 + _590 + _360 + stor14.length.field_1 + 111] = 0
        return 32, mem[_590 + _360 + stor14.length.field_1 + 79 len ceil32(_821) + 32]
    _774 = mem[64]
    mem[64] = _590 + _360 + stor14.length.field_1 + 47
    mem[_590 + _360 + stor14.length.field_1 + 47] = 32
    _822 = mem[_774]
    mem[_590 + _360 + stor14.length.field_1 + 79] = mem[_774]
    mem[_590 + _360 + stor14.length.field_1 + 111 len ceil32(_822)] = mem[_774 + 32 len ceil32(_822)]
    if ceil32(_822) > _822:
        mem[_822 + _590 + _360 + stor14.length.field_1 + 111] = 0
    return 32, mem[_590 + _360 + stor14.length.field_1 + 79 len ceil32(_822) + 32]
}



}

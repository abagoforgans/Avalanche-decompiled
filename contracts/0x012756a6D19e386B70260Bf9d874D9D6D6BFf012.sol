contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const maxSupply = 1000


array of struct stor0;
array of struct stor1;
array of address ownerOf;
array of uint256 balanceOf;
mapping of address approved;
array of uint8 stor5;
array of struct stor6;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;
mapping of uint8 stor11;
uint256 mintFeeAmount;
array of struct stor13;
uint256 sub_8b0b30ce;
uint8 openForPublic;
mapping of struct moleculeLevel;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor18;
array of uint256 stor19;
mapping of uint256 stor20;
mapping of uint8 stor21;

function getMoleculeLevel(uint256 arg1) {
    require calldata.size - 4 >= 32
    return moleculeLevel[arg1].field_2048
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return address(approved[arg1])
}

function sub_16cf18b0(?) {
    require calldata.size - 4 >= 32
    return moleculeLevel[arg1].field_0, 
           moleculeLevel[arg1].field_256,
           moleculeLevel[arg1].field_512,
           moleculeLevel[arg1].field_768,
           moleculeLevel[arg1].field_1024,
           moleculeLevel[arg1].field_1280,
           bool(moleculeLevel[arg1].field_1536),
           bool(moleculeLevel[arg1].field_1544),
           moleculeLevel[arg1].field_1792,
           moleculeLevel[arg1].field_2048,
           moleculeLevel[arg1].field_2304,
           moleculeLevel[arg1].field_2560
}

function totalSupply() {
    return stor19.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0, 'out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function excludedList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
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

function royaltyPercentage() {
    return stor10.length
}

function sub_8b0b30ce(?) {
    return sub_8b0b30ce
}

function owner() {
    return address(stor6.length)
}

function mintFeeAmount() {
    return mintFeeAmount
}

function getMoleculeKind(uint256 arg1) {
    require calldata.size - 4 >= 32
    return moleculeLevel[arg1].field_1792
}

function authorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[arg1])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(stor5[address(arg1)][address(arg2)]))
}

function openForPublic() {
    return bool(openForPublic)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if address(stor6.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor6.length) = 0
    emit OwnershipTransferred(address(stor6.length), 0);
}

function addAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor8.length) != msg.sender:
        revert with 0, 'Not owner'
    require arg1
    stor21[address(arg1)] = 1
}

function removeAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor8.length) != msg.sender:
        revert with 0, 'Not owner'
    require arg1
    require arg1 != msg.sender
    stor21[address(arg1)] = 0
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    uint8(stor5[address(msg.sender)][address(arg1)]) = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor6.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(stor6.length) = arg1
    emit OwnershipTransferred(address(stor6.length), arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function growMolecule(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor21[msg.sender]:
        if address(stor8.length) != msg.sender:
            revert with 0, 'Not authorized'
    if not ownerOf[arg1]:
        revert with 0, 'token not found'
    if moleculeLevel[arg1].field_2048 > -2:
        revert with 0, 17
    moleculeLevel[arg1].field_256 = moleculeLevel[arg1].field_256
    moleculeLevel[arg1].field_512 = moleculeLevel[arg1].field_512
    moleculeLevel[arg1].field_1536 = uint8(bool(moleculeLevel[arg1].field_1536))
    moleculeLevel[arg1].field_1544 = Mask(248, 0, bool(moleculeLevel[arg1].field_1544))
    moleculeLevel[arg1].field_1552 = Mask(240, 16, bool(moleculeLevel[arg1].field_1536)) >> 16
    moleculeLevel[arg1].field_2048++
    emit moleculeGrown(arg1, moleculeLevel[arg1].field_2048 + 1);
}

function getAllSaleTokens() {
    if stor19.length > test266151307():
        revert with 0, 65
    if stor19.length:
        mem[128 len 32 * stor19.length] = call.data[calldata.size len 32 * stor19.length]
    idx = 1
    s = 0
    while idx <= stor19.length:
        mem[0] = idx
        mem[32] = 16
        if bool(moleculeLevel[idx].field_1536) != 1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 16
        if s >= stor19.length:
            revert with 0, 50
        mem[(32 * s) + 128] = moleculeLevel[idx].field_0
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=stor19.length, data=mem[128 len 32 * stor19.length])
}

function setPriceForSale(uint256 arg1, uint256 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if not ownerOf[arg1]:
        revert with 0, 'token not found'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'not owner'
    require not moleculeLevel[arg1].field_1544
    moleculeLevel[arg1].field_256 = moleculeLevel[arg1].field_256
    moleculeLevel[arg1].field_512 = moleculeLevel[arg1].field_512
    moleculeLevel[arg1].field_1024 = arg2
    moleculeLevel[arg1].field_1536 = uint8(arg3)
    moleculeLevel[arg1].field_1544 = Mask(248, 0, bool(moleculeLevel[arg1].field_1544))
    moleculeLevel[arg1].field_1552 = Mask(240, 16, arg3) >> 16
    emit SaleToggle(arg1, arg3, arg2);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not uint8(stor5[stor2[arg2]][address(msg.sender)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    address(approved[arg2]) = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function bondMolecule(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not stor21[msg.sender]:
        if address(stor8.length) != msg.sender:
            revert with 0, 'Not authorized'
    if not ownerOf[arg2]:
        revert with 0, 'token not found'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != arg1:
        revert with 0, 'not owner'
    if moleculeLevel[arg2].field_1544:
        revert with 0, 'Molecule already bonded'
    moleculeLevel[arg2].field_256 = moleculeLevel[arg2].field_256
    moleculeLevel[arg2].field_512 = moleculeLevel[arg2].field_512
    moleculeLevel[arg2].field_1536 = uint8(bool(moleculeLevel[arg2].field_1536))
    moleculeLevel[arg2].field_1544 = 1
    moleculeLevel[arg2].field_1552 = Mask(240, 16, bool(moleculeLevel[arg2].field_1536)) >> 16
    emit moleculeBonded(arg2, address(arg1), arg3);
}

function unbondMolecule(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not stor21[msg.sender]:
        if address(stor8.length) != msg.sender:
            revert with 0, 'Not authorized'
    if not ownerOf[arg2]:
        revert with 0, 'token not found'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != arg1:
        revert with 0, 'not owner'
    if bool(moleculeLevel[arg2].field_1544) != 1:
        revert with 0, 'Molecule not bonded'
    moleculeLevel[arg2].field_256 = moleculeLevel[arg2].field_256
    moleculeLevel[arg2].field_512 = moleculeLevel[arg2].field_512
    moleculeLevel[arg2].field_1536 = uint8(bool(moleculeLevel[arg2].field_1536))
    moleculeLevel[arg2].field_1544 = 0
    moleculeLevel[arg2].field_1552 = Mask(240, 16, bool(moleculeLevel[arg2].field_1536)) >> 16
    emit moleculeUnbonded(arg2, address(arg1), arg3);
}

function sub_5f823d28(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if address(stor6.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while (uint255(stor13.length) * 0.5) + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
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
        if address(approved[arg3]) != msg.sender:
            if not uint8(stor5[stor2[arg3]][address(msg.sender)]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if moleculeLevel[arg3].field_1544:
        revert with 0, 'Molecule is bonded!'
    if moleculeLevel[arg3].field_1280 > -2:
        revert with 0, 17
    moleculeLevel[arg3].field_256 = moleculeLevel[arg3].field_256
    moleculeLevel[arg3].field_512 = arg2
    moleculeLevel[arg3].field_1280++
    moleculeLevel[arg3].field_1536 = 0
    moleculeLevel[arg3].field_1544 = Mask(248, 0, bool(moleculeLevel[arg3].field_1544))
    moleculeLevel[arg3].field_1552 = 0
    if not arg1:
        stor20[arg3] = stor19.length
        stor19.length++
        stor19[stor19.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor18[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor18[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor18[stor17[address(arg1)][stor3[address(arg1)] - 1]] = stor18[arg3]
            stor18[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor18[arg3] = balanceOf[address(arg2)]
    else:
        if stor19.length < 1:
            revert with 0, 17
        if stor19.length - 1 >= stor19.length:
            revert with 0, 50
        if stor20[arg3] >= stor19.length:
            revert with 0, 50
        stor19[stor20[arg3]] = stor19[stor19.length]
        stor20[stor19[stor19.length]] = stor20[arg3]
        stor20[arg3] = 0
        if not stor19.length:
            revert with 0, 49
        stor19[stor19.length] = 0
        stor19.length--
    address(approved[arg3]) = 0
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

function baseURL() {
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

function sub_8e2e1870(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if address(stor6.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length <= 0:
        revert with 0, 'lists can't be empty'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'both lists should have same length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if not ownerOf[mem[(32 * idx) + 128]]:
            revert with 0, 'token not found'
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 16
        _119 = sha3(mem[(32 * idx) + 128], 16)
        _120 = mem[64]
        mem[64] = mem[64] + 384
        mem[_120] = moleculeLevel[mem[(32 * idx) + 128]].field_0
        mem[_120 + 32] = stor1[_119].field_0
        mem[_120 + 64] = ownerOf[_119]
        mem[_120 + 96] = balanceOf[_119]
        mem[_120 + 128] = uint256(approved[_119])
        mem[_120 + 160] = uint256(stor5[_119])
        mem[_120 + 192] = bool(stor6[_119].field_0)
        mem[_120 + 224] = bool(stor6[_119].field_8)
        mem[_120 + 256] = stor7[_119]
        mem[_120 + 288] = uint256(stor8[_119])
        mem[_120 + 320] = uint256(stor9[_119])
        mem[_120 + 352] = stor10[_119]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[_120 + 256] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 16
        moleculeLevel[mem[(32 * idx) + 128]].field_0 = mem[_120]
        moleculeLevel[mem[(32 * idx) + 128]].field_256 = stor1[_119].field_0
        moleculeLevel[mem[(32 * idx) + 128]].field_512 = ownerOf[_119]
        moleculeLevel[mem[(32 * idx) + 128]].field_768 = balanceOf[_119]
        moleculeLevel[mem[(32 * idx) + 128]].field_1024 = uint256(approved[_119])
        moleculeLevel[mem[(32 * idx) + 128]].field_1280 = uint256(stor5[_119])
        moleculeLevel[mem[(32 * idx) + 128]].field_1536 = uint8(bool(stor6[_119].field_0))
        moleculeLevel[mem[(32 * idx) + 128]].field_1544 = Mask(248, 0, bool(stor6[_119].field_8))
        moleculeLevel[mem[(32 * idx) + 128]].field_1552 = Mask(240, 16, bool(stor6[_119].field_0)) >> 16
        moleculeLevel[mem[(32 * idx) + 128]].field_1792 = mem[_120 + 256]
        moleculeLevel[mem[(32 * idx) + 128]].field_2048 = uint256(stor8[_119])
        moleculeLevel[mem[(32 * idx) + 128]].field_2304 = uint256(stor9[_119])
        moleculeLevel[mem[(32 * idx) + 128]].field_2560 = stor10[_119]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
        if address(approved[arg3]) != msg.sender:
            if not uint8(stor5[stor2[arg3]][address(msg.sender)]):
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if moleculeLevel[arg3].field_1544:
        revert with 0, 'Molecule is bonded!'
    if moleculeLevel[arg3].field_1280 > -2:
        revert with 0, 17
    moleculeLevel[arg3].field_256 = moleculeLevel[arg3].field_256
    moleculeLevel[arg3].field_512 = arg2
    moleculeLevel[arg3].field_1280++
    moleculeLevel[arg3].field_1536 = 0
    moleculeLevel[arg3].field_1544 = Mask(248, 0, bool(moleculeLevel[arg3].field_1544))
    moleculeLevel[arg3].field_1552 = 0
    if not arg1:
        stor20[arg3] = stor19.length
        stor19.length++
        stor19[stor19.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor18[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor18[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor18[stor17[address(arg1)][stor3[address(arg1)] - 1]] = stor18[arg3]
            stor18[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor18[arg3] = balanceOf[address(arg2)]
    else:
        if stor19.length < 1:
            revert with 0, 17
        if stor19.length - 1 >= stor19.length:
            revert with 0, 50
        if stor20[arg3] >= stor19.length:
            revert with 0, 50
        stor19[stor20[arg3]] = stor19[stor19.length]
        stor20[stor19[stor19.length]] = stor20[arg3]
        stor20[arg3] = 0
        if not stor19.length:
            revert with 0, 49
        stor19[stor19.length] = 0
        stor19.length--
    address(approved[arg3]) = 0
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
            args msg.sender, address(arg1), arg3, 128, 0
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

function buyToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] != msg.sender
    require msg.value >= moleculeLevel[arg1].field_1024
    require moleculeLevel[arg1].field_1536
    if msg.value and stor10.length > -1 / msg.value:
        revert with 0, 17
    if msg.value < msg.value * stor10.length / 100:
        revert with 0, 17
    call address(stor9.length) with:
       value msg.value * stor10.length / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call moleculeLevel[arg1].field_512 with:
       value msg.value - (msg.value * stor10.length / 100) wei
         gas 2300 * is_zero(value) wei
    moleculeLevel[arg1].field_256 = moleculeLevel[arg1].field_256
    moleculeLevel[arg1].field_512 = moleculeLevel[arg1].field_512
    moleculeLevel[arg1].field_768 = moleculeLevel[arg1].field_1024
    moleculeLevel[arg1].field_1536 = uint8(bool(moleculeLevel[arg1].field_1536))
    moleculeLevel[arg1].field_1544 = 0
    moleculeLevel[arg1].field_1552 = Mask(240, 16, bool(moleculeLevel[arg1].field_1536)) >> 16
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    if moleculeLevel[arg1].field_1544:
        revert with 0, 'Molecule is bonded!'
    if moleculeLevel[arg1].field_1280 > -2:
        revert with 0, 17
    moleculeLevel[arg1].field_256 = moleculeLevel[arg1].field_256
    moleculeLevel[arg1].field_512 = msg.sender
    moleculeLevel[arg1].field_1280++
    moleculeLevel[arg1].field_1536 = 0
    moleculeLevel[arg1].field_1544 = Mask(248, 0, bool(moleculeLevel[arg1].field_1544))
    moleculeLevel[arg1].field_1552 = 0
    if not ownerOf[arg1]:
        stor20[arg1] = stor19.length
        stor19.length++
        stor19[stor19.length] = arg1
    else:
        if ownerOf[arg1] != msg.sender:
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[stor2[arg1]] < 1:
                revert with 0, 17
            if balanceOf[stor2[arg1]] - 1 != stor18[arg1]:
                tokenOfOwnerByIndex[stor2[arg1]][stor18[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
                stor18[stor17[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor18[arg1]
            stor18[arg1] = 0
            tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if msg.sender:
        if ownerOf[arg1] != msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = arg1
            stor18[arg1] = balanceOf[address(msg.sender)]
    else:
        if stor19.length < 1:
            revert with 0, 17
        if stor19.length - 1 >= stor19.length:
            revert with 0, 50
        if stor20[arg1] >= stor19.length:
            revert with 0, 50
        stor19[stor20[arg1]] = stor19[stor19.length]
        stor20[stor19[stor19.length]] = stor20[arg1]
        stor20[arg1] = 0
        if not stor19.length:
            revert with 0, 49
        stor19[stor19.length] = 0
        stor19.length--
    address(approved[arg1]) = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg1]]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(ownerOf[arg1], msg.sender, arg1);
    emit PurchaseEvent(arg1, moleculeLevel[arg1].field_512, msg.sender, moleculeLevel[arg1].field_1024);
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
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if address(approved[arg3]) != msg.sender:
            if not uint8(stor5[stor2[arg3]][address(msg.sender)]):
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if moleculeLevel[arg3].field_1544:
        revert with 0, 'Molecule is bonded!'
    if moleculeLevel[arg3].field_1280 > -2:
        revert with 0, 17
    moleculeLevel[arg3].field_256 = moleculeLevel[arg3].field_256
    moleculeLevel[arg3].field_512 = arg2
    moleculeLevel[arg3].field_1280++
    moleculeLevel[arg3].field_1536 = 0
    moleculeLevel[arg3].field_1544 = Mask(248, 0, bool(moleculeLevel[arg3].field_1544))
    moleculeLevel[arg3].field_1552 = 0
    if not arg1:
        stor20[arg3] = stor19.length
        stor19.length++
        stor19[stor19.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor18[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor18[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor18[stor17[address(arg1)][stor3[address(arg1)] - 1]] = stor18[arg3]
            stor18[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor18[arg3] = balanceOf[address(arg2)]
    else:
        if stor19.length < 1:
            revert with 0, 17
        if stor19.length - 1 >= stor19.length:
            revert with 0, 50
        if stor20[arg3] >= stor19.length:
            revert with 0, 50
        stor19[stor20[arg3]] = stor19[stor19.length]
        stor20[stor19[stor19.length]] = stor20[arg3]
        stor20[arg3] = 0
        if not stor19.length:
            revert with 0, 49
        stor19[stor19.length] = 0
        stor19.length--
    address(approved[arg3]) = 0
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

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if bool(openForPublic) != 1:
        revert with 0, 'not open'
    require msg.sender
    if stor19.length > !arg1:
        revert with 0, 17
    if stor19.length + arg1 > 1000:
        revert with 0, 'max supply'
    if arg1 <= 0:
        revert with 0, 'Min 1'
    if arg1 > 3:
        revert with 0, 'Max 3'
    mem[0] = msg.sender
    mem[32] = 11
    if stor11[msg.sender]:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 1
        while idx <= arg1:
            if stor7.length > -2:
                revert with 0, 17
            stor7.length++
            _544 = mem[64]
            mem[64] = mem[64] + 32
            mem[_544] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor7.length]:
                revert with 0, 'ERC721: token already minted'
            mem[0] = stor7.length
            mem[32] = 16
            _555 = mem[64]
            mem[64] = mem[64] + 384
            mem[_555] = moleculeLevel[stor7.length].field_0
            mem[_555 + 32] = moleculeLevel[stor7.length].field_256
            mem[_555 + 96] = moleculeLevel[stor7.length].field_768
            mem[_555 + 128] = moleculeLevel[stor7.length].field_1024
            mem[_555 + 224] = bool(moleculeLevel[stor7.length].field_1544)
            mem[_555 + 256] = moleculeLevel[stor7.length].field_1792
            mem[_555 + 288] = moleculeLevel[stor7.length].field_2048
            mem[_555 + 320] = moleculeLevel[stor7.length].field_2304
            mem[_555 + 352] = moleculeLevel[stor7.length].field_2560
            if moleculeLevel[stor7.length].field_1544:
                revert with 0, 'Molecule is bonded!'
            mem[_555 + 64] = msg.sender
            if moleculeLevel[stor7.length].field_1280 > -2:
                revert with 0, 17
            mem[_555 + 160] = moleculeLevel[stor7.length].field_1280 + 1
            mem[_555 + 192] = 0
            moleculeLevel[stor7.length].field_256 = moleculeLevel[stor7.length].field_256
            moleculeLevel[stor7.length].field_512 = msg.sender
            moleculeLevel[stor7.length].field_1280++
            moleculeLevel[stor7.length].field_1536 = 0
            moleculeLevel[stor7.length].field_1544 = Mask(248, 0, bool(moleculeLevel[stor7.length].field_1544))
            moleculeLevel[stor7.length].field_1552 = 0
            stor20[stor7.length] = stor19.length
            stor19.length++
            stor19[stor19.length] = stor7.length
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor7.length
                    mem[32] = 2
                    ownerOf[stor7.length] = msg.sender
                    emit Transfer(0, msg.sender, stor7.length);
                    if not ext_code.size(msg.sender):
                        _636 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_636] = stor7.length
                        mem[_636 + 32] = msg.sender
                        mem[_636 + 64] = msg.sender
                        mem[_636 + 96] = 0
                        mem[_636 + 128] = 0
                        mem[_636 + 160] = 0
                        mem[_636 + 192] = 0
                        mem[_636 + 224] = 0
                        mem[_636 + 256] = 0
                        mem[_636 + 288] = 1
                        mem[_636 + 320] = block.timestamp
                        mem[_636 + 352] = block.timestamp
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor7.length
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _544 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor7.length, 128, 0
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
                        _1092 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1092] == Mask(32, 224, mem[_1092])
                        if Mask(32, 224, mem[_1092]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1236 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_1236] = stor7.length
                        mem[_1236 + 32] = msg.sender
                        mem[_1236 + 64] = msg.sender
                        mem[_1236 + 96] = 0
                        mem[_1236 + 128] = 0
                        mem[_1236 + 160] = 0
                        mem[_1236 + 192] = 0
                        mem[_1236 + 224] = 0
                        mem[_1236 + 256] = 0
                        mem[_1236 + 288] = 1
                        mem[_1236 + 320] = block.timestamp
                        mem[_1236 + 352] = block.timestamp
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor7.length
                    stor18[stor7.length] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor7.length
                    mem[32] = 2
                    ownerOf[stor7.length] = msg.sender
                    emit Transfer(0, msg.sender, stor7.length);
                    if not ext_code.size(msg.sender):
                        _678 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_678] = stor7.length
                        mem[_678 + 32] = msg.sender
                        mem[_678 + 64] = msg.sender
                        mem[_678 + 96] = 0
                        mem[_678 + 128] = 0
                        mem[_678 + 160] = 0
                        mem[_678 + 192] = 0
                        mem[_678 + 224] = 0
                        mem[_678 + 256] = 0
                        mem[_678 + 288] = 1
                        mem[_678 + 320] = block.timestamp
                        mem[_678 + 352] = block.timestamp
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor7.length
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _544 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor7.length, 128, 0
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
                        _1094 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1094] == Mask(32, 224, mem[_1094])
                        if Mask(32, 224, mem[_1094]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1266 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_1266] = stor7.length
                        mem[_1266 + 32] = msg.sender
                        mem[_1266 + 64] = msg.sender
                        mem[_1266 + 96] = 0
                        mem[_1266 + 128] = 0
                        mem[_1266 + 160] = 0
                        mem[_1266 + 192] = 0
                        mem[_1266 + 224] = 0
                        mem[_1266 + 256] = 0
                        mem[_1266 + 288] = 1
                        mem[_1266 + 320] = block.timestamp
                        mem[_1266 + 352] = block.timestamp
            else:
                if stor19.length < 1:
                    revert with 0, 17
                if stor19.length - 1 >= stor19.length:
                    revert with 0, 50
                if stor20[stor7.length] >= stor19.length:
                    revert with 0, 50
                stor19[stor20[stor7.length]] = stor19[stor19.length]
                stor20[stor19[stor19.length]] = stor20[stor7.length]
                stor20[stor7.length] = 0
                if not stor19.length:
                    revert with 0, 49
                stor19[stor19.length] = 0
                stor19.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor7.length
                mem[32] = 2
                ownerOf[stor7.length] = msg.sender
                emit Transfer(0, msg.sender, stor7.length);
                if not ext_code.size(msg.sender):
                    _716 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_716] = stor7.length
                    mem[_716 + 32] = msg.sender
                    mem[_716 + 64] = msg.sender
                    mem[_716 + 96] = 0
                    mem[_716 + 128] = 0
                    mem[_716 + 160] = 0
                    mem[_716 + 192] = 0
                    mem[_716 + 224] = 0
                    mem[_716 + 256] = 0
                    mem[_716 + 288] = 1
                    mem[_716 + 320] = block.timestamp
                    mem[_716 + 352] = block.timestamp
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor7.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _544 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor7.length, 128, 0
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
                    _1096 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1096] == Mask(32, 224, mem[_1096])
                    if Mask(32, 224, mem[_1096]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _1296 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_1296] = stor7.length
                    mem[_1296 + 32] = msg.sender
                    mem[_1296 + 64] = msg.sender
                    mem[_1296 + 96] = 0
                    mem[_1296 + 128] = 0
                    mem[_1296 + 160] = 0
                    mem[_1296 + 192] = 0
                    mem[_1296 + 224] = 0
                    mem[_1296 + 256] = 0
                    mem[_1296 + 288] = 1
                    mem[_1296 + 320] = block.timestamp
                    mem[_1296 + 352] = block.timestamp
            mem[0] = stor7.length
            mem[32] = 16
            moleculeLevel[stor7.length].field_0 = stor7.length
            moleculeLevel[stor7.length].field_256 = msg.sender
            moleculeLevel[stor7.length].field_512 = msg.sender
            moleculeLevel[stor7.length].field_768 = 0
            moleculeLevel[stor7.length].field_1024 = 0
            moleculeLevel[stor7.length].field_1280 = 0
            moleculeLevel[stor7.length].field_1536 = 0
            moleculeLevel[stor7.length].field_1544 = 0
            moleculeLevel[stor7.length].field_1792 = 0
            moleculeLevel[stor7.length].field_2048 = 1
            moleculeLevel[stor7.length].field_2304 = block.timestamp
            moleculeLevel[stor7.length].field_2560 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if mintFeeAmount and arg1 > -1 / mintFeeAmount:
            revert with 0, 17
        if msg.value < mintFeeAmount * arg1:
            revert with 0, 'Not enough fee'
        call address(stor9.length) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 1
        while idx <= arg1:
            if stor7.length > -2:
                revert with 0, 17
            stor7.length++
            _545 = mem[64]
            mem[64] = mem[64] + 32
            mem[_545] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor7.length]:
                revert with 0, 'ERC721: token already minted'
            mem[0] = stor7.length
            mem[32] = 16
            _558 = mem[64]
            mem[64] = mem[64] + 384
            mem[_558] = moleculeLevel[stor7.length].field_0
            mem[_558 + 32] = moleculeLevel[stor7.length].field_256
            mem[_558 + 96] = moleculeLevel[stor7.length].field_768
            mem[_558 + 128] = moleculeLevel[stor7.length].field_1024
            mem[_558 + 224] = bool(moleculeLevel[stor7.length].field_1544)
            mem[_558 + 256] = moleculeLevel[stor7.length].field_1792
            mem[_558 + 288] = moleculeLevel[stor7.length].field_2048
            mem[_558 + 320] = moleculeLevel[stor7.length].field_2304
            mem[_558 + 352] = moleculeLevel[stor7.length].field_2560
            if moleculeLevel[stor7.length].field_1544:
                revert with 0, 'Molecule is bonded!'
            mem[_558 + 64] = msg.sender
            if moleculeLevel[stor7.length].field_1280 > -2:
                revert with 0, 17
            mem[_558 + 160] = moleculeLevel[stor7.length].field_1280 + 1
            mem[_558 + 192] = 0
            moleculeLevel[stor7.length].field_256 = moleculeLevel[stor7.length].field_256
            moleculeLevel[stor7.length].field_512 = msg.sender
            moleculeLevel[stor7.length].field_1280++
            moleculeLevel[stor7.length].field_1536 = 0
            moleculeLevel[stor7.length].field_1544 = Mask(248, 0, bool(moleculeLevel[stor7.length].field_1544))
            moleculeLevel[stor7.length].field_1552 = 0
            stor20[stor7.length] = stor19.length
            stor19.length++
            stor19[stor19.length] = stor7.length
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor7.length
                    mem[32] = 2
                    ownerOf[stor7.length] = msg.sender
                    emit Transfer(0, msg.sender, stor7.length);
                    if not ext_code.size(msg.sender):
                        _650 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_650] = stor7.length
                        mem[_650 + 32] = msg.sender
                        mem[_650 + 64] = msg.sender
                        mem[_650 + 96] = 0
                        mem[_650 + 128] = mintFeeAmount * arg1
                        mem[_650 + 160] = 0
                        mem[_650 + 192] = 0
                        mem[_650 + 224] = 0
                        mem[_650 + 256] = 0
                        mem[_650 + 288] = 1
                        mem[_650 + 320] = block.timestamp
                        mem[_650 + 352] = block.timestamp
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor7.length
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _545 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor7.length, 128, 0
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
                        _1098 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1098] == Mask(32, 224, mem[_1098])
                        if Mask(32, 224, mem[_1098]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1326 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_1326] = stor7.length
                        mem[_1326 + 32] = msg.sender
                        mem[_1326 + 64] = msg.sender
                        mem[_1326 + 96] = 0
                        mem[_1326 + 128] = mintFeeAmount * arg1
                        mem[_1326 + 160] = 0
                        mem[_1326 + 192] = 0
                        mem[_1326 + 224] = 0
                        mem[_1326 + 256] = 0
                        mem[_1326 + 288] = 1
                        mem[_1326 + 320] = block.timestamp
                        mem[_1326 + 352] = block.timestamp
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor7.length
                    stor18[stor7.length] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor7.length
                    mem[32] = 2
                    ownerOf[stor7.length] = msg.sender
                    emit Transfer(0, msg.sender, stor7.length);
                    if not ext_code.size(msg.sender):
                        _694 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_694] = stor7.length
                        mem[_694 + 32] = msg.sender
                        mem[_694 + 64] = msg.sender
                        mem[_694 + 96] = 0
                        mem[_694 + 128] = mintFeeAmount * arg1
                        mem[_694 + 160] = 0
                        mem[_694 + 192] = 0
                        mem[_694 + 224] = 0
                        mem[_694 + 256] = 0
                        mem[_694 + 288] = 1
                        mem[_694 + 320] = block.timestamp
                        mem[_694 + 352] = block.timestamp
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor7.length
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _545 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor7.length, 128, 0
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
                        _1100 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1100] == Mask(32, 224, mem[_1100])
                        if Mask(32, 224, mem[_1100]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1356 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_1356] = stor7.length
                        mem[_1356 + 32] = msg.sender
                        mem[_1356 + 64] = msg.sender
                        mem[_1356 + 96] = 0
                        mem[_1356 + 128] = mintFeeAmount * arg1
                        mem[_1356 + 160] = 0
                        mem[_1356 + 192] = 0
                        mem[_1356 + 224] = 0
                        mem[_1356 + 256] = 0
                        mem[_1356 + 288] = 1
                        mem[_1356 + 320] = block.timestamp
                        mem[_1356 + 352] = block.timestamp
            else:
                if stor19.length < 1:
                    revert with 0, 17
                if stor19.length - 1 >= stor19.length:
                    revert with 0, 50
                if stor20[stor7.length] >= stor19.length:
                    revert with 0, 50
                stor19[stor20[stor7.length]] = stor19[stor19.length]
                stor20[stor19[stor19.length]] = stor20[stor7.length]
                stor20[stor7.length] = 0
                if not stor19.length:
                    revert with 0, 49
                stor19[stor19.length] = 0
                stor19.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor7.length
                mem[32] = 2
                ownerOf[stor7.length] = msg.sender
                emit Transfer(0, msg.sender, stor7.length);
                if not ext_code.size(msg.sender):
                    _730 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_730] = stor7.length
                    mem[_730 + 32] = msg.sender
                    mem[_730 + 64] = msg.sender
                    mem[_730 + 96] = 0
                    mem[_730 + 128] = mintFeeAmount * arg1
                    mem[_730 + 160] = 0
                    mem[_730 + 192] = 0
                    mem[_730 + 224] = 0
                    mem[_730 + 256] = 0
                    mem[_730 + 288] = 1
                    mem[_730 + 320] = block.timestamp
                    mem[_730 + 352] = block.timestamp
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor7.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _545 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor7.length, 128, 0
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
                    _1102 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1102] == Mask(32, 224, mem[_1102])
                    if Mask(32, 224, mem[_1102]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _1386 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_1386] = stor7.length
                    mem[_1386 + 32] = msg.sender
                    mem[_1386 + 64] = msg.sender
                    mem[_1386 + 96] = 0
                    mem[_1386 + 128] = mintFeeAmount * arg1
                    mem[_1386 + 160] = 0
                    mem[_1386 + 192] = 0
                    mem[_1386 + 224] = 0
                    mem[_1386 + 256] = 0
                    mem[_1386 + 288] = 1
                    mem[_1386 + 320] = block.timestamp
                    mem[_1386 + 352] = block.timestamp
            mem[0] = stor7.length
            mem[32] = 16
            moleculeLevel[stor7.length].field_0 = stor7.length
            moleculeLevel[stor7.length].field_256 = msg.sender
            moleculeLevel[stor7.length].field_512 = msg.sender
            moleculeLevel[stor7.length].field_768 = 0
            moleculeLevel[stor7.length].field_1024 = mintFeeAmount * arg1
            moleculeLevel[stor7.length].field_1280 = 0
            moleculeLevel[stor7.length].field_1536 = 0
            moleculeLevel[stor7.length].field_1544 = 0
            moleculeLevel[stor7.length].field_1792 = 0
            moleculeLevel[stor7.length].field_2048 = 1
            moleculeLevel[stor7.length].field_2304 = block.timestamp
            moleculeLevel[stor7.length].field_2560 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}

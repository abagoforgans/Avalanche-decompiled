contract main {




// =====================  Runtime code  =====================


#
#  - sub_8743414b(?)
#
const sub_00c80c05(?) = 20

const sub_054ee789(?) = 6 * 10^17

const sub_064d705e(?) = 10000

const sub_37f6727f(?) = (48 * 24 * 3600)

const sub_fe0278d5(?) = 6

const MAX_PER_MINT = 30

const PRESALE_MINT_PRICE = 6 * 10^17

const MAX_PRESALE_SUPPLY = 500

const BASE_URI = 32, 31, 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e, 0


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
address sub_c9a5dab2Address;
address sub_22446fb8Address;
uint256 baseSupply;
uint256 presaleSupply;
uint256 sub_ebe2ca7b;
uint256 sub_49018a27;
uint256 sub_93b8ac9a;
uint256 presaleStartTime;
uint256 sub_1b54c025;
mapping of uint256 stor20;
mapping of uint256 sub_9c428332;
array of struct levels;
array of uint256 stor97789825912453899259273410636466998099043528421815129078110847000656284369545;
array of uint256 stor97789825912453899259273410636466998099043528421815129078110847000656284369546;
array of uint256 stor97789825912453899259273410636466998099043528421815129078110847000656284369547;
array of uint256 stor97789825912453899259273410636466998099043528421815129078110847000656284369548;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1b54c025(?) {
    return sub_1b54c025
}

function sub_22446fb8(?) {
    return sub_22446fb8Address
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

function sub_49018a27(?) {
    return sub_49018a27
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

function baseSupply() {
    return baseSupply
}

function owner() {
    return owner
}

function sub_93b8ac9a(?) {
    return sub_93b8ac9a
}

function sub_9c428332(?) {
    require calldata.size - 4 >= 32
    return sub_9c428332[arg1]
}

function presaleStartTime() {
    return presaleStartTime
}

function levels(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < levels.length
    return levels[arg1].field_0, levels[arg1].field_256, levels[arg1].field_512, levels[arg1].field_768
}

function presaleSupply() {
    return presaleSupply
}

function sub_c9a5dab2(?) {
    return sub_c9a5dab2Address
}

function sub_ebe2ca7b(?) {
    return sub_ebe2ca7b
}

function _fallback() payable {
    revert
}

function sub_aff485f7(?) {
    if 0 == sub_1b54c025:
        return sub_1b54c025 != 0
    return block.timestamp >= sub_1b54c025
}

function presaleOpen() {
    if 0 == presaleStartTime:
        return presaleStartTime != 0
    return block.timestamp >= presaleStartTime
}

function sub_12566a42(?) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token ID'
    return 10000 <= arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_442086f8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c9a5dab2Address = address(arg1)
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_22446fb8Address != arg2:
        return bool(stor5[address(arg1)][address(arg2)])
    return 1
}

function sub_9d897351(?) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token ID'
    if 10000 <= arg1:
        return 10000 <= arg1
    if block.number < 1:
        revert with 0, 17
    return (sub_9c428332[arg1] < block.number - 1)
}

function setShopAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_22446fb8Address:
        revert with 0, 'Shop address already set'
    sub_22446fb8Address = arg1
}

function sub_901507f8(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    levels.length++
    storD833[stor22.length] = 0
    storD833[stor22.length] = arg1
    storD833[stor22.length] = arg2
    storD833[stor22.length] = arg3
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

function sub_3831c97d(?) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token ID'
    if 10000 > arg1:
        if block.number < 1:
            revert with 0, 17
        if sub_9c428332[arg1] >= block.number - 1:
            revert with 0, 'Token unrevealed'
    return stor20[arg1]
}

function gameStarted() {
    if 0 == sub_1b54c025:
        return sub_1b54c025 != 0
    if block.timestamp < sub_1b54c025:
        return block.timestamp >= sub_1b54c025
    if sub_1b54c025 > -172801:
        revert with 0, 17
    if block.timestamp >= sub_1b54c025 + (48 * 24 * 3600):
        return block.timestamp >= sub_1b54c025 + (48 * 24 * 3600)
    return (baseSupply == 10000)
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

function setSalesStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'Start time must be in the future'
    if sub_1b54c025 != 0:
        if block.timestamp >= sub_1b54c025:
            revert with 0, 'Base sales already started'
    sub_1b54c025 = arg1
}

function sub_1b97228e(?) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token ID'
    if 10000 > arg1:
        if block.number < 1:
            revert with 0, 17
        if sub_9c428332[arg1] >= block.number - 1:
            revert with 0, 'Token unrevealed'
    if stor20[arg1] >= levels.length:
        revert with 0, 50
    return levels[stor20[arg1]].field_768
}

function contractURI() {
    mem[192] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
    mem[223] = 0x636f6e74726163742d6d6574612e6a736f6e0000000000000000000000000000
    mem[241] = 32
    mem[273] = mem[160]
    mem[305 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if ceil32(mem[160]) > mem[160]:
        mem[mem[160] + 305] = 0
    return Array(len=mem[160], data=mem[305 len ceil32(mem[160])])
}

function setPresaleStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'Start time must be in the future'
    if sub_1b54c025 != 0:
        if block.timestamp >= sub_1b54c025:
            revert with 0, 'Base sales already started'
    if presaleStartTime != 0:
        if block.timestamp >= presaleStartTime:
            revert with 0, 'Presale already started'
    presaleStartTime = arg1
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
        if sub_22446fb8Address != msg.sender:
            if not stor5[stor2[arg2]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
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
            if sub_22446fb8Address != msg.sender:
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
            if sub_22446fb8Address != msg.sender:
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
            if sub_22446fb8Address != msg.sender:
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

function sub_decec7d9(?) {
    require calldata.size - 4 >= 64
    require arg2 == uint16(arg2)
    if 0 == sub_1b54c025:
        revert with 0, 'Upgrade sales are not open'
    if block.timestamp < sub_1b54c025:
        revert with 0, 'Upgrade sales are not open'
    if sub_1b54c025 > -172801:
        revert with 0, 17
    if block.timestamp >= sub_1b54c025 + (48 * 24 * 3600):
        if uint16(arg2) > 30:
            revert with 0, 'Too many purchases at once'
        if arg1 >= levels.length:
            revert with 0, 'Invalid level'
        if arg1 <= 1:
            revert with 0, 'Invalid level'
        if arg1 >= levels.length:
            revert with 0, 50
        if levels[arg1].field_0 > !uint16(arg2):
            revert with 0, 17
        if levels[arg1].field_0 + uint16(arg2) > levels[arg1].field_256:
            revert with 0, 'Insufficient supply'
        if arg1 >= levels.length:
            revert with 0, 50
        mem[0] = 22
        if uint16(arg2) and levels[arg1].field_512 > -1 / uint16(arg2):
            revert with 0, 17
        mem[100] = msg.sender
        require ext_code.size(sub_c9a5dab2Address)
        staticcall sub_c9a5dab2Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        if ext_call.return_data[0] < uint16(arg2) * levels[arg1].field_512:
            revert with 0, 'Insufficient BURGR balance'
        mem[ceil32(return_data.size) + 96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = uint16(arg2) * levels[arg1].field_512
        require ext_code.size(sub_c9a5dab2Address)
        call sub_c9a5dab2Address.burn(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, uint16(arg2) * levels[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < uint16(arg2):
            if 10000 > !sub_ebe2ca7b:
                revert with 0, 17
            _323 = mem[64]
            mem[64] = mem[64] + 32
            mem[_323] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor15 + 10000]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor15 + 10000] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_ebe2ca7b + 10000
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_ebe2ca7b + 10000
                    mem[32] = 2
                    ownerOf[stor15 + 10000] = msg.sender
                    emit Transfer(0, msg.sender, sub_ebe2ca7b + 10000);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_ebe2ca7b + 10000
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _323 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_ebe2ca7b + 10000, 128, 0
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
                        _619 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_619] == Mask(32, 224, mem[_619])
                        if Mask(32, 224, mem[_619]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_ebe2ca7b + 10000
                    stor7[stor15 + 10000] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_ebe2ca7b + 10000
                    mem[32] = 2
                    ownerOf[stor15 + 10000] = msg.sender
                    emit Transfer(0, msg.sender, sub_ebe2ca7b + 10000);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_ebe2ca7b + 10000
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _323 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_ebe2ca7b + 10000, 128, 0
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
                        _621 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_621] == Mask(32, 224, mem[_621])
                        if Mask(32, 224, mem[_621]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor15 + 10000] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor15 + 10000]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor15 + 10000]
                stor9[stor15 + 10000] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_ebe2ca7b + 10000
                mem[32] = 2
                ownerOf[stor15 + 10000] = msg.sender
                emit Transfer(0, msg.sender, sub_ebe2ca7b + 10000);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_ebe2ca7b + 10000
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _323 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_ebe2ca7b + 10000, 128, 0
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
                    _623 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_623] == Mask(32, 224, mem[_623])
                    if Mask(32, 224, mem[_623]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[32] = 20
            stor20[stor15 + 10000] = arg1
            if arg1 >= levels.length:
                revert with 0, 50
            mem[0] = 22
            if levels[arg1].field_0 == -1:
                revert with 0, 17
            levels[arg1].field_0++
            if sub_ebe2ca7b == -1:
                revert with 0, 17
            sub_ebe2ca7b++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if baseSupply != 10000:
            revert with 0, 'Upgrade sales are not open'
        if uint16(arg2) > 30:
            revert with 0, 'Too many purchases at once'
        if arg1 >= levels.length:
            revert with 0, 'Invalid level'
        if arg1 <= 1:
            revert with 0, 'Invalid level'
        if arg1 >= levels.length:
            revert with 0, 50
        if levels[arg1].field_0 > !uint16(arg2):
            revert with 0, 17
        if levels[arg1].field_0 + uint16(arg2) > levels[arg1].field_256:
            revert with 0, 'Insufficient supply'
        if arg1 >= levels.length:
            revert with 0, 50
        mem[0] = 22
        if uint16(arg2) and levels[arg1].field_512 > -1 / uint16(arg2):
            revert with 0, 17
        mem[100] = msg.sender
        require ext_code.size(sub_c9a5dab2Address)
        staticcall sub_c9a5dab2Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        if ext_call.return_data[0] < uint16(arg2) * levels[arg1].field_512:
            revert with 0, 'Insufficient BURGR balance'
        mem[ceil32(return_data.size) + 96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = uint16(arg2) * levels[arg1].field_512
        require ext_code.size(sub_c9a5dab2Address)
        call sub_c9a5dab2Address.burn(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, uint16(arg2) * levels[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < uint16(arg2):
            if 10000 > !sub_ebe2ca7b:
                revert with 0, 17
            _324 = mem[64]
            mem[64] = mem[64] + 32
            mem[_324] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor15 + 10000]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor15 + 10000] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_ebe2ca7b + 10000
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_ebe2ca7b + 10000
                    mem[32] = 2
                    ownerOf[stor15 + 10000] = msg.sender
                    emit Transfer(0, msg.sender, sub_ebe2ca7b + 10000);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_ebe2ca7b + 10000
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _324 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_ebe2ca7b + 10000, 128, 0
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
                        _625 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_625] == Mask(32, 224, mem[_625])
                        if Mask(32, 224, mem[_625]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_ebe2ca7b + 10000
                    stor7[stor15 + 10000] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = sub_ebe2ca7b + 10000
                    mem[32] = 2
                    ownerOf[stor15 + 10000] = msg.sender
                    emit Transfer(0, msg.sender, sub_ebe2ca7b + 10000);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = sub_ebe2ca7b + 10000
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _324 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_ebe2ca7b + 10000, 128, 0
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
                        _627 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_627] == Mask(32, 224, mem[_627])
                        if Mask(32, 224, mem[_627]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor15 + 10000] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor15 + 10000]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor15 + 10000]
                stor9[stor15 + 10000] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_ebe2ca7b + 10000
                mem[32] = 2
                ownerOf[stor15 + 10000] = msg.sender
                emit Transfer(0, msg.sender, sub_ebe2ca7b + 10000);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = sub_ebe2ca7b + 10000
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _324 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_ebe2ca7b + 10000, 128, 0
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
                    _629 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_629] == Mask(32, 224, mem[_629])
                    if Mask(32, 224, mem[_629]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[32] = 20
            stor20[stor15 + 10000] = arg1
            if arg1 >= levels.length:
                revert with 0, 50
            mem[0] = 22
            if levels[arg1].field_0 == -1:
                revert with 0, 17
            levels[arg1].field_0++
            if sub_ebe2ca7b == -1:
                revert with 0, 17
            sub_ebe2ca7b++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_60bd6a80(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if baseSupply > !uint16(arg1):
        revert with 0, 17
    if baseSupply + uint16(arg1) > 10000:
        revert with 0, 'Insufficient supply'
    if uint16(arg1) > 30:
        revert with 0, 'Too many purchases at once'
    idx = 0
    while idx < uint16(arg1):
        _272 = mem[64]
        mem[64] = mem[64] + 32
        mem[_272] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor13]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor13] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = baseSupply
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = baseSupply
                mem[32] = 2
                ownerOf[stor13] = msg.sender
                emit Transfer(0, msg.sender, baseSupply);
                if not ext_code.size(msg.sender):
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _374 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _375 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_375 + 32 len mem[_375]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_374 + 276] = block.hash(block.number - 4)
                        mem[_374 + 308] = tx.origin
                        mem[_374 + 328] = block.hash(block.number - 2)
                        mem[_374 + 360] = block.hash(block.number - 3)
                        mem[_374 + 392] = block.hash(block.number - 1)
                        mem[_374 + 424] = tokenByIndex.length
                        mem[_374 + 456] = block.timestamp
                        mem[_374 + 244] = 212
                        mem[64] = _374 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = baseSupply
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _272 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, baseSupply, 128, 0
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
                    _546 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_546] == Mask(32, 224, mem[_546])
                    if Mask(32, 224, mem[_546]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _642 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _643 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_643 + 32 len mem[_643]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_642 + 276] = block.hash(block.number - 4)
                        mem[_642 + 308] = tx.origin
                        mem[_642 + 328] = block.hash(block.number - 2)
                        mem[_642 + 360] = block.hash(block.number - 3)
                        mem[_642 + 392] = block.hash(block.number - 1)
                        mem[_642 + 424] = tokenByIndex.length
                        mem[_642 + 456] = block.timestamp
                        mem[_642 + 244] = 212
                        mem[64] = _642 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = baseSupply
                stor7[stor13] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = baseSupply
                mem[32] = 2
                ownerOf[stor13] = msg.sender
                emit Transfer(0, msg.sender, baseSupply);
                if not ext_code.size(msg.sender):
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _401 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _402 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_402 + 32 len mem[_402]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_401 + 276] = block.hash(block.number - 4)
                        mem[_401 + 308] = tx.origin
                        mem[_401 + 328] = block.hash(block.number - 2)
                        mem[_401 + 360] = block.hash(block.number - 3)
                        mem[_401 + 392] = block.hash(block.number - 1)
                        mem[_401 + 424] = tokenByIndex.length
                        mem[_401 + 456] = block.timestamp
                        mem[_401 + 244] = 212
                        mem[64] = _401 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = baseSupply
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _272 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, baseSupply, 128, 0
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
                    _548 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_548] == Mask(32, 224, mem[_548])
                    if Mask(32, 224, mem[_548]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _650 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _651 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_651 + 32 len mem[_651]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_650 + 276] = block.hash(block.number - 4)
                        mem[_650 + 308] = tx.origin
                        mem[_650 + 328] = block.hash(block.number - 2)
                        mem[_650 + 360] = block.hash(block.number - 3)
                        mem[_650 + 392] = block.hash(block.number - 1)
                        mem[_650 + 424] = tokenByIndex.length
                        mem[_650 + 456] = block.timestamp
                        mem[_650 + 244] = 212
                        mem[64] = _650 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor13] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor13]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor13]
            stor9[stor13] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = baseSupply
            mem[32] = 2
            ownerOf[stor13] = msg.sender
            emit Transfer(0, msg.sender, baseSupply);
            if not ext_code.size(msg.sender):
                if baseSupply == -1:
                    revert with 0, 17
                baseSupply++
                mem[0] = baseSupply
                mem[32] = 21
                sub_9c428332[stor13] = block.number
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
                _409 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number - 4)
                mem[mem[64] + 64] = tx.origin
                mem[mem[64] + 84] = block.hash(block.number - 2)
                mem[mem[64] + 116] = block.hash(block.number - 3)
                mem[mem[64] + 148] = block.hash(block.number - 1)
                mem[mem[64] + 180] = tokenByIndex.length
                mem[mem[64] + 212] = block.timestamp
                _410 = mem[64]
                mem[mem[64]] = 212
                mem[64] = mem[64] + 244
                if sha3(mem[_410 + 32 len mem[_410]]) % 100 < 6:
                    mem[0] = baseSupply
                    mem[32] = 20
                    stor20[stor13] = 2
                    if sub_93b8ac9a == -1:
                        revert with 0, 17
                    sub_93b8ac9a++
                else:
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
                    mem[_409 + 276] = block.hash(block.number - 4)
                    mem[_409 + 308] = tx.origin
                    mem[_409 + 328] = block.hash(block.number - 2)
                    mem[_409 + 360] = block.hash(block.number - 3)
                    mem[_409 + 392] = block.hash(block.number - 1)
                    mem[_409 + 424] = tokenByIndex.length
                    mem[_409 + 456] = block.timestamp
                    mem[_409 + 244] = 212
                    mem[64] = _409 + 488
                    mem[0] = baseSupply
                    mem[32] = 20
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor20[stor13] = 0
                    else:
                        stor20[stor13] = 1
                        if sub_49018a27 == -1:
                            revert with 0, 17
                        sub_49018a27++
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = baseSupply
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _272 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, baseSupply, 128, 0
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
                _550 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_550] == Mask(32, 224, mem[_550])
                if Mask(32, 224, mem[_550]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if baseSupply == -1:
                    revert with 0, 17
                baseSupply++
                mem[0] = baseSupply
                mem[32] = 21
                sub_9c428332[stor13] = block.number
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
                _658 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number - 4)
                mem[mem[64] + 64] = tx.origin
                mem[mem[64] + 84] = block.hash(block.number - 2)
                mem[mem[64] + 116] = block.hash(block.number - 3)
                mem[mem[64] + 148] = block.hash(block.number - 1)
                mem[mem[64] + 180] = tokenByIndex.length
                mem[mem[64] + 212] = block.timestamp
                _659 = mem[64]
                mem[mem[64]] = 212
                mem[64] = mem[64] + 244
                if sha3(mem[_659 + 32 len mem[_659]]) % 100 < 6:
                    mem[0] = baseSupply
                    mem[32] = 20
                    stor20[stor13] = 2
                    if sub_93b8ac9a == -1:
                        revert with 0, 17
                    sub_93b8ac9a++
                else:
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
                    mem[_658 + 276] = block.hash(block.number - 4)
                    mem[_658 + 308] = tx.origin
                    mem[_658 + 328] = block.hash(block.number - 2)
                    mem[_658 + 360] = block.hash(block.number - 3)
                    mem[_658 + 392] = block.hash(block.number - 1)
                    mem[_658 + 424] = tokenByIndex.length
                    mem[_658 + 456] = block.timestamp
                    mem[_658 + 244] = 212
                    mem[64] = _658 + 488
                    mem[0] = baseSupply
                    mem[32] = 20
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor20[stor13] = 0
                    else:
                        stor20[stor13] = 1
                        if sub_49018a27 == -1:
                            revert with 0, 17
                        sub_49018a27++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_7d7c1ac3(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if baseSupply > !uint16(arg1):
        revert with 0, 17
    if baseSupply + uint16(arg1) > 10000:
        revert with 0, 'Insufficient supply'
    if uint16(arg1) > 30:
        revert with 0, 'Too many purchases at once'
    idx = 0
    while idx < uint16(arg1):
        _272 = mem[64]
        mem[64] = mem[64] + 32
        mem[_272] = 0
        if not address(arg2):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor13]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor13] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = baseSupply
        if address(arg2):
            if not address(arg2):
                if balanceOf[address(arg2)] > -2:
                    revert with 0, 17
                balanceOf[address(arg2)]++
                mem[0] = baseSupply
                mem[32] = 2
                ownerOf[stor13] = address(arg2)
                emit Transfer(0, address(arg2), baseSupply);
                if not ext_code.size(address(arg2)):
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _374 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _375 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_375 + 32 len mem[_375]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_374 + 276] = block.hash(block.number - 4)
                        mem[_374 + 308] = tx.origin
                        mem[_374 + 328] = block.hash(block.number - 2)
                        mem[_374 + 360] = block.hash(block.number - 3)
                        mem[_374 + 392] = block.hash(block.number - 1)
                        mem[_374 + 424] = tokenByIndex.length
                        mem[_374 + 456] = block.timestamp
                        mem[_374 + 244] = 212
                        mem[64] = _374 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = baseSupply
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _272 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(arg2))
                    call address(arg2).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, baseSupply, 128, 0
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
                    _546 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_546] == Mask(32, 224, mem[_546])
                    if Mask(32, 224, mem[_546]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _642 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _643 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_643 + 32 len mem[_643]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_642 + 276] = block.hash(block.number - 4)
                        mem[_642 + 308] = tx.origin
                        mem[_642 + 328] = block.hash(block.number - 2)
                        mem[_642 + 360] = block.hash(block.number - 3)
                        mem[_642 + 392] = block.hash(block.number - 1)
                        mem[_642 + 424] = tokenByIndex.length
                        mem[_642 + 456] = block.timestamp
                        mem[_642 + 244] = 212
                        mem[64] = _642 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
            else:
                if not address(arg2):
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = baseSupply
                stor7[stor13] = balanceOf[address(arg2)]
                if balanceOf[address(arg2)] > -2:
                    revert with 0, 17
                balanceOf[address(arg2)]++
                mem[0] = baseSupply
                mem[32] = 2
                ownerOf[stor13] = address(arg2)
                emit Transfer(0, address(arg2), baseSupply);
                if not ext_code.size(address(arg2)):
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _401 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _402 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_402 + 32 len mem[_402]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_401 + 276] = block.hash(block.number - 4)
                        mem[_401 + 308] = tx.origin
                        mem[_401 + 328] = block.hash(block.number - 2)
                        mem[_401 + 360] = block.hash(block.number - 3)
                        mem[_401 + 392] = block.hash(block.number - 1)
                        mem[_401 + 424] = tokenByIndex.length
                        mem[_401 + 456] = block.timestamp
                        mem[_401 + 244] = 212
                        mem[64] = _401 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = baseSupply
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _272 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(arg2))
                    call address(arg2).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, baseSupply, 128, 0
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
                    _548 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_548] == Mask(32, 224, mem[_548])
                    if Mask(32, 224, mem[_548]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _650 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _651 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_651 + 32 len mem[_651]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_650 + 276] = block.hash(block.number - 4)
                        mem[_650 + 308] = tx.origin
                        mem[_650 + 328] = block.hash(block.number - 2)
                        mem[_650 + 360] = block.hash(block.number - 3)
                        mem[_650 + 392] = block.hash(block.number - 1)
                        mem[_650 + 424] = tokenByIndex.length
                        mem[_650 + 456] = block.timestamp
                        mem[_650 + 244] = 212
                        mem[64] = _650 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor13] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor13]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor13]
            stor9[stor13] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(arg2)] > -2:
                revert with 0, 17
            balanceOf[address(arg2)]++
            mem[0] = baseSupply
            mem[32] = 2
            ownerOf[stor13] = address(arg2)
            emit Transfer(0, address(arg2), baseSupply);
            if not ext_code.size(address(arg2)):
                if baseSupply == -1:
                    revert with 0, 17
                baseSupply++
                mem[0] = baseSupply
                mem[32] = 21
                sub_9c428332[stor13] = block.number
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
                _409 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number - 4)
                mem[mem[64] + 64] = tx.origin
                mem[mem[64] + 84] = block.hash(block.number - 2)
                mem[mem[64] + 116] = block.hash(block.number - 3)
                mem[mem[64] + 148] = block.hash(block.number - 1)
                mem[mem[64] + 180] = tokenByIndex.length
                mem[mem[64] + 212] = block.timestamp
                _410 = mem[64]
                mem[mem[64]] = 212
                mem[64] = mem[64] + 244
                if sha3(mem[_410 + 32 len mem[_410]]) % 100 < 6:
                    mem[0] = baseSupply
                    mem[32] = 20
                    stor20[stor13] = 2
                    if sub_93b8ac9a == -1:
                        revert with 0, 17
                    sub_93b8ac9a++
                else:
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
                    mem[_409 + 276] = block.hash(block.number - 4)
                    mem[_409 + 308] = tx.origin
                    mem[_409 + 328] = block.hash(block.number - 2)
                    mem[_409 + 360] = block.hash(block.number - 3)
                    mem[_409 + 392] = block.hash(block.number - 1)
                    mem[_409 + 424] = tokenByIndex.length
                    mem[_409 + 456] = block.timestamp
                    mem[_409 + 244] = 212
                    mem[64] = _409 + 488
                    mem[0] = baseSupply
                    mem[32] = 20
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor20[stor13] = 0
                    else:
                        stor20[stor13] = 1
                        if sub_49018a27 == -1:
                            revert with 0, 17
                        sub_49018a27++
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = baseSupply
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _272 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(arg2))
                call address(arg2).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, baseSupply, 128, 0
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
                _550 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_550] == Mask(32, 224, mem[_550])
                if Mask(32, 224, mem[_550]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if baseSupply == -1:
                    revert with 0, 17
                baseSupply++
                mem[0] = baseSupply
                mem[32] = 21
                sub_9c428332[stor13] = block.number
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
                _658 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number - 4)
                mem[mem[64] + 64] = tx.origin
                mem[mem[64] + 84] = block.hash(block.number - 2)
                mem[mem[64] + 116] = block.hash(block.number - 3)
                mem[mem[64] + 148] = block.hash(block.number - 1)
                mem[mem[64] + 180] = tokenByIndex.length
                mem[mem[64] + 212] = block.timestamp
                _659 = mem[64]
                mem[mem[64]] = 212
                mem[64] = mem[64] + 244
                if sha3(mem[_659 + 32 len mem[_659]]) % 100 < 6:
                    mem[0] = baseSupply
                    mem[32] = 20
                    stor20[stor13] = 2
                    if sub_93b8ac9a == -1:
                        revert with 0, 17
                    sub_93b8ac9a++
                else:
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
                    mem[_658 + 276] = block.hash(block.number - 4)
                    mem[_658 + 308] = tx.origin
                    mem[_658 + 328] = block.hash(block.number - 2)
                    mem[_658 + 360] = block.hash(block.number - 3)
                    mem[_658 + 392] = block.hash(block.number - 1)
                    mem[_658 + 424] = tokenByIndex.length
                    mem[_658 + 456] = block.timestamp
                    mem[_658 + 244] = 212
                    mem[64] = _658 + 488
                    mem[0] = baseSupply
                    mem[32] = 20
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor20[stor13] = 0
                    else:
                        stor20[stor13] = 1
                        if sub_49018a27 == -1:
                            revert with 0, 17
                        sub_49018a27++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f9541270(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if uint16(arg1) and 6 * 10^17 > -1 / uint16(arg1):
        revert with 0, 17
    if 6 * 10^17 * uint16(arg1) != msg.value:
        revert with 0, 'Incorrect amount sent'
    if 0 == sub_1b54c025:
        revert with 0, 'The main sale period is not open'
    if block.timestamp < sub_1b54c025:
        revert with 0, 'The main sale period is not open'
    if baseSupply > !uint16(arg1):
        revert with 0, 17
    if baseSupply + uint16(arg1) > 10000:
        revert with 0, 'Insufficient supply'
    if uint16(arg1) > 30:
        revert with 0, 'Too many purchases at once'
    idx = 0
    while idx < uint16(arg1):
        _276 = mem[64]
        mem[64] = mem[64] + 32
        mem[_276] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor13]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor13] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = baseSupply
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = baseSupply
                mem[32] = 2
                ownerOf[stor13] = msg.sender
                emit Transfer(0, msg.sender, baseSupply);
                if not ext_code.size(msg.sender):
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _378 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _379 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_379 + 32 len mem[_379]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_378 + 276] = block.hash(block.number - 4)
                        mem[_378 + 308] = tx.origin
                        mem[_378 + 328] = block.hash(block.number - 2)
                        mem[_378 + 360] = block.hash(block.number - 3)
                        mem[_378 + 392] = block.hash(block.number - 1)
                        mem[_378 + 424] = tokenByIndex.length
                        mem[_378 + 456] = block.timestamp
                        mem[_378 + 244] = 212
                        mem[64] = _378 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = baseSupply
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _276 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, baseSupply, 128, 0
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
                    _550 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_550] == Mask(32, 224, mem[_550])
                    if Mask(32, 224, mem[_550]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _646 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _647 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_647 + 32 len mem[_647]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_646 + 276] = block.hash(block.number - 4)
                        mem[_646 + 308] = tx.origin
                        mem[_646 + 328] = block.hash(block.number - 2)
                        mem[_646 + 360] = block.hash(block.number - 3)
                        mem[_646 + 392] = block.hash(block.number - 1)
                        mem[_646 + 424] = tokenByIndex.length
                        mem[_646 + 456] = block.timestamp
                        mem[_646 + 244] = 212
                        mem[64] = _646 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = baseSupply
                stor7[stor13] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = baseSupply
                mem[32] = 2
                ownerOf[stor13] = msg.sender
                emit Transfer(0, msg.sender, baseSupply);
                if not ext_code.size(msg.sender):
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _405 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _406 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_406 + 32 len mem[_406]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_405 + 276] = block.hash(block.number - 4)
                        mem[_405 + 308] = tx.origin
                        mem[_405 + 328] = block.hash(block.number - 2)
                        mem[_405 + 360] = block.hash(block.number - 3)
                        mem[_405 + 392] = block.hash(block.number - 1)
                        mem[_405 + 424] = tokenByIndex.length
                        mem[_405 + 456] = block.timestamp
                        mem[_405 + 244] = 212
                        mem[64] = _405 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = baseSupply
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _276 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, baseSupply, 128, 0
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
                    _552 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_552] == Mask(32, 224, mem[_552])
                    if Mask(32, 224, mem[_552]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _654 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _655 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_655 + 32 len mem[_655]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_654 + 276] = block.hash(block.number - 4)
                        mem[_654 + 308] = tx.origin
                        mem[_654 + 328] = block.hash(block.number - 2)
                        mem[_654 + 360] = block.hash(block.number - 3)
                        mem[_654 + 392] = block.hash(block.number - 1)
                        mem[_654 + 424] = tokenByIndex.length
                        mem[_654 + 456] = block.timestamp
                        mem[_654 + 244] = 212
                        mem[64] = _654 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor13] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor13]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor13]
            stor9[stor13] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = baseSupply
            mem[32] = 2
            ownerOf[stor13] = msg.sender
            emit Transfer(0, msg.sender, baseSupply);
            if not ext_code.size(msg.sender):
                if baseSupply == -1:
                    revert with 0, 17
                baseSupply++
                mem[0] = baseSupply
                mem[32] = 21
                sub_9c428332[stor13] = block.number
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
                _413 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number - 4)
                mem[mem[64] + 64] = tx.origin
                mem[mem[64] + 84] = block.hash(block.number - 2)
                mem[mem[64] + 116] = block.hash(block.number - 3)
                mem[mem[64] + 148] = block.hash(block.number - 1)
                mem[mem[64] + 180] = tokenByIndex.length
                mem[mem[64] + 212] = block.timestamp
                _414 = mem[64]
                mem[mem[64]] = 212
                mem[64] = mem[64] + 244
                if sha3(mem[_414 + 32 len mem[_414]]) % 100 < 6:
                    mem[0] = baseSupply
                    mem[32] = 20
                    stor20[stor13] = 2
                    if sub_93b8ac9a == -1:
                        revert with 0, 17
                    sub_93b8ac9a++
                else:
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
                    mem[_413 + 276] = block.hash(block.number - 4)
                    mem[_413 + 308] = tx.origin
                    mem[_413 + 328] = block.hash(block.number - 2)
                    mem[_413 + 360] = block.hash(block.number - 3)
                    mem[_413 + 392] = block.hash(block.number - 1)
                    mem[_413 + 424] = tokenByIndex.length
                    mem[_413 + 456] = block.timestamp
                    mem[_413 + 244] = 212
                    mem[64] = _413 + 488
                    mem[0] = baseSupply
                    mem[32] = 20
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor20[stor13] = 0
                    else:
                        stor20[stor13] = 1
                        if sub_49018a27 == -1:
                            revert with 0, 17
                        sub_49018a27++
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = baseSupply
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _276 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, baseSupply, 128, 0
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
                _554 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_554] == Mask(32, 224, mem[_554])
                if Mask(32, 224, mem[_554]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if baseSupply == -1:
                    revert with 0, 17
                baseSupply++
                mem[0] = baseSupply
                mem[32] = 21
                sub_9c428332[stor13] = block.number
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
                _662 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number - 4)
                mem[mem[64] + 64] = tx.origin
                mem[mem[64] + 84] = block.hash(block.number - 2)
                mem[mem[64] + 116] = block.hash(block.number - 3)
                mem[mem[64] + 148] = block.hash(block.number - 1)
                mem[mem[64] + 180] = tokenByIndex.length
                mem[mem[64] + 212] = block.timestamp
                _663 = mem[64]
                mem[mem[64]] = 212
                mem[64] = mem[64] + 244
                if sha3(mem[_663 + 32 len mem[_663]]) % 100 < 6:
                    mem[0] = baseSupply
                    mem[32] = 20
                    stor20[stor13] = 2
                    if sub_93b8ac9a == -1:
                        revert with 0, 17
                    sub_93b8ac9a++
                else:
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
                    mem[_662 + 276] = block.hash(block.number - 4)
                    mem[_662 + 308] = tx.origin
                    mem[_662 + 328] = block.hash(block.number - 2)
                    mem[_662 + 360] = block.hash(block.number - 3)
                    mem[_662 + 392] = block.hash(block.number - 1)
                    mem[_662 + 424] = tokenByIndex.length
                    mem[_662 + 456] = block.timestamp
                    mem[_662 + 244] = 212
                    mem[64] = _662 + 488
                    mem[0] = baseSupply
                    mem[32] = 20
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor20[stor13] = 0
                    else:
                        stor20[stor13] = 1
                        if sub_49018a27 == -1:
                            revert with 0, 17
                        sub_49018a27++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ca98787a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if uint16(arg1) and 6 * 10^17 > -1 / uint16(arg1):
        revert with 0, 17
    if 6 * 10^17 * uint16(arg1) != msg.value:
        revert with 0, 'Incorrect amount sent'
    if 0 == presaleStartTime:
        revert with 0, 'The presale is not open'
    if block.timestamp < presaleStartTime:
        revert with 0, 'The presale is not open'
    if presaleSupply > !uint16(arg1):
        revert with 0, 17
    if presaleSupply + uint16(arg1) > 500:
        revert with 0, 'Insufficient presale supply'
    if baseSupply > !uint16(arg1):
        revert with 0, 17
    if baseSupply + uint16(arg1) > 10000:
        revert with 0, 'Insufficient supply'
    if uint16(arg1) > 30:
        revert with 0, 'Too many purchases at once'
    idx = 0
    while idx < uint16(arg1):
        _278 = mem[64]
        mem[64] = mem[64] + 32
        mem[_278] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor13]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor13] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = baseSupply
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = baseSupply
                mem[32] = 2
                ownerOf[stor13] = msg.sender
                emit Transfer(0, msg.sender, baseSupply);
                if not ext_code.size(msg.sender):
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _380 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _381 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_381 + 32 len mem[_381]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_380 + 276] = block.hash(block.number - 4)
                        mem[_380 + 308] = tx.origin
                        mem[_380 + 328] = block.hash(block.number - 2)
                        mem[_380 + 360] = block.hash(block.number - 3)
                        mem[_380 + 392] = block.hash(block.number - 1)
                        mem[_380 + 424] = tokenByIndex.length
                        mem[_380 + 456] = block.timestamp
                        mem[_380 + 244] = 212
                        mem[64] = _380 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = baseSupply
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _278 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, baseSupply, 128, 0
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
                    _552 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_552] == Mask(32, 224, mem[_552])
                    if Mask(32, 224, mem[_552]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _648 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _649 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_649 + 32 len mem[_649]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_648 + 276] = block.hash(block.number - 4)
                        mem[_648 + 308] = tx.origin
                        mem[_648 + 328] = block.hash(block.number - 2)
                        mem[_648 + 360] = block.hash(block.number - 3)
                        mem[_648 + 392] = block.hash(block.number - 1)
                        mem[_648 + 424] = tokenByIndex.length
                        mem[_648 + 456] = block.timestamp
                        mem[_648 + 244] = 212
                        mem[64] = _648 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = baseSupply
                stor7[stor13] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = baseSupply
                mem[32] = 2
                ownerOf[stor13] = msg.sender
                emit Transfer(0, msg.sender, baseSupply);
                if not ext_code.size(msg.sender):
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _407 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _408 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_408 + 32 len mem[_408]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_407 + 276] = block.hash(block.number - 4)
                        mem[_407 + 308] = tx.origin
                        mem[_407 + 328] = block.hash(block.number - 2)
                        mem[_407 + 360] = block.hash(block.number - 3)
                        mem[_407 + 392] = block.hash(block.number - 1)
                        mem[_407 + 424] = tokenByIndex.length
                        mem[_407 + 456] = block.timestamp
                        mem[_407 + 244] = 212
                        mem[64] = _407 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = baseSupply
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _278 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, baseSupply, 128, 0
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
                    _554 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_554] == Mask(32, 224, mem[_554])
                    if Mask(32, 224, mem[_554]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if baseSupply == -1:
                        revert with 0, 17
                    baseSupply++
                    mem[0] = baseSupply
                    mem[32] = 21
                    sub_9c428332[stor13] = block.number
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
                    _656 = mem[64]
                    mem[mem[64] + 32] = block.hash(block.number - 4)
                    mem[mem[64] + 64] = tx.origin
                    mem[mem[64] + 84] = block.hash(block.number - 2)
                    mem[mem[64] + 116] = block.hash(block.number - 3)
                    mem[mem[64] + 148] = block.hash(block.number - 1)
                    mem[mem[64] + 180] = tokenByIndex.length
                    mem[mem[64] + 212] = block.timestamp
                    _657 = mem[64]
                    mem[mem[64]] = 212
                    mem[64] = mem[64] + 244
                    if sha3(mem[_657 + 32 len mem[_657]]) % 100 < 6:
                        mem[0] = baseSupply
                        mem[32] = 20
                        stor20[stor13] = 2
                        if sub_93b8ac9a == -1:
                            revert with 0, 17
                        sub_93b8ac9a++
                    else:
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
                        mem[_656 + 276] = block.hash(block.number - 4)
                        mem[_656 + 308] = tx.origin
                        mem[_656 + 328] = block.hash(block.number - 2)
                        mem[_656 + 360] = block.hash(block.number - 3)
                        mem[_656 + 392] = block.hash(block.number - 1)
                        mem[_656 + 424] = tokenByIndex.length
                        mem[_656 + 456] = block.timestamp
                        mem[_656 + 244] = 212
                        mem[64] = _656 + 488
                        mem[0] = baseSupply
                        mem[32] = 20
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor20[stor13] = 0
                        else:
                            stor20[stor13] = 1
                            if sub_49018a27 == -1:
                                revert with 0, 17
                            sub_49018a27++
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor13] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor13]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor13]
            stor9[stor13] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = baseSupply
            mem[32] = 2
            ownerOf[stor13] = msg.sender
            emit Transfer(0, msg.sender, baseSupply);
            if not ext_code.size(msg.sender):
                if baseSupply == -1:
                    revert with 0, 17
                baseSupply++
                mem[0] = baseSupply
                mem[32] = 21
                sub_9c428332[stor13] = block.number
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
                _415 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number - 4)
                mem[mem[64] + 64] = tx.origin
                mem[mem[64] + 84] = block.hash(block.number - 2)
                mem[mem[64] + 116] = block.hash(block.number - 3)
                mem[mem[64] + 148] = block.hash(block.number - 1)
                mem[mem[64] + 180] = tokenByIndex.length
                mem[mem[64] + 212] = block.timestamp
                _416 = mem[64]
                mem[mem[64]] = 212
                mem[64] = mem[64] + 244
                if sha3(mem[_416 + 32 len mem[_416]]) % 100 < 6:
                    mem[0] = baseSupply
                    mem[32] = 20
                    stor20[stor13] = 2
                    if sub_93b8ac9a == -1:
                        revert with 0, 17
                    sub_93b8ac9a++
                else:
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
                    mem[_415 + 276] = block.hash(block.number - 4)
                    mem[_415 + 308] = tx.origin
                    mem[_415 + 328] = block.hash(block.number - 2)
                    mem[_415 + 360] = block.hash(block.number - 3)
                    mem[_415 + 392] = block.hash(block.number - 1)
                    mem[_415 + 424] = tokenByIndex.length
                    mem[_415 + 456] = block.timestamp
                    mem[_415 + 244] = 212
                    mem[64] = _415 + 488
                    mem[0] = baseSupply
                    mem[32] = 20
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor20[stor13] = 0
                    else:
                        stor20[stor13] = 1
                        if sub_49018a27 == -1:
                            revert with 0, 17
                        sub_49018a27++
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = baseSupply
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _278 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, baseSupply, 128, 0
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
                _556 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_556] == Mask(32, 224, mem[_556])
                if Mask(32, 224, mem[_556]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if baseSupply == -1:
                    revert with 0, 17
                baseSupply++
                mem[0] = baseSupply
                mem[32] = 21
                sub_9c428332[stor13] = block.number
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
                _664 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number - 4)
                mem[mem[64] + 64] = tx.origin
                mem[mem[64] + 84] = block.hash(block.number - 2)
                mem[mem[64] + 116] = block.hash(block.number - 3)
                mem[mem[64] + 148] = block.hash(block.number - 1)
                mem[mem[64] + 180] = tokenByIndex.length
                mem[mem[64] + 212] = block.timestamp
                _665 = mem[64]
                mem[mem[64]] = 212
                mem[64] = mem[64] + 244
                if sha3(mem[_665 + 32 len mem[_665]]) % 100 < 6:
                    mem[0] = baseSupply
                    mem[32] = 20
                    stor20[stor13] = 2
                    if sub_93b8ac9a == -1:
                        revert with 0, 17
                    sub_93b8ac9a++
                else:
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
                    mem[_664 + 276] = block.hash(block.number - 4)
                    mem[_664 + 308] = tx.origin
                    mem[_664 + 328] = block.hash(block.number - 2)
                    mem[_664 + 360] = block.hash(block.number - 3)
                    mem[_664 + 392] = block.hash(block.number - 1)
                    mem[_664 + 424] = tokenByIndex.length
                    mem[_664 + 456] = block.timestamp
                    mem[_664 + 244] = 212
                    mem[64] = _664 + 488
                    mem[0] = baseSupply
                    mem[32] = 20
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor20[stor13] = 0
                    else:
                        stor20[stor13] = 1
                        if sub_49018a27 == -1:
                            revert with 0, 17
                        sub_49018a27++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if presaleSupply > !uint16(arg1):
        revert with 0, 17
    presaleSupply += uint16(arg1)
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token ID'
    if 10000 <= arg1:
        mem[96] = 31
        mem[128] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
        if not ownerOf[arg1]:
            revert with 0, 'Invalid token ID'
        if 10000 <= arg1:
            mem[0] = arg1
            mem[32] = 20
            if not stor20[arg1]:
                mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                mem[287] = 0x6c6576656c2f0000000000000000000000000000000000000000000000000000
                mem[293] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[294] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[299] = 32
                mem[331] = mem[224]
                mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 363] = 0
                return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
            s = 0
            idx = stor20[arg1]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[160] = s
            mem[64] = ceil32(s) + 192
            if not s:
                t = s
                idx = stor20[arg1]
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3016 = mem[64]
                _3060 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 32] = 0x6c6576656c2f0000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _5128 = mem[160]
                    mem[_3016 + _3060 + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_5128 + _3016 + _3060 + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_5128) <= _5128:
                        _6704 = mem[64]
                        mem[64] = _5128 + _3016 + _3060 + 43
                        mem[_5128 + _3016 + _3060 + 43] = 32
                        _7056 = mem[_6704]
                        mem[_5128 + _3016 + _3060 + 75] = mem[_6704]
                        mem[_5128 + _3016 + _3060 + 107 len ceil32(_7056)] = mem[_6704 + 32 len ceil32(_7056)]
                        if ceil32(_7056) > _7056:
                            mem[_7056 + _5128 + _3016 + _3060 + 107] = 0
                        return 32, mem[_5128 + _3016 + _3060 + 75 len ceil32(_7056) + 32]
                    _6705 = mem[64]
                    mem[64] = _5128 + _3016 + _3060 + 43
                    mem[_5128 + _3016 + _3060 + 43] = 32
                    _7057 = mem[_6705]
                    mem[_5128 + _3016 + _3060 + 75] = mem[_6705]
                    mem[_5128 + _3016 + _3060 + 107 len ceil32(_7057)] = mem[_6705 + 32 len ceil32(_7057)]
                    if ceil32(_7057) > _7057:
                        mem[_7057 + _5128 + _3016 + _3060 + 107] = 0
                    return 32, mem[_5128 + _3016 + _3060 + 75 len ceil32(_7057) + 32]
                _5129 = mem[160]
                mem[_3016 + _3060 + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_5129 + _3016 + _3060 + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5129) <= _5129:
                    _6706 = mem[64]
                    mem[64] = _5129 + _3016 + _3060 + 43
                    mem[_5129 + _3016 + _3060 + 43] = 32
                    _7058 = mem[_6706]
                    mem[_5129 + _3016 + _3060 + 75] = mem[_6706]
                    mem[_5129 + _3016 + _3060 + 107 len ceil32(_7058)] = mem[_6706 + 32 len ceil32(_7058)]
                    if ceil32(_7058) > _7058:
                        mem[_7058 + _5129 + _3016 + _3060 + 107] = 0
                    return 32, mem[_5129 + _3016 + _3060 + 75 len ceil32(_7058) + 32]
                _6707 = mem[64]
                mem[64] = _5129 + _3016 + _3060 + 43
                mem[_5129 + _3016 + _3060 + 43] = 32
                _7059 = mem[_6707]
                mem[_5129 + _3016 + _3060 + 75] = mem[_6707]
                mem[_5129 + _3016 + _3060 + 107 len ceil32(_7059)] = mem[_6707 + 32 len ceil32(_7059)]
                if ceil32(_7059) > _7059:
                    mem[_7059 + _5129 + _3016 + _3060 + 107] = 0
                return 32, mem[_5129 + _3016 + _3060 + 75 len ceil32(_7059) + 32]
            mem[192 len s] = call.data[calldata.size len s]
            t = s
            idx = stor20[arg1]
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3017 = mem[64]
            _3061 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 32] = 0x6c6576656c2f0000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _5130 = mem[160]
                mem[_3017 + _3061 + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_5130 + _3017 + _3061 + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5130) <= _5130:
                    _6708 = mem[64]
                    mem[64] = _5130 + _3017 + _3061 + 43
                    mem[_5130 + _3017 + _3061 + 43] = 32
                    _7060 = mem[_6708]
                    mem[_5130 + _3017 + _3061 + 75] = mem[_6708]
                    mem[_5130 + _3017 + _3061 + 107 len ceil32(_7060)] = mem[_6708 + 32 len ceil32(_7060)]
                    if ceil32(_7060) > _7060:
                        mem[_7060 + _5130 + _3017 + _3061 + 107] = 0
                    return 32, mem[_5130 + _3017 + _3061 + 75 len ceil32(_7060) + 32]
                _6709 = mem[64]
                mem[64] = _5130 + _3017 + _3061 + 43
                mem[_5130 + _3017 + _3061 + 43] = 32
                _7061 = mem[_6709]
                mem[_5130 + _3017 + _3061 + 75] = mem[_6709]
                mem[_5130 + _3017 + _3061 + 107 len ceil32(_7061)] = mem[_6709 + 32 len ceil32(_7061)]
                if ceil32(_7061) > _7061:
                    mem[_7061 + _5130 + _3017 + _3061 + 107] = 0
                return 32, mem[_5130 + _3017 + _3061 + 75 len ceil32(_7061) + 32]
            _5131 = mem[160]
            mem[_3017 + _3061 + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_5131 + _3017 + _3061 + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_5131) <= _5131:
                _6710 = mem[64]
                mem[64] = _5131 + _3017 + _3061 + 43
                mem[_5131 + _3017 + _3061 + 43] = 32
                _7062 = mem[_6710]
                mem[_5131 + _3017 + _3061 + 75] = mem[_6710]
                mem[_5131 + _3017 + _3061 + 107 len ceil32(_7062)] = mem[_6710 + 32 len ceil32(_7062)]
                if ceil32(_7062) > _7062:
                    mem[_7062 + _5131 + _3017 + _3061 + 107] = 0
                return 32, mem[_5131 + _3017 + _3061 + 75 len ceil32(_7062) + 32]
            _6711 = mem[64]
            mem[64] = _5131 + _3017 + _3061 + 43
            mem[_5131 + _3017 + _3061 + 43] = 32
            _7063 = mem[_6711]
            mem[_5131 + _3017 + _3061 + 75] = mem[_6711]
            mem[_5131 + _3017 + _3061 + 107 len ceil32(_7063)] = mem[_6711 + 32 len ceil32(_7063)]
            if ceil32(_7063) > _7063:
                mem[_7063 + _5131 + _3017 + _3061 + 107] = 0
            return 32, mem[_5131 + _3017 + _3061 + 75 len ceil32(_7063) + 32]
        if block.number < 1:
            revert with 0, 17
        if sub_9c428332[arg1] >= block.number - 1:
            revert with 0, 'Token unrevealed'
        mem[0] = arg1
        mem[32] = 20
        if not stor20[arg1]:
            mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
            mem[287] = 0x6c6576656c2f0000000000000000000000000000000000000000000000000000
            mem[293] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[294] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[299] = 32
            mem[331] = mem[224]
            mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + 363] = 0
            return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
        s = 0
        idx = stor20[arg1]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[160] = s
        mem[64] = ceil32(s) + 192
        if not s:
            t = s
            idx = stor20[arg1]
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3018 = mem[64]
            _3062 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 32] = 0x6c6576656c2f0000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _5132 = mem[160]
                mem[_3018 + _3062 + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_5132 + _3018 + _3062 + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5132) <= _5132:
                    _6712 = mem[64]
                    mem[64] = _5132 + _3018 + _3062 + 43
                    mem[_5132 + _3018 + _3062 + 43] = 32
                    _7064 = mem[_6712]
                    mem[_5132 + _3018 + _3062 + 75] = mem[_6712]
                    mem[_5132 + _3018 + _3062 + 107 len ceil32(_7064)] = mem[_6712 + 32 len ceil32(_7064)]
                    if ceil32(_7064) > _7064:
                        mem[_7064 + _5132 + _3018 + _3062 + 107] = 0
                    return 32, mem[_5132 + _3018 + _3062 + 75 len ceil32(_7064) + 32]
                _6713 = mem[64]
                mem[64] = _5132 + _3018 + _3062 + 43
                mem[_5132 + _3018 + _3062 + 43] = 32
                _7065 = mem[_6713]
                mem[_5132 + _3018 + _3062 + 75] = mem[_6713]
                mem[_5132 + _3018 + _3062 + 107 len ceil32(_7065)] = mem[_6713 + 32 len ceil32(_7065)]
                if ceil32(_7065) > _7065:
                    mem[_7065 + _5132 + _3018 + _3062 + 107] = 0
                return 32, mem[_5132 + _3018 + _3062 + 75 len ceil32(_7065) + 32]
            _5133 = mem[160]
            mem[_3018 + _3062 + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_5133 + _3018 + _3062 + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_5133) <= _5133:
                _6714 = mem[64]
                mem[64] = _5133 + _3018 + _3062 + 43
                mem[_5133 + _3018 + _3062 + 43] = 32
                _7066 = mem[_6714]
                mem[_5133 + _3018 + _3062 + 75] = mem[_6714]
                mem[_5133 + _3018 + _3062 + 107 len ceil32(_7066)] = mem[_6714 + 32 len ceil32(_7066)]
                if ceil32(_7066) > _7066:
                    mem[_7066 + _5133 + _3018 + _3062 + 107] = 0
                return 32, mem[_5133 + _3018 + _3062 + 75 len ceil32(_7066) + 32]
            _6715 = mem[64]
            mem[64] = _5133 + _3018 + _3062 + 43
            mem[_5133 + _3018 + _3062 + 43] = 32
            _7067 = mem[_6715]
            mem[_5133 + _3018 + _3062 + 75] = mem[_6715]
            mem[_5133 + _3018 + _3062 + 107 len ceil32(_7067)] = mem[_6715 + 32 len ceil32(_7067)]
            if ceil32(_7067) > _7067:
                mem[_7067 + _5133 + _3018 + _3062 + 107] = 0
            return 32, mem[_5133 + _3018 + _3062 + 75 len ceil32(_7067) + 32]
        mem[192 len s] = call.data[calldata.size len s]
        t = s
        idx = stor20[arg1]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[160]:
                revert with 0, 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _3019 = mem[64]
        _3063 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = 0x6c6576656c2f0000000000000000000000000000000000000000000000000000
        if ceil32(mem[96]) <= mem[96]:
            _5134 = mem[160]
            mem[_3019 + _3063 + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_5134 + _3019 + _3063 + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_5134) <= _5134:
                _6716 = mem[64]
                mem[64] = _5134 + _3019 + _3063 + 43
                mem[_5134 + _3019 + _3063 + 43] = 32
                _7068 = mem[_6716]
                mem[_5134 + _3019 + _3063 + 75] = mem[_6716]
                mem[_5134 + _3019 + _3063 + 107 len ceil32(_7068)] = mem[_6716 + 32 len ceil32(_7068)]
                if ceil32(_7068) > _7068:
                    mem[_7068 + _5134 + _3019 + _3063 + 107] = 0
                return 32, mem[_5134 + _3019 + _3063 + 75 len ceil32(_7068) + 32]
            _6717 = mem[64]
            mem[64] = _5134 + _3019 + _3063 + 43
            mem[_5134 + _3019 + _3063 + 43] = 32
            _7069 = mem[_6717]
            mem[_5134 + _3019 + _3063 + 75] = mem[_6717]
            mem[_5134 + _3019 + _3063 + 107 len ceil32(_7069)] = mem[_6717 + 32 len ceil32(_7069)]
            if ceil32(_7069) > _7069:
                mem[_7069 + _5134 + _3019 + _3063 + 107] = 0
            return 32, mem[_5134 + _3019 + _3063 + 75 len ceil32(_7069) + 32]
        _5135 = mem[160]
        mem[_3019 + _3063 + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[_5135 + _3019 + _3063 + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_5135) <= _5135:
            _6718 = mem[64]
            mem[64] = _5135 + _3019 + _3063 + 43
            mem[_5135 + _3019 + _3063 + 43] = 32
            _7070 = mem[_6718]
            mem[_5135 + _3019 + _3063 + 75] = mem[_6718]
            mem[_5135 + _3019 + _3063 + 107 len ceil32(_7070)] = mem[_6718 + 32 len ceil32(_7070)]
            if ceil32(_7070) > _7070:
                mem[_7070 + _5135 + _3019 + _3063 + 107] = 0
            return 32, mem[_5135 + _3019 + _3063 + 75 len ceil32(_7070) + 32]
        _6719 = mem[64]
        mem[64] = _5135 + _3019 + _3063 + 43
        mem[_5135 + _3019 + _3063 + 43] = 32
        _7071 = mem[_6719]
        mem[_5135 + _3019 + _3063 + 75] = mem[_6719]
        mem[_5135 + _3019 + _3063 + 107 len ceil32(_7071)] = mem[_6719 + 32 len ceil32(_7071)]
        if ceil32(_7071) > _7071:
            mem[_7071 + _5135 + _3019 + _3063 + 107] = 0
        return 32, mem[_5135 + _3019 + _3063 + 75 len ceil32(_7071) + 32]
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token ID'
    if 10000 <= arg1:
        if not ownerOf[arg1]:
            revert with 0, 'Invalid token ID'
        if 10000 <= arg1:
            mem[32] = 20
            if 2 == stor20[arg1]:
                mem[96] = 31
                mem[0] = arg1
                mem[128] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                if not arg1:
                    mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                    mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[288] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                    mem[299] = 32
                    mem[331] = mem[224]
                    mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                    if ceil32(mem[224]) > mem[224]:
                        mem[mem[224] + 363] = 0
                    return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
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
                mem[160] = s
                mem[64] = ceil32(s) + 192
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[160]:
                            revert with 0, 50
                        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _2984 = mem[64]
                    _3028 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        _5064 = mem[160]
                        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        mem[_2984 + _3028 + _5064 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                        if ceil32(_5064) <= _5064:
                            _6576 = mem[64]
                            mem[64] = _2984 + _3028 + _5064 + 43
                            mem[_2984 + _3028 + _5064 + 43] = 32
                            _6928 = mem[_6576]
                            mem[_2984 + _3028 + _5064 + 75] = mem[_6576]
                            mem[_2984 + _3028 + _5064 + 107 len ceil32(_6928)] = mem[_6576 + 32 len ceil32(_6928)]
                            if ceil32(_6928) > _6928:
                                mem[_6928 + _2984 + _3028 + _5064 + 107] = 0
                            return 32, mem[_2984 + _3028 + _5064 + 75 len ceil32(_6928) + 32]
                        _6577 = mem[64]
                        mem[64] = _2984 + _3028 + _5064 + 43
                        mem[_2984 + _3028 + _5064 + 43] = 32
                        _6929 = mem[_6577]
                        mem[_2984 + _3028 + _5064 + 75] = mem[_6577]
                        mem[_2984 + _3028 + _5064 + 107 len ceil32(_6929)] = mem[_6577 + 32 len ceil32(_6929)]
                        if ceil32(_6929) > _6929:
                            mem[_6929 + _2984 + _3028 + _5064 + 107] = 0
                        return 32, mem[_2984 + _3028 + _5064 + 75 len ceil32(_6929) + 32]
                    mem[mem[96] + mem[64] + 32] = 0
                    _5065 = mem[160]
                    mem[_2984 + _3028 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2984 + _3028 + _5065 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                    if ceil32(_5065) <= _5065:
                        _6578 = mem[64]
                        mem[64] = _2984 + _3028 + _5065 + 43
                        mem[_2984 + _3028 + _5065 + 43] = 32
                        _6930 = mem[_6578]
                        mem[_2984 + _3028 + _5065 + 75] = mem[_6578]
                        mem[_2984 + _3028 + _5065 + 107 len ceil32(_6930)] = mem[_6578 + 32 len ceil32(_6930)]
                        if ceil32(_6930) > _6930:
                            mem[_6930 + _2984 + _3028 + _5065 + 107] = 0
                        return 32, mem[_2984 + _3028 + _5065 + 75 len ceil32(_6930) + 32]
                    _6579 = mem[64]
                    mem[64] = _2984 + _3028 + _5065 + 43
                    mem[_2984 + _3028 + _5065 + 43] = 32
                    _6931 = mem[_6579]
                    mem[_2984 + _3028 + _5065 + 75] = mem[_6579]
                    mem[_2984 + _3028 + _5065 + 107 len ceil32(_6931)] = mem[_6579 + 32 len ceil32(_6931)]
                    if ceil32(_6931) > _6931:
                        mem[_6931 + _2984 + _3028 + _5065 + 107] = 0
                    return 32, mem[_2984 + _3028 + _5065 + 75 len ceil32(_6931) + 32]
                mem[192 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _2985 = mem[64]
                _3029 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _5066 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2985 + _3029 + _5066 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                    if ceil32(_5066) <= _5066:
                        _6580 = mem[64]
                        mem[64] = _2985 + _3029 + _5066 + 43
                        mem[_2985 + _3029 + _5066 + 43] = 32
                        _6932 = mem[_6580]
                        mem[_2985 + _3029 + _5066 + 75] = mem[_6580]
                        mem[_2985 + _3029 + _5066 + 107 len ceil32(_6932)] = mem[_6580 + 32 len ceil32(_6932)]
                        if ceil32(_6932) > _6932:
                            mem[_6932 + _2985 + _3029 + _5066 + 107] = 0
                        return 32, mem[_2985 + _3029 + _5066 + 75 len ceil32(_6932) + 32]
                    _6581 = mem[64]
                    mem[64] = _2985 + _3029 + _5066 + 43
                    mem[_2985 + _3029 + _5066 + 43] = 32
                    _6933 = mem[_6581]
                    mem[_2985 + _3029 + _5066 + 75] = mem[_6581]
                    mem[_2985 + _3029 + _5066 + 107 len ceil32(_6933)] = mem[_6581 + 32 len ceil32(_6933)]
                    if ceil32(_6933) > _6933:
                        mem[_6933 + _2985 + _3029 + _5066 + 107] = 0
                    return 32, mem[_2985 + _3029 + _5066 + 75 len ceil32(_6933) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5067 = mem[160]
                mem[_2985 + _3029 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2985 + _3029 + _5067 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5067) <= _5067:
                    _6582 = mem[64]
                    mem[64] = _2985 + _3029 + _5067 + 43
                    mem[_2985 + _3029 + _5067 + 43] = 32
                    _6934 = mem[_6582]
                    mem[_2985 + _3029 + _5067 + 75] = mem[_6582]
                    mem[_2985 + _3029 + _5067 + 107 len ceil32(_6934)] = mem[_6582 + 32 len ceil32(_6934)]
                    if ceil32(_6934) > _6934:
                        mem[_6934 + _2985 + _3029 + _5067 + 107] = 0
                    return 32, mem[_2985 + _3029 + _5067 + 75 len ceil32(_6934) + 32]
                _6583 = mem[64]
                mem[64] = _2985 + _3029 + _5067 + 43
                mem[_2985 + _3029 + _5067 + 43] = 32
                _6935 = mem[_6583]
                mem[_2985 + _3029 + _5067 + 75] = mem[_6583]
                mem[_2985 + _3029 + _5067 + 107 len ceil32(_6935)] = mem[_6583 + 32 len ceil32(_6935)]
                if ceil32(_6935) > _6935:
                    mem[_6935 + _2985 + _3029 + _5067 + 107] = 0
                return 32, mem[_2985 + _3029 + _5067 + 75 len ceil32(_6935) + 32]
            if not ownerOf[arg1]:
                revert with 0, 'Invalid token ID'
            if 10000 <= arg1:
                mem[32] = 20
                mem[96] = 31
                mem[0] = arg1
                mem[128] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                if stor20[arg1] != 1:
                    if not arg1:
                        mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                        mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[288] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        mem[293] = 32
                        mem[325] = mem[224]
                        mem[357 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                        if ceil32(mem[224]) > mem[224]:
                            mem[mem[224] + 357] = 0
                        return Array(len=mem[224], data=mem[357 len ceil32(mem[224])])
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
                    mem[160] = s
                    mem[64] = ceil32(s) + 192
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 0, 17
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if t - 1 >= mem[160]:
                                revert with 0, 50
                            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        _2976 = mem[64]
                        _3020 = mem[96]
                        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            _5048 = mem[160]
                            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                            mem[_2976 + _3020 + _5048 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                            if ceil32(_5048) <= _5048:
                                _6544 = mem[64]
                                mem[64] = _2976 + _3020 + _5048 + 37
                                mem[_2976 + _3020 + _5048 + 37] = 32
                                _6896 = mem[_6544]
                                mem[_2976 + _3020 + _5048 + 69] = mem[_6544]
                                mem[_2976 + _3020 + _5048 + 101 len ceil32(_6896)] = mem[_6544 + 32 len ceil32(_6896)]
                                if ceil32(_6896) > _6896:
                                    mem[_6896 + _2976 + _3020 + _5048 + 101] = 0
                                return 32, mem[_2976 + _3020 + _5048 + 69 len ceil32(_6896) + 32]
                            _6545 = mem[64]
                            mem[64] = _2976 + _3020 + _5048 + 37
                            mem[_2976 + _3020 + _5048 + 37] = 32
                            _6897 = mem[_6545]
                            mem[_2976 + _3020 + _5048 + 69] = mem[_6545]
                            mem[_2976 + _3020 + _5048 + 101 len ceil32(_6897)] = mem[_6545 + 32 len ceil32(_6897)]
                            if ceil32(_6897) > _6897:
                                mem[_6897 + _2976 + _3020 + _5048 + 101] = 0
                            return 32, mem[_2976 + _3020 + _5048 + 69 len ceil32(_6897) + 32]
                        mem[mem[96] + mem[64] + 32] = 0
                        _5049 = mem[160]
                        mem[_2976 + _3020 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        mem[_2976 + _3020 + _5049 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        if ceil32(_5049) <= _5049:
                            _6546 = mem[64]
                            mem[64] = _2976 + _3020 + _5049 + 37
                            mem[_2976 + _3020 + _5049 + 37] = 32
                            _6898 = mem[_6546]
                            mem[_2976 + _3020 + _5049 + 69] = mem[_6546]
                            mem[_2976 + _3020 + _5049 + 101 len ceil32(_6898)] = mem[_6546 + 32 len ceil32(_6898)]
                            if ceil32(_6898) > _6898:
                                mem[_6898 + _2976 + _3020 + _5049 + 101] = 0
                            return 32, mem[_2976 + _3020 + _5049 + 69 len ceil32(_6898) + 32]
                        _6547 = mem[64]
                        mem[64] = _2976 + _3020 + _5049 + 37
                        mem[_2976 + _3020 + _5049 + 37] = 32
                        _6899 = mem[_6547]
                        mem[_2976 + _3020 + _5049 + 69] = mem[_6547]
                        mem[_2976 + _3020 + _5049 + 101 len ceil32(_6899)] = mem[_6547 + 32 len ceil32(_6899)]
                        if ceil32(_6899) > _6899:
                            mem[_6899 + _2976 + _3020 + _5049 + 101] = 0
                        return 32, mem[_2976 + _3020 + _5049 + 69 len ceil32(_6899) + 32]
                    mem[192 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[160]:
                            revert with 0, 50
                        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _2977 = mem[64]
                    _3021 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        _5050 = mem[160]
                        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        mem[_2977 + _3021 + _5050 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        if ceil32(_5050) <= _5050:
                            _6548 = mem[64]
                            mem[64] = _2977 + _3021 + _5050 + 37
                            mem[_2977 + _3021 + _5050 + 37] = 32
                            _6900 = mem[_6548]
                            mem[_2977 + _3021 + _5050 + 69] = mem[_6548]
                            mem[_2977 + _3021 + _5050 + 101 len ceil32(_6900)] = mem[_6548 + 32 len ceil32(_6900)]
                            if ceil32(_6900) > _6900:
                                mem[_6900 + _2977 + _3021 + _5050 + 101] = 0
                            return 32, mem[_2977 + _3021 + _5050 + 69 len ceil32(_6900) + 32]
                        _6549 = mem[64]
                        mem[64] = _2977 + _3021 + _5050 + 37
                        mem[_2977 + _3021 + _5050 + 37] = 32
                        _6901 = mem[_6549]
                        mem[_2977 + _3021 + _5050 + 69] = mem[_6549]
                        mem[_2977 + _3021 + _5050 + 101 len ceil32(_6901)] = mem[_6549 + 32 len ceil32(_6901)]
                        if ceil32(_6901) > _6901:
                            mem[_6901 + _2977 + _3021 + _5050 + 101] = 0
                        return 32, mem[_2977 + _3021 + _5050 + 69 len ceil32(_6901) + 32]
                    mem[mem[96] + mem[64] + 32] = 0
                    _5051 = mem[160]
                    mem[_2977 + _3021 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2977 + _3021 + _5051 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_5051) <= _5051:
                        _6550 = mem[64]
                        mem[64] = _2977 + _3021 + _5051 + 37
                        mem[_2977 + _3021 + _5051 + 37] = 32
                        _6902 = mem[_6550]
                        mem[_2977 + _3021 + _5051 + 69] = mem[_6550]
                        mem[_2977 + _3021 + _5051 + 101 len ceil32(_6902)] = mem[_6550 + 32 len ceil32(_6902)]
                        if ceil32(_6902) > _6902:
                            mem[_6902 + _2977 + _3021 + _5051 + 101] = 0
                        return 32, mem[_2977 + _3021 + _5051 + 69 len ceil32(_6902) + 32]
                    _6551 = mem[64]
                    mem[64] = _2977 + _3021 + _5051 + 37
                    mem[_2977 + _3021 + _5051 + 37] = 32
                    _6903 = mem[_6551]
                    mem[_2977 + _3021 + _5051 + 69] = mem[_6551]
                    mem[_2977 + _3021 + _5051 + 101 len ceil32(_6903)] = mem[_6551 + 32 len ceil32(_6903)]
                    if ceil32(_6903) > _6903:
                        mem[_6903 + _2977 + _3021 + _5051 + 101] = 0
                    return 32, mem[_2977 + _3021 + _5051 + 69 len ceil32(_6903) + 32]
                if not arg1:
                    mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                    mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[288] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                    mem[299] = 32
                    mem[331] = mem[224]
                    mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                    if ceil32(mem[224]) > mem[224]:
                        mem[mem[224] + 363] = 0
                    return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
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
                mem[160] = s
                mem[64] = ceil32(s) + 192
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[160]:
                            revert with 0, 50
                        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _2978 = mem[64]
                    _3022 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        _5052 = mem[160]
                        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        mem[_2978 + _3022 + _5052 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                        if ceil32(_5052) <= _5052:
                            _6552 = mem[64]
                            mem[64] = _2978 + _3022 + _5052 + 43
                            mem[_2978 + _3022 + _5052 + 43] = 32
                            _6904 = mem[_6552]
                            mem[_2978 + _3022 + _5052 + 75] = mem[_6552]
                            mem[_2978 + _3022 + _5052 + 107 len ceil32(_6904)] = mem[_6552 + 32 len ceil32(_6904)]
                            if ceil32(_6904) > _6904:
                                mem[_6904 + _2978 + _3022 + _5052 + 107] = 0
                            return 32, mem[_2978 + _3022 + _5052 + 75 len ceil32(_6904) + 32]
                        _6553 = mem[64]
                        mem[64] = _2978 + _3022 + _5052 + 43
                        mem[_2978 + _3022 + _5052 + 43] = 32
                        _6905 = mem[_6553]
                        mem[_2978 + _3022 + _5052 + 75] = mem[_6553]
                        mem[_2978 + _3022 + _5052 + 107 len ceil32(_6905)] = mem[_6553 + 32 len ceil32(_6905)]
                        if ceil32(_6905) > _6905:
                            mem[_6905 + _2978 + _3022 + _5052 + 107] = 0
                        return 32, mem[_2978 + _3022 + _5052 + 75 len ceil32(_6905) + 32]
                    mem[mem[96] + mem[64] + 32] = 0
                    _5053 = mem[160]
                    mem[_2978 + _3022 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2978 + _3022 + _5053 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                    if ceil32(_5053) <= _5053:
                        _6554 = mem[64]
                        mem[64] = _2978 + _3022 + _5053 + 43
                        mem[_2978 + _3022 + _5053 + 43] = 32
                        _6906 = mem[_6554]
                        mem[_2978 + _3022 + _5053 + 75] = mem[_6554]
                        mem[_2978 + _3022 + _5053 + 107 len ceil32(_6906)] = mem[_6554 + 32 len ceil32(_6906)]
                        if ceil32(_6906) > _6906:
                            mem[_6906 + _2978 + _3022 + _5053 + 107] = 0
                        return 32, mem[_2978 + _3022 + _5053 + 75 len ceil32(_6906) + 32]
                    _6555 = mem[64]
                    mem[64] = _2978 + _3022 + _5053 + 43
                    mem[_2978 + _3022 + _5053 + 43] = 32
                    _6907 = mem[_6555]
                    mem[_2978 + _3022 + _5053 + 75] = mem[_6555]
                    mem[_2978 + _3022 + _5053 + 107 len ceil32(_6907)] = mem[_6555 + 32 len ceil32(_6907)]
                    if ceil32(_6907) > _6907:
                        mem[_6907 + _2978 + _3022 + _5053 + 107] = 0
                    return 32, mem[_2978 + _3022 + _5053 + 75 len ceil32(_6907) + 32]
                mem[192 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _2979 = mem[64]
                _3023 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _5054 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2979 + _3023 + _5054 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                    if ceil32(_5054) <= _5054:
                        _6556 = mem[64]
                        mem[64] = _2979 + _3023 + _5054 + 43
                        mem[_2979 + _3023 + _5054 + 43] = 32
                        _6908 = mem[_6556]
                        mem[_2979 + _3023 + _5054 + 75] = mem[_6556]
                        mem[_2979 + _3023 + _5054 + 107 len ceil32(_6908)] = mem[_6556 + 32 len ceil32(_6908)]
                        if ceil32(_6908) > _6908:
                            mem[_6908 + _2979 + _3023 + _5054 + 107] = 0
                        return 32, mem[_2979 + _3023 + _5054 + 75 len ceil32(_6908) + 32]
                    _6557 = mem[64]
                    mem[64] = _2979 + _3023 + _5054 + 43
                    mem[_2979 + _3023 + _5054 + 43] = 32
                    _6909 = mem[_6557]
                    mem[_2979 + _3023 + _5054 + 75] = mem[_6557]
                    mem[_2979 + _3023 + _5054 + 107 len ceil32(_6909)] = mem[_6557 + 32 len ceil32(_6909)]
                    if ceil32(_6909) > _6909:
                        mem[_6909 + _2979 + _3023 + _5054 + 107] = 0
                    return 32, mem[_2979 + _3023 + _5054 + 75 len ceil32(_6909) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5055 = mem[160]
                mem[_2979 + _3023 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2979 + _3023 + _5055 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5055) <= _5055:
                    _6558 = mem[64]
                    mem[64] = _2979 + _3023 + _5055 + 43
                    mem[_2979 + _3023 + _5055 + 43] = 32
                    _6910 = mem[_6558]
                    mem[_2979 + _3023 + _5055 + 75] = mem[_6558]
                    mem[_2979 + _3023 + _5055 + 107 len ceil32(_6910)] = mem[_6558 + 32 len ceil32(_6910)]
                    if ceil32(_6910) > _6910:
                        mem[_6910 + _2979 + _3023 + _5055 + 107] = 0
                    return 32, mem[_2979 + _3023 + _5055 + 75 len ceil32(_6910) + 32]
                _6559 = mem[64]
                mem[64] = _2979 + _3023 + _5055 + 43
                mem[_2979 + _3023 + _5055 + 43] = 32
                _6911 = mem[_6559]
                mem[_2979 + _3023 + _5055 + 75] = mem[_6559]
                mem[_2979 + _3023 + _5055 + 107 len ceil32(_6911)] = mem[_6559 + 32 len ceil32(_6911)]
                if ceil32(_6911) > _6911:
                    mem[_6911 + _2979 + _3023 + _5055 + 107] = 0
                return 32, mem[_2979 + _3023 + _5055 + 75 len ceil32(_6911) + 32]
            if block.number < 1:
                revert with 0, 17
            if sub_9c428332[arg1] >= block.number - 1:
                revert with 0, 'Token unrevealed'
            mem[32] = 20
            mem[96] = 31
            mem[0] = arg1
            mem[128] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
            if stor20[arg1] != 1:
                if not arg1:
                    mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                    mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[288] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[293] = 32
                    mem[325] = mem[224]
                    mem[357 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                    if ceil32(mem[224]) > mem[224]:
                        mem[mem[224] + 357] = 0
                    return Array(len=mem[224], data=mem[357 len ceil32(mem[224])])
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
                mem[160] = s
                mem[64] = ceil32(s) + 192
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[160]:
                            revert with 0, 50
                        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _2980 = mem[64]
                    _3024 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        _5056 = mem[160]
                        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        mem[_2980 + _3024 + _5056 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        if ceil32(_5056) <= _5056:
                            _6560 = mem[64]
                            mem[64] = _2980 + _3024 + _5056 + 37
                            mem[_2980 + _3024 + _5056 + 37] = 32
                            _6912 = mem[_6560]
                            mem[_2980 + _3024 + _5056 + 69] = mem[_6560]
                            mem[_2980 + _3024 + _5056 + 101 len ceil32(_6912)] = mem[_6560 + 32 len ceil32(_6912)]
                            if ceil32(_6912) > _6912:
                                mem[_6912 + _2980 + _3024 + _5056 + 101] = 0
                            return 32, mem[_2980 + _3024 + _5056 + 69 len ceil32(_6912) + 32]
                        _6561 = mem[64]
                        mem[64] = _2980 + _3024 + _5056 + 37
                        mem[_2980 + _3024 + _5056 + 37] = 32
                        _6913 = mem[_6561]
                        mem[_2980 + _3024 + _5056 + 69] = mem[_6561]
                        mem[_2980 + _3024 + _5056 + 101 len ceil32(_6913)] = mem[_6561 + 32 len ceil32(_6913)]
                        if ceil32(_6913) > _6913:
                            mem[_6913 + _2980 + _3024 + _5056 + 101] = 0
                        return 32, mem[_2980 + _3024 + _5056 + 69 len ceil32(_6913) + 32]
                    mem[mem[96] + mem[64] + 32] = 0
                    _5057 = mem[160]
                    mem[_2980 + _3024 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2980 + _3024 + _5057 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_5057) <= _5057:
                        _6562 = mem[64]
                        mem[64] = _2980 + _3024 + _5057 + 37
                        mem[_2980 + _3024 + _5057 + 37] = 32
                        _6914 = mem[_6562]
                        mem[_2980 + _3024 + _5057 + 69] = mem[_6562]
                        mem[_2980 + _3024 + _5057 + 101 len ceil32(_6914)] = mem[_6562 + 32 len ceil32(_6914)]
                        if ceil32(_6914) > _6914:
                            mem[_6914 + _2980 + _3024 + _5057 + 101] = 0
                        return 32, mem[_2980 + _3024 + _5057 + 69 len ceil32(_6914) + 32]
                    _6563 = mem[64]
                    mem[64] = _2980 + _3024 + _5057 + 37
                    mem[_2980 + _3024 + _5057 + 37] = 32
                    _6915 = mem[_6563]
                    mem[_2980 + _3024 + _5057 + 69] = mem[_6563]
                    mem[_2980 + _3024 + _5057 + 101 len ceil32(_6915)] = mem[_6563 + 32 len ceil32(_6915)]
                    if ceil32(_6915) > _6915:
                        mem[_6915 + _2980 + _3024 + _5057 + 101] = 0
                    return 32, mem[_2980 + _3024 + _5057 + 69 len ceil32(_6915) + 32]
                mem[192 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _2981 = mem[64]
                _3025 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _5058 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2981 + _3025 + _5058 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_5058) <= _5058:
                        _6564 = mem[64]
                        mem[64] = _2981 + _3025 + _5058 + 37
                        mem[_2981 + _3025 + _5058 + 37] = 32
                        _6916 = mem[_6564]
                        mem[_2981 + _3025 + _5058 + 69] = mem[_6564]
                        mem[_2981 + _3025 + _5058 + 101 len ceil32(_6916)] = mem[_6564 + 32 len ceil32(_6916)]
                        if ceil32(_6916) > _6916:
                            mem[_6916 + _2981 + _3025 + _5058 + 101] = 0
                        return 32, mem[_2981 + _3025 + _5058 + 69 len ceil32(_6916) + 32]
                    _6565 = mem[64]
                    mem[64] = _2981 + _3025 + _5058 + 37
                    mem[_2981 + _3025 + _5058 + 37] = 32
                    _6917 = mem[_6565]
                    mem[_2981 + _3025 + _5058 + 69] = mem[_6565]
                    mem[_2981 + _3025 + _5058 + 101 len ceil32(_6917)] = mem[_6565 + 32 len ceil32(_6917)]
                    if ceil32(_6917) > _6917:
                        mem[_6917 + _2981 + _3025 + _5058 + 101] = 0
                    return 32, mem[_2981 + _3025 + _5058 + 69 len ceil32(_6917) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5059 = mem[160]
                mem[_2981 + _3025 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2981 + _3025 + _5059 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5059) <= _5059:
                    _6566 = mem[64]
                    mem[64] = _2981 + _3025 + _5059 + 37
                    mem[_2981 + _3025 + _5059 + 37] = 32
                    _6918 = mem[_6566]
                    mem[_2981 + _3025 + _5059 + 69] = mem[_6566]
                    mem[_2981 + _3025 + _5059 + 101 len ceil32(_6918)] = mem[_6566 + 32 len ceil32(_6918)]
                    if ceil32(_6918) > _6918:
                        mem[_6918 + _2981 + _3025 + _5059 + 101] = 0
                    return 32, mem[_2981 + _3025 + _5059 + 69 len ceil32(_6918) + 32]
                _6567 = mem[64]
                mem[64] = _2981 + _3025 + _5059 + 37
                mem[_2981 + _3025 + _5059 + 37] = 32
                _6919 = mem[_6567]
                mem[_2981 + _3025 + _5059 + 69] = mem[_6567]
                mem[_2981 + _3025 + _5059 + 101 len ceil32(_6919)] = mem[_6567 + 32 len ceil32(_6919)]
                if ceil32(_6919) > _6919:
                    mem[_6919 + _2981 + _3025 + _5059 + 101] = 0
                return 32, mem[_2981 + _3025 + _5059 + 69 len ceil32(_6919) + 32]
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[288] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                mem[299] = 32
                mem[331] = mem[224]
                mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 363] = 0
                return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
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
            mem[160] = s
            mem[64] = ceil32(s) + 192
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _2982 = mem[64]
                _3026 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _5060 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2982 + _3026 + _5060 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                    if ceil32(_5060) <= _5060:
                        _6568 = mem[64]
                        mem[64] = _2982 + _3026 + _5060 + 43
                        mem[_2982 + _3026 + _5060 + 43] = 32
                        _6920 = mem[_6568]
                        mem[_2982 + _3026 + _5060 + 75] = mem[_6568]
                        mem[_2982 + _3026 + _5060 + 107 len ceil32(_6920)] = mem[_6568 + 32 len ceil32(_6920)]
                        if ceil32(_6920) > _6920:
                            mem[_6920 + _2982 + _3026 + _5060 + 107] = 0
                        return 32, mem[_2982 + _3026 + _5060 + 75 len ceil32(_6920) + 32]
                    _6569 = mem[64]
                    mem[64] = _2982 + _3026 + _5060 + 43
                    mem[_2982 + _3026 + _5060 + 43] = 32
                    _6921 = mem[_6569]
                    mem[_2982 + _3026 + _5060 + 75] = mem[_6569]
                    mem[_2982 + _3026 + _5060 + 107 len ceil32(_6921)] = mem[_6569 + 32 len ceil32(_6921)]
                    if ceil32(_6921) > _6921:
                        mem[_6921 + _2982 + _3026 + _5060 + 107] = 0
                    return 32, mem[_2982 + _3026 + _5060 + 75 len ceil32(_6921) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5061 = mem[160]
                mem[_2982 + _3026 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2982 + _3026 + _5061 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5061) <= _5061:
                    _6570 = mem[64]
                    mem[64] = _2982 + _3026 + _5061 + 43
                    mem[_2982 + _3026 + _5061 + 43] = 32
                    _6922 = mem[_6570]
                    mem[_2982 + _3026 + _5061 + 75] = mem[_6570]
                    mem[_2982 + _3026 + _5061 + 107 len ceil32(_6922)] = mem[_6570 + 32 len ceil32(_6922)]
                    if ceil32(_6922) > _6922:
                        mem[_6922 + _2982 + _3026 + _5061 + 107] = 0
                    return 32, mem[_2982 + _3026 + _5061 + 75 len ceil32(_6922) + 32]
                _6571 = mem[64]
                mem[64] = _2982 + _3026 + _5061 + 43
                mem[_2982 + _3026 + _5061 + 43] = 32
                _6923 = mem[_6571]
                mem[_2982 + _3026 + _5061 + 75] = mem[_6571]
                mem[_2982 + _3026 + _5061 + 107 len ceil32(_6923)] = mem[_6571 + 32 len ceil32(_6923)]
                if ceil32(_6923) > _6923:
                    mem[_6923 + _2982 + _3026 + _5061 + 107] = 0
                return 32, mem[_2982 + _3026 + _5061 + 75 len ceil32(_6923) + 32]
            mem[192 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _2983 = mem[64]
            _3027 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _5062 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2983 + _3027 + _5062 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5062) <= _5062:
                    _6572 = mem[64]
                    mem[64] = _2983 + _3027 + _5062 + 43
                    mem[_2983 + _3027 + _5062 + 43] = 32
                    _6924 = mem[_6572]
                    mem[_2983 + _3027 + _5062 + 75] = mem[_6572]
                    mem[_2983 + _3027 + _5062 + 107 len ceil32(_6924)] = mem[_6572 + 32 len ceil32(_6924)]
                    if ceil32(_6924) > _6924:
                        mem[_6924 + _2983 + _3027 + _5062 + 107] = 0
                    return 32, mem[_2983 + _3027 + _5062 + 75 len ceil32(_6924) + 32]
                _6573 = mem[64]
                mem[64] = _2983 + _3027 + _5062 + 43
                mem[_2983 + _3027 + _5062 + 43] = 32
                _6925 = mem[_6573]
                mem[_2983 + _3027 + _5062 + 75] = mem[_6573]
                mem[_2983 + _3027 + _5062 + 107 len ceil32(_6925)] = mem[_6573 + 32 len ceil32(_6925)]
                if ceil32(_6925) > _6925:
                    mem[_6925 + _2983 + _3027 + _5062 + 107] = 0
                return 32, mem[_2983 + _3027 + _5062 + 75 len ceil32(_6925) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5063 = mem[160]
            mem[_2983 + _3027 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_2983 + _3027 + _5063 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5063) <= _5063:
                _6574 = mem[64]
                mem[64] = _2983 + _3027 + _5063 + 43
                mem[_2983 + _3027 + _5063 + 43] = 32
                _6926 = mem[_6574]
                mem[_2983 + _3027 + _5063 + 75] = mem[_6574]
                mem[_2983 + _3027 + _5063 + 107 len ceil32(_6926)] = mem[_6574 + 32 len ceil32(_6926)]
                if ceil32(_6926) > _6926:
                    mem[_6926 + _2983 + _3027 + _5063 + 107] = 0
                return 32, mem[_2983 + _3027 + _5063 + 75 len ceil32(_6926) + 32]
            _6575 = mem[64]
            mem[64] = _2983 + _3027 + _5063 + 43
            mem[_2983 + _3027 + _5063 + 43] = 32
            _6927 = mem[_6575]
            mem[_2983 + _3027 + _5063 + 75] = mem[_6575]
            mem[_2983 + _3027 + _5063 + 107 len ceil32(_6927)] = mem[_6575 + 32 len ceil32(_6927)]
            if ceil32(_6927) > _6927:
                mem[_6927 + _2983 + _3027 + _5063 + 107] = 0
            return 32, mem[_2983 + _3027 + _5063 + 75 len ceil32(_6927) + 32]
        if block.number < 1:
            revert with 0, 17
        if sub_9c428332[arg1] >= block.number - 1:
            revert with 0, 'Token unrevealed'
        mem[32] = 20
        if 2 == stor20[arg1]:
            mem[96] = 31
            mem[0] = arg1
            mem[128] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[288] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                mem[299] = 32
                mem[331] = mem[224]
                mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 363] = 0
                return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
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
            mem[160] = s
            mem[64] = ceil32(s) + 192
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _2994 = mem[64]
                _3038 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _5084 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2994 + _3038 + _5084 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                    if ceil32(_5084) <= _5084:
                        _6616 = mem[64]
                        mem[64] = _2994 + _3038 + _5084 + 43
                        mem[_2994 + _3038 + _5084 + 43] = 32
                        _6968 = mem[_6616]
                        mem[_2994 + _3038 + _5084 + 75] = mem[_6616]
                        mem[_2994 + _3038 + _5084 + 107 len ceil32(_6968)] = mem[_6616 + 32 len ceil32(_6968)]
                        if ceil32(_6968) > _6968:
                            mem[_6968 + _2994 + _3038 + _5084 + 107] = 0
                        return 32, mem[_2994 + _3038 + _5084 + 75 len ceil32(_6968) + 32]
                    _6617 = mem[64]
                    mem[64] = _2994 + _3038 + _5084 + 43
                    mem[_2994 + _3038 + _5084 + 43] = 32
                    _6969 = mem[_6617]
                    mem[_2994 + _3038 + _5084 + 75] = mem[_6617]
                    mem[_2994 + _3038 + _5084 + 107 len ceil32(_6969)] = mem[_6617 + 32 len ceil32(_6969)]
                    if ceil32(_6969) > _6969:
                        mem[_6969 + _2994 + _3038 + _5084 + 107] = 0
                    return 32, mem[_2994 + _3038 + _5084 + 75 len ceil32(_6969) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5085 = mem[160]
                mem[_2994 + _3038 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2994 + _3038 + _5085 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5085) <= _5085:
                    _6618 = mem[64]
                    mem[64] = _2994 + _3038 + _5085 + 43
                    mem[_2994 + _3038 + _5085 + 43] = 32
                    _6970 = mem[_6618]
                    mem[_2994 + _3038 + _5085 + 75] = mem[_6618]
                    mem[_2994 + _3038 + _5085 + 107 len ceil32(_6970)] = mem[_6618 + 32 len ceil32(_6970)]
                    if ceil32(_6970) > _6970:
                        mem[_6970 + _2994 + _3038 + _5085 + 107] = 0
                    return 32, mem[_2994 + _3038 + _5085 + 75 len ceil32(_6970) + 32]
                _6619 = mem[64]
                mem[64] = _2994 + _3038 + _5085 + 43
                mem[_2994 + _3038 + _5085 + 43] = 32
                _6971 = mem[_6619]
                mem[_2994 + _3038 + _5085 + 75] = mem[_6619]
                mem[_2994 + _3038 + _5085 + 107 len ceil32(_6971)] = mem[_6619 + 32 len ceil32(_6971)]
                if ceil32(_6971) > _6971:
                    mem[_6971 + _2994 + _3038 + _5085 + 107] = 0
                return 32, mem[_2994 + _3038 + _5085 + 75 len ceil32(_6971) + 32]
            mem[192 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _2995 = mem[64]
            _3039 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _5086 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2995 + _3039 + _5086 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5086) <= _5086:
                    _6620 = mem[64]
                    mem[64] = _2995 + _3039 + _5086 + 43
                    mem[_2995 + _3039 + _5086 + 43] = 32
                    _6972 = mem[_6620]
                    mem[_2995 + _3039 + _5086 + 75] = mem[_6620]
                    mem[_2995 + _3039 + _5086 + 107 len ceil32(_6972)] = mem[_6620 + 32 len ceil32(_6972)]
                    if ceil32(_6972) > _6972:
                        mem[_6972 + _2995 + _3039 + _5086 + 107] = 0
                    return 32, mem[_2995 + _3039 + _5086 + 75 len ceil32(_6972) + 32]
                _6621 = mem[64]
                mem[64] = _2995 + _3039 + _5086 + 43
                mem[_2995 + _3039 + _5086 + 43] = 32
                _6973 = mem[_6621]
                mem[_2995 + _3039 + _5086 + 75] = mem[_6621]
                mem[_2995 + _3039 + _5086 + 107 len ceil32(_6973)] = mem[_6621 + 32 len ceil32(_6973)]
                if ceil32(_6973) > _6973:
                    mem[_6973 + _2995 + _3039 + _5086 + 107] = 0
                return 32, mem[_2995 + _3039 + _5086 + 75 len ceil32(_6973) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5087 = mem[160]
            mem[_2995 + _3039 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_2995 + _3039 + _5087 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5087) <= _5087:
                _6622 = mem[64]
                mem[64] = _2995 + _3039 + _5087 + 43
                mem[_2995 + _3039 + _5087 + 43] = 32
                _6974 = mem[_6622]
                mem[_2995 + _3039 + _5087 + 75] = mem[_6622]
                mem[_2995 + _3039 + _5087 + 107 len ceil32(_6974)] = mem[_6622 + 32 len ceil32(_6974)]
                if ceil32(_6974) > _6974:
                    mem[_6974 + _2995 + _3039 + _5087 + 107] = 0
                return 32, mem[_2995 + _3039 + _5087 + 75 len ceil32(_6974) + 32]
            _6623 = mem[64]
            mem[64] = _2995 + _3039 + _5087 + 43
            mem[_2995 + _3039 + _5087 + 43] = 32
            _6975 = mem[_6623]
            mem[_2995 + _3039 + _5087 + 75] = mem[_6623]
            mem[_2995 + _3039 + _5087 + 107 len ceil32(_6975)] = mem[_6623 + 32 len ceil32(_6975)]
            if ceil32(_6975) > _6975:
                mem[_6975 + _2995 + _3039 + _5087 + 107] = 0
            return 32, mem[_2995 + _3039 + _5087 + 75 len ceil32(_6975) + 32]
        if not ownerOf[arg1]:
            revert with 0, 'Invalid token ID'
        if 10000 <= arg1:
            mem[32] = 20
            mem[96] = 31
            mem[0] = arg1
            mem[128] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
            if stor20[arg1] != 1:
                if not arg1:
                    mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                    mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[288] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[293] = 32
                    mem[325] = mem[224]
                    mem[357 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                    if ceil32(mem[224]) > mem[224]:
                        mem[mem[224] + 357] = 0
                    return Array(len=mem[224], data=mem[357 len ceil32(mem[224])])
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
                mem[160] = s
                mem[64] = ceil32(s) + 192
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[160]:
                            revert with 0, 50
                        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _2986 = mem[64]
                    _3030 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        _5068 = mem[160]
                        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        mem[_2986 + _3030 + _5068 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        if ceil32(_5068) <= _5068:
                            _6584 = mem[64]
                            mem[64] = _2986 + _3030 + _5068 + 37
                            mem[_2986 + _3030 + _5068 + 37] = 32
                            _6936 = mem[_6584]
                            mem[_2986 + _3030 + _5068 + 69] = mem[_6584]
                            mem[_2986 + _3030 + _5068 + 101 len ceil32(_6936)] = mem[_6584 + 32 len ceil32(_6936)]
                            if ceil32(_6936) > _6936:
                                mem[_6936 + _2986 + _3030 + _5068 + 101] = 0
                            return 32, mem[_2986 + _3030 + _5068 + 69 len ceil32(_6936) + 32]
                        _6585 = mem[64]
                        mem[64] = _2986 + _3030 + _5068 + 37
                        mem[_2986 + _3030 + _5068 + 37] = 32
                        _6937 = mem[_6585]
                        mem[_2986 + _3030 + _5068 + 69] = mem[_6585]
                        mem[_2986 + _3030 + _5068 + 101 len ceil32(_6937)] = mem[_6585 + 32 len ceil32(_6937)]
                        if ceil32(_6937) > _6937:
                            mem[_6937 + _2986 + _3030 + _5068 + 101] = 0
                        return 32, mem[_2986 + _3030 + _5068 + 69 len ceil32(_6937) + 32]
                    mem[mem[96] + mem[64] + 32] = 0
                    _5069 = mem[160]
                    mem[_2986 + _3030 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2986 + _3030 + _5069 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_5069) <= _5069:
                        _6586 = mem[64]
                        mem[64] = _2986 + _3030 + _5069 + 37
                        mem[_2986 + _3030 + _5069 + 37] = 32
                        _6938 = mem[_6586]
                        mem[_2986 + _3030 + _5069 + 69] = mem[_6586]
                        mem[_2986 + _3030 + _5069 + 101 len ceil32(_6938)] = mem[_6586 + 32 len ceil32(_6938)]
                        if ceil32(_6938) > _6938:
                            mem[_6938 + _2986 + _3030 + _5069 + 101] = 0
                        return 32, mem[_2986 + _3030 + _5069 + 69 len ceil32(_6938) + 32]
                    _6587 = mem[64]
                    mem[64] = _2986 + _3030 + _5069 + 37
                    mem[_2986 + _3030 + _5069 + 37] = 32
                    _6939 = mem[_6587]
                    mem[_2986 + _3030 + _5069 + 69] = mem[_6587]
                    mem[_2986 + _3030 + _5069 + 101 len ceil32(_6939)] = mem[_6587 + 32 len ceil32(_6939)]
                    if ceil32(_6939) > _6939:
                        mem[_6939 + _2986 + _3030 + _5069 + 101] = 0
                    return 32, mem[_2986 + _3030 + _5069 + 69 len ceil32(_6939) + 32]
                mem[192 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _2987 = mem[64]
                _3031 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _5070 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2987 + _3031 + _5070 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_5070) <= _5070:
                        _6588 = mem[64]
                        mem[64] = _2987 + _3031 + _5070 + 37
                        mem[_2987 + _3031 + _5070 + 37] = 32
                        _6940 = mem[_6588]
                        mem[_2987 + _3031 + _5070 + 69] = mem[_6588]
                        mem[_2987 + _3031 + _5070 + 101 len ceil32(_6940)] = mem[_6588 + 32 len ceil32(_6940)]
                        if ceil32(_6940) > _6940:
                            mem[_6940 + _2987 + _3031 + _5070 + 101] = 0
                        return 32, mem[_2987 + _3031 + _5070 + 69 len ceil32(_6940) + 32]
                    _6589 = mem[64]
                    mem[64] = _2987 + _3031 + _5070 + 37
                    mem[_2987 + _3031 + _5070 + 37] = 32
                    _6941 = mem[_6589]
                    mem[_2987 + _3031 + _5070 + 69] = mem[_6589]
                    mem[_2987 + _3031 + _5070 + 101 len ceil32(_6941)] = mem[_6589 + 32 len ceil32(_6941)]
                    if ceil32(_6941) > _6941:
                        mem[_6941 + _2987 + _3031 + _5070 + 101] = 0
                    return 32, mem[_2987 + _3031 + _5070 + 69 len ceil32(_6941) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5071 = mem[160]
                mem[_2987 + _3031 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2987 + _3031 + _5071 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5071) <= _5071:
                    _6590 = mem[64]
                    mem[64] = _2987 + _3031 + _5071 + 37
                    mem[_2987 + _3031 + _5071 + 37] = 32
                    _6942 = mem[_6590]
                    mem[_2987 + _3031 + _5071 + 69] = mem[_6590]
                    mem[_2987 + _3031 + _5071 + 101 len ceil32(_6942)] = mem[_6590 + 32 len ceil32(_6942)]
                    if ceil32(_6942) > _6942:
                        mem[_6942 + _2987 + _3031 + _5071 + 101] = 0
                    return 32, mem[_2987 + _3031 + _5071 + 69 len ceil32(_6942) + 32]
                _6591 = mem[64]
                mem[64] = _2987 + _3031 + _5071 + 37
                mem[_2987 + _3031 + _5071 + 37] = 32
                _6943 = mem[_6591]
                mem[_2987 + _3031 + _5071 + 69] = mem[_6591]
                mem[_2987 + _3031 + _5071 + 101 len ceil32(_6943)] = mem[_6591 + 32 len ceil32(_6943)]
                if ceil32(_6943) > _6943:
                    mem[_6943 + _2987 + _3031 + _5071 + 101] = 0
                return 32, mem[_2987 + _3031 + _5071 + 69 len ceil32(_6943) + 32]
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[288] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                mem[299] = 32
                mem[331] = mem[224]
                mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 363] = 0
                return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
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
            mem[160] = s
            mem[64] = ceil32(s) + 192
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _2988 = mem[64]
                _3032 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _5072 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2988 + _3032 + _5072 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                    if ceil32(_5072) <= _5072:
                        _6592 = mem[64]
                        mem[64] = _2988 + _3032 + _5072 + 43
                        mem[_2988 + _3032 + _5072 + 43] = 32
                        _6944 = mem[_6592]
                        mem[_2988 + _3032 + _5072 + 75] = mem[_6592]
                        mem[_2988 + _3032 + _5072 + 107 len ceil32(_6944)] = mem[_6592 + 32 len ceil32(_6944)]
                        if ceil32(_6944) > _6944:
                            mem[_6944 + _2988 + _3032 + _5072 + 107] = 0
                        return 32, mem[_2988 + _3032 + _5072 + 75 len ceil32(_6944) + 32]
                    _6593 = mem[64]
                    mem[64] = _2988 + _3032 + _5072 + 43
                    mem[_2988 + _3032 + _5072 + 43] = 32
                    _6945 = mem[_6593]
                    mem[_2988 + _3032 + _5072 + 75] = mem[_6593]
                    mem[_2988 + _3032 + _5072 + 107 len ceil32(_6945)] = mem[_6593 + 32 len ceil32(_6945)]
                    if ceil32(_6945) > _6945:
                        mem[_6945 + _2988 + _3032 + _5072 + 107] = 0
                    return 32, mem[_2988 + _3032 + _5072 + 75 len ceil32(_6945) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5073 = mem[160]
                mem[_2988 + _3032 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2988 + _3032 + _5073 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5073) <= _5073:
                    _6594 = mem[64]
                    mem[64] = _2988 + _3032 + _5073 + 43
                    mem[_2988 + _3032 + _5073 + 43] = 32
                    _6946 = mem[_6594]
                    mem[_2988 + _3032 + _5073 + 75] = mem[_6594]
                    mem[_2988 + _3032 + _5073 + 107 len ceil32(_6946)] = mem[_6594 + 32 len ceil32(_6946)]
                    if ceil32(_6946) > _6946:
                        mem[_6946 + _2988 + _3032 + _5073 + 107] = 0
                    return 32, mem[_2988 + _3032 + _5073 + 75 len ceil32(_6946) + 32]
                _6595 = mem[64]
                mem[64] = _2988 + _3032 + _5073 + 43
                mem[_2988 + _3032 + _5073 + 43] = 32
                _6947 = mem[_6595]
                mem[_2988 + _3032 + _5073 + 75] = mem[_6595]
                mem[_2988 + _3032 + _5073 + 107 len ceil32(_6947)] = mem[_6595 + 32 len ceil32(_6947)]
                if ceil32(_6947) > _6947:
                    mem[_6947 + _2988 + _3032 + _5073 + 107] = 0
                return 32, mem[_2988 + _3032 + _5073 + 75 len ceil32(_6947) + 32]
            mem[192 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _2989 = mem[64]
            _3033 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _5074 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2989 + _3033 + _5074 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5074) <= _5074:
                    _6596 = mem[64]
                    mem[64] = _2989 + _3033 + _5074 + 43
                    mem[_2989 + _3033 + _5074 + 43] = 32
                    _6948 = mem[_6596]
                    mem[_2989 + _3033 + _5074 + 75] = mem[_6596]
                    mem[_2989 + _3033 + _5074 + 107 len ceil32(_6948)] = mem[_6596 + 32 len ceil32(_6948)]
                    if ceil32(_6948) > _6948:
                        mem[_6948 + _2989 + _3033 + _5074 + 107] = 0
                    return 32, mem[_2989 + _3033 + _5074 + 75 len ceil32(_6948) + 32]
                _6597 = mem[64]
                mem[64] = _2989 + _3033 + _5074 + 43
                mem[_2989 + _3033 + _5074 + 43] = 32
                _6949 = mem[_6597]
                mem[_2989 + _3033 + _5074 + 75] = mem[_6597]
                mem[_2989 + _3033 + _5074 + 107 len ceil32(_6949)] = mem[_6597 + 32 len ceil32(_6949)]
                if ceil32(_6949) > _6949:
                    mem[_6949 + _2989 + _3033 + _5074 + 107] = 0
                return 32, mem[_2989 + _3033 + _5074 + 75 len ceil32(_6949) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5075 = mem[160]
            mem[_2989 + _3033 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_2989 + _3033 + _5075 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5075) <= _5075:
                _6598 = mem[64]
                mem[64] = _2989 + _3033 + _5075 + 43
                mem[_2989 + _3033 + _5075 + 43] = 32
                _6950 = mem[_6598]
                mem[_2989 + _3033 + _5075 + 75] = mem[_6598]
                mem[_2989 + _3033 + _5075 + 107 len ceil32(_6950)] = mem[_6598 + 32 len ceil32(_6950)]
                if ceil32(_6950) > _6950:
                    mem[_6950 + _2989 + _3033 + _5075 + 107] = 0
                return 32, mem[_2989 + _3033 + _5075 + 75 len ceil32(_6950) + 32]
            _6599 = mem[64]
            mem[64] = _2989 + _3033 + _5075 + 43
            mem[_2989 + _3033 + _5075 + 43] = 32
            _6951 = mem[_6599]
            mem[_2989 + _3033 + _5075 + 75] = mem[_6599]
            mem[_2989 + _3033 + _5075 + 107 len ceil32(_6951)] = mem[_6599 + 32 len ceil32(_6951)]
            if ceil32(_6951) > _6951:
                mem[_6951 + _2989 + _3033 + _5075 + 107] = 0
            return 32, mem[_2989 + _3033 + _5075 + 75 len ceil32(_6951) + 32]
        if block.number < 1:
            revert with 0, 17
        if sub_9c428332[arg1] >= block.number - 1:
            revert with 0, 'Token unrevealed'
        mem[32] = 20
        mem[96] = 31
        mem[0] = arg1
        mem[128] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
        if stor20[arg1] != 1:
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[288] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[293] = 32
                mem[325] = mem[224]
                mem[357 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 357] = 0
                return Array(len=mem[224], data=mem[357 len ceil32(mem[224])])
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
            mem[160] = s
            mem[64] = ceil32(s) + 192
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _2990 = mem[64]
                _3034 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _5076 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2990 + _3034 + _5076 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_5076) <= _5076:
                        _6600 = mem[64]
                        mem[64] = _2990 + _3034 + _5076 + 37
                        mem[_2990 + _3034 + _5076 + 37] = 32
                        _6952 = mem[_6600]
                        mem[_2990 + _3034 + _5076 + 69] = mem[_6600]
                        mem[_2990 + _3034 + _5076 + 101 len ceil32(_6952)] = mem[_6600 + 32 len ceil32(_6952)]
                        if ceil32(_6952) > _6952:
                            mem[_6952 + _2990 + _3034 + _5076 + 101] = 0
                        return 32, mem[_2990 + _3034 + _5076 + 69 len ceil32(_6952) + 32]
                    _6601 = mem[64]
                    mem[64] = _2990 + _3034 + _5076 + 37
                    mem[_2990 + _3034 + _5076 + 37] = 32
                    _6953 = mem[_6601]
                    mem[_2990 + _3034 + _5076 + 69] = mem[_6601]
                    mem[_2990 + _3034 + _5076 + 101 len ceil32(_6953)] = mem[_6601 + 32 len ceil32(_6953)]
                    if ceil32(_6953) > _6953:
                        mem[_6953 + _2990 + _3034 + _5076 + 101] = 0
                    return 32, mem[_2990 + _3034 + _5076 + 69 len ceil32(_6953) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5077 = mem[160]
                mem[_2990 + _3034 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2990 + _3034 + _5077 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5077) <= _5077:
                    _6602 = mem[64]
                    mem[64] = _2990 + _3034 + _5077 + 37
                    mem[_2990 + _3034 + _5077 + 37] = 32
                    _6954 = mem[_6602]
                    mem[_2990 + _3034 + _5077 + 69] = mem[_6602]
                    mem[_2990 + _3034 + _5077 + 101 len ceil32(_6954)] = mem[_6602 + 32 len ceil32(_6954)]
                    if ceil32(_6954) > _6954:
                        mem[_6954 + _2990 + _3034 + _5077 + 101] = 0
                    return 32, mem[_2990 + _3034 + _5077 + 69 len ceil32(_6954) + 32]
                _6603 = mem[64]
                mem[64] = _2990 + _3034 + _5077 + 37
                mem[_2990 + _3034 + _5077 + 37] = 32
                _6955 = mem[_6603]
                mem[_2990 + _3034 + _5077 + 69] = mem[_6603]
                mem[_2990 + _3034 + _5077 + 101 len ceil32(_6955)] = mem[_6603 + 32 len ceil32(_6955)]
                if ceil32(_6955) > _6955:
                    mem[_6955 + _2990 + _3034 + _5077 + 101] = 0
                return 32, mem[_2990 + _3034 + _5077 + 69 len ceil32(_6955) + 32]
            mem[192 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _2991 = mem[64]
            _3035 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _5078 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2991 + _3035 + _5078 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5078) <= _5078:
                    _6604 = mem[64]
                    mem[64] = _2991 + _3035 + _5078 + 37
                    mem[_2991 + _3035 + _5078 + 37] = 32
                    _6956 = mem[_6604]
                    mem[_2991 + _3035 + _5078 + 69] = mem[_6604]
                    mem[_2991 + _3035 + _5078 + 101 len ceil32(_6956)] = mem[_6604 + 32 len ceil32(_6956)]
                    if ceil32(_6956) > _6956:
                        mem[_6956 + _2991 + _3035 + _5078 + 101] = 0
                    return 32, mem[_2991 + _3035 + _5078 + 69 len ceil32(_6956) + 32]
                _6605 = mem[64]
                mem[64] = _2991 + _3035 + _5078 + 37
                mem[_2991 + _3035 + _5078 + 37] = 32
                _6957 = mem[_6605]
                mem[_2991 + _3035 + _5078 + 69] = mem[_6605]
                mem[_2991 + _3035 + _5078 + 101 len ceil32(_6957)] = mem[_6605 + 32 len ceil32(_6957)]
                if ceil32(_6957) > _6957:
                    mem[_6957 + _2991 + _3035 + _5078 + 101] = 0
                return 32, mem[_2991 + _3035 + _5078 + 69 len ceil32(_6957) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5079 = mem[160]
            mem[_2991 + _3035 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_2991 + _3035 + _5079 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_5079) <= _5079:
                _6606 = mem[64]
                mem[64] = _2991 + _3035 + _5079 + 37
                mem[_2991 + _3035 + _5079 + 37] = 32
                _6958 = mem[_6606]
                mem[_2991 + _3035 + _5079 + 69] = mem[_6606]
                mem[_2991 + _3035 + _5079 + 101 len ceil32(_6958)] = mem[_6606 + 32 len ceil32(_6958)]
                if ceil32(_6958) > _6958:
                    mem[_6958 + _2991 + _3035 + _5079 + 101] = 0
                return 32, mem[_2991 + _3035 + _5079 + 69 len ceil32(_6958) + 32]
            _6607 = mem[64]
            mem[64] = _2991 + _3035 + _5079 + 37
            mem[_2991 + _3035 + _5079 + 37] = 32
            _6959 = mem[_6607]
            mem[_2991 + _3035 + _5079 + 69] = mem[_6607]
            mem[_2991 + _3035 + _5079 + 101 len ceil32(_6959)] = mem[_6607 + 32 len ceil32(_6959)]
            if ceil32(_6959) > _6959:
                mem[_6959 + _2991 + _3035 + _5079 + 101] = 0
            return 32, mem[_2991 + _3035 + _5079 + 69 len ceil32(_6959) + 32]
        if not arg1:
            mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
            mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[288] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
            mem[299] = 32
            mem[331] = mem[224]
            mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + 363] = 0
            return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
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
        mem[160] = s
        mem[64] = ceil32(s) + 192
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _2992 = mem[64]
            _3036 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _5080 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2992 + _3036 + _5080 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5080) <= _5080:
                    _6608 = mem[64]
                    mem[64] = _2992 + _3036 + _5080 + 43
                    mem[_2992 + _3036 + _5080 + 43] = 32
                    _6960 = mem[_6608]
                    mem[_2992 + _3036 + _5080 + 75] = mem[_6608]
                    mem[_2992 + _3036 + _5080 + 107 len ceil32(_6960)] = mem[_6608 + 32 len ceil32(_6960)]
                    if ceil32(_6960) > _6960:
                        mem[_6960 + _2992 + _3036 + _5080 + 107] = 0
                    return 32, mem[_2992 + _3036 + _5080 + 75 len ceil32(_6960) + 32]
                _6609 = mem[64]
                mem[64] = _2992 + _3036 + _5080 + 43
                mem[_2992 + _3036 + _5080 + 43] = 32
                _6961 = mem[_6609]
                mem[_2992 + _3036 + _5080 + 75] = mem[_6609]
                mem[_2992 + _3036 + _5080 + 107 len ceil32(_6961)] = mem[_6609 + 32 len ceil32(_6961)]
                if ceil32(_6961) > _6961:
                    mem[_6961 + _2992 + _3036 + _5080 + 107] = 0
                return 32, mem[_2992 + _3036 + _5080 + 75 len ceil32(_6961) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5081 = mem[160]
            mem[_2992 + _3036 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_2992 + _3036 + _5081 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5081) <= _5081:
                _6610 = mem[64]
                mem[64] = _2992 + _3036 + _5081 + 43
                mem[_2992 + _3036 + _5081 + 43] = 32
                _6962 = mem[_6610]
                mem[_2992 + _3036 + _5081 + 75] = mem[_6610]
                mem[_2992 + _3036 + _5081 + 107 len ceil32(_6962)] = mem[_6610 + 32 len ceil32(_6962)]
                if ceil32(_6962) > _6962:
                    mem[_6962 + _2992 + _3036 + _5081 + 107] = 0
                return 32, mem[_2992 + _3036 + _5081 + 75 len ceil32(_6962) + 32]
            _6611 = mem[64]
            mem[64] = _2992 + _3036 + _5081 + 43
            mem[_2992 + _3036 + _5081 + 43] = 32
            _6963 = mem[_6611]
            mem[_2992 + _3036 + _5081 + 75] = mem[_6611]
            mem[_2992 + _3036 + _5081 + 107 len ceil32(_6963)] = mem[_6611 + 32 len ceil32(_6963)]
            if ceil32(_6963) > _6963:
                mem[_6963 + _2992 + _3036 + _5081 + 107] = 0
            return 32, mem[_2992 + _3036 + _5081 + 75 len ceil32(_6963) + 32]
        mem[192 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[160]:
                revert with 0, 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _2993 = mem[64]
        _3037 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _5082 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_2993 + _3037 + _5082 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5082) <= _5082:
                _6612 = mem[64]
                mem[64] = _2993 + _3037 + _5082 + 43
                mem[_2993 + _3037 + _5082 + 43] = 32
                _6964 = mem[_6612]
                mem[_2993 + _3037 + _5082 + 75] = mem[_6612]
                mem[_2993 + _3037 + _5082 + 107 len ceil32(_6964)] = mem[_6612 + 32 len ceil32(_6964)]
                if ceil32(_6964) > _6964:
                    mem[_6964 + _2993 + _3037 + _5082 + 107] = 0
                return 32, mem[_2993 + _3037 + _5082 + 75 len ceil32(_6964) + 32]
            _6613 = mem[64]
            mem[64] = _2993 + _3037 + _5082 + 43
            mem[_2993 + _3037 + _5082 + 43] = 32
            _6965 = mem[_6613]
            mem[_2993 + _3037 + _5082 + 75] = mem[_6613]
            mem[_2993 + _3037 + _5082 + 107 len ceil32(_6965)] = mem[_6613 + 32 len ceil32(_6965)]
            if ceil32(_6965) > _6965:
                mem[_6965 + _2993 + _3037 + _5082 + 107] = 0
            return 32, mem[_2993 + _3037 + _5082 + 75 len ceil32(_6965) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _5083 = mem[160]
        mem[_2993 + _3037 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[_2993 + _3037 + _5083 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
        if ceil32(_5083) <= _5083:
            _6614 = mem[64]
            mem[64] = _2993 + _3037 + _5083 + 43
            mem[_2993 + _3037 + _5083 + 43] = 32
            _6966 = mem[_6614]
            mem[_2993 + _3037 + _5083 + 75] = mem[_6614]
            mem[_2993 + _3037 + _5083 + 107 len ceil32(_6966)] = mem[_6614 + 32 len ceil32(_6966)]
            if ceil32(_6966) > _6966:
                mem[_6966 + _2993 + _3037 + _5083 + 107] = 0
            return 32, mem[_2993 + _3037 + _5083 + 75 len ceil32(_6966) + 32]
        _6615 = mem[64]
        mem[64] = _2993 + _3037 + _5083 + 43
        mem[_2993 + _3037 + _5083 + 43] = 32
        _6967 = mem[_6615]
        mem[_2993 + _3037 + _5083 + 75] = mem[_6615]
        mem[_2993 + _3037 + _5083 + 107 len ceil32(_6967)] = mem[_6615 + 32 len ceil32(_6967)]
        if ceil32(_6967) > _6967:
            mem[_6967 + _2993 + _3037 + _5083 + 107] = 0
        return 32, mem[_2993 + _3037 + _5083 + 75 len ceil32(_6967) + 32]
    if block.number < 1:
        revert with 0, 17
    if sub_9c428332[arg1] >= block.number - 1:
        mem[192] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
        mem[223] = 0x756e72657665616c65642e6a736f6e0000000000000000000000000000000000
        mem[238] = 32
        mem[270] = mem[160]
        mem[302 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + 302] = 0
        return Array(len=mem[160], data=mem[302 len ceil32(mem[160])])
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token ID'
    if 10000 <= arg1:
        mem[32] = 20
        if 2 == stor20[arg1]:
            mem[96] = 31
            mem[0] = arg1
            mem[128] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[288] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                mem[299] = 32
                mem[331] = mem[224]
                mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 363] = 0
                return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
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
            mem[160] = s
            mem[64] = ceil32(s) + 192
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3004 = mem[64]
                _3048 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _5104 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_3004 + _3048 + _5104 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                    if ceil32(_5104) <= _5104:
                        _6656 = mem[64]
                        mem[64] = _3004 + _3048 + _5104 + 43
                        mem[_3004 + _3048 + _5104 + 43] = 32
                        _7008 = mem[_6656]
                        mem[_3004 + _3048 + _5104 + 75] = mem[_6656]
                        mem[_3004 + _3048 + _5104 + 107 len ceil32(_7008)] = mem[_6656 + 32 len ceil32(_7008)]
                        if ceil32(_7008) > _7008:
                            mem[_7008 + _3004 + _3048 + _5104 + 107] = 0
                        return 32, mem[_3004 + _3048 + _5104 + 75 len ceil32(_7008) + 32]
                    _6657 = mem[64]
                    mem[64] = _3004 + _3048 + _5104 + 43
                    mem[_3004 + _3048 + _5104 + 43] = 32
                    _7009 = mem[_6657]
                    mem[_3004 + _3048 + _5104 + 75] = mem[_6657]
                    mem[_3004 + _3048 + _5104 + 107 len ceil32(_7009)] = mem[_6657 + 32 len ceil32(_7009)]
                    if ceil32(_7009) > _7009:
                        mem[_7009 + _3004 + _3048 + _5104 + 107] = 0
                    return 32, mem[_3004 + _3048 + _5104 + 75 len ceil32(_7009) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5105 = mem[160]
                mem[_3004 + _3048 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_3004 + _3048 + _5105 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5105) <= _5105:
                    _6658 = mem[64]
                    mem[64] = _3004 + _3048 + _5105 + 43
                    mem[_3004 + _3048 + _5105 + 43] = 32
                    _7010 = mem[_6658]
                    mem[_3004 + _3048 + _5105 + 75] = mem[_6658]
                    mem[_3004 + _3048 + _5105 + 107 len ceil32(_7010)] = mem[_6658 + 32 len ceil32(_7010)]
                    if ceil32(_7010) > _7010:
                        mem[_7010 + _3004 + _3048 + _5105 + 107] = 0
                    return 32, mem[_3004 + _3048 + _5105 + 75 len ceil32(_7010) + 32]
                _6659 = mem[64]
                mem[64] = _3004 + _3048 + _5105 + 43
                mem[_3004 + _3048 + _5105 + 43] = 32
                _7011 = mem[_6659]
                mem[_3004 + _3048 + _5105 + 75] = mem[_6659]
                mem[_3004 + _3048 + _5105 + 107 len ceil32(_7011)] = mem[_6659 + 32 len ceil32(_7011)]
                if ceil32(_7011) > _7011:
                    mem[_7011 + _3004 + _3048 + _5105 + 107] = 0
                return 32, mem[_3004 + _3048 + _5105 + 75 len ceil32(_7011) + 32]
            mem[192 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3005 = mem[64]
            _3049 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _5106 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_3005 + _3049 + _5106 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5106) <= _5106:
                    _6660 = mem[64]
                    mem[64] = _3005 + _3049 + _5106 + 43
                    mem[_3005 + _3049 + _5106 + 43] = 32
                    _7012 = mem[_6660]
                    mem[_3005 + _3049 + _5106 + 75] = mem[_6660]
                    mem[_3005 + _3049 + _5106 + 107 len ceil32(_7012)] = mem[_6660 + 32 len ceil32(_7012)]
                    if ceil32(_7012) > _7012:
                        mem[_7012 + _3005 + _3049 + _5106 + 107] = 0
                    return 32, mem[_3005 + _3049 + _5106 + 75 len ceil32(_7012) + 32]
                _6661 = mem[64]
                mem[64] = _3005 + _3049 + _5106 + 43
                mem[_3005 + _3049 + _5106 + 43] = 32
                _7013 = mem[_6661]
                mem[_3005 + _3049 + _5106 + 75] = mem[_6661]
                mem[_3005 + _3049 + _5106 + 107 len ceil32(_7013)] = mem[_6661 + 32 len ceil32(_7013)]
                if ceil32(_7013) > _7013:
                    mem[_7013 + _3005 + _3049 + _5106 + 107] = 0
                return 32, mem[_3005 + _3049 + _5106 + 75 len ceil32(_7013) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5107 = mem[160]
            mem[_3005 + _3049 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_3005 + _3049 + _5107 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5107) <= _5107:
                _6662 = mem[64]
                mem[64] = _3005 + _3049 + _5107 + 43
                mem[_3005 + _3049 + _5107 + 43] = 32
                _7014 = mem[_6662]
                mem[_3005 + _3049 + _5107 + 75] = mem[_6662]
                mem[_3005 + _3049 + _5107 + 107 len ceil32(_7014)] = mem[_6662 + 32 len ceil32(_7014)]
                if ceil32(_7014) > _7014:
                    mem[_7014 + _3005 + _3049 + _5107 + 107] = 0
                return 32, mem[_3005 + _3049 + _5107 + 75 len ceil32(_7014) + 32]
            _6663 = mem[64]
            mem[64] = _3005 + _3049 + _5107 + 43
            mem[_3005 + _3049 + _5107 + 43] = 32
            _7015 = mem[_6663]
            mem[_3005 + _3049 + _5107 + 75] = mem[_6663]
            mem[_3005 + _3049 + _5107 + 107 len ceil32(_7015)] = mem[_6663 + 32 len ceil32(_7015)]
            if ceil32(_7015) > _7015:
                mem[_7015 + _3005 + _3049 + _5107 + 107] = 0
            return 32, mem[_3005 + _3049 + _5107 + 75 len ceil32(_7015) + 32]
        if not ownerOf[arg1]:
            revert with 0, 'Invalid token ID'
        if 10000 <= arg1:
            mem[32] = 20
            mem[96] = 31
            mem[0] = arg1
            mem[128] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
            if stor20[arg1] != 1:
                if not arg1:
                    mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                    mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[288] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[293] = 32
                    mem[325] = mem[224]
                    mem[357 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                    if ceil32(mem[224]) > mem[224]:
                        mem[mem[224] + 357] = 0
                    return Array(len=mem[224], data=mem[357 len ceil32(mem[224])])
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
                mem[160] = s
                mem[64] = ceil32(s) + 192
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[160]:
                            revert with 0, 50
                        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _2996 = mem[64]
                    _3040 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        _5088 = mem[160]
                        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        mem[_2996 + _3040 + _5088 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        if ceil32(_5088) <= _5088:
                            _6624 = mem[64]
                            mem[64] = _2996 + _3040 + _5088 + 37
                            mem[_2996 + _3040 + _5088 + 37] = 32
                            _6976 = mem[_6624]
                            mem[_2996 + _3040 + _5088 + 69] = mem[_6624]
                            mem[_2996 + _3040 + _5088 + 101 len ceil32(_6976)] = mem[_6624 + 32 len ceil32(_6976)]
                            if ceil32(_6976) > _6976:
                                mem[_6976 + _2996 + _3040 + _5088 + 101] = 0
                            return 32, mem[_2996 + _3040 + _5088 + 69 len ceil32(_6976) + 32]
                        _6625 = mem[64]
                        mem[64] = _2996 + _3040 + _5088 + 37
                        mem[_2996 + _3040 + _5088 + 37] = 32
                        _6977 = mem[_6625]
                        mem[_2996 + _3040 + _5088 + 69] = mem[_6625]
                        mem[_2996 + _3040 + _5088 + 101 len ceil32(_6977)] = mem[_6625 + 32 len ceil32(_6977)]
                        if ceil32(_6977) > _6977:
                            mem[_6977 + _2996 + _3040 + _5088 + 101] = 0
                        return 32, mem[_2996 + _3040 + _5088 + 69 len ceil32(_6977) + 32]
                    mem[mem[96] + mem[64] + 32] = 0
                    _5089 = mem[160]
                    mem[_2996 + _3040 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2996 + _3040 + _5089 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_5089) <= _5089:
                        _6626 = mem[64]
                        mem[64] = _2996 + _3040 + _5089 + 37
                        mem[_2996 + _3040 + _5089 + 37] = 32
                        _6978 = mem[_6626]
                        mem[_2996 + _3040 + _5089 + 69] = mem[_6626]
                        mem[_2996 + _3040 + _5089 + 101 len ceil32(_6978)] = mem[_6626 + 32 len ceil32(_6978)]
                        if ceil32(_6978) > _6978:
                            mem[_6978 + _2996 + _3040 + _5089 + 101] = 0
                        return 32, mem[_2996 + _3040 + _5089 + 69 len ceil32(_6978) + 32]
                    _6627 = mem[64]
                    mem[64] = _2996 + _3040 + _5089 + 37
                    mem[_2996 + _3040 + _5089 + 37] = 32
                    _6979 = mem[_6627]
                    mem[_2996 + _3040 + _5089 + 69] = mem[_6627]
                    mem[_2996 + _3040 + _5089 + 101 len ceil32(_6979)] = mem[_6627 + 32 len ceil32(_6979)]
                    if ceil32(_6979) > _6979:
                        mem[_6979 + _2996 + _3040 + _5089 + 101] = 0
                    return 32, mem[_2996 + _3040 + _5089 + 69 len ceil32(_6979) + 32]
                mem[192 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _2997 = mem[64]
                _3041 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _5090 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2997 + _3041 + _5090 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_5090) <= _5090:
                        _6628 = mem[64]
                        mem[64] = _2997 + _3041 + _5090 + 37
                        mem[_2997 + _3041 + _5090 + 37] = 32
                        _6980 = mem[_6628]
                        mem[_2997 + _3041 + _5090 + 69] = mem[_6628]
                        mem[_2997 + _3041 + _5090 + 101 len ceil32(_6980)] = mem[_6628 + 32 len ceil32(_6980)]
                        if ceil32(_6980) > _6980:
                            mem[_6980 + _2997 + _3041 + _5090 + 101] = 0
                        return 32, mem[_2997 + _3041 + _5090 + 69 len ceil32(_6980) + 32]
                    _6629 = mem[64]
                    mem[64] = _2997 + _3041 + _5090 + 37
                    mem[_2997 + _3041 + _5090 + 37] = 32
                    _6981 = mem[_6629]
                    mem[_2997 + _3041 + _5090 + 69] = mem[_6629]
                    mem[_2997 + _3041 + _5090 + 101 len ceil32(_6981)] = mem[_6629 + 32 len ceil32(_6981)]
                    if ceil32(_6981) > _6981:
                        mem[_6981 + _2997 + _3041 + _5090 + 101] = 0
                    return 32, mem[_2997 + _3041 + _5090 + 69 len ceil32(_6981) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5091 = mem[160]
                mem[_2997 + _3041 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2997 + _3041 + _5091 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5091) <= _5091:
                    _6630 = mem[64]
                    mem[64] = _2997 + _3041 + _5091 + 37
                    mem[_2997 + _3041 + _5091 + 37] = 32
                    _6982 = mem[_6630]
                    mem[_2997 + _3041 + _5091 + 69] = mem[_6630]
                    mem[_2997 + _3041 + _5091 + 101 len ceil32(_6982)] = mem[_6630 + 32 len ceil32(_6982)]
                    if ceil32(_6982) > _6982:
                        mem[_6982 + _2997 + _3041 + _5091 + 101] = 0
                    return 32, mem[_2997 + _3041 + _5091 + 69 len ceil32(_6982) + 32]
                _6631 = mem[64]
                mem[64] = _2997 + _3041 + _5091 + 37
                mem[_2997 + _3041 + _5091 + 37] = 32
                _6983 = mem[_6631]
                mem[_2997 + _3041 + _5091 + 69] = mem[_6631]
                mem[_2997 + _3041 + _5091 + 101 len ceil32(_6983)] = mem[_6631 + 32 len ceil32(_6983)]
                if ceil32(_6983) > _6983:
                    mem[_6983 + _2997 + _3041 + _5091 + 101] = 0
                return 32, mem[_2997 + _3041 + _5091 + 69 len ceil32(_6983) + 32]
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[288] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                mem[299] = 32
                mem[331] = mem[224]
                mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 363] = 0
                return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
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
            mem[160] = s
            mem[64] = ceil32(s) + 192
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _2998 = mem[64]
                _3042 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _5092 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_2998 + _3042 + _5092 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                    if ceil32(_5092) <= _5092:
                        _6632 = mem[64]
                        mem[64] = _2998 + _3042 + _5092 + 43
                        mem[_2998 + _3042 + _5092 + 43] = 32
                        _6984 = mem[_6632]
                        mem[_2998 + _3042 + _5092 + 75] = mem[_6632]
                        mem[_2998 + _3042 + _5092 + 107 len ceil32(_6984)] = mem[_6632 + 32 len ceil32(_6984)]
                        if ceil32(_6984) > _6984:
                            mem[_6984 + _2998 + _3042 + _5092 + 107] = 0
                        return 32, mem[_2998 + _3042 + _5092 + 75 len ceil32(_6984) + 32]
                    _6633 = mem[64]
                    mem[64] = _2998 + _3042 + _5092 + 43
                    mem[_2998 + _3042 + _5092 + 43] = 32
                    _6985 = mem[_6633]
                    mem[_2998 + _3042 + _5092 + 75] = mem[_6633]
                    mem[_2998 + _3042 + _5092 + 107 len ceil32(_6985)] = mem[_6633 + 32 len ceil32(_6985)]
                    if ceil32(_6985) > _6985:
                        mem[_6985 + _2998 + _3042 + _5092 + 107] = 0
                    return 32, mem[_2998 + _3042 + _5092 + 75 len ceil32(_6985) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5093 = mem[160]
                mem[_2998 + _3042 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2998 + _3042 + _5093 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5093) <= _5093:
                    _6634 = mem[64]
                    mem[64] = _2998 + _3042 + _5093 + 43
                    mem[_2998 + _3042 + _5093 + 43] = 32
                    _6986 = mem[_6634]
                    mem[_2998 + _3042 + _5093 + 75] = mem[_6634]
                    mem[_2998 + _3042 + _5093 + 107 len ceil32(_6986)] = mem[_6634 + 32 len ceil32(_6986)]
                    if ceil32(_6986) > _6986:
                        mem[_6986 + _2998 + _3042 + _5093 + 107] = 0
                    return 32, mem[_2998 + _3042 + _5093 + 75 len ceil32(_6986) + 32]
                _6635 = mem[64]
                mem[64] = _2998 + _3042 + _5093 + 43
                mem[_2998 + _3042 + _5093 + 43] = 32
                _6987 = mem[_6635]
                mem[_2998 + _3042 + _5093 + 75] = mem[_6635]
                mem[_2998 + _3042 + _5093 + 107 len ceil32(_6987)] = mem[_6635 + 32 len ceil32(_6987)]
                if ceil32(_6987) > _6987:
                    mem[_6987 + _2998 + _3042 + _5093 + 107] = 0
                return 32, mem[_2998 + _3042 + _5093 + 75 len ceil32(_6987) + 32]
            mem[192 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _2999 = mem[64]
            _3043 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _5094 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_2999 + _3043 + _5094 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5094) <= _5094:
                    _6636 = mem[64]
                    mem[64] = _2999 + _3043 + _5094 + 43
                    mem[_2999 + _3043 + _5094 + 43] = 32
                    _6988 = mem[_6636]
                    mem[_2999 + _3043 + _5094 + 75] = mem[_6636]
                    mem[_2999 + _3043 + _5094 + 107 len ceil32(_6988)] = mem[_6636 + 32 len ceil32(_6988)]
                    if ceil32(_6988) > _6988:
                        mem[_6988 + _2999 + _3043 + _5094 + 107] = 0
                    return 32, mem[_2999 + _3043 + _5094 + 75 len ceil32(_6988) + 32]
                _6637 = mem[64]
                mem[64] = _2999 + _3043 + _5094 + 43
                mem[_2999 + _3043 + _5094 + 43] = 32
                _6989 = mem[_6637]
                mem[_2999 + _3043 + _5094 + 75] = mem[_6637]
                mem[_2999 + _3043 + _5094 + 107 len ceil32(_6989)] = mem[_6637 + 32 len ceil32(_6989)]
                if ceil32(_6989) > _6989:
                    mem[_6989 + _2999 + _3043 + _5094 + 107] = 0
                return 32, mem[_2999 + _3043 + _5094 + 75 len ceil32(_6989) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5095 = mem[160]
            mem[_2999 + _3043 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_2999 + _3043 + _5095 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5095) <= _5095:
                _6638 = mem[64]
                mem[64] = _2999 + _3043 + _5095 + 43
                mem[_2999 + _3043 + _5095 + 43] = 32
                _6990 = mem[_6638]
                mem[_2999 + _3043 + _5095 + 75] = mem[_6638]
                mem[_2999 + _3043 + _5095 + 107 len ceil32(_6990)] = mem[_6638 + 32 len ceil32(_6990)]
                if ceil32(_6990) > _6990:
                    mem[_6990 + _2999 + _3043 + _5095 + 107] = 0
                return 32, mem[_2999 + _3043 + _5095 + 75 len ceil32(_6990) + 32]
            _6639 = mem[64]
            mem[64] = _2999 + _3043 + _5095 + 43
            mem[_2999 + _3043 + _5095 + 43] = 32
            _6991 = mem[_6639]
            mem[_2999 + _3043 + _5095 + 75] = mem[_6639]
            mem[_2999 + _3043 + _5095 + 107 len ceil32(_6991)] = mem[_6639 + 32 len ceil32(_6991)]
            if ceil32(_6991) > _6991:
                mem[_6991 + _2999 + _3043 + _5095 + 107] = 0
            return 32, mem[_2999 + _3043 + _5095 + 75 len ceil32(_6991) + 32]
        if block.number < 1:
            revert with 0, 17
        if sub_9c428332[arg1] >= block.number - 1:
            revert with 0, 'Token unrevealed'
        mem[32] = 20
        mem[96] = 31
        mem[0] = arg1
        mem[128] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
        if stor20[arg1] != 1:
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[288] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[293] = 32
                mem[325] = mem[224]
                mem[357 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 357] = 0
                return Array(len=mem[224], data=mem[357 len ceil32(mem[224])])
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
            mem[160] = s
            mem[64] = ceil32(s) + 192
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3000 = mem[64]
                _3044 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _5096 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_3000 + _3044 + _5096 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_5096) <= _5096:
                        _6640 = mem[64]
                        mem[64] = _3000 + _3044 + _5096 + 37
                        mem[_3000 + _3044 + _5096 + 37] = 32
                        _6992 = mem[_6640]
                        mem[_3000 + _3044 + _5096 + 69] = mem[_6640]
                        mem[_3000 + _3044 + _5096 + 101 len ceil32(_6992)] = mem[_6640 + 32 len ceil32(_6992)]
                        if ceil32(_6992) > _6992:
                            mem[_6992 + _3000 + _3044 + _5096 + 101] = 0
                        return 32, mem[_3000 + _3044 + _5096 + 69 len ceil32(_6992) + 32]
                    _6641 = mem[64]
                    mem[64] = _3000 + _3044 + _5096 + 37
                    mem[_3000 + _3044 + _5096 + 37] = 32
                    _6993 = mem[_6641]
                    mem[_3000 + _3044 + _5096 + 69] = mem[_6641]
                    mem[_3000 + _3044 + _5096 + 101 len ceil32(_6993)] = mem[_6641 + 32 len ceil32(_6993)]
                    if ceil32(_6993) > _6993:
                        mem[_6993 + _3000 + _3044 + _5096 + 101] = 0
                    return 32, mem[_3000 + _3044 + _5096 + 69 len ceil32(_6993) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5097 = mem[160]
                mem[_3000 + _3044 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_3000 + _3044 + _5097 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5097) <= _5097:
                    _6642 = mem[64]
                    mem[64] = _3000 + _3044 + _5097 + 37
                    mem[_3000 + _3044 + _5097 + 37] = 32
                    _6994 = mem[_6642]
                    mem[_3000 + _3044 + _5097 + 69] = mem[_6642]
                    mem[_3000 + _3044 + _5097 + 101 len ceil32(_6994)] = mem[_6642 + 32 len ceil32(_6994)]
                    if ceil32(_6994) > _6994:
                        mem[_6994 + _3000 + _3044 + _5097 + 101] = 0
                    return 32, mem[_3000 + _3044 + _5097 + 69 len ceil32(_6994) + 32]
                _6643 = mem[64]
                mem[64] = _3000 + _3044 + _5097 + 37
                mem[_3000 + _3044 + _5097 + 37] = 32
                _6995 = mem[_6643]
                mem[_3000 + _3044 + _5097 + 69] = mem[_6643]
                mem[_3000 + _3044 + _5097 + 101 len ceil32(_6995)] = mem[_6643 + 32 len ceil32(_6995)]
                if ceil32(_6995) > _6995:
                    mem[_6995 + _3000 + _3044 + _5097 + 101] = 0
                return 32, mem[_3000 + _3044 + _5097 + 69 len ceil32(_6995) + 32]
            mem[192 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3001 = mem[64]
            _3045 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _5098 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_3001 + _3045 + _5098 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5098) <= _5098:
                    _6644 = mem[64]
                    mem[64] = _3001 + _3045 + _5098 + 37
                    mem[_3001 + _3045 + _5098 + 37] = 32
                    _6996 = mem[_6644]
                    mem[_3001 + _3045 + _5098 + 69] = mem[_6644]
                    mem[_3001 + _3045 + _5098 + 101 len ceil32(_6996)] = mem[_6644 + 32 len ceil32(_6996)]
                    if ceil32(_6996) > _6996:
                        mem[_6996 + _3001 + _3045 + _5098 + 101] = 0
                    return 32, mem[_3001 + _3045 + _5098 + 69 len ceil32(_6996) + 32]
                _6645 = mem[64]
                mem[64] = _3001 + _3045 + _5098 + 37
                mem[_3001 + _3045 + _5098 + 37] = 32
                _6997 = mem[_6645]
                mem[_3001 + _3045 + _5098 + 69] = mem[_6645]
                mem[_3001 + _3045 + _5098 + 101 len ceil32(_6997)] = mem[_6645 + 32 len ceil32(_6997)]
                if ceil32(_6997) > _6997:
                    mem[_6997 + _3001 + _3045 + _5098 + 101] = 0
                return 32, mem[_3001 + _3045 + _5098 + 69 len ceil32(_6997) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5099 = mem[160]
            mem[_3001 + _3045 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_3001 + _3045 + _5099 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_5099) <= _5099:
                _6646 = mem[64]
                mem[64] = _3001 + _3045 + _5099 + 37
                mem[_3001 + _3045 + _5099 + 37] = 32
                _6998 = mem[_6646]
                mem[_3001 + _3045 + _5099 + 69] = mem[_6646]
                mem[_3001 + _3045 + _5099 + 101 len ceil32(_6998)] = mem[_6646 + 32 len ceil32(_6998)]
                if ceil32(_6998) > _6998:
                    mem[_6998 + _3001 + _3045 + _5099 + 101] = 0
                return 32, mem[_3001 + _3045 + _5099 + 69 len ceil32(_6998) + 32]
            _6647 = mem[64]
            mem[64] = _3001 + _3045 + _5099 + 37
            mem[_3001 + _3045 + _5099 + 37] = 32
            _6999 = mem[_6647]
            mem[_3001 + _3045 + _5099 + 69] = mem[_6647]
            mem[_3001 + _3045 + _5099 + 101 len ceil32(_6999)] = mem[_6647 + 32 len ceil32(_6999)]
            if ceil32(_6999) > _6999:
                mem[_6999 + _3001 + _3045 + _5099 + 101] = 0
            return 32, mem[_3001 + _3045 + _5099 + 69 len ceil32(_6999) + 32]
        if not arg1:
            mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
            mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[288] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
            mem[299] = 32
            mem[331] = mem[224]
            mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + 363] = 0
            return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
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
        mem[160] = s
        mem[64] = ceil32(s) + 192
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3002 = mem[64]
            _3046 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _5100 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_3002 + _3046 + _5100 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5100) <= _5100:
                    _6648 = mem[64]
                    mem[64] = _3002 + _3046 + _5100 + 43
                    mem[_3002 + _3046 + _5100 + 43] = 32
                    _7000 = mem[_6648]
                    mem[_3002 + _3046 + _5100 + 75] = mem[_6648]
                    mem[_3002 + _3046 + _5100 + 107 len ceil32(_7000)] = mem[_6648 + 32 len ceil32(_7000)]
                    if ceil32(_7000) > _7000:
                        mem[_7000 + _3002 + _3046 + _5100 + 107] = 0
                    return 32, mem[_3002 + _3046 + _5100 + 75 len ceil32(_7000) + 32]
                _6649 = mem[64]
                mem[64] = _3002 + _3046 + _5100 + 43
                mem[_3002 + _3046 + _5100 + 43] = 32
                _7001 = mem[_6649]
                mem[_3002 + _3046 + _5100 + 75] = mem[_6649]
                mem[_3002 + _3046 + _5100 + 107 len ceil32(_7001)] = mem[_6649 + 32 len ceil32(_7001)]
                if ceil32(_7001) > _7001:
                    mem[_7001 + _3002 + _3046 + _5100 + 107] = 0
                return 32, mem[_3002 + _3046 + _5100 + 75 len ceil32(_7001) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5101 = mem[160]
            mem[_3002 + _3046 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_3002 + _3046 + _5101 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5101) <= _5101:
                _6650 = mem[64]
                mem[64] = _3002 + _3046 + _5101 + 43
                mem[_3002 + _3046 + _5101 + 43] = 32
                _7002 = mem[_6650]
                mem[_3002 + _3046 + _5101 + 75] = mem[_6650]
                mem[_3002 + _3046 + _5101 + 107 len ceil32(_7002)] = mem[_6650 + 32 len ceil32(_7002)]
                if ceil32(_7002) > _7002:
                    mem[_7002 + _3002 + _3046 + _5101 + 107] = 0
                return 32, mem[_3002 + _3046 + _5101 + 75 len ceil32(_7002) + 32]
            _6651 = mem[64]
            mem[64] = _3002 + _3046 + _5101 + 43
            mem[_3002 + _3046 + _5101 + 43] = 32
            _7003 = mem[_6651]
            mem[_3002 + _3046 + _5101 + 75] = mem[_6651]
            mem[_3002 + _3046 + _5101 + 107 len ceil32(_7003)] = mem[_6651 + 32 len ceil32(_7003)]
            if ceil32(_7003) > _7003:
                mem[_7003 + _3002 + _3046 + _5101 + 107] = 0
            return 32, mem[_3002 + _3046 + _5101 + 75 len ceil32(_7003) + 32]
        mem[192 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[160]:
                revert with 0, 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _3003 = mem[64]
        _3047 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _5102 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_3003 + _3047 + _5102 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5102) <= _5102:
                _6652 = mem[64]
                mem[64] = _3003 + _3047 + _5102 + 43
                mem[_3003 + _3047 + _5102 + 43] = 32
                _7004 = mem[_6652]
                mem[_3003 + _3047 + _5102 + 75] = mem[_6652]
                mem[_3003 + _3047 + _5102 + 107 len ceil32(_7004)] = mem[_6652 + 32 len ceil32(_7004)]
                if ceil32(_7004) > _7004:
                    mem[_7004 + _3003 + _3047 + _5102 + 107] = 0
                return 32, mem[_3003 + _3047 + _5102 + 75 len ceil32(_7004) + 32]
            _6653 = mem[64]
            mem[64] = _3003 + _3047 + _5102 + 43
            mem[_3003 + _3047 + _5102 + 43] = 32
            _7005 = mem[_6653]
            mem[_3003 + _3047 + _5102 + 75] = mem[_6653]
            mem[_3003 + _3047 + _5102 + 107 len ceil32(_7005)] = mem[_6653 + 32 len ceil32(_7005)]
            if ceil32(_7005) > _7005:
                mem[_7005 + _3003 + _3047 + _5102 + 107] = 0
            return 32, mem[_3003 + _3047 + _5102 + 75 len ceil32(_7005) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _5103 = mem[160]
        mem[_3003 + _3047 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[_3003 + _3047 + _5103 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
        if ceil32(_5103) <= _5103:
            _6654 = mem[64]
            mem[64] = _3003 + _3047 + _5103 + 43
            mem[_3003 + _3047 + _5103 + 43] = 32
            _7006 = mem[_6654]
            mem[_3003 + _3047 + _5103 + 75] = mem[_6654]
            mem[_3003 + _3047 + _5103 + 107 len ceil32(_7006)] = mem[_6654 + 32 len ceil32(_7006)]
            if ceil32(_7006) > _7006:
                mem[_7006 + _3003 + _3047 + _5103 + 107] = 0
            return 32, mem[_3003 + _3047 + _5103 + 75 len ceil32(_7006) + 32]
        _6655 = mem[64]
        mem[64] = _3003 + _3047 + _5103 + 43
        mem[_3003 + _3047 + _5103 + 43] = 32
        _7007 = mem[_6655]
        mem[_3003 + _3047 + _5103 + 75] = mem[_6655]
        mem[_3003 + _3047 + _5103 + 107 len ceil32(_7007)] = mem[_6655 + 32 len ceil32(_7007)]
        if ceil32(_7007) > _7007:
            mem[_7007 + _3003 + _3047 + _5103 + 107] = 0
        return 32, mem[_3003 + _3047 + _5103 + 75 len ceil32(_7007) + 32]
    if block.number < 1:
        revert with 0, 17
    if sub_9c428332[arg1] >= block.number - 1:
        revert with 0, 'Token unrevealed'
    mem[32] = 20
    if 2 == stor20[arg1]:
        mem[96] = 31
        mem[0] = arg1
        mem[128] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
        if not arg1:
            mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
            mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[288] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
            mem[299] = 32
            mem[331] = mem[224]
            mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + 363] = 0
            return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
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
        mem[160] = s
        mem[64] = ceil32(s) + 192
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3014 = mem[64]
            _3058 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _5124 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_3014 + _3058 + _5124 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5124) <= _5124:
                    _6696 = mem[64]
                    mem[64] = _3014 + _3058 + _5124 + 43
                    mem[_3014 + _3058 + _5124 + 43] = 32
                    _7048 = mem[_6696]
                    mem[_3014 + _3058 + _5124 + 75] = mem[_6696]
                    mem[_3014 + _3058 + _5124 + 107 len ceil32(_7048)] = mem[_6696 + 32 len ceil32(_7048)]
                    if ceil32(_7048) > _7048:
                        mem[_7048 + _3014 + _3058 + _5124 + 107] = 0
                    return 32, mem[_3014 + _3058 + _5124 + 75 len ceil32(_7048) + 32]
                _6697 = mem[64]
                mem[64] = _3014 + _3058 + _5124 + 43
                mem[_3014 + _3058 + _5124 + 43] = 32
                _7049 = mem[_6697]
                mem[_3014 + _3058 + _5124 + 75] = mem[_6697]
                mem[_3014 + _3058 + _5124 + 107 len ceil32(_7049)] = mem[_6697 + 32 len ceil32(_7049)]
                if ceil32(_7049) > _7049:
                    mem[_7049 + _3014 + _3058 + _5124 + 107] = 0
                return 32, mem[_3014 + _3058 + _5124 + 75 len ceil32(_7049) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5125 = mem[160]
            mem[_3014 + _3058 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_3014 + _3058 + _5125 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5125) <= _5125:
                _6698 = mem[64]
                mem[64] = _3014 + _3058 + _5125 + 43
                mem[_3014 + _3058 + _5125 + 43] = 32
                _7050 = mem[_6698]
                mem[_3014 + _3058 + _5125 + 75] = mem[_6698]
                mem[_3014 + _3058 + _5125 + 107 len ceil32(_7050)] = mem[_6698 + 32 len ceil32(_7050)]
                if ceil32(_7050) > _7050:
                    mem[_7050 + _3014 + _3058 + _5125 + 107] = 0
                return 32, mem[_3014 + _3058 + _5125 + 75 len ceil32(_7050) + 32]
            _6699 = mem[64]
            mem[64] = _3014 + _3058 + _5125 + 43
            mem[_3014 + _3058 + _5125 + 43] = 32
            _7051 = mem[_6699]
            mem[_3014 + _3058 + _5125 + 75] = mem[_6699]
            mem[_3014 + _3058 + _5125 + 107 len ceil32(_7051)] = mem[_6699 + 32 len ceil32(_7051)]
            if ceil32(_7051) > _7051:
                mem[_7051 + _3014 + _3058 + _5125 + 107] = 0
            return 32, mem[_3014 + _3058 + _5125 + 75 len ceil32(_7051) + 32]
        mem[192 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[160]:
                revert with 0, 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _3015 = mem[64]
        _3059 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _5126 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_3015 + _3059 + _5126 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5126) <= _5126:
                _6700 = mem[64]
                mem[64] = _3015 + _3059 + _5126 + 43
                mem[_3015 + _3059 + _5126 + 43] = 32
                _7052 = mem[_6700]
                mem[_3015 + _3059 + _5126 + 75] = mem[_6700]
                mem[_3015 + _3059 + _5126 + 107 len ceil32(_7052)] = mem[_6700 + 32 len ceil32(_7052)]
                if ceil32(_7052) > _7052:
                    mem[_7052 + _3015 + _3059 + _5126 + 107] = 0
                return 32, mem[_3015 + _3059 + _5126 + 75 len ceil32(_7052) + 32]
            _6701 = mem[64]
            mem[64] = _3015 + _3059 + _5126 + 43
            mem[_3015 + _3059 + _5126 + 43] = 32
            _7053 = mem[_6701]
            mem[_3015 + _3059 + _5126 + 75] = mem[_6701]
            mem[_3015 + _3059 + _5126 + 107 len ceil32(_7053)] = mem[_6701 + 32 len ceil32(_7053)]
            if ceil32(_7053) > _7053:
                mem[_7053 + _3015 + _3059 + _5126 + 107] = 0
            return 32, mem[_3015 + _3059 + _5126 + 75 len ceil32(_7053) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _5127 = mem[160]
        mem[_3015 + _3059 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[_3015 + _3059 + _5127 + 32] = 0x2d616c69656e2e6a736f6e000000000000000000000000000000000000000000
        if ceil32(_5127) <= _5127:
            _6702 = mem[64]
            mem[64] = _3015 + _3059 + _5127 + 43
            mem[_3015 + _3059 + _5127 + 43] = 32
            _7054 = mem[_6702]
            mem[_3015 + _3059 + _5127 + 75] = mem[_6702]
            mem[_3015 + _3059 + _5127 + 107 len ceil32(_7054)] = mem[_6702 + 32 len ceil32(_7054)]
            if ceil32(_7054) > _7054:
                mem[_7054 + _3015 + _3059 + _5127 + 107] = 0
            return 32, mem[_3015 + _3059 + _5127 + 75 len ceil32(_7054) + 32]
        _6703 = mem[64]
        mem[64] = _3015 + _3059 + _5127 + 43
        mem[_3015 + _3059 + _5127 + 43] = 32
        _7055 = mem[_6703]
        mem[_3015 + _3059 + _5127 + 75] = mem[_6703]
        mem[_3015 + _3059 + _5127 + 107 len ceil32(_7055)] = mem[_6703 + 32 len ceil32(_7055)]
        if ceil32(_7055) > _7055:
            mem[_7055 + _3015 + _3059 + _5127 + 107] = 0
        return 32, mem[_3015 + _3059 + _5127 + 75 len ceil32(_7055) + 32]
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token ID'
    if 10000 <= arg1:
        mem[32] = 20
        mem[96] = 31
        mem[0] = arg1
        mem[128] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
        if stor20[arg1] != 1:
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
                mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[288] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[293] = 32
                mem[325] = mem[224]
                mem[357 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 357] = 0
                return Array(len=mem[224], data=mem[357 len ceil32(mem[224])])
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
            mem[160] = s
            mem[64] = ceil32(s) + 192
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[160]:
                        revert with 0, 50
                    mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3006 = mem[64]
                _3050 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _5108 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_3006 + _3050 + _5108 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_5108) <= _5108:
                        _6664 = mem[64]
                        mem[64] = _3006 + _3050 + _5108 + 37
                        mem[_3006 + _3050 + _5108 + 37] = 32
                        _7016 = mem[_6664]
                        mem[_3006 + _3050 + _5108 + 69] = mem[_6664]
                        mem[_3006 + _3050 + _5108 + 101 len ceil32(_7016)] = mem[_6664 + 32 len ceil32(_7016)]
                        if ceil32(_7016) > _7016:
                            mem[_7016 + _3006 + _3050 + _5108 + 101] = 0
                        return 32, mem[_3006 + _3050 + _5108 + 69 len ceil32(_7016) + 32]
                    _6665 = mem[64]
                    mem[64] = _3006 + _3050 + _5108 + 37
                    mem[_3006 + _3050 + _5108 + 37] = 32
                    _7017 = mem[_6665]
                    mem[_3006 + _3050 + _5108 + 69] = mem[_6665]
                    mem[_3006 + _3050 + _5108 + 101 len ceil32(_7017)] = mem[_6665 + 32 len ceil32(_7017)]
                    if ceil32(_7017) > _7017:
                        mem[_7017 + _3006 + _3050 + _5108 + 101] = 0
                    return 32, mem[_3006 + _3050 + _5108 + 69 len ceil32(_7017) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5109 = mem[160]
                mem[_3006 + _3050 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_3006 + _3050 + _5109 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5109) <= _5109:
                    _6666 = mem[64]
                    mem[64] = _3006 + _3050 + _5109 + 37
                    mem[_3006 + _3050 + _5109 + 37] = 32
                    _7018 = mem[_6666]
                    mem[_3006 + _3050 + _5109 + 69] = mem[_6666]
                    mem[_3006 + _3050 + _5109 + 101 len ceil32(_7018)] = mem[_6666 + 32 len ceil32(_7018)]
                    if ceil32(_7018) > _7018:
                        mem[_7018 + _3006 + _3050 + _5109 + 101] = 0
                    return 32, mem[_3006 + _3050 + _5109 + 69 len ceil32(_7018) + 32]
                _6667 = mem[64]
                mem[64] = _3006 + _3050 + _5109 + 37
                mem[_3006 + _3050 + _5109 + 37] = 32
                _7019 = mem[_6667]
                mem[_3006 + _3050 + _5109 + 69] = mem[_6667]
                mem[_3006 + _3050 + _5109 + 101 len ceil32(_7019)] = mem[_6667 + 32 len ceil32(_7019)]
                if ceil32(_7019) > _7019:
                    mem[_7019 + _3006 + _3050 + _5109 + 101] = 0
                return 32, mem[_3006 + _3050 + _5109 + 69 len ceil32(_7019) + 32]
            mem[192 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3007 = mem[64]
            _3051 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _5110 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_3007 + _3051 + _5110 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5110) <= _5110:
                    _6668 = mem[64]
                    mem[64] = _3007 + _3051 + _5110 + 37
                    mem[_3007 + _3051 + _5110 + 37] = 32
                    _7020 = mem[_6668]
                    mem[_3007 + _3051 + _5110 + 69] = mem[_6668]
                    mem[_3007 + _3051 + _5110 + 101 len ceil32(_7020)] = mem[_6668 + 32 len ceil32(_7020)]
                    if ceil32(_7020) > _7020:
                        mem[_7020 + _3007 + _3051 + _5110 + 101] = 0
                    return 32, mem[_3007 + _3051 + _5110 + 69 len ceil32(_7020) + 32]
                _6669 = mem[64]
                mem[64] = _3007 + _3051 + _5110 + 37
                mem[_3007 + _3051 + _5110 + 37] = 32
                _7021 = mem[_6669]
                mem[_3007 + _3051 + _5110 + 69] = mem[_6669]
                mem[_3007 + _3051 + _5110 + 101 len ceil32(_7021)] = mem[_6669 + 32 len ceil32(_7021)]
                if ceil32(_7021) > _7021:
                    mem[_7021 + _3007 + _3051 + _5110 + 101] = 0
                return 32, mem[_3007 + _3051 + _5110 + 69 len ceil32(_7021) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5111 = mem[160]
            mem[_3007 + _3051 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_3007 + _3051 + _5111 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_5111) <= _5111:
                _6670 = mem[64]
                mem[64] = _3007 + _3051 + _5111 + 37
                mem[_3007 + _3051 + _5111 + 37] = 32
                _7022 = mem[_6670]
                mem[_3007 + _3051 + _5111 + 69] = mem[_6670]
                mem[_3007 + _3051 + _5111 + 101 len ceil32(_7022)] = mem[_6670 + 32 len ceil32(_7022)]
                if ceil32(_7022) > _7022:
                    mem[_7022 + _3007 + _3051 + _5111 + 101] = 0
                return 32, mem[_3007 + _3051 + _5111 + 69 len ceil32(_7022) + 32]
            _6671 = mem[64]
            mem[64] = _3007 + _3051 + _5111 + 37
            mem[_3007 + _3051 + _5111 + 37] = 32
            _7023 = mem[_6671]
            mem[_3007 + _3051 + _5111 + 69] = mem[_6671]
            mem[_3007 + _3051 + _5111 + 101 len ceil32(_7023)] = mem[_6671 + 32 len ceil32(_7023)]
            if ceil32(_7023) > _7023:
                mem[_7023 + _3007 + _3051 + _5111 + 101] = 0
            return 32, mem[_3007 + _3051 + _5111 + 69 len ceil32(_7023) + 32]
        if not arg1:
            mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
            mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[288] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
            mem[299] = 32
            mem[331] = mem[224]
            mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + 363] = 0
            return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
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
        mem[160] = s
        mem[64] = ceil32(s) + 192
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3008 = mem[64]
            _3052 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _5112 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_3008 + _3052 + _5112 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
                if ceil32(_5112) <= _5112:
                    _6672 = mem[64]
                    mem[64] = _3008 + _3052 + _5112 + 43
                    mem[_3008 + _3052 + _5112 + 43] = 32
                    _7024 = mem[_6672]
                    mem[_3008 + _3052 + _5112 + 75] = mem[_6672]
                    mem[_3008 + _3052 + _5112 + 107 len ceil32(_7024)] = mem[_6672 + 32 len ceil32(_7024)]
                    if ceil32(_7024) > _7024:
                        mem[_7024 + _3008 + _3052 + _5112 + 107] = 0
                    return 32, mem[_3008 + _3052 + _5112 + 75 len ceil32(_7024) + 32]
                _6673 = mem[64]
                mem[64] = _3008 + _3052 + _5112 + 43
                mem[_3008 + _3052 + _5112 + 43] = 32
                _7025 = mem[_6673]
                mem[_3008 + _3052 + _5112 + 75] = mem[_6673]
                mem[_3008 + _3052 + _5112 + 107 len ceil32(_7025)] = mem[_6673 + 32 len ceil32(_7025)]
                if ceil32(_7025) > _7025:
                    mem[_7025 + _3008 + _3052 + _5112 + 107] = 0
                return 32, mem[_3008 + _3052 + _5112 + 75 len ceil32(_7025) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5113 = mem[160]
            mem[_3008 + _3052 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_3008 + _3052 + _5113 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5113) <= _5113:
                _6674 = mem[64]
                mem[64] = _3008 + _3052 + _5113 + 43
                mem[_3008 + _3052 + _5113 + 43] = 32
                _7026 = mem[_6674]
                mem[_3008 + _3052 + _5113 + 75] = mem[_6674]
                mem[_3008 + _3052 + _5113 + 107 len ceil32(_7026)] = mem[_6674 + 32 len ceil32(_7026)]
                if ceil32(_7026) > _7026:
                    mem[_7026 + _3008 + _3052 + _5113 + 107] = 0
                return 32, mem[_3008 + _3052 + _5113 + 75 len ceil32(_7026) + 32]
            _6675 = mem[64]
            mem[64] = _3008 + _3052 + _5113 + 43
            mem[_3008 + _3052 + _5113 + 43] = 32
            _7027 = mem[_6675]
            mem[_3008 + _3052 + _5113 + 75] = mem[_6675]
            mem[_3008 + _3052 + _5113 + 107 len ceil32(_7027)] = mem[_6675 + 32 len ceil32(_7027)]
            if ceil32(_7027) > _7027:
                mem[_7027 + _3008 + _3052 + _5113 + 107] = 0
            return 32, mem[_3008 + _3052 + _5113 + 75 len ceil32(_7027) + 32]
        mem[192 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[160]:
                revert with 0, 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _3009 = mem[64]
        _3053 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _5114 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_3009 + _3053 + _5114 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5114) <= _5114:
                _6676 = mem[64]
                mem[64] = _3009 + _3053 + _5114 + 43
                mem[_3009 + _3053 + _5114 + 43] = 32
                _7028 = mem[_6676]
                mem[_3009 + _3053 + _5114 + 75] = mem[_6676]
                mem[_3009 + _3053 + _5114 + 107 len ceil32(_7028)] = mem[_6676 + 32 len ceil32(_7028)]
                if ceil32(_7028) > _7028:
                    mem[_7028 + _3009 + _3053 + _5114 + 107] = 0
                return 32, mem[_3009 + _3053 + _5114 + 75 len ceil32(_7028) + 32]
            _6677 = mem[64]
            mem[64] = _3009 + _3053 + _5114 + 43
            mem[_3009 + _3053 + _5114 + 43] = 32
            _7029 = mem[_6677]
            mem[_3009 + _3053 + _5114 + 75] = mem[_6677]
            mem[_3009 + _3053 + _5114 + 107 len ceil32(_7029)] = mem[_6677 + 32 len ceil32(_7029)]
            if ceil32(_7029) > _7029:
                mem[_7029 + _3009 + _3053 + _5114 + 107] = 0
            return 32, mem[_3009 + _3053 + _5114 + 75 len ceil32(_7029) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _5115 = mem[160]
        mem[_3009 + _3053 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[_3009 + _3053 + _5115 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
        if ceil32(_5115) <= _5115:
            _6678 = mem[64]
            mem[64] = _3009 + _3053 + _5115 + 43
            mem[_3009 + _3053 + _5115 + 43] = 32
            _7030 = mem[_6678]
            mem[_3009 + _3053 + _5115 + 75] = mem[_6678]
            mem[_3009 + _3053 + _5115 + 107 len ceil32(_7030)] = mem[_6678 + 32 len ceil32(_7030)]
            if ceil32(_7030) > _7030:
                mem[_7030 + _3009 + _3053 + _5115 + 107] = 0
            return 32, mem[_3009 + _3053 + _5115 + 75 len ceil32(_7030) + 32]
        _6679 = mem[64]
        mem[64] = _3009 + _3053 + _5115 + 43
        mem[_3009 + _3053 + _5115 + 43] = 32
        _7031 = mem[_6679]
        mem[_3009 + _3053 + _5115 + 75] = mem[_6679]
        mem[_3009 + _3053 + _5115 + 107 len ceil32(_7031)] = mem[_6679 + 32 len ceil32(_7031)]
        if ceil32(_7031) > _7031:
            mem[_7031 + _3009 + _3053 + _5115 + 107] = 0
        return 32, mem[_3009 + _3053 + _5115 + 75 len ceil32(_7031) + 32]
    if block.number < 1:
        revert with 0, 17
    if sub_9c428332[arg1] >= block.number - 1:
        revert with 0, 'Token unrevealed'
    mem[32] = 20
    mem[96] = 31
    mem[0] = arg1
    mem[128] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
    if stor20[arg1] != 1:
        if not arg1:
            mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
            mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[288] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[293] = 32
            mem[325] = mem[224]
            mem[357 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + 357] = 0
            return Array(len=mem[224], data=mem[357 len ceil32(mem[224])])
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
        mem[160] = s
        mem[64] = ceil32(s) + 192
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3010 = mem[64]
            _3054 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _5116 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_3010 + _3054 + _5116 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5116) <= _5116:
                    _6680 = mem[64]
                    mem[64] = _3010 + _3054 + _5116 + 37
                    mem[_3010 + _3054 + _5116 + 37] = 32
                    _7032 = mem[_6680]
                    mem[_3010 + _3054 + _5116 + 69] = mem[_6680]
                    mem[_3010 + _3054 + _5116 + 101 len ceil32(_7032)] = mem[_6680 + 32 len ceil32(_7032)]
                    if ceil32(_7032) > _7032:
                        mem[_7032 + _3010 + _3054 + _5116 + 101] = 0
                    return 32, mem[_3010 + _3054 + _5116 + 69 len ceil32(_7032) + 32]
                _6681 = mem[64]
                mem[64] = _3010 + _3054 + _5116 + 37
                mem[_3010 + _3054 + _5116 + 37] = 32
                _7033 = mem[_6681]
                mem[_3010 + _3054 + _5116 + 69] = mem[_6681]
                mem[_3010 + _3054 + _5116 + 101 len ceil32(_7033)] = mem[_6681 + 32 len ceil32(_7033)]
                if ceil32(_7033) > _7033:
                    mem[_7033 + _3010 + _3054 + _5116 + 101] = 0
                return 32, mem[_3010 + _3054 + _5116 + 69 len ceil32(_7033) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5117 = mem[160]
            mem[_3010 + _3054 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_3010 + _3054 + _5117 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_5117) <= _5117:
                _6682 = mem[64]
                mem[64] = _3010 + _3054 + _5117 + 37
                mem[_3010 + _3054 + _5117 + 37] = 32
                _7034 = mem[_6682]
                mem[_3010 + _3054 + _5117 + 69] = mem[_6682]
                mem[_3010 + _3054 + _5117 + 101 len ceil32(_7034)] = mem[_6682 + 32 len ceil32(_7034)]
                if ceil32(_7034) > _7034:
                    mem[_7034 + _3010 + _3054 + _5117 + 101] = 0
                return 32, mem[_3010 + _3054 + _5117 + 69 len ceil32(_7034) + 32]
            _6683 = mem[64]
            mem[64] = _3010 + _3054 + _5117 + 37
            mem[_3010 + _3054 + _5117 + 37] = 32
            _7035 = mem[_6683]
            mem[_3010 + _3054 + _5117 + 69] = mem[_6683]
            mem[_3010 + _3054 + _5117 + 101 len ceil32(_7035)] = mem[_6683 + 32 len ceil32(_7035)]
            if ceil32(_7035) > _7035:
                mem[_7035 + _3010 + _3054 + _5117 + 101] = 0
            return 32, mem[_3010 + _3054 + _5117 + 69 len ceil32(_7035) + 32]
        mem[192 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[160]:
                revert with 0, 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _3011 = mem[64]
        _3055 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _5118 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_3011 + _3055 + _5118 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_5118) <= _5118:
                _6684 = mem[64]
                mem[64] = _3011 + _3055 + _5118 + 37
                mem[_3011 + _3055 + _5118 + 37] = 32
                _7036 = mem[_6684]
                mem[_3011 + _3055 + _5118 + 69] = mem[_6684]
                mem[_3011 + _3055 + _5118 + 101 len ceil32(_7036)] = mem[_6684 + 32 len ceil32(_7036)]
                if ceil32(_7036) > _7036:
                    mem[_7036 + _3011 + _3055 + _5118 + 101] = 0
                return 32, mem[_3011 + _3055 + _5118 + 69 len ceil32(_7036) + 32]
            _6685 = mem[64]
            mem[64] = _3011 + _3055 + _5118 + 37
            mem[_3011 + _3055 + _5118 + 37] = 32
            _7037 = mem[_6685]
            mem[_3011 + _3055 + _5118 + 69] = mem[_6685]
            mem[_3011 + _3055 + _5118 + 101 len ceil32(_7037)] = mem[_6685 + 32 len ceil32(_7037)]
            if ceil32(_7037) > _7037:
                mem[_7037 + _3011 + _3055 + _5118 + 101] = 0
            return 32, mem[_3011 + _3055 + _5118 + 69 len ceil32(_7037) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _5119 = mem[160]
        mem[_3011 + _3055 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[_3011 + _3055 + _5119 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_5119) <= _5119:
            _6686 = mem[64]
            mem[64] = _3011 + _3055 + _5119 + 37
            mem[_3011 + _3055 + _5119 + 37] = 32
            _7038 = mem[_6686]
            mem[_3011 + _3055 + _5119 + 69] = mem[_6686]
            mem[_3011 + _3055 + _5119 + 101 len ceil32(_7038)] = mem[_6686 + 32 len ceil32(_7038)]
            if ceil32(_7038) > _7038:
                mem[_7038 + _3011 + _3055 + _5119 + 101] = 0
            return 32, mem[_3011 + _3055 + _5119 + 69 len ceil32(_7038) + 32]
        _6687 = mem[64]
        mem[64] = _3011 + _3055 + _5119 + 37
        mem[_3011 + _3055 + _5119 + 37] = 32
        _7039 = mem[_6687]
        mem[_3011 + _3055 + _5119 + 69] = mem[_6687]
        mem[_3011 + _3055 + _5119 + 101 len ceil32(_7039)] = mem[_6687 + 32 len ceil32(_7039)]
        if ceil32(_7039) > _7039:
            mem[_7039 + _3011 + _3055 + _5119 + 101] = 0
        return 32, mem[_3011 + _3055 + _5119 + 69 len ceil32(_7039) + 32]
    if not arg1:
        mem[256] = 0xfe68747470733a2f2f6275726765722d67616d652e636f6d2f746f6b656e732f
        mem[287] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[288] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
        mem[299] = 32
        mem[331] = mem[224]
        mem[363 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
        if ceil32(mem[224]) > mem[224]:
            mem[mem[224] + 363] = 0
        return Array(len=mem[224], data=mem[363 len ceil32(mem[224])])
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
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[160]:
                revert with 0, 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _3012 = mem[64]
        _3056 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _5120 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_3012 + _3056 + _5120 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
            if ceil32(_5120) <= _5120:
                _6688 = mem[64]
                mem[64] = _3012 + _3056 + _5120 + 43
                mem[_3012 + _3056 + _5120 + 43] = 32
                _7040 = mem[_6688]
                mem[_3012 + _3056 + _5120 + 75] = mem[_6688]
                mem[_3012 + _3056 + _5120 + 107 len ceil32(_7040)] = mem[_6688 + 32 len ceil32(_7040)]
                if ceil32(_7040) > _7040:
                    mem[_7040 + _3012 + _3056 + _5120 + 107] = 0
                return 32, mem[_3012 + _3056 + _5120 + 75 len ceil32(_7040) + 32]
            _6689 = mem[64]
            mem[64] = _3012 + _3056 + _5120 + 43
            mem[_3012 + _3056 + _5120 + 43] = 32
            _7041 = mem[_6689]
            mem[_3012 + _3056 + _5120 + 75] = mem[_6689]
            mem[_3012 + _3056 + _5120 + 107 len ceil32(_7041)] = mem[_6689 + 32 len ceil32(_7041)]
            if ceil32(_7041) > _7041:
                mem[_7041 + _3012 + _3056 + _5120 + 107] = 0
            return 32, mem[_3012 + _3056 + _5120 + 75 len ceil32(_7041) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _5121 = mem[160]
        mem[_3012 + _3056 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[_3012 + _3056 + _5121 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
        if ceil32(_5121) <= _5121:
            _6690 = mem[64]
            mem[64] = _3012 + _3056 + _5121 + 43
            mem[_3012 + _3056 + _5121 + 43] = 32
            _7042 = mem[_6690]
            mem[_3012 + _3056 + _5121 + 75] = mem[_6690]
            mem[_3012 + _3056 + _5121 + 107 len ceil32(_7042)] = mem[_6690 + 32 len ceil32(_7042)]
            if ceil32(_7042) > _7042:
                mem[_7042 + _3012 + _3056 + _5121 + 107] = 0
            return 32, mem[_3012 + _3056 + _5121 + 75 len ceil32(_7042) + 32]
        _6691 = mem[64]
        mem[64] = _3012 + _3056 + _5121 + 43
        mem[_3012 + _3056 + _5121 + 43] = 32
        _7043 = mem[_6691]
        mem[_3012 + _3056 + _5121 + 75] = mem[_6691]
        mem[_3012 + _3056 + _5121 + 107 len ceil32(_7043)] = mem[_6691 + 32 len ceil32(_7043)]
        if ceil32(_7043) > _7043:
            mem[_7043 + _3012 + _3056 + _5121 + 107] = 0
        return 32, mem[_3012 + _3056 + _5121 + 75 len ceil32(_7043) + 32]
    mem[192 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[160]:
            revert with 0, 50
        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _3013 = mem[64]
    _3057 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _5122 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[_3013 + _3057 + _5122 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
        if ceil32(_5122) <= _5122:
            _6692 = mem[64]
            mem[64] = _3013 + _3057 + _5122 + 43
            mem[_3013 + _3057 + _5122 + 43] = 32
            _7044 = mem[_6692]
            mem[_3013 + _3057 + _5122 + 75] = mem[_6692]
            mem[_3013 + _3057 + _5122 + 107 len ceil32(_7044)] = mem[_6692 + 32 len ceil32(_7044)]
            if ceil32(_7044) > _7044:
                mem[_7044 + _3013 + _3057 + _5122 + 107] = 0
            return 32, mem[_3013 + _3057 + _5122 + 75 len ceil32(_7044) + 32]
        _6693 = mem[64]
        mem[64] = _3013 + _3057 + _5122 + 43
        mem[_3013 + _3057 + _5122 + 43] = 32
        _7045 = mem[_6693]
        mem[_3013 + _3057 + _5122 + 75] = mem[_6693]
        mem[_3013 + _3057 + _5122 + 107 len ceil32(_7045)] = mem[_6693 + 32 len ceil32(_7045)]
        if ceil32(_7045) > _7045:
            mem[_7045 + _3013 + _3057 + _5122 + 107] = 0
        return 32, mem[_3013 + _3057 + _5122 + 75 len ceil32(_7045) + 32]
    mem[mem[96] + mem[64] + 32] = 0
    _5123 = mem[160]
    mem[_3013 + _3057 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    mem[_3013 + _3057 + _5123 + 32] = 0x2d726f626f742e6a736f6e000000000000000000000000000000000000000000
    if ceil32(_5123) <= _5123:
        _6694 = mem[64]
        mem[64] = _3013 + _3057 + _5123 + 43
        mem[_3013 + _3057 + _5123 + 43] = 32
        _7046 = mem[_6694]
        mem[_3013 + _3057 + _5123 + 75] = mem[_6694]
        mem[_3013 + _3057 + _5123 + 107 len ceil32(_7046)] = mem[_6694 + 32 len ceil32(_7046)]
        if ceil32(_7046) > _7046:
            mem[_7046 + _3013 + _3057 + _5123 + 107] = 0
        return 32, mem[_3013 + _3057 + _5123 + 75 len ceil32(_7046) + 32]
    _6695 = mem[64]
    mem[64] = _3013 + _3057 + _5123 + 43
    mem[_3013 + _3057 + _5123 + 43] = 32
    _7047 = mem[_6695]
    mem[_3013 + _3057 + _5123 + 75] = mem[_6695]
    mem[_3013 + _3057 + _5123 + 107 len ceil32(_7047)] = mem[_6695 + 32 len ceil32(_7047)]
    if ceil32(_7047) > _7047:
        mem[_7047 + _3013 + _3057 + _5123 + 107] = 0
    return 32, mem[_3013 + _3057 + _5123 + 75 len ceil32(_7047) + 32]
}



}

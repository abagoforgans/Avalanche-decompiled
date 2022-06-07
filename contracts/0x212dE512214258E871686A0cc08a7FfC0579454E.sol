contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const sub_054ee789(?) = 15 * 10^16

const sub_064d705e(?) = 10000

const sub_37f6727f(?) = (48 * 24 * 3600)

const sub_99d4a439(?) = 5

const sub_ec2515a4(?) = 20

const MAX_PER_MINT = 50

const PRESALE_MINT_PRICE = 10^17

const MAX_PRESALE_SUPPLY = 1000

const BASE_URI = 32, 28, 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f, 0


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
address codeAddress;
address sub_f455334eAddress;
uint256 baseSupply;
uint8 stor14;
uint256 presaleSupply;
uint256 sub_ebe2ca7b;
uint256 sub_0faba62a;
uint256 sub_f62a12e1;
uint256 presaleStartTime;
uint256 sub_1b54c025;
mapping of uint256 stor21;
mapping of uint256 sub_9c428332;
array of struct levels;
array of uint256 stor89622809563556123081897041840816014639138942293158154584485133346364573191189;
array of uint256 stor89622809563556123081897041840816014639138942293158154584485133346364573191190;
array of uint256 stor89622809563556123081897041840816014639138942293158154584485133346364573191191;
array of uint256 stor89622809563556123081897041840816014639138942293158154584485133346364573191192;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0faba62a(?) {
    return sub_0faba62a
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1b54c025(?) {
    return sub_1b54c025
}

function code() {
    return codeAddress
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

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function gameStarted() {
    return bool(stor14)
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

function sub_ebe2ca7b(?) {
    return sub_ebe2ca7b
}

function sub_f455334e(?) {
    return sub_f455334eAddress
}

function sub_f62a12e1(?) {
    return sub_f62a12e1
}

function _fallback() payable {
    revert
}

function startGame() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = 1
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

function setCode(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    codeAddress = arg1
}

function sub_bbc8275c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f455334eAddress = address(arg1)
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_f455334eAddress != arg2:
        return bool(stor5[address(arg1)][address(arg2)])
    return 1
}

function setSalesStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'Start time must be in the future'
    sub_1b54c025 = arg1
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

function setPresaleStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'Start time must be in the future'
    presaleStartTime = arg1
}

function sub_901507f8(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    levels.length++
    storC624[stor23.length] = 0
    storC624[stor23.length] = arg1
    storC624[stor23.length] = arg2
    storC624[stor23.length] = arg3
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
    return stor21[arg1]
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

function sub_1b97228e(?) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token ID'
    if 10000 > arg1:
        if block.number < 1:
            revert with 0, 17
        if sub_9c428332[arg1] >= block.number - 1:
            revert with 0, 'Token unrevealed'
    if stor21[arg1] >= levels.length:
        revert with 0, 50
    return levels[stor21[arg1]].field_768
}

function contractURI() {
    mem[192] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
    mem[220] = 0x636f6e74726163742d6d6574612e6a736f6e0000000000000000000000000000
    mem[238] = 32
    mem[270] = mem[160]
    mem[302 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if ceil32(mem[160]) > mem[160]:
        mem[mem[160] + 302] = 0
    return Array(len=mem[160], data=mem[302 len ceil32(mem[160])])
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
        if sub_f455334eAddress != msg.sender:
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
            if sub_f455334eAddress != msg.sender:
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
            if sub_f455334eAddress != msg.sender:
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

function sub_decec7d9(?) {
    require calldata.size - 4 >= 64
    require arg2 == uint16(arg2)
    if not stor14:
        revert with 0, 'Upgrade sales are not open'
    if uint16(arg2) > 50:
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
    mem[0] = 23
    if uint16(arg2) and levels[arg1].field_512 > -1 / uint16(arg2):
        revert with 0, 17
    mem[100] = msg.sender
    require ext_code.size(codeAddress)
    staticcall codeAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] < uint16(arg2) * levels[arg1].field_512:
        revert with 0, 'Insufficient CODE balance'
    mem[ceil32(return_data.size) + 96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = uint16(arg2) * levels[arg1].field_512
    require ext_code.size(codeAddress)
    call codeAddress.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, uint16(arg2) * levels[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < uint16(arg2):
        if 10000 > !sub_ebe2ca7b:
            revert with 0, 17
        _161 = mem[64]
        mem[64] = mem[64] + 32
        mem[_161] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor16 + 10000]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor16 + 10000] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sub_ebe2ca7b + 10000
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_ebe2ca7b + 10000
                mem[32] = 2
                ownerOf[stor16 + 10000] = msg.sender
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
                        mem[s + mem[64] + 164] = mem[s + _161 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
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
                    _309 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_309] == Mask(32, 224, mem[_309])
                    if Mask(32, 224, mem[_309]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = sub_ebe2ca7b + 10000
                stor7[stor16 + 10000] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = sub_ebe2ca7b + 10000
                mem[32] = 2
                ownerOf[stor16 + 10000] = msg.sender
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
                        mem[s + mem[64] + 164] = mem[s + _161 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
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
                    _311 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_311] == Mask(32, 224, mem[_311])
                    if Mask(32, 224, mem[_311]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor16 + 10000] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor16 + 10000]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor16 + 10000]
            stor9[stor16 + 10000] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = sub_ebe2ca7b + 10000
            mem[32] = 2
            ownerOf[stor16 + 10000] = msg.sender
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
                    mem[s + mem[64] + 164] = mem[s + _161 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.0x150b7a02 with:
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
                _313 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_313] == Mask(32, 224, mem[_313])
                if Mask(32, 224, mem[_313]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        mem[32] = 21
        stor21[stor16 + 10000] = arg1
        if arg1 >= levels.length:
            revert with 0, 50
        mem[0] = 23
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
    if uint16(arg1) > 50:
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
                    mem[32] = 22
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
                    if sha3(mem[_375 + 32 len mem[_375]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                    call msg.sender.0x150b7a02 with:
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
                    mem[32] = 22
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
                    if sha3(mem[_643 + 32 len mem[_643]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                    mem[32] = 22
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
                    if sha3(mem[_402 + 32 len mem[_402]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                    call msg.sender.0x150b7a02 with:
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
                    mem[32] = 22
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
                    if sha3(mem[_651 + 32 len mem[_651]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                mem[32] = 22
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
                if sha3(mem[_410 + 32 len mem[_410]]) % 100 < 5:
                    mem[0] = baseSupply
                    mem[32] = 21
                    stor21[stor13] = 2
                    if sub_f62a12e1 == -1:
                        revert with 0, 17
                    sub_f62a12e1++
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
                    mem[32] = 21
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor21[stor13] = 0
                    else:
                        stor21[stor13] = 1
                        if sub_0faba62a == -1:
                            revert with 0, 17
                        sub_0faba62a++
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
                call msg.sender.0x150b7a02 with:
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
                mem[32] = 22
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
                if sha3(mem[_659 + 32 len mem[_659]]) % 100 < 5:
                    mem[0] = baseSupply
                    mem[32] = 21
                    stor21[stor13] = 2
                    if sub_f62a12e1 == -1:
                        revert with 0, 17
                    sub_f62a12e1++
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
                    mem[32] = 21
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor21[stor13] = 0
                    else:
                        stor21[stor13] = 1
                        if sub_0faba62a == -1:
                            revert with 0, 17
                        sub_0faba62a++
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
    if uint16(arg1) > 50:
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
                    mem[32] = 22
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
                    if sha3(mem[_375 + 32 len mem[_375]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                    call address(arg2).0x150b7a02 with:
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
                    mem[32] = 22
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
                    if sha3(mem[_643 + 32 len mem[_643]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                    mem[32] = 22
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
                    if sha3(mem[_402 + 32 len mem[_402]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                    call address(arg2).0x150b7a02 with:
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
                    mem[32] = 22
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
                    if sha3(mem[_651 + 32 len mem[_651]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                mem[32] = 22
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
                if sha3(mem[_410 + 32 len mem[_410]]) % 100 < 5:
                    mem[0] = baseSupply
                    mem[32] = 21
                    stor21[stor13] = 2
                    if sub_f62a12e1 == -1:
                        revert with 0, 17
                    sub_f62a12e1++
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
                    mem[32] = 21
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor21[stor13] = 0
                    else:
                        stor21[stor13] = 1
                        if sub_0faba62a == -1:
                            revert with 0, 17
                        sub_0faba62a++
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
                call address(arg2).0x150b7a02 with:
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
                mem[32] = 22
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
                if sha3(mem[_659 + 32 len mem[_659]]) % 100 < 5:
                    mem[0] = baseSupply
                    mem[32] = 21
                    stor21[stor13] = 2
                    if sub_f62a12e1 == -1:
                        revert with 0, 17
                    sub_f62a12e1++
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
                    mem[32] = 21
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor21[stor13] = 0
                    else:
                        stor21[stor13] = 1
                        if sub_0faba62a == -1:
                            revert with 0, 17
                        sub_0faba62a++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f9541270(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if uint16(arg1) and 15 * 10^16 > -1 / uint16(arg1):
        revert with 0, 17
    if 15 * 10^16 * uint16(arg1) != msg.value:
        revert with 0, 'Incorrect amount sent'
    if 0 == sub_1b54c025:
        revert with 0, 'The main sale period is not open'
    if block.timestamp < sub_1b54c025:
        revert with 0, 'The main sale period is not open'
    if baseSupply > !uint16(arg1):
        revert with 0, 17
    if baseSupply + uint16(arg1) > 10000:
        revert with 0, 'Insufficient supply'
    if uint16(arg1) > 50:
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
                    mem[32] = 22
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
                    if sha3(mem[_379 + 32 len mem[_379]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                    call msg.sender.0x150b7a02 with:
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
                    mem[32] = 22
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
                    if sha3(mem[_647 + 32 len mem[_647]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                    mem[32] = 22
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
                    if sha3(mem[_406 + 32 len mem[_406]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                    call msg.sender.0x150b7a02 with:
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
                    mem[32] = 22
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
                    if sha3(mem[_655 + 32 len mem[_655]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                mem[32] = 22
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
                if sha3(mem[_414 + 32 len mem[_414]]) % 100 < 5:
                    mem[0] = baseSupply
                    mem[32] = 21
                    stor21[stor13] = 2
                    if sub_f62a12e1 == -1:
                        revert with 0, 17
                    sub_f62a12e1++
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
                    mem[32] = 21
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor21[stor13] = 0
                    else:
                        stor21[stor13] = 1
                        if sub_0faba62a == -1:
                            revert with 0, 17
                        sub_0faba62a++
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
                call msg.sender.0x150b7a02 with:
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
                mem[32] = 22
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
                if sha3(mem[_663 + 32 len mem[_663]]) % 100 < 5:
                    mem[0] = baseSupply
                    mem[32] = 21
                    stor21[stor13] = 2
                    if sub_f62a12e1 == -1:
                        revert with 0, 17
                    sub_f62a12e1++
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
                    mem[32] = 21
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor21[stor13] = 0
                    else:
                        stor21[stor13] = 1
                        if sub_0faba62a == -1:
                            revert with 0, 17
                        sub_0faba62a++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ca98787a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if uint16(arg1) and 10^17 > -1 / uint16(arg1):
        revert with 0, 17
    if 10^17 * uint16(arg1) != msg.value:
        revert with 0, 'Incorrect amount sent'
    if 0 == presaleStartTime:
        revert with 0, 'The presale is not open'
    if block.timestamp < presaleStartTime:
        revert with 0, 'The presale is not open'
    if presaleSupply > !uint16(arg1):
        revert with 0, 17
    if presaleSupply + uint16(arg1) > 1000:
        revert with 0, 'Insufficient presale supply'
    if baseSupply > !uint16(arg1):
        revert with 0, 17
    if baseSupply + uint16(arg1) > 10000:
        revert with 0, 'Insufficient supply'
    if uint16(arg1) > 50:
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
                    mem[32] = 22
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
                    if sha3(mem[_381 + 32 len mem[_381]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                    call msg.sender.0x150b7a02 with:
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
                    mem[32] = 22
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
                    if sha3(mem[_649 + 32 len mem[_649]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                    mem[32] = 22
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
                    if sha3(mem[_408 + 32 len mem[_408]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                    call msg.sender.0x150b7a02 with:
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
                    mem[32] = 22
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
                    if sha3(mem[_657 + 32 len mem[_657]]) % 100 < 5:
                        mem[0] = baseSupply
                        mem[32] = 21
                        stor21[stor13] = 2
                        if sub_f62a12e1 == -1:
                            revert with 0, 17
                        sub_f62a12e1++
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
                        mem[32] = 21
                        if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                            stor21[stor13] = 0
                        else:
                            stor21[stor13] = 1
                            if sub_0faba62a == -1:
                                revert with 0, 17
                            sub_0faba62a++
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
                mem[32] = 22
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
                if sha3(mem[_416 + 32 len mem[_416]]) % 100 < 5:
                    mem[0] = baseSupply
                    mem[32] = 21
                    stor21[stor13] = 2
                    if sub_f62a12e1 == -1:
                        revert with 0, 17
                    sub_f62a12e1++
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
                    mem[32] = 21
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor21[stor13] = 0
                    else:
                        stor21[stor13] = 1
                        if sub_0faba62a == -1:
                            revert with 0, 17
                        sub_0faba62a++
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
                call msg.sender.0x150b7a02 with:
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
                mem[32] = 22
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
                if sha3(mem[_665 + 32 len mem[_665]]) % 100 < 5:
                    mem[0] = baseSupply
                    mem[32] = 21
                    stor21[stor13] = 2
                    if sub_f62a12e1 == -1:
                        revert with 0, 17
                    sub_f62a12e1++
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
                    mem[32] = 21
                    if sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), tokenByIndex.length, block.timestamp) % 100 >= 20:
                        stor21[stor13] = 0
                    else:
                        stor21[stor13] = 1
                        if sub_0faba62a == -1:
                            revert with 0, 17
                        sub_0faba62a++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if presaleSupply > !uint16(arg1):
        revert with 0, 17
    presaleSupply += uint16(arg1)
}

function sub_be1ef239(?) {
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
            _200 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_200 + 32]
            mem[t + 64] = bool(mem[_200 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
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
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _309 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_309] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_309 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_309 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _309
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _331 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_331] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_331 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_331 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _331
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _278 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_278] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_278 + 32] = 0
                        mem[_278 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _278
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _333 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_333] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_333 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_333 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _333
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _357 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_357] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_357 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_357 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _357
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _207 = mem[64]
            mem[mem[64]] = 32
            _209 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _209:
                _383 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_383 + 32]
                mem[t + 64] = bool(mem[_383 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _207 + (96 * _209) + -mem[64] + 64
        mem[64] = (32 * arg3) + 224
        mem[(32 * arg3) + 128] = 0
        mem[(32 * arg3) + 160] = 0
        mem[(32 * arg3) + 192] = 0
        mem[var27002] = var27001
        if not var27003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _678 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_678] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_678 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_678 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _678
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _700 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_700] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_700 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_700 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _700
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _646 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_646] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_646 + 32] = 0
                        mem[_646 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _646
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _702 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_702] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_702 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_702 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _702
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _727 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_727] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_727 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_727 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _727
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _575 = mem[64]
            mem[mem[64]] = 32
            _577 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _577:
                _752 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_752 + 32]
                mem[t + 64] = bool(mem[_752 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _575 + (96 * _577) + -mem[64] + 64
        mem[64] = (32 * arg3) + 320
        mem[(32 * arg3) + 224] = 0
        mem[(32 * arg3) + 256] = 0
        mem[(32 * arg3) + 288] = 0
        mem[var31002] = var31001
        if not var31003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _1046 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1046] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1046 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_1046 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1046
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _1068 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1068] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1068 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_1068 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1068
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _1014 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1014] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1014 + 32] = 0
                        mem[_1014 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1014
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _1070 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1070] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_1070 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_1070 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1070
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _1095 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1095] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_1095 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_1095 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1095
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _943 = mem[64]
            mem[mem[64]] = 32
            _945 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _945:
                _1120 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1120 + 32]
                mem[t + 64] = bool(mem[_1120 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _943 + (96 * _945) + -mem[64] + 64
        mem[64] = (32 * arg3) + 416
        mem[(32 * arg3) + 320] = 0
        mem[(32 * arg3) + 352] = 0
        mem[(32 * arg3) + 384] = 0
        mem[var35002] = var35001
        if not var35003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _1414 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1414] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1414 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_1414 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1414
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _1436 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1436] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1436 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_1436 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1436
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _1382 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1382] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1382 + 32] = 0
                        mem[_1382 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1382
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _1438 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1438] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_1438 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_1438 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1438
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _1463 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1463] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_1463 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_1463 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1463
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1311 = mem[64]
            mem[mem[64]] = 32
            _1313 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _1313:
                _1488 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1488 + 32]
                mem[t + 64] = bool(mem[_1488 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _1311 + (96 * _1313) + -mem[64] + 64
        mem[64] = (32 * arg3) + 512
        mem[(32 * arg3) + 416] = 0
        mem[(32 * arg3) + 448] = 0
        mem[(32 * arg3) + 480] = 0
        mem[var39002] = var39001
        if not var39003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _1782 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1782] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1782 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_1782 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1782
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _1804 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1804] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1804 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_1804 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1804
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _1750 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1750] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1750 + 32] = 0
                        mem[_1750 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1750
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _1806 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1806] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_1806 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_1806 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1806
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _1831 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1831] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_1831 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_1831 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1831
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1679 = mem[64]
            mem[mem[64]] = 32
            _1681 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _1681:
                _1856 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1856 + 32]
                mem[t + 64] = bool(mem[_1856 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _1679 + (96 * _1681) + -mem[64] + 64
        mem[64] = (32 * arg3) + 608
        mem[(32 * arg3) + 512] = 0
        mem[(32 * arg3) + 544] = 0
        mem[(32 * arg3) + 576] = 0
        mem[var43002] = var43001
        if not var43003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _2150 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2150] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2150 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_2150 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2150
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _2172 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2172] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2172 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_2172 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2172
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _2118 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2118] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2118 + 32] = 0
                        mem[_2118 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2118
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _2174 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2174] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_2174 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_2174 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _2174
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _2199 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2199] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_2199 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_2199 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _2199
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2047 = mem[64]
            mem[mem[64]] = 32
            _2049 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _2049:
                _2224 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2224 + 32]
                mem[t + 64] = bool(mem[_2224 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _2047 + (96 * _2049) + -mem[64] + 64
        mem[64] = (32 * arg3) + 704
        mem[(32 * arg3) + 608] = 0
        mem[(32 * arg3) + 640] = 0
        mem[(32 * arg3) + 672] = 0
        mem[var47002] = var47001
        if not var47003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _2518 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2518] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2518 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_2518 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2518
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _2540 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2540] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2540 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_2540 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2540
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _2486 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2486] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2486 + 32] = 0
                        mem[_2486 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2486
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _2542 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2542] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_2542 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_2542 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _2542
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _2567 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2567] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_2567 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_2567 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _2567
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2415 = mem[64]
            mem[mem[64]] = 32
            _2417 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _2417:
                _2592 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2592 + 32]
                mem[t + 64] = bool(mem[_2592 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _2415 + (96 * _2417) + -mem[64] + 64
        mem[64] = (32 * arg3) + 800
        mem[(32 * arg3) + 704] = 0
        mem[(32 * arg3) + 736] = 0
        mem[(32 * arg3) + 768] = 0
        mem[var51002] = var51001
        if not var51003 - 1:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _2886 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2886] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2886 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_2886 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2886
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _2908 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2908] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2908 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_2908 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2908
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _2854 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2854] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2854 + 32] = 0
                        mem[_2854 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2854
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _2910 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2910] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_2910 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_2910 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _2910
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _2935 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2935] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_2935 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_2935 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _2935
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2783 = mem[64]
            mem[mem[64]] = 32
            _2785 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _2785:
                _2960 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2960 + 32]
                mem[t + 64] = bool(mem[_2960 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _2783 + (96 * _2785) + -mem[64] + 64
        mem[64] = (32 * arg3) + 896
        mem[(32 * arg3) + 800] = 0
        mem[(32 * arg3) + 832] = 0
        mem[(32 * arg3) + 864] = 0
        mem[var55002] = var55001
        if var55003 - 1:
            mem[64] = (32 * arg3) + 992
            mem[var59002] = var59001
            if not var59003 - 1:
                idx = 0
                while idx < arg3:
                    if arg2 > !idx:
                        revert with 0, 17
                    if not address(arg1):
                        revert with 0, 'ERC721: balance query for the zero address'
                    if arg2 + idx >= balanceOf[address(arg1)]:
                        revert with 0, 'ERC721Enumerable: owner index out of bounds'
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _3622 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3622] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_3622 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_3622 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _3622
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _3644 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3644] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_3644 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_3644 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _3644
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 22
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            _3590 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3590] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_3590 + 32] = 0
                            mem[_3590 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _3590
                        else:
                            if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                                revert with 0, 'Invalid token ID'
                            if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                                mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                                mem[32] = 21
                                _3646 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3646] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                                mem[_3646 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                                mem[_3646 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _3646
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                    revert with 0, 'Token unrevealed'
                                mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                                mem[32] = 21
                                _3671 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3671] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                                mem[_3671 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                                mem[_3671 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _3671
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            # nil
        else:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _3254 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3254] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_3254 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_3254 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _3254
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _3276 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3276] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_3276 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_3276 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _3276
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _3222 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3222] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_3222 + 32] = 0
                        mem[_3222 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _3222
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _3278 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3278] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_3278 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_3278 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _3278
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _3303 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3303] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_3303 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_3303 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _3303
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3151 = mem[64]
            mem[mem[64]] = 32
            _3153 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _3153:
                _3328 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_3328 + 32]
                mem[t + 64] = bool(mem[_3328 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _3151 + (96 * _3153) + -mem[64] + 64
    else:
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
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _312 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_312] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_312 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_312 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _312
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _336 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_336] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_336 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_336 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _336
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _281 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_281] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_281 + 32] = 0
                        mem[_281 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _281
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _338 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_338] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_338 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_338 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _338
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _361 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_361] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_361 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_361 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _361
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _208 = mem[64]
            mem[mem[64]] = 32
            _210 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _210:
                _388 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_388 + 32]
                mem[t + 64] = bool(mem[_388 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _208 + (96 * _210) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 224
        mem[(32 * balanceOf[address(arg1)] - arg2) + 128] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 160] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 192] = 0
        mem[var34002] = var34001
        if not var34003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _681 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_681] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_681 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_681 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _681
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _705 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_705] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_705 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_705 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _705
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _649 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_649] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_649 + 32] = 0
                        mem[_649 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _649
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _707 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_707] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_707 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_707 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _707
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _731 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_731] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_731 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_731 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _731
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _576 = mem[64]
            mem[mem[64]] = 32
            _578 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _578:
                _757 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_757 + 32]
                mem[t + 64] = bool(mem[_757 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _576 + (96 * _578) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 320
        mem[(32 * balanceOf[address(arg1)] - arg2) + 224] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 256] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 288] = 0
        mem[var38002] = var38001
        if not var38003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _1049 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1049] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1049 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_1049 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1049
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _1073 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1073] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1073 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_1073 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1073
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _1017 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1017] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1017 + 32] = 0
                        mem[_1017 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1017
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _1075 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1075] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_1075 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_1075 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1075
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _1099 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1099] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_1099 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_1099 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1099
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _944 = mem[64]
            mem[mem[64]] = 32
            _946 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _946:
                _1125 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1125 + 32]
                mem[t + 64] = bool(mem[_1125 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _944 + (96 * _946) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 416
        mem[(32 * balanceOf[address(arg1)] - arg2) + 320] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 352] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 384] = 0
        mem[var42002] = var42001
        if not var42003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _1417 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1417] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1417 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_1417 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1417
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _1441 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1441] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1441 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_1441 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1441
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _1385 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1385] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1385 + 32] = 0
                        mem[_1385 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1385
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _1443 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1443] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_1443 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_1443 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1443
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _1467 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1467] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_1467 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_1467 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1467
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1312 = mem[64]
            mem[mem[64]] = 32
            _1314 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _1314:
                _1493 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1493 + 32]
                mem[t + 64] = bool(mem[_1493 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _1312 + (96 * _1314) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 512
        mem[(32 * balanceOf[address(arg1)] - arg2) + 416] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 448] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 480] = 0
        mem[var46002] = var46001
        if not var46003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _1785 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1785] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1785 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_1785 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1785
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _1809 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1809] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1809 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_1809 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1809
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _1753 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1753] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_1753 + 32] = 0
                        mem[_1753 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1753
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _1811 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1811] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_1811 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_1811 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1811
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _1835 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1835] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_1835 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_1835 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1835
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1680 = mem[64]
            mem[mem[64]] = 32
            _1682 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _1682:
                _1861 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1861 + 32]
                mem[t + 64] = bool(mem[_1861 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _1680 + (96 * _1682) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 608
        mem[(32 * balanceOf[address(arg1)] - arg2) + 512] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 544] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 576] = 0
        mem[var50002] = var50001
        if not var50003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _2153 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2153] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2153 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_2153 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2153
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _2177 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2177] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2177 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_2177 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2177
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _2121 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2121] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2121 + 32] = 0
                        mem[_2121 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2121
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _2179 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2179] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_2179 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_2179 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _2179
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _2203 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2203] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_2203 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_2203 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _2203
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2048 = mem[64]
            mem[mem[64]] = 32
            _2050 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _2050:
                _2229 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2229 + 32]
                mem[t + 64] = bool(mem[_2229 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _2048 + (96 * _2050) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 704
        mem[(32 * balanceOf[address(arg1)] - arg2) + 608] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 640] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 672] = 0
        mem[var54002] = var54001
        if not var54003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _2521 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2521] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2521 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_2521 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2521
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _2545 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2545] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2545 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_2545 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2545
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _2489 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2489] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2489 + 32] = 0
                        mem[_2489 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2489
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _2547 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2547] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_2547 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_2547 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _2547
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _2571 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2571] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_2571 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_2571 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _2571
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2416 = mem[64]
            mem[mem[64]] = 32
            _2418 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _2418:
                _2597 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2597 + 32]
                mem[t + 64] = bool(mem[_2597 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _2416 + (96 * _2418) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 800
        mem[(32 * balanceOf[address(arg1)] - arg2) + 704] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 736] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 768] = 0
        mem[var58002] = var58001
        if not var58003 - 1:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _2889 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2889] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2889 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_2889 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2889
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _2913 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2913] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2913 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_2913 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2913
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _2857 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2857] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_2857 + 32] = 0
                        mem[_2857 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _2857
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _2915 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2915] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_2915 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_2915 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _2915
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _2939 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2939] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_2939 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_2939 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _2939
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2784 = mem[64]
            mem[mem[64]] = 32
            _2786 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _2786:
                _2965 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2965 + 32]
                mem[t + 64] = bool(mem[_2965 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _2784 + (96 * _2786) + -mem[64] + 64
        mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 896
        mem[(32 * balanceOf[address(arg1)] - arg2) + 800] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 832] = 0
        mem[(32 * balanceOf[address(arg1)] - arg2) + 864] = 0
        mem[var62002] = var62001
        if var62003 - 1:
            mem[64] = (32 * balanceOf[address(arg1)] - arg2) + 992
            mem[var66002] = var66001
            if not var66003 - 1:
                idx = 0
                while idx < balanceOf[address(arg1)] - arg2:
                    if arg2 > !idx:
                        revert with 0, 17
                    if not address(arg1):
                        revert with 0, 'ERC721: balance query for the zero address'
                    if arg2 + idx >= balanceOf[address(arg1)]:
                        revert with 0, 'ERC721Enumerable: owner index out of bounds'
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _3625 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3625] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_3625 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_3625 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _3625
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _3649 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3649] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_3649 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_3649 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _3649
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 22
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            _3593 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3593] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_3593 + 32] = 0
                            mem[_3593 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _3593
                        else:
                            if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                                revert with 0, 'Invalid token ID'
                            if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                                mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                                mem[32] = 21
                                _3651 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3651] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                                mem[_3651 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                                mem[_3651 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _3651
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                    revert with 0, 'Token unrevealed'
                                mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                                mem[32] = 21
                                _3675 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3675] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                                mem[_3675 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                                mem[_3675 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _3675
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            # nil
        else:
            idx = 0
            while idx < balanceOf[address(arg1)] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if arg2 + idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                    revert with 0, 'Invalid token ID'
                if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                    if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                        revert with 0, 'Invalid token ID'
                    if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _3257 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3257] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_3257 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_3257 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _3257
                    else:
                        if block.number < 1:
                            revert with 0, 17
                        if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                            revert with 0, 'Token unrevealed'
                        mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[32] = 21
                        _3281 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3281] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_3281 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                        mem[_3281 + 64] = 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _3281
                else:
                    if block.number < 1:
                        revert with 0, 17
                    mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                    mem[32] = 22
                    if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                        _3225 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3225] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                        mem[_3225 + 32] = 0
                        mem[_3225 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _3225
                    else:
                        if not ownerOf[stor6[address(arg1)][arg2 + idx]]:
                            revert with 0, 'Invalid token ID'
                        if 10000 <= tokenOfOwnerByIndex[address(arg1)][arg2 + idx]:
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _3283 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3283] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_3283 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_3283 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _3283
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            if sub_9c428332[stor6[address(arg1)][arg2 + idx]] >= block.number - 1:
                                revert with 0, 'Token unrevealed'
                            mem[0] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[32] = 21
                            _3307 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3307] = tokenOfOwnerByIndex[address(arg1)][arg2 + idx]
                            mem[_3307 + 32] = stor21[stor6[address(arg1)][arg2 + idx]]
                            mem[_3307 + 64] = sub_9c428332[stor6[address(arg1)][arg2 + idx]] < block.number - 1
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _3307
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3152 = mem[64]
            mem[mem[64]] = 32
            _3154 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _3154:
                _3333 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_3333 + 32]
                mem[t + 64] = bool(mem[_3333 + 64])
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _3152 + (96 * _3154) + -mem[64] + 64
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token ID'
    if 10000 <= arg1:
        mem[96] = 28
        mem[128] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
        if not ownerOf[arg1]:
            revert with 0, 'Invalid token ID'
        if 10000 <= arg1:
            mem[0] = arg1
            mem[32] = 21
            if not stor21[arg1]:
                mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                mem[284] = 0x6c6576656c2f0000000000000000000000000000000000000000000000000000
                mem[290] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[291] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[296] = 32
                mem[328] = mem[224]
                mem[360 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 360] = 0
                return Array(len=mem[224], data=mem[360 len ceil32(mem[224])])
            s = 0
            idx = stor21[arg1]
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
                idx = stor21[arg1]
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
                    mem[mem[64] + mem[96] + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[_5128 + mem[64] + mem[96] + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_5128) <= _5128:
                        _6704 = mem[64]
                        mem[64] = _5128 + mem[64] + mem[96] + 43
                        mem[_5128 + _3016 + mem[96] + 43] = 32
                        _7056 = mem[_6704]
                        mem[_5128 + _3016 + _3060 + 75] = mem[_6704]
                        mem[_5128 + _3016 + _3060 + 107 len ceil32(_7056)] = mem[_6704 + 32 len ceil32(_7056)]
                        if ceil32(_7056) > _7056:
                            mem[_7056 + _5128 + _3016 + _3060 + 107] = 0
                        return 32, mem[_5128 + _3016 + _3060 + 75 len ceil32(_7056) + 32]
                    _6705 = mem[64]
                    mem[64] = _5128 + mem[64] + mem[96] + 43
                    mem[_5128 + _3016 + mem[96] + 43] = 32
                    _7057 = mem[_6705]
                    mem[_5128 + _3016 + _3060 + 75] = mem[_6705]
                    mem[_5128 + _3016 + _3060 + 107 len ceil32(_7057)] = mem[_6705 + 32 len ceil32(_7057)]
                    if ceil32(_7057) > _7057:
                        mem[_7057 + _5128 + _3016 + _3060 + 107] = 0
                    return 32, mem[_5128 + _3016 + _3060 + 75 len ceil32(_7057) + 32]
                _5129 = mem[160]
                mem[mem[64] + mem[96] + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_5129 + mem[64] + mem[96] + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5129) <= _5129:
                    _6706 = mem[64]
                    mem[64] = _5129 + mem[64] + mem[96] + 43
                    mem[_5129 + _3016 + mem[96] + 43] = 32
                    _7058 = mem[_6706]
                    mem[_5129 + _3016 + _3060 + 75] = mem[_6706]
                    mem[_5129 + _3016 + _3060 + 107 len ceil32(_7058)] = mem[_6706 + 32 len ceil32(_7058)]
                    if ceil32(_7058) > _7058:
                        mem[_7058 + _5129 + _3016 + _3060 + 107] = 0
                    return 32, mem[_5129 + _3016 + _3060 + 75 len ceil32(_7058) + 32]
                _6707 = mem[64]
                mem[64] = _5129 + mem[64] + mem[96] + 43
                mem[_5129 + _3016 + mem[96] + 43] = 32
                _7059 = mem[_6707]
                mem[_5129 + _3016 + _3060 + 75] = mem[_6707]
                mem[_5129 + _3016 + _3060 + 107 len ceil32(_7059)] = mem[_6707 + 32 len ceil32(_7059)]
                if ceil32(_7059) > _7059:
                    mem[_7059 + _5129 + _3016 + _3060 + 107] = 0
                return 32, mem[_5129 + _3016 + _3060 + 75 len ceil32(_7059) + 32]
            mem[192 len s] = call.data[calldata.size len s]
            t = s
            idx = stor21[arg1]
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
                mem[mem[64] + mem[96] + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_5130 + mem[64] + mem[96] + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5130) <= _5130:
                    _6708 = mem[64]
                    mem[64] = _5130 + mem[64] + mem[96] + 43
                    mem[_5130 + _3017 + mem[96] + 43] = 32
                    _7060 = mem[_6708]
                    mem[_5130 + _3017 + _3061 + 75] = mem[_6708]
                    mem[_5130 + _3017 + _3061 + 107 len ceil32(_7060)] = mem[_6708 + 32 len ceil32(_7060)]
                    if ceil32(_7060) > _7060:
                        mem[_7060 + _5130 + _3017 + _3061 + 107] = 0
                    return 32, mem[_5130 + _3017 + _3061 + 75 len ceil32(_7060) + 32]
                _6709 = mem[64]
                mem[64] = _5130 + mem[64] + mem[96] + 43
                mem[_5130 + _3017 + mem[96] + 43] = 32
                _7061 = mem[_6709]
                mem[_5130 + _3017 + _3061 + 75] = mem[_6709]
                mem[_5130 + _3017 + _3061 + 107 len ceil32(_7061)] = mem[_6709 + 32 len ceil32(_7061)]
                if ceil32(_7061) > _7061:
                    mem[_7061 + _5130 + _3017 + _3061 + 107] = 0
                return 32, mem[_5130 + _3017 + _3061 + 75 len ceil32(_7061) + 32]
            _5131 = mem[160]
            mem[mem[64] + mem[96] + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_5131 + mem[64] + mem[96] + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_5131) <= _5131:
                _6710 = mem[64]
                mem[64] = _5131 + mem[64] + mem[96] + 43
                mem[_5131 + _3017 + mem[96] + 43] = 32
                _7062 = mem[_6710]
                mem[_5131 + _3017 + _3061 + 75] = mem[_6710]
                mem[_5131 + _3017 + _3061 + 107 len ceil32(_7062)] = mem[_6710 + 32 len ceil32(_7062)]
                if ceil32(_7062) > _7062:
                    mem[_7062 + _5131 + _3017 + _3061 + 107] = 0
                return 32, mem[_5131 + _3017 + _3061 + 75 len ceil32(_7062) + 32]
            _6711 = mem[64]
            mem[64] = _5131 + mem[64] + mem[96] + 43
            mem[_5131 + _3017 + mem[96] + 43] = 32
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
        mem[32] = 21
        if not stor21[arg1]:
            mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
            mem[284] = 0x6c6576656c2f0000000000000000000000000000000000000000000000000000
            mem[290] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[291] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[296] = 32
            mem[328] = mem[224]
            mem[360 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + 360] = 0
            return Array(len=mem[224], data=mem[360 len ceil32(mem[224])])
        s = 0
        idx = stor21[arg1]
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
            idx = stor21[arg1]
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
                mem[mem[64] + mem[96] + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[_5132 + mem[64] + mem[96] + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_5132) <= _5132:
                    _6712 = mem[64]
                    mem[64] = _5132 + mem[64] + mem[96] + 43
                    mem[_5132 + _3018 + mem[96] + 43] = 32
                    _7064 = mem[_6712]
                    mem[_5132 + _3018 + _3062 + 75] = mem[_6712]
                    mem[_5132 + _3018 + _3062 + 107 len ceil32(_7064)] = mem[_6712 + 32 len ceil32(_7064)]
                    if ceil32(_7064) > _7064:
                        mem[_7064 + _5132 + _3018 + _3062 + 107] = 0
                    return 32, mem[_5132 + _3018 + _3062 + 75 len ceil32(_7064) + 32]
                _6713 = mem[64]
                mem[64] = _5132 + mem[64] + mem[96] + 43
                mem[_5132 + _3018 + mem[96] + 43] = 32
                _7065 = mem[_6713]
                mem[_5132 + _3018 + _3062 + 75] = mem[_6713]
                mem[_5132 + _3018 + _3062 + 107 len ceil32(_7065)] = mem[_6713 + 32 len ceil32(_7065)]
                if ceil32(_7065) > _7065:
                    mem[_7065 + _5132 + _3018 + _3062 + 107] = 0
                return 32, mem[_5132 + _3018 + _3062 + 75 len ceil32(_7065) + 32]
            _5133 = mem[160]
            mem[mem[64] + mem[96] + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_5133 + mem[64] + mem[96] + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
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
        idx = stor21[arg1]
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
            mem[mem[64] + mem[96] + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[_5134 + mem[64] + mem[96] + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_5134) <= _5134:
                _6716 = mem[64]
                mem[64] = _5134 + mem[64] + mem[96] + 43
                mem[_5134 + _3019 + mem[96] + 43] = 32
                _7068 = mem[_6716]
                mem[_5134 + _3019 + _3063 + 75] = mem[_6716]
                mem[_5134 + _3019 + _3063 + 107 len ceil32(_7068)] = mem[_6716 + 32 len ceil32(_7068)]
                if ceil32(_7068) > _7068:
                    mem[_7068 + _5134 + _3019 + _3063 + 107] = 0
                return 32, mem[_5134 + _3019 + _3063 + 75 len ceil32(_7068) + 32]
            _6717 = mem[64]
            mem[64] = _5134 + mem[64] + mem[96] + 43
            mem[_5134 + _3019 + mem[96] + 43] = 32
            _7069 = mem[_6717]
            mem[_5134 + _3019 + _3063 + 75] = mem[_6717]
            mem[_5134 + _3019 + _3063 + 107 len ceil32(_7069)] = mem[_6717 + 32 len ceil32(_7069)]
            if ceil32(_7069) > _7069:
                mem[_7069 + _5134 + _3019 + _3063 + 107] = 0
            return 32, mem[_5134 + _3019 + _3063 + 75 len ceil32(_7069) + 32]
        _5135 = mem[160]
        mem[mem[64] + mem[96] + 38 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[_5135 + mem[64] + mem[96] + 38] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_5135) <= _5135:
            _6718 = mem[64]
            mem[64] = _5135 + mem[64] + mem[96] + 43
            mem[_5135 + _3019 + mem[96] + 43] = 32
            _7070 = mem[_6718]
            mem[_5135 + _3019 + _3063 + 75] = mem[_6718]
            mem[_5135 + _3019 + _3063 + 107 len ceil32(_7070)] = mem[_6718 + 32 len ceil32(_7070)]
            if ceil32(_7070) > _7070:
                mem[_7070 + _5135 + _3019 + _3063 + 107] = 0
            return 32, mem[_5135 + _3019 + _3063 + 75 len ceil32(_7070) + 32]
        _6719 = mem[64]
        mem[64] = _5135 + mem[64] + mem[96] + 43
        mem[_5135 + _3019 + mem[96] + 43] = 32
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
            mem[32] = 21
            if 2 == stor21[arg1]:
                mem[96] = 28
                mem[0] = arg1
                mem[128] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                if not arg1:
                    mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                    mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[285] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                    mem[297] = 32
                    mem[329] = mem[224]
                    mem[361 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                    if ceil32(mem[224]) > mem[224]:
                        mem[mem[224] + 361] = 0
                    return Array(len=mem[224], data=mem[361 len ceil32(mem[224])])
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
                        mem[mem[64] + mem[96] + _5064 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                        if ceil32(_5064) <= _5064:
                            _6576 = mem[64]
                            mem[64] = mem[64] + mem[96] + _5064 + 44
                            mem[_2984 + mem[96] + _5064 + 44] = 32
                            _6928 = mem[_6576]
                            mem[_2984 + _3028 + _5064 + 76] = mem[_6576]
                            mem[_2984 + _3028 + _5064 + 108 len ceil32(_6928)] = mem[_6576 + 32 len ceil32(_6928)]
                            if ceil32(_6928) > _6928:
                                mem[_6928 + _2984 + _3028 + _5064 + 108] = 0
                            return 32, mem[_2984 + _3028 + _5064 + 76 len ceil32(_6928) + 32]
                        _6577 = mem[64]
                        mem[64] = mem[64] + mem[96] + _5064 + 44
                        mem[_2984 + mem[96] + _5064 + 44] = 32
                        _6929 = mem[_6577]
                        mem[_2984 + _3028 + _5064 + 76] = mem[_6577]
                        mem[_2984 + _3028 + _5064 + 108 len ceil32(_6929)] = mem[_6577 + 32 len ceil32(_6929)]
                        if ceil32(_6929) > _6929:
                            mem[_6929 + _2984 + _3028 + _5064 + 108] = 0
                        return 32, mem[_2984 + _3028 + _5064 + 76 len ceil32(_6929) + 32]
                    mem[mem[96] + mem[64] + 32] = 0
                    _5065 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[mem[64] + mem[96] + _5065 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5065) <= _5065:
                        _6578 = mem[64]
                        mem[64] = _2984 + _3028 + _5065 + 44
                        mem[_2984 + _3028 + _5065 + 44] = 32
                        _6930 = mem[_6578]
                        mem[_2984 + _3028 + _5065 + 76] = mem[_6578]
                        mem[_2984 + _3028 + _5065 + 108 len ceil32(_6930)] = mem[_6578 + 32 len ceil32(_6930)]
                        if ceil32(_6930) > _6930:
                            mem[_6930 + _2984 + _3028 + _5065 + 108] = 0
                        return 32, mem[_2984 + _3028 + _5065 + 76 len ceil32(_6930) + 32]
                    _6579 = mem[64]
                    mem[64] = _2984 + _3028 + _5065 + 44
                    mem[_2984 + _3028 + _5065 + 44] = 32
                    _6931 = mem[_6579]
                    mem[_2984 + _3028 + _5065 + 76] = mem[_6579]
                    mem[_2984 + _3028 + _5065 + 108 len ceil32(_6931)] = mem[_6579 + 32 len ceil32(_6931)]
                    if ceil32(_6931) > _6931:
                        mem[_6931 + _2984 + _3028 + _5065 + 108] = 0
                    return 32, mem[_2984 + _3028 + _5065 + 76 len ceil32(_6931) + 32]
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
                    mem[mem[64] + mem[96] + _5066 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5066) <= _5066:
                        _6580 = mem[64]
                        mem[64] = mem[64] + mem[96] + _5066 + 44
                        mem[_2985 + mem[96] + _5066 + 44] = 32
                        _6932 = mem[_6580]
                        mem[_2985 + _3029 + _5066 + 76] = mem[_6580]
                        mem[_2985 + _3029 + _5066 + 108 len ceil32(_6932)] = mem[_6580 + 32 len ceil32(_6932)]
                        if ceil32(_6932) > _6932:
                            mem[_6932 + _2985 + _3029 + _5066 + 108] = 0
                        return 32, mem[_2985 + _3029 + _5066 + 76 len ceil32(_6932) + 32]
                    _6581 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5066 + 44
                    mem[_2985 + mem[96] + _5066 + 44] = 32
                    _6933 = mem[_6581]
                    mem[_2985 + _3029 + _5066 + 76] = mem[_6581]
                    mem[_2985 + _3029 + _5066 + 108 len ceil32(_6933)] = mem[_6581 + 32 len ceil32(_6933)]
                    if ceil32(_6933) > _6933:
                        mem[_6933 + _2985 + _3029 + _5066 + 108] = 0
                    return 32, mem[_2985 + _3029 + _5066 + 76 len ceil32(_6933) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5067 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[mem[64] + mem[96] + _5067 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5067) <= _5067:
                    _6582 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5067 + 44
                    mem[_2985 + mem[96] + _5067 + 44] = 32
                    _6934 = mem[_6582]
                    mem[_2985 + _3029 + _5067 + 76] = mem[_6582]
                    mem[_2985 + _3029 + _5067 + 108 len ceil32(_6934)] = mem[_6582 + 32 len ceil32(_6934)]
                    if ceil32(_6934) > _6934:
                        mem[_6934 + _2985 + _3029 + _5067 + 108] = 0
                    return 32, mem[_2985 + _3029 + _5067 + 76 len ceil32(_6934) + 32]
                _6583 = mem[64]
                mem[64] = mem[64] + mem[96] + _5067 + 44
                mem[_2985 + mem[96] + _5067 + 44] = 32
                _6935 = mem[_6583]
                mem[_2985 + _3029 + _5067 + 76] = mem[_6583]
                mem[_2985 + _3029 + _5067 + 108 len ceil32(_6935)] = mem[_6583 + 32 len ceil32(_6935)]
                if ceil32(_6935) > _6935:
                    mem[_6935 + _2985 + _3029 + _5067 + 108] = 0
                return 32, mem[_2985 + _3029 + _5067 + 76 len ceil32(_6935) + 32]
            if not ownerOf[arg1]:
                revert with 0, 'Invalid token ID'
            if 10000 <= arg1:
                mem[32] = 21
                mem[96] = 28
                mem[0] = arg1
                mem[128] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                if stor21[arg1] != 1:
                    if not arg1:
                        mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                        mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[285] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                        mem[297] = 32
                        mem[329] = mem[224]
                        mem[361 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                        if ceil32(mem[224]) > mem[224]:
                            mem[mem[224] + 361] = 0
                        return Array(len=mem[224], data=mem[361 len ceil32(mem[224])])
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
                            mem[mem[64] + mem[96] + _5048 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                            if ceil32(_5048) <= _5048:
                                _6544 = mem[64]
                                mem[64] = mem[64] + mem[96] + _5048 + 44
                                mem[_2976 + mem[96] + _5048 + 44] = 32
                                _6896 = mem[_6544]
                                mem[_2976 + _3020 + _5048 + 76] = mem[_6544]
                                mem[_2976 + _3020 + _5048 + 108 len ceil32(_6896)] = mem[_6544 + 32 len ceil32(_6896)]
                                if ceil32(_6896) > _6896:
                                    mem[_6896 + _2976 + _3020 + _5048 + 108] = 0
                                return 32, mem[_2976 + _3020 + _5048 + 76 len ceil32(_6896) + 32]
                            _6545 = mem[64]
                            mem[64] = mem[64] + mem[96] + _5048 + 44
                            mem[_2976 + mem[96] + _5048 + 44] = 32
                            _6897 = mem[_6545]
                            mem[_2976 + _3020 + _5048 + 76] = mem[_6545]
                            mem[_2976 + _3020 + _5048 + 108 len ceil32(_6897)] = mem[_6545 + 32 len ceil32(_6897)]
                            if ceil32(_6897) > _6897:
                                mem[_6897 + _2976 + _3020 + _5048 + 108] = 0
                            return 32, mem[_2976 + _3020 + _5048 + 76 len ceil32(_6897) + 32]
                        mem[mem[96] + mem[64] + 32] = 0
                        _5049 = mem[160]
                        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        mem[mem[64] + mem[96] + _5049 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                        if ceil32(_5049) <= _5049:
                            _6546 = mem[64]
                            mem[64] = _2976 + _3020 + _5049 + 44
                            mem[_2976 + _3020 + _5049 + 44] = 32
                            _6898 = mem[_6546]
                            mem[_2976 + _3020 + _5049 + 76] = mem[_6546]
                            mem[_2976 + _3020 + _5049 + 108 len ceil32(_6898)] = mem[_6546 + 32 len ceil32(_6898)]
                            if ceil32(_6898) > _6898:
                                mem[_6898 + _2976 + _3020 + _5049 + 108] = 0
                            return 32, mem[_2976 + _3020 + _5049 + 76 len ceil32(_6898) + 32]
                        _6547 = mem[64]
                        mem[64] = _2976 + _3020 + _5049 + 44
                        mem[_2976 + _3020 + _5049 + 44] = 32
                        _6899 = mem[_6547]
                        mem[_2976 + _3020 + _5049 + 76] = mem[_6547]
                        mem[_2976 + _3020 + _5049 + 108 len ceil32(_6899)] = mem[_6547 + 32 len ceil32(_6899)]
                        if ceil32(_6899) > _6899:
                            mem[_6899 + _2976 + _3020 + _5049 + 108] = 0
                        return 32, mem[_2976 + _3020 + _5049 + 76 len ceil32(_6899) + 32]
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
                        mem[mem[64] + mem[96] + _5050 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                        if ceil32(_5050) <= _5050:
                            _6548 = mem[64]
                            mem[64] = mem[64] + mem[96] + _5050 + 44
                            mem[_2977 + mem[96] + _5050 + 44] = 32
                            _6900 = mem[_6548]
                            mem[_2977 + _3021 + _5050 + 76] = mem[_6548]
                            mem[_2977 + _3021 + _5050 + 108 len ceil32(_6900)] = mem[_6548 + 32 len ceil32(_6900)]
                            if ceil32(_6900) > _6900:
                                mem[_6900 + _2977 + _3021 + _5050 + 108] = 0
                            return 32, mem[_2977 + _3021 + _5050 + 76 len ceil32(_6900) + 32]
                        _6549 = mem[64]
                        mem[64] = mem[64] + mem[96] + _5050 + 44
                        mem[_2977 + mem[96] + _5050 + 44] = 32
                        _6901 = mem[_6549]
                        mem[_2977 + _3021 + _5050 + 76] = mem[_6549]
                        mem[_2977 + _3021 + _5050 + 108 len ceil32(_6901)] = mem[_6549 + 32 len ceil32(_6901)]
                        if ceil32(_6901) > _6901:
                            mem[_6901 + _2977 + _3021 + _5050 + 108] = 0
                        return 32, mem[_2977 + _3021 + _5050 + 76 len ceil32(_6901) + 32]
                    mem[mem[96] + mem[64] + 32] = 0
                    _5051 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[mem[64] + mem[96] + _5051 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5051) <= _5051:
                        _6550 = mem[64]
                        mem[64] = mem[64] + mem[96] + _5051 + 44
                        mem[_2977 + mem[96] + _5051 + 44] = 32
                        _6902 = mem[_6550]
                        mem[_2977 + _3021 + _5051 + 76] = mem[_6550]
                        mem[_2977 + _3021 + _5051 + 108 len ceil32(_6902)] = mem[_6550 + 32 len ceil32(_6902)]
                        if ceil32(_6902) > _6902:
                            mem[_6902 + _2977 + _3021 + _5051 + 108] = 0
                        return 32, mem[_2977 + _3021 + _5051 + 76 len ceil32(_6902) + 32]
                    _6551 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5051 + 44
                    mem[_2977 + mem[96] + _5051 + 44] = 32
                    _6903 = mem[_6551]
                    mem[_2977 + _3021 + _5051 + 76] = mem[_6551]
                    mem[_2977 + _3021 + _5051 + 108 len ceil32(_6903)] = mem[_6551 + 32 len ceil32(_6903)]
                    if ceil32(_6903) > _6903:
                        mem[_6903 + _2977 + _3021 + _5051 + 108] = 0
                    return 32, mem[_2977 + _3021 + _5051 + 76 len ceil32(_6903) + 32]
                if not arg1:
                    mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                    mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[285] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                    mem[294] = 32
                    mem[326] = mem[224]
                    mem[358 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                    if ceil32(mem[224]) > mem[224]:
                        mem[mem[224] + 358] = 0
                    return Array(len=mem[224], data=mem[358 len ceil32(mem[224])])
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
                        mem[mem[64] + mem[96] + _5052 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                        if ceil32(_5052) <= _5052:
                            _6552 = mem[64]
                            mem[64] = _2978 + _3022 + _5052 + 41
                            mem[_2978 + _3022 + _5052 + 41] = 32
                            _6904 = mem[_6552]
                            mem[_2978 + _3022 + _5052 + 73] = mem[_6552]
                            mem[_2978 + _3022 + _5052 + 105 len ceil32(_6904)] = mem[_6552 + 32 len ceil32(_6904)]
                            if ceil32(_6904) > _6904:
                                mem[_6904 + _2978 + _3022 + _5052 + 105] = 0
                            return 32, mem[_2978 + _3022 + _5052 + 73 len ceil32(_6904) + 32]
                        _6553 = mem[64]
                        mem[64] = _2978 + _3022 + _5052 + 41
                        mem[_2978 + _3022 + _5052 + 41] = 32
                        _6905 = mem[_6553]
                        mem[_2978 + _3022 + _5052 + 73] = mem[_6553]
                        mem[_2978 + _3022 + _5052 + 105 len ceil32(_6905)] = mem[_6553 + 32 len ceil32(_6905)]
                        if ceil32(_6905) > _6905:
                            mem[_6905 + _2978 + _3022 + _5052 + 105] = 0
                        return 32, mem[_2978 + _3022 + _5052 + 73 len ceil32(_6905) + 32]
                    mem[mem[96] + mem[64] + 32] = 0
                    _5053 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[mem[64] + mem[96] + _5053 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                    if ceil32(_5053) <= _5053:
                        _6554 = mem[64]
                        mem[64] = mem[64] + mem[96] + _5053 + 41
                        mem[_2978 + mem[96] + _5053 + 41] = 32
                        _6906 = mem[_6554]
                        mem[_2978 + _3022 + _5053 + 73] = mem[_6554]
                        mem[_2978 + _3022 + _5053 + 105 len ceil32(_6906)] = mem[_6554 + 32 len ceil32(_6906)]
                        if ceil32(_6906) > _6906:
                            mem[_6906 + _2978 + _3022 + _5053 + 105] = 0
                        return 32, mem[_2978 + _3022 + _5053 + 73 len ceil32(_6906) + 32]
                    _6555 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5053 + 41
                    mem[_2978 + mem[96] + _5053 + 41] = 32
                    _6907 = mem[_6555]
                    mem[_2978 + _3022 + _5053 + 73] = mem[_6555]
                    mem[_2978 + _3022 + _5053 + 105 len ceil32(_6907)] = mem[_6555 + 32 len ceil32(_6907)]
                    if ceil32(_6907) > _6907:
                        mem[_6907 + _2978 + _3022 + _5053 + 105] = 0
                    return 32, mem[_2978 + _3022 + _5053 + 73 len ceil32(_6907) + 32]
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
                    mem[mem[64] + mem[96] + _5054 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                    if ceil32(_5054) <= _5054:
                        _6556 = mem[64]
                        mem[64] = mem[64] + mem[96] + _5054 + 41
                        mem[_2979 + mem[96] + _5054 + 41] = 32
                        _6908 = mem[_6556]
                        mem[_2979 + _3023 + _5054 + 73] = mem[_6556]
                        mem[_2979 + _3023 + _5054 + 105 len ceil32(_6908)] = mem[_6556 + 32 len ceil32(_6908)]
                        if ceil32(_6908) > _6908:
                            mem[_6908 + _2979 + _3023 + _5054 + 105] = 0
                        return 32, mem[_2979 + _3023 + _5054 + 73 len ceil32(_6908) + 32]
                    _6557 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5054 + 41
                    mem[_2979 + mem[96] + _5054 + 41] = 32
                    _6909 = mem[_6557]
                    mem[_2979 + _3023 + _5054 + 73] = mem[_6557]
                    mem[_2979 + _3023 + _5054 + 105 len ceil32(_6909)] = mem[_6557 + 32 len ceil32(_6909)]
                    if ceil32(_6909) > _6909:
                        mem[_6909 + _2979 + _3023 + _5054 + 105] = 0
                    return 32, mem[_2979 + _3023 + _5054 + 73 len ceil32(_6909) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5055 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[mem[64] + mem[96] + _5055 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                if ceil32(_5055) <= _5055:
                    _6558 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5055 + 41
                    mem[_2979 + mem[96] + _5055 + 41] = 32
                    _6910 = mem[_6558]
                    mem[_2979 + _3023 + _5055 + 73] = mem[_6558]
                    mem[_2979 + _3023 + _5055 + 105 len ceil32(_6910)] = mem[_6558 + 32 len ceil32(_6910)]
                    if ceil32(_6910) > _6910:
                        mem[_6910 + _2979 + _3023 + _5055 + 105] = 0
                    return 32, mem[_2979 + _3023 + _5055 + 73 len ceil32(_6910) + 32]
                _6559 = mem[64]
                mem[64] = mem[64] + mem[96] + _5055 + 41
                mem[_2979 + mem[96] + _5055 + 41] = 32
                _6911 = mem[_6559]
                mem[_2979 + _3023 + _5055 + 73] = mem[_6559]
                mem[_2979 + _3023 + _5055 + 105 len ceil32(_6911)] = mem[_6559 + 32 len ceil32(_6911)]
                if ceil32(_6911) > _6911:
                    mem[_6911 + _2979 + _3023 + _5055 + 105] = 0
                return 32, mem[_2979 + _3023 + _5055 + 73 len ceil32(_6911) + 32]
            if block.number < 1:
                revert with 0, 17
            if sub_9c428332[arg1] >= block.number - 1:
                revert with 0, 'Token unrevealed'
            mem[32] = 21
            mem[96] = 28
            mem[0] = arg1
            mem[128] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
            if stor21[arg1] != 1:
                if not arg1:
                    mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                    mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[285] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                    mem[297] = 32
                    mem[329] = mem[224]
                    mem[361 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                    if ceil32(mem[224]) > mem[224]:
                        mem[mem[224] + 361] = 0
                    return Array(len=mem[224], data=mem[361 len ceil32(mem[224])])
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
                        mem[mem[64] + mem[96] + _5056 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                        if ceil32(_5056) <= _5056:
                            _6560 = mem[64]
                            mem[64] = mem[64] + mem[96] + _5056 + 44
                            mem[_2980 + mem[96] + _5056 + 44] = 32
                            _6912 = mem[_6560]
                            mem[_2980 + _3024 + _5056 + 76] = mem[_6560]
                            mem[_2980 + _3024 + _5056 + 108 len ceil32(_6912)] = mem[_6560 + 32 len ceil32(_6912)]
                            if ceil32(_6912) > _6912:
                                mem[_6912 + _2980 + _3024 + _5056 + 108] = 0
                            return 32, mem[_2980 + _3024 + _5056 + 76 len ceil32(_6912) + 32]
                        _6561 = mem[64]
                        mem[64] = mem[64] + mem[96] + _5056 + 44
                        mem[_2980 + mem[96] + _5056 + 44] = 32
                        _6913 = mem[_6561]
                        mem[_2980 + _3024 + _5056 + 76] = mem[_6561]
                        mem[_2980 + _3024 + _5056 + 108 len ceil32(_6913)] = mem[_6561 + 32 len ceil32(_6913)]
                        if ceil32(_6913) > _6913:
                            mem[_6913 + _2980 + _3024 + _5056 + 108] = 0
                        return 32, mem[_2980 + _3024 + _5056 + 76 len ceil32(_6913) + 32]
                    mem[mem[96] + mem[64] + 32] = 0
                    _5057 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[mem[64] + mem[96] + _5057 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5057) <= _5057:
                        _6562 = mem[64]
                        mem[64] = _2980 + _3024 + _5057 + 44
                        mem[_2980 + _3024 + _5057 + 44] = 32
                        _6914 = mem[_6562]
                        mem[_2980 + _3024 + _5057 + 76] = mem[_6562]
                        mem[_2980 + _3024 + _5057 + 108 len ceil32(_6914)] = mem[_6562 + 32 len ceil32(_6914)]
                        if ceil32(_6914) > _6914:
                            mem[_6914 + _2980 + _3024 + _5057 + 108] = 0
                        return 32, mem[_2980 + _3024 + _5057 + 76 len ceil32(_6914) + 32]
                    _6563 = mem[64]
                    mem[64] = _2980 + _3024 + _5057 + 44
                    mem[_2980 + _3024 + _5057 + 44] = 32
                    _6915 = mem[_6563]
                    mem[_2980 + _3024 + _5057 + 76] = mem[_6563]
                    mem[_2980 + _3024 + _5057 + 108 len ceil32(_6915)] = mem[_6563 + 32 len ceil32(_6915)]
                    if ceil32(_6915) > _6915:
                        mem[_6915 + _2980 + _3024 + _5057 + 108] = 0
                    return 32, mem[_2980 + _3024 + _5057 + 76 len ceil32(_6915) + 32]
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
                    mem[mem[64] + mem[96] + _5058 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5058) <= _5058:
                        _6564 = mem[64]
                        mem[64] = mem[64] + mem[96] + _5058 + 44
                        mem[_2981 + mem[96] + _5058 + 44] = 32
                        _6916 = mem[_6564]
                        mem[_2981 + _3025 + _5058 + 76] = mem[_6564]
                        mem[_2981 + _3025 + _5058 + 108 len ceil32(_6916)] = mem[_6564 + 32 len ceil32(_6916)]
                        if ceil32(_6916) > _6916:
                            mem[_6916 + _2981 + _3025 + _5058 + 108] = 0
                        return 32, mem[_2981 + _3025 + _5058 + 76 len ceil32(_6916) + 32]
                    _6565 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5058 + 44
                    mem[_2981 + mem[96] + _5058 + 44] = 32
                    _6917 = mem[_6565]
                    mem[_2981 + _3025 + _5058 + 76] = mem[_6565]
                    mem[_2981 + _3025 + _5058 + 108 len ceil32(_6917)] = mem[_6565 + 32 len ceil32(_6917)]
                    if ceil32(_6917) > _6917:
                        mem[_6917 + _2981 + _3025 + _5058 + 108] = 0
                    return 32, mem[_2981 + _3025 + _5058 + 76 len ceil32(_6917) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5059 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[mem[64] + mem[96] + _5059 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5059) <= _5059:
                    _6566 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5059 + 44
                    mem[_2981 + mem[96] + _5059 + 44] = 32
                    _6918 = mem[_6566]
                    mem[_2981 + _3025 + _5059 + 76] = mem[_6566]
                    mem[_2981 + _3025 + _5059 + 108 len ceil32(_6918)] = mem[_6566 + 32 len ceil32(_6918)]
                    if ceil32(_6918) > _6918:
                        mem[_6918 + _2981 + _3025 + _5059 + 108] = 0
                    return 32, mem[_2981 + _3025 + _5059 + 76 len ceil32(_6918) + 32]
                _6567 = mem[64]
                mem[64] = mem[64] + mem[96] + _5059 + 44
                mem[_2981 + mem[96] + _5059 + 44] = 32
                _6919 = mem[_6567]
                mem[_2981 + _3025 + _5059 + 76] = mem[_6567]
                mem[_2981 + _3025 + _5059 + 108 len ceil32(_6919)] = mem[_6567 + 32 len ceil32(_6919)]
                if ceil32(_6919) > _6919:
                    mem[_6919 + _2981 + _3025 + _5059 + 108] = 0
                return 32, mem[_2981 + _3025 + _5059 + 76 len ceil32(_6919) + 32]
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[285] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                mem[294] = 32
                mem[326] = mem[224]
                mem[358 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 358] = 0
                return Array(len=mem[224], data=mem[358 len ceil32(mem[224])])
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
                    mem[mem[64] + mem[96] + _5060 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                    if ceil32(_5060) <= _5060:
                        _6568 = mem[64]
                        mem[64] = _2982 + _3026 + _5060 + 41
                        mem[_2982 + _3026 + _5060 + 41] = 32
                        _6920 = mem[_6568]
                        mem[_2982 + _3026 + _5060 + 73] = mem[_6568]
                        mem[_2982 + _3026 + _5060 + 105 len ceil32(_6920)] = mem[_6568 + 32 len ceil32(_6920)]
                        if ceil32(_6920) > _6920:
                            mem[_6920 + _2982 + _3026 + _5060 + 105] = 0
                        return 32, mem[_2982 + _3026 + _5060 + 73 len ceil32(_6920) + 32]
                    _6569 = mem[64]
                    mem[64] = _2982 + _3026 + _5060 + 41
                    mem[_2982 + _3026 + _5060 + 41] = 32
                    _6921 = mem[_6569]
                    mem[_2982 + _3026 + _5060 + 73] = mem[_6569]
                    mem[_2982 + _3026 + _5060 + 105 len ceil32(_6921)] = mem[_6569 + 32 len ceil32(_6921)]
                    if ceil32(_6921) > _6921:
                        mem[_6921 + _2982 + _3026 + _5060 + 105] = 0
                    return 32, mem[_2982 + _3026 + _5060 + 73 len ceil32(_6921) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5061 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[mem[64] + mem[96] + _5061 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                if ceil32(_5061) <= _5061:
                    _6570 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5061 + 41
                    mem[_2982 + mem[96] + _5061 + 41] = 32
                    _6922 = mem[_6570]
                    mem[_2982 + _3026 + _5061 + 73] = mem[_6570]
                    mem[_2982 + _3026 + _5061 + 105 len ceil32(_6922)] = mem[_6570 + 32 len ceil32(_6922)]
                    if ceil32(_6922) > _6922:
                        mem[_6922 + _2982 + _3026 + _5061 + 105] = 0
                    return 32, mem[_2982 + _3026 + _5061 + 73 len ceil32(_6922) + 32]
                _6571 = mem[64]
                mem[64] = mem[64] + mem[96] + _5061 + 41
                mem[_2982 + mem[96] + _5061 + 41] = 32
                _6923 = mem[_6571]
                mem[_2982 + _3026 + _5061 + 73] = mem[_6571]
                mem[_2982 + _3026 + _5061 + 105 len ceil32(_6923)] = mem[_6571 + 32 len ceil32(_6923)]
                if ceil32(_6923) > _6923:
                    mem[_6923 + _2982 + _3026 + _5061 + 105] = 0
                return 32, mem[_2982 + _3026 + _5061 + 73 len ceil32(_6923) + 32]
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
                mem[mem[64] + mem[96] + _5062 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                if ceil32(_5062) <= _5062:
                    _6572 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5062 + 41
                    mem[_2983 + mem[96] + _5062 + 41] = 32
                    _6924 = mem[_6572]
                    mem[_2983 + _3027 + _5062 + 73] = mem[_6572]
                    mem[_2983 + _3027 + _5062 + 105 len ceil32(_6924)] = mem[_6572 + 32 len ceil32(_6924)]
                    if ceil32(_6924) > _6924:
                        mem[_6924 + _2983 + _3027 + _5062 + 105] = 0
                    return 32, mem[_2983 + _3027 + _5062 + 73 len ceil32(_6924) + 32]
                _6573 = mem[64]
                mem[64] = mem[64] + mem[96] + _5062 + 41
                mem[_2983 + mem[96] + _5062 + 41] = 32
                _6925 = mem[_6573]
                mem[_2983 + _3027 + _5062 + 73] = mem[_6573]
                mem[_2983 + _3027 + _5062 + 105 len ceil32(_6925)] = mem[_6573 + 32 len ceil32(_6925)]
                if ceil32(_6925) > _6925:
                    mem[_6925 + _2983 + _3027 + _5062 + 105] = 0
                return 32, mem[_2983 + _3027 + _5062 + 73 len ceil32(_6925) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5063 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[mem[64] + mem[96] + _5063 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
            if ceil32(_5063) <= _5063:
                _6574 = mem[64]
                mem[64] = mem[64] + mem[96] + _5063 + 41
                mem[_2983 + mem[96] + _5063 + 41] = 32
                _6926 = mem[_6574]
                mem[_2983 + _3027 + _5063 + 73] = mem[_6574]
                mem[_2983 + _3027 + _5063 + 105 len ceil32(_6926)] = mem[_6574 + 32 len ceil32(_6926)]
                if ceil32(_6926) > _6926:
                    mem[_6926 + _2983 + _3027 + _5063 + 105] = 0
                return 32, mem[_2983 + _3027 + _5063 + 73 len ceil32(_6926) + 32]
            _6575 = mem[64]
            mem[64] = mem[64] + mem[96] + _5063 + 41
            mem[_2983 + mem[96] + _5063 + 41] = 32
            _6927 = mem[_6575]
            mem[_2983 + _3027 + _5063 + 73] = mem[_6575]
            mem[_2983 + _3027 + _5063 + 105 len ceil32(_6927)] = mem[_6575 + 32 len ceil32(_6927)]
            if ceil32(_6927) > _6927:
                mem[_6927 + _2983 + _3027 + _5063 + 105] = 0
            return 32, mem[_2983 + _3027 + _5063 + 73 len ceil32(_6927) + 32]
        if block.number < 1:
            revert with 0, 17
        if sub_9c428332[arg1] >= block.number - 1:
            revert with 0, 'Token unrevealed'
        mem[32] = 21
        if 2 == stor21[arg1]:
            mem[96] = 28
            mem[0] = arg1
            mem[128] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[285] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                mem[297] = 32
                mem[329] = mem[224]
                mem[361 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 361] = 0
                return Array(len=mem[224], data=mem[361 len ceil32(mem[224])])
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
                    mem[mem[64] + mem[96] + _5084 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5084) <= _5084:
                        _6616 = mem[64]
                        mem[64] = _2994 + _3038 + _5084 + 44
                        mem[_2994 + _3038 + _5084 + 44] = 32
                        _6968 = mem[_6616]
                        mem[_2994 + _3038 + _5084 + 76] = mem[_6616]
                        mem[_2994 + _3038 + _5084 + 108 len ceil32(_6968)] = mem[_6616 + 32 len ceil32(_6968)]
                        if ceil32(_6968) > _6968:
                            mem[_6968 + _2994 + _3038 + _5084 + 108] = 0
                        return 32, mem[_2994 + _3038 + _5084 + 76 len ceil32(_6968) + 32]
                    _6617 = mem[64]
                    mem[64] = _2994 + _3038 + _5084 + 44
                    mem[_2994 + _3038 + _5084 + 44] = 32
                    _6969 = mem[_6617]
                    mem[_2994 + _3038 + _5084 + 76] = mem[_6617]
                    mem[_2994 + _3038 + _5084 + 108 len ceil32(_6969)] = mem[_6617 + 32 len ceil32(_6969)]
                    if ceil32(_6969) > _6969:
                        mem[_6969 + _2994 + _3038 + _5084 + 108] = 0
                    return 32, mem[_2994 + _3038 + _5084 + 76 len ceil32(_6969) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5085 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[mem[64] + mem[96] + _5085 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5085) <= _5085:
                    _6618 = mem[64]
                    mem[64] = _2994 + _3038 + _5085 + 44
                    mem[_2994 + _3038 + _5085 + 44] = 32
                    _6970 = mem[_6618]
                    mem[_2994 + _3038 + _5085 + 76] = mem[_6618]
                    mem[_2994 + _3038 + _5085 + 108 len ceil32(_6970)] = mem[_6618 + 32 len ceil32(_6970)]
                    if ceil32(_6970) > _6970:
                        mem[_6970 + _2994 + _3038 + _5085 + 108] = 0
                    return 32, mem[_2994 + _3038 + _5085 + 76 len ceil32(_6970) + 32]
                _6619 = mem[64]
                mem[64] = _2994 + _3038 + _5085 + 44
                mem[_2994 + _3038 + _5085 + 44] = 32
                _6971 = mem[_6619]
                mem[_2994 + _3038 + _5085 + 76] = mem[_6619]
                mem[_2994 + _3038 + _5085 + 108 len ceil32(_6971)] = mem[_6619 + 32 len ceil32(_6971)]
                if ceil32(_6971) > _6971:
                    mem[_6971 + _2994 + _3038 + _5085 + 108] = 0
                return 32, mem[_2994 + _3038 + _5085 + 76 len ceil32(_6971) + 32]
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
                mem[mem[64] + mem[96] + _5086 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5086) <= _5086:
                    _6620 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5086 + 44
                    mem[_2995 + mem[96] + _5086 + 44] = 32
                    _6972 = mem[_6620]
                    mem[_2995 + _3039 + _5086 + 76] = mem[_6620]
                    mem[_2995 + _3039 + _5086 + 108 len ceil32(_6972)] = mem[_6620 + 32 len ceil32(_6972)]
                    if ceil32(_6972) > _6972:
                        mem[_6972 + _2995 + _3039 + _5086 + 108] = 0
                    return 32, mem[_2995 + _3039 + _5086 + 76 len ceil32(_6972) + 32]
                _6621 = mem[64]
                mem[64] = mem[64] + mem[96] + _5086 + 44
                mem[_2995 + mem[96] + _5086 + 44] = 32
                _6973 = mem[_6621]
                mem[_2995 + _3039 + _5086 + 76] = mem[_6621]
                mem[_2995 + _3039 + _5086 + 108 len ceil32(_6973)] = mem[_6621 + 32 len ceil32(_6973)]
                if ceil32(_6973) > _6973:
                    mem[_6973 + _2995 + _3039 + _5086 + 108] = 0
                return 32, mem[_2995 + _3039 + _5086 + 76 len ceil32(_6973) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5087 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[mem[64] + mem[96] + _5087 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
            if ceil32(_5087) <= _5087:
                _6622 = mem[64]
                mem[64] = mem[64] + mem[96] + _5087 + 44
                mem[_2995 + mem[96] + _5087 + 44] = 32
                _6974 = mem[_6622]
                mem[_2995 + _3039 + _5087 + 76] = mem[_6622]
                mem[_2995 + _3039 + _5087 + 108 len ceil32(_6974)] = mem[_6622 + 32 len ceil32(_6974)]
                if ceil32(_6974) > _6974:
                    mem[_6974 + _2995 + _3039 + _5087 + 108] = 0
                return 32, mem[_2995 + _3039 + _5087 + 76 len ceil32(_6974) + 32]
            _6623 = mem[64]
            mem[64] = mem[64] + mem[96] + _5087 + 44
            mem[_2995 + mem[96] + _5087 + 44] = 32
            _6975 = mem[_6623]
            mem[_2995 + _3039 + _5087 + 76] = mem[_6623]
            mem[_2995 + _3039 + _5087 + 108 len ceil32(_6975)] = mem[_6623 + 32 len ceil32(_6975)]
            if ceil32(_6975) > _6975:
                mem[_6975 + _2995 + _3039 + _5087 + 108] = 0
            return 32, mem[_2995 + _3039 + _5087 + 76 len ceil32(_6975) + 32]
        if not ownerOf[arg1]:
            revert with 0, 'Invalid token ID'
        if 10000 <= arg1:
            mem[32] = 21
            mem[96] = 28
            mem[0] = arg1
            mem[128] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
            if stor21[arg1] != 1:
                if not arg1:
                    mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                    mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[285] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                    mem[297] = 32
                    mem[329] = mem[224]
                    mem[361 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                    if ceil32(mem[224]) > mem[224]:
                        mem[mem[224] + 361] = 0
                    return Array(len=mem[224], data=mem[361 len ceil32(mem[224])])
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
                        mem[mem[64] + mem[96] + _5068 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                        if ceil32(_5068) <= _5068:
                            _6584 = mem[64]
                            mem[64] = mem[64] + mem[96] + _5068 + 44
                            mem[_2986 + mem[96] + _5068 + 44] = 32
                            _6936 = mem[_6584]
                            mem[_2986 + _3030 + _5068 + 76] = mem[_6584]
                            mem[_2986 + _3030 + _5068 + 108 len ceil32(_6936)] = mem[_6584 + 32 len ceil32(_6936)]
                            if ceil32(_6936) > _6936:
                                mem[_6936 + _2986 + _3030 + _5068 + 108] = 0
                            return 32, mem[_2986 + _3030 + _5068 + 76 len ceil32(_6936) + 32]
                        _6585 = mem[64]
                        mem[64] = mem[64] + mem[96] + _5068 + 44
                        mem[_2986 + mem[96] + _5068 + 44] = 32
                        _6937 = mem[_6585]
                        mem[_2986 + _3030 + _5068 + 76] = mem[_6585]
                        mem[_2986 + _3030 + _5068 + 108 len ceil32(_6937)] = mem[_6585 + 32 len ceil32(_6937)]
                        if ceil32(_6937) > _6937:
                            mem[_6937 + _2986 + _3030 + _5068 + 108] = 0
                        return 32, mem[_2986 + _3030 + _5068 + 76 len ceil32(_6937) + 32]
                    mem[mem[96] + mem[64] + 32] = 0
                    _5069 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[mem[64] + mem[96] + _5069 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5069) <= _5069:
                        _6586 = mem[64]
                        mem[64] = _2986 + _3030 + _5069 + 44
                        mem[_2986 + _3030 + _5069 + 44] = 32
                        _6938 = mem[_6586]
                        mem[_2986 + _3030 + _5069 + 76] = mem[_6586]
                        mem[_2986 + _3030 + _5069 + 108 len ceil32(_6938)] = mem[_6586 + 32 len ceil32(_6938)]
                        if ceil32(_6938) > _6938:
                            mem[_6938 + _2986 + _3030 + _5069 + 108] = 0
                        return 32, mem[_2986 + _3030 + _5069 + 76 len ceil32(_6938) + 32]
                    _6587 = mem[64]
                    mem[64] = _2986 + _3030 + _5069 + 44
                    mem[_2986 + _3030 + _5069 + 44] = 32
                    _6939 = mem[_6587]
                    mem[_2986 + _3030 + _5069 + 76] = mem[_6587]
                    mem[_2986 + _3030 + _5069 + 108 len ceil32(_6939)] = mem[_6587 + 32 len ceil32(_6939)]
                    if ceil32(_6939) > _6939:
                        mem[_6939 + _2986 + _3030 + _5069 + 108] = 0
                    return 32, mem[_2986 + _3030 + _5069 + 76 len ceil32(_6939) + 32]
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
                    mem[mem[64] + mem[96] + _5070 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5070) <= _5070:
                        _6588 = mem[64]
                        mem[64] = _2987 + _3031 + _5070 + 44
                        mem[_2987 + _3031 + _5070 + 44] = 32
                        _6940 = mem[_6588]
                        mem[_2987 + _3031 + _5070 + 76] = mem[_6588]
                        mem[_2987 + _3031 + _5070 + 108 len ceil32(_6940)] = mem[_6588 + 32 len ceil32(_6940)]
                        if ceil32(_6940) > _6940:
                            mem[_6940 + _2987 + _3031 + _5070 + 108] = 0
                        return 32, mem[_2987 + _3031 + _5070 + 76 len ceil32(_6940) + 32]
                    _6589 = mem[64]
                    mem[64] = _2987 + _3031 + _5070 + 44
                    mem[_2987 + _3031 + _5070 + 44] = 32
                    _6941 = mem[_6589]
                    mem[_2987 + _3031 + _5070 + 76] = mem[_6589]
                    mem[_2987 + _3031 + _5070 + 108 len ceil32(_6941)] = mem[_6589 + 32 len ceil32(_6941)]
                    if ceil32(_6941) > _6941:
                        mem[_6941 + _2987 + _3031 + _5070 + 108] = 0
                    return 32, mem[_2987 + _3031 + _5070 + 76 len ceil32(_6941) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5071 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[mem[64] + mem[96] + _5071 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5071) <= _5071:
                    _6590 = mem[64]
                    mem[64] = _2987 + _3031 + _5071 + 44
                    mem[_2987 + _3031 + _5071 + 44] = 32
                    _6942 = mem[_6590]
                    mem[_2987 + _3031 + _5071 + 76] = mem[_6590]
                    mem[_2987 + _3031 + _5071 + 108 len ceil32(_6942)] = mem[_6590 + 32 len ceil32(_6942)]
                    if ceil32(_6942) > _6942:
                        mem[_6942 + _2987 + _3031 + _5071 + 108] = 0
                    return 32, mem[_2987 + _3031 + _5071 + 76 len ceil32(_6942) + 32]
                _6591 = mem[64]
                mem[64] = _2987 + _3031 + _5071 + 44
                mem[_2987 + _3031 + _5071 + 44] = 32
                _6943 = mem[_6591]
                mem[_2987 + _3031 + _5071 + 76] = mem[_6591]
                mem[_2987 + _3031 + _5071 + 108 len ceil32(_6943)] = mem[_6591 + 32 len ceil32(_6943)]
                if ceil32(_6943) > _6943:
                    mem[_6943 + _2987 + _3031 + _5071 + 108] = 0
                return 32, mem[_2987 + _3031 + _5071 + 76 len ceil32(_6943) + 32]
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[285] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                mem[294] = 32
                mem[326] = mem[224]
                mem[358 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 358] = 0
                return Array(len=mem[224], data=mem[358 len ceil32(mem[224])])
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
                    mem[mem[64] + mem[96] + _5072 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                    if ceil32(_5072) <= _5072:
                        _6592 = mem[64]
                        mem[64] = mem[64] + mem[96] + _5072 + 41
                        mem[_2988 + mem[96] + _5072 + 41] = 32
                        _6944 = mem[_6592]
                        mem[_2988 + _3032 + _5072 + 73] = mem[_6592]
                        mem[_2988 + _3032 + _5072 + 105 len ceil32(_6944)] = mem[_6592 + 32 len ceil32(_6944)]
                        if ceil32(_6944) > _6944:
                            mem[_6944 + _2988 + _3032 + _5072 + 105] = 0
                        return 32, mem[_2988 + _3032 + _5072 + 73 len ceil32(_6944) + 32]
                    _6593 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5072 + 41
                    mem[_2988 + mem[96] + _5072 + 41] = 32
                    _6945 = mem[_6593]
                    mem[_2988 + _3032 + _5072 + 73] = mem[_6593]
                    mem[_2988 + _3032 + _5072 + 105 len ceil32(_6945)] = mem[_6593 + 32 len ceil32(_6945)]
                    if ceil32(_6945) > _6945:
                        mem[_6945 + _2988 + _3032 + _5072 + 105] = 0
                    return 32, mem[_2988 + _3032 + _5072 + 73 len ceil32(_6945) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5073 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[mem[64] + mem[96] + _5073 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                if ceil32(_5073) <= _5073:
                    _6594 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5073 + 41
                    mem[_2988 + mem[96] + _5073 + 41] = 32
                    _6946 = mem[_6594]
                    mem[_2988 + _3032 + _5073 + 73] = mem[_6594]
                    mem[_2988 + _3032 + _5073 + 105 len ceil32(_6946)] = mem[_6594 + 32 len ceil32(_6946)]
                    if ceil32(_6946) > _6946:
                        mem[_6946 + _2988 + _3032 + _5073 + 105] = 0
                    return 32, mem[_2988 + _3032 + _5073 + 73 len ceil32(_6946) + 32]
                _6595 = mem[64]
                mem[64] = mem[64] + mem[96] + _5073 + 41
                mem[_2988 + mem[96] + _5073 + 41] = 32
                _6947 = mem[_6595]
                mem[_2988 + _3032 + _5073 + 73] = mem[_6595]
                mem[_2988 + _3032 + _5073 + 105 len ceil32(_6947)] = mem[_6595 + 32 len ceil32(_6947)]
                if ceil32(_6947) > _6947:
                    mem[_6947 + _2988 + _3032 + _5073 + 105] = 0
                return 32, mem[_2988 + _3032 + _5073 + 73 len ceil32(_6947) + 32]
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
                mem[mem[64] + mem[96] + _5074 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                if ceil32(_5074) <= _5074:
                    _6596 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5074 + 41
                    mem[_2989 + mem[96] + _5074 + 41] = 32
                    _6948 = mem[_6596]
                    mem[_2989 + _3033 + _5074 + 73] = mem[_6596]
                    mem[_2989 + _3033 + _5074 + 105 len ceil32(_6948)] = mem[_6596 + 32 len ceil32(_6948)]
                    if ceil32(_6948) > _6948:
                        mem[_6948 + _2989 + _3033 + _5074 + 105] = 0
                    return 32, mem[_2989 + _3033 + _5074 + 73 len ceil32(_6948) + 32]
                _6597 = mem[64]
                mem[64] = mem[64] + mem[96] + _5074 + 41
                mem[_2989 + mem[96] + _5074 + 41] = 32
                _6949 = mem[_6597]
                mem[_2989 + _3033 + _5074 + 73] = mem[_6597]
                mem[_2989 + _3033 + _5074 + 105 len ceil32(_6949)] = mem[_6597 + 32 len ceil32(_6949)]
                if ceil32(_6949) > _6949:
                    mem[_6949 + _2989 + _3033 + _5074 + 105] = 0
                return 32, mem[_2989 + _3033 + _5074 + 73 len ceil32(_6949) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5075 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[mem[64] + mem[96] + _5075 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
            if ceil32(_5075) <= _5075:
                _6598 = mem[64]
                mem[64] = mem[64] + mem[96] + _5075 + 41
                mem[_2989 + mem[96] + _5075 + 41] = 32
                _6950 = mem[_6598]
                mem[_2989 + _3033 + _5075 + 73] = mem[_6598]
                mem[_2989 + _3033 + _5075 + 105 len ceil32(_6950)] = mem[_6598 + 32 len ceil32(_6950)]
                if ceil32(_6950) > _6950:
                    mem[_6950 + _2989 + _3033 + _5075 + 105] = 0
                return 32, mem[_2989 + _3033 + _5075 + 73 len ceil32(_6950) + 32]
            _6599 = mem[64]
            mem[64] = mem[64] + mem[96] + _5075 + 41
            mem[_2989 + mem[96] + _5075 + 41] = 32
            _6951 = mem[_6599]
            mem[_2989 + _3033 + _5075 + 73] = mem[_6599]
            mem[_2989 + _3033 + _5075 + 105 len ceil32(_6951)] = mem[_6599 + 32 len ceil32(_6951)]
            if ceil32(_6951) > _6951:
                mem[_6951 + _2989 + _3033 + _5075 + 105] = 0
            return 32, mem[_2989 + _3033 + _5075 + 73 len ceil32(_6951) + 32]
        if block.number < 1:
            revert with 0, 17
        if sub_9c428332[arg1] >= block.number - 1:
            revert with 0, 'Token unrevealed'
        mem[32] = 21
        mem[96] = 28
        mem[0] = arg1
        mem[128] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
        if stor21[arg1] != 1:
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[285] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                mem[297] = 32
                mem[329] = mem[224]
                mem[361 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 361] = 0
                return Array(len=mem[224], data=mem[361 len ceil32(mem[224])])
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
                    mem[mem[64] + mem[96] + _5076 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5076) <= _5076:
                        _6600 = mem[64]
                        mem[64] = _2990 + _3034 + _5076 + 44
                        mem[_2990 + _3034 + _5076 + 44] = 32
                        _6952 = mem[_6600]
                        mem[_2990 + _3034 + _5076 + 76] = mem[_6600]
                        mem[_2990 + _3034 + _5076 + 108 len ceil32(_6952)] = mem[_6600 + 32 len ceil32(_6952)]
                        if ceil32(_6952) > _6952:
                            mem[_6952 + _2990 + _3034 + _5076 + 108] = 0
                        return 32, mem[_2990 + _3034 + _5076 + 76 len ceil32(_6952) + 32]
                    _6601 = mem[64]
                    mem[64] = _2990 + _3034 + _5076 + 44
                    mem[_2990 + _3034 + _5076 + 44] = 32
                    _6953 = mem[_6601]
                    mem[_2990 + _3034 + _5076 + 76] = mem[_6601]
                    mem[_2990 + _3034 + _5076 + 108 len ceil32(_6953)] = mem[_6601 + 32 len ceil32(_6953)]
                    if ceil32(_6953) > _6953:
                        mem[_6953 + _2990 + _3034 + _5076 + 108] = 0
                    return 32, mem[_2990 + _3034 + _5076 + 76 len ceil32(_6953) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5077 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[mem[64] + mem[96] + _5077 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5077) <= _5077:
                    _6602 = mem[64]
                    mem[64] = _2990 + _3034 + _5077 + 44
                    mem[_2990 + _3034 + _5077 + 44] = 32
                    _6954 = mem[_6602]
                    mem[_2990 + _3034 + _5077 + 76] = mem[_6602]
                    mem[_2990 + _3034 + _5077 + 108 len ceil32(_6954)] = mem[_6602 + 32 len ceil32(_6954)]
                    if ceil32(_6954) > _6954:
                        mem[_6954 + _2990 + _3034 + _5077 + 108] = 0
                    return 32, mem[_2990 + _3034 + _5077 + 76 len ceil32(_6954) + 32]
                _6603 = mem[64]
                mem[64] = _2990 + _3034 + _5077 + 44
                mem[_2990 + _3034 + _5077 + 44] = 32
                _6955 = mem[_6603]
                mem[_2990 + _3034 + _5077 + 76] = mem[_6603]
                mem[_2990 + _3034 + _5077 + 108 len ceil32(_6955)] = mem[_6603 + 32 len ceil32(_6955)]
                if ceil32(_6955) > _6955:
                    mem[_6955 + _2990 + _3034 + _5077 + 108] = 0
                return 32, mem[_2990 + _3034 + _5077 + 76 len ceil32(_6955) + 32]
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
                mem[mem[64] + mem[96] + _5078 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5078) <= _5078:
                    _6604 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5078 + 44
                    mem[_2991 + mem[96] + _5078 + 44] = 32
                    _6956 = mem[_6604]
                    mem[_2991 + _3035 + _5078 + 76] = mem[_6604]
                    mem[_2991 + _3035 + _5078 + 108 len ceil32(_6956)] = mem[_6604 + 32 len ceil32(_6956)]
                    if ceil32(_6956) > _6956:
                        mem[_6956 + _2991 + _3035 + _5078 + 108] = 0
                    return 32, mem[_2991 + _3035 + _5078 + 76 len ceil32(_6956) + 32]
                _6605 = mem[64]
                mem[64] = mem[64] + mem[96] + _5078 + 44
                mem[_2991 + mem[96] + _5078 + 44] = 32
                _6957 = mem[_6605]
                mem[_2991 + _3035 + _5078 + 76] = mem[_6605]
                mem[_2991 + _3035 + _5078 + 108 len ceil32(_6957)] = mem[_6605 + 32 len ceil32(_6957)]
                if ceil32(_6957) > _6957:
                    mem[_6957 + _2991 + _3035 + _5078 + 108] = 0
                return 32, mem[_2991 + _3035 + _5078 + 76 len ceil32(_6957) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5079 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[mem[64] + mem[96] + _5079 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
            if ceil32(_5079) <= _5079:
                _6606 = mem[64]
                mem[64] = mem[64] + mem[96] + _5079 + 44
                mem[_2991 + mem[96] + _5079 + 44] = 32
                _6958 = mem[_6606]
                mem[_2991 + _3035 + _5079 + 76] = mem[_6606]
                mem[_2991 + _3035 + _5079 + 108 len ceil32(_6958)] = mem[_6606 + 32 len ceil32(_6958)]
                if ceil32(_6958) > _6958:
                    mem[_6958 + _2991 + _3035 + _5079 + 108] = 0
                return 32, mem[_2991 + _3035 + _5079 + 76 len ceil32(_6958) + 32]
            _6607 = mem[64]
            mem[64] = mem[64] + mem[96] + _5079 + 44
            mem[_2991 + mem[96] + _5079 + 44] = 32
            _6959 = mem[_6607]
            mem[_2991 + _3035 + _5079 + 76] = mem[_6607]
            mem[_2991 + _3035 + _5079 + 108 len ceil32(_6959)] = mem[_6607 + 32 len ceil32(_6959)]
            if ceil32(_6959) > _6959:
                mem[_6959 + _2991 + _3035 + _5079 + 108] = 0
            return 32, mem[_2991 + _3035 + _5079 + 76 len ceil32(_6959) + 32]
        if not arg1:
            mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
            mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[285] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
            mem[294] = 32
            mem[326] = mem[224]
            mem[358 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + 358] = 0
            return Array(len=mem[224], data=mem[358 len ceil32(mem[224])])
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
                mem[mem[64] + mem[96] + _5080 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                if ceil32(_5080) <= _5080:
                    _6608 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5080 + 41
                    mem[_2992 + mem[96] + _5080 + 41] = 32
                    _6960 = mem[_6608]
                    mem[_2992 + _3036 + _5080 + 73] = mem[_6608]
                    mem[_2992 + _3036 + _5080 + 105 len ceil32(_6960)] = mem[_6608 + 32 len ceil32(_6960)]
                    if ceil32(_6960) > _6960:
                        mem[_6960 + _2992 + _3036 + _5080 + 105] = 0
                    return 32, mem[_2992 + _3036 + _5080 + 73 len ceil32(_6960) + 32]
                _6609 = mem[64]
                mem[64] = mem[64] + mem[96] + _5080 + 41
                mem[_2992 + mem[96] + _5080 + 41] = 32
                _6961 = mem[_6609]
                mem[_2992 + _3036 + _5080 + 73] = mem[_6609]
                mem[_2992 + _3036 + _5080 + 105 len ceil32(_6961)] = mem[_6609 + 32 len ceil32(_6961)]
                if ceil32(_6961) > _6961:
                    mem[_6961 + _2992 + _3036 + _5080 + 105] = 0
                return 32, mem[_2992 + _3036 + _5080 + 73 len ceil32(_6961) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5081 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[mem[64] + mem[96] + _5081 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
            if ceil32(_5081) <= _5081:
                _6610 = mem[64]
                mem[64] = mem[64] + mem[96] + _5081 + 41
                mem[_2992 + mem[96] + _5081 + 41] = 32
                _6962 = mem[_6610]
                mem[_2992 + _3036 + _5081 + 73] = mem[_6610]
                mem[_2992 + _3036 + _5081 + 105 len ceil32(_6962)] = mem[_6610 + 32 len ceil32(_6962)]
                if ceil32(_6962) > _6962:
                    mem[_6962 + _2992 + _3036 + _5081 + 105] = 0
                return 32, mem[_2992 + _3036 + _5081 + 73 len ceil32(_6962) + 32]
            _6611 = mem[64]
            mem[64] = mem[64] + mem[96] + _5081 + 41
            mem[_2992 + mem[96] + _5081 + 41] = 32
            _6963 = mem[_6611]
            mem[_2992 + _3036 + _5081 + 73] = mem[_6611]
            mem[_2992 + _3036 + _5081 + 105 len ceil32(_6963)] = mem[_6611 + 32 len ceil32(_6963)]
            if ceil32(_6963) > _6963:
                mem[_6963 + _2992 + _3036 + _5081 + 105] = 0
            return 32, mem[_2992 + _3036 + _5081 + 73 len ceil32(_6963) + 32]
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
            mem[mem[64] + mem[96] + _5082 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
            if ceil32(_5082) <= _5082:
                _6612 = mem[64]
                mem[64] = mem[64] + mem[96] + _5082 + 41
                mem[_2993 + mem[96] + _5082 + 41] = 32
                _6964 = mem[_6612]
                mem[_2993 + _3037 + _5082 + 73] = mem[_6612]
                mem[_2993 + _3037 + _5082 + 105 len ceil32(_6964)] = mem[_6612 + 32 len ceil32(_6964)]
                if ceil32(_6964) > _6964:
                    mem[_6964 + _2993 + _3037 + _5082 + 105] = 0
                return 32, mem[_2993 + _3037 + _5082 + 73 len ceil32(_6964) + 32]
            _6613 = mem[64]
            mem[64] = mem[64] + mem[96] + _5082 + 41
            mem[_2993 + mem[96] + _5082 + 41] = 32
            _6965 = mem[_6613]
            mem[_2993 + _3037 + _5082 + 73] = mem[_6613]
            mem[_2993 + _3037 + _5082 + 105 len ceil32(_6965)] = mem[_6613 + 32 len ceil32(_6965)]
            if ceil32(_6965) > _6965:
                mem[_6965 + _2993 + _3037 + _5082 + 105] = 0
            return 32, mem[_2993 + _3037 + _5082 + 73 len ceil32(_6965) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _5083 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[mem[64] + mem[96] + _5083 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
        if ceil32(_5083) <= _5083:
            _6614 = mem[64]
            mem[64] = mem[64] + mem[96] + _5083 + 41
            mem[_2993 + mem[96] + _5083 + 41] = 32
            _6966 = mem[_6614]
            mem[_2993 + _3037 + _5083 + 73] = mem[_6614]
            mem[_2993 + _3037 + _5083 + 105 len ceil32(_6966)] = mem[_6614 + 32 len ceil32(_6966)]
            if ceil32(_6966) > _6966:
                mem[_6966 + _2993 + _3037 + _5083 + 105] = 0
            return 32, mem[_2993 + _3037 + _5083 + 73 len ceil32(_6966) + 32]
        _6615 = mem[64]
        mem[64] = mem[64] + mem[96] + _5083 + 41
        mem[_2993 + mem[96] + _5083 + 41] = 32
        _6967 = mem[_6615]
        mem[_2993 + _3037 + _5083 + 73] = mem[_6615]
        mem[_2993 + _3037 + _5083 + 105 len ceil32(_6967)] = mem[_6615 + 32 len ceil32(_6967)]
        if ceil32(_6967) > _6967:
            mem[_6967 + _2993 + _3037 + _5083 + 105] = 0
        return 32, mem[_2993 + _3037 + _5083 + 73 len ceil32(_6967) + 32]
    if block.number < 1:
        revert with 0, 17
    if sub_9c428332[arg1] >= block.number - 1:
        mem[192] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
        mem[220] = 0x756e72657665616c65642e6a736f6e0000000000000000000000000000000000
        mem[235] = 32
        mem[267] = mem[160]
        mem[299 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + 299] = 0
        return Array(len=mem[160], data=mem[299 len ceil32(mem[160])])
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token ID'
    if 10000 <= arg1:
        mem[32] = 21
        if 2 == stor21[arg1]:
            mem[96] = 28
            mem[0] = arg1
            mem[128] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[285] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                mem[297] = 32
                mem[329] = mem[224]
                mem[361 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 361] = 0
                return Array(len=mem[224], data=mem[361 len ceil32(mem[224])])
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
                    mem[mem[64] + mem[96] + _5104 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5104) <= _5104:
                        _6656 = mem[64]
                        mem[64] = mem[64] + mem[96] + _5104 + 44
                        mem[_3004 + mem[96] + _5104 + 44] = 32
                        _7008 = mem[_6656]
                        mem[_3004 + _3048 + _5104 + 76] = mem[_6656]
                        mem[_3004 + _3048 + _5104 + 108 len ceil32(_7008)] = mem[_6656 + 32 len ceil32(_7008)]
                        if ceil32(_7008) > _7008:
                            mem[_7008 + _3004 + _3048 + _5104 + 108] = 0
                        return 32, mem[_3004 + _3048 + _5104 + 76 len ceil32(_7008) + 32]
                    _6657 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5104 + 44
                    mem[_3004 + mem[96] + _5104 + 44] = 32
                    _7009 = mem[_6657]
                    mem[_3004 + _3048 + _5104 + 76] = mem[_6657]
                    mem[_3004 + _3048 + _5104 + 108 len ceil32(_7009)] = mem[_6657 + 32 len ceil32(_7009)]
                    if ceil32(_7009) > _7009:
                        mem[_7009 + _3004 + _3048 + _5104 + 108] = 0
                    return 32, mem[_3004 + _3048 + _5104 + 76 len ceil32(_7009) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5105 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[mem[64] + mem[96] + _5105 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5105) <= _5105:
                    _6658 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5105 + 44
                    mem[_3004 + mem[96] + _5105 + 44] = 32
                    _7010 = mem[_6658]
                    mem[_3004 + _3048 + _5105 + 76] = mem[_6658]
                    mem[_3004 + _3048 + _5105 + 108 len ceil32(_7010)] = mem[_6658 + 32 len ceil32(_7010)]
                    if ceil32(_7010) > _7010:
                        mem[_7010 + _3004 + _3048 + _5105 + 108] = 0
                    return 32, mem[_3004 + _3048 + _5105 + 76 len ceil32(_7010) + 32]
                _6659 = mem[64]
                mem[64] = mem[64] + mem[96] + _5105 + 44
                mem[_3004 + mem[96] + _5105 + 44] = 32
                _7011 = mem[_6659]
                mem[_3004 + _3048 + _5105 + 76] = mem[_6659]
                mem[_3004 + _3048 + _5105 + 108 len ceil32(_7011)] = mem[_6659 + 32 len ceil32(_7011)]
                if ceil32(_7011) > _7011:
                    mem[_7011 + _3004 + _3048 + _5105 + 108] = 0
                return 32, mem[_3004 + _3048 + _5105 + 76 len ceil32(_7011) + 32]
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
                mem[mem[64] + mem[96] + _5106 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5106) <= _5106:
                    _6660 = mem[64]
                    mem[64] = _3005 + _3049 + _5106 + 44
                    mem[_3005 + _3049 + _5106 + 44] = 32
                    _7012 = mem[_6660]
                    mem[_3005 + _3049 + _5106 + 76] = mem[_6660]
                    mem[_3005 + _3049 + _5106 + 108 len ceil32(_7012)] = mem[_6660 + 32 len ceil32(_7012)]
                    if ceil32(_7012) > _7012:
                        mem[_7012 + _3005 + _3049 + _5106 + 108] = 0
                    return 32, mem[_3005 + _3049 + _5106 + 76 len ceil32(_7012) + 32]
                _6661 = mem[64]
                mem[64] = _3005 + _3049 + _5106 + 44
                mem[_3005 + _3049 + _5106 + 44] = 32
                _7013 = mem[_6661]
                mem[_3005 + _3049 + _5106 + 76] = mem[_6661]
                mem[_3005 + _3049 + _5106 + 108 len ceil32(_7013)] = mem[_6661 + 32 len ceil32(_7013)]
                if ceil32(_7013) > _7013:
                    mem[_7013 + _3005 + _3049 + _5106 + 108] = 0
                return 32, mem[_3005 + _3049 + _5106 + 76 len ceil32(_7013) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5107 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[mem[64] + mem[96] + _5107 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
            if ceil32(_5107) <= _5107:
                _6662 = mem[64]
                mem[64] = _3005 + _3049 + _5107 + 44
                mem[_3005 + _3049 + _5107 + 44] = 32
                _7014 = mem[_6662]
                mem[_3005 + _3049 + _5107 + 76] = mem[_6662]
                mem[_3005 + _3049 + _5107 + 108 len ceil32(_7014)] = mem[_6662 + 32 len ceil32(_7014)]
                if ceil32(_7014) > _7014:
                    mem[_7014 + _3005 + _3049 + _5107 + 108] = 0
                return 32, mem[_3005 + _3049 + _5107 + 76 len ceil32(_7014) + 32]
            _6663 = mem[64]
            mem[64] = _3005 + _3049 + _5107 + 44
            mem[_3005 + _3049 + _5107 + 44] = 32
            _7015 = mem[_6663]
            mem[_3005 + _3049 + _5107 + 76] = mem[_6663]
            mem[_3005 + _3049 + _5107 + 108 len ceil32(_7015)] = mem[_6663 + 32 len ceil32(_7015)]
            if ceil32(_7015) > _7015:
                mem[_7015 + _3005 + _3049 + _5107 + 108] = 0
            return 32, mem[_3005 + _3049 + _5107 + 76 len ceil32(_7015) + 32]
        if not ownerOf[arg1]:
            revert with 0, 'Invalid token ID'
        if 10000 <= arg1:
            mem[32] = 21
            mem[96] = 28
            mem[0] = arg1
            mem[128] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
            if stor21[arg1] != 1:
                if not arg1:
                    mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                    mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[285] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                    mem[297] = 32
                    mem[329] = mem[224]
                    mem[361 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                    if ceil32(mem[224]) > mem[224]:
                        mem[mem[224] + 361] = 0
                    return Array(len=mem[224], data=mem[361 len ceil32(mem[224])])
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
                        mem[mem[64] + mem[96] + _5088 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                        if ceil32(_5088) <= _5088:
                            _6624 = mem[64]
                            mem[64] = _2996 + _3040 + _5088 + 44
                            mem[_2996 + _3040 + _5088 + 44] = 32
                            _6976 = mem[_6624]
                            mem[_2996 + _3040 + _5088 + 76] = mem[_6624]
                            mem[_2996 + _3040 + _5088 + 108 len ceil32(_6976)] = mem[_6624 + 32 len ceil32(_6976)]
                            if ceil32(_6976) > _6976:
                                mem[_6976 + _2996 + _3040 + _5088 + 108] = 0
                            return 32, mem[_2996 + _3040 + _5088 + 76 len ceil32(_6976) + 32]
                        _6625 = mem[64]
                        mem[64] = _2996 + _3040 + _5088 + 44
                        mem[_2996 + _3040 + _5088 + 44] = 32
                        _6977 = mem[_6625]
                        mem[_2996 + _3040 + _5088 + 76] = mem[_6625]
                        mem[_2996 + _3040 + _5088 + 108 len ceil32(_6977)] = mem[_6625 + 32 len ceil32(_6977)]
                        if ceil32(_6977) > _6977:
                            mem[_6977 + _2996 + _3040 + _5088 + 108] = 0
                        return 32, mem[_2996 + _3040 + _5088 + 76 len ceil32(_6977) + 32]
                    mem[mem[96] + mem[64] + 32] = 0
                    _5089 = mem[160]
                    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    mem[mem[64] + mem[96] + _5089 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5089) <= _5089:
                        _6626 = mem[64]
                        mem[64] = mem[64] + mem[96] + _5089 + 44
                        mem[_2996 + mem[96] + _5089 + 44] = 32
                        _6978 = mem[_6626]
                        mem[_2996 + _3040 + _5089 + 76] = mem[_6626]
                        mem[_2996 + _3040 + _5089 + 108 len ceil32(_6978)] = mem[_6626 + 32 len ceil32(_6978)]
                        if ceil32(_6978) > _6978:
                            mem[_6978 + _2996 + _3040 + _5089 + 108] = 0
                        return 32, mem[_2996 + _3040 + _5089 + 76 len ceil32(_6978) + 32]
                    _6627 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5089 + 44
                    mem[_2996 + mem[96] + _5089 + 44] = 32
                    _6979 = mem[_6627]
                    mem[_2996 + _3040 + _5089 + 76] = mem[_6627]
                    mem[_2996 + _3040 + _5089 + 108 len ceil32(_6979)] = mem[_6627 + 32 len ceil32(_6979)]
                    if ceil32(_6979) > _6979:
                        mem[_6979 + _2996 + _3040 + _5089 + 108] = 0
                    return 32, mem[_2996 + _3040 + _5089 + 76 len ceil32(_6979) + 32]
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
                    mem[mem[64] + mem[96] + _5090 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5090) <= _5090:
                        _6628 = mem[64]
                        mem[64] = _2997 + _3041 + _5090 + 44
                        mem[_2997 + _3041 + _5090 + 44] = 32
                        _6980 = mem[_6628]
                        mem[_2997 + _3041 + _5090 + 76] = mem[_6628]
                        mem[_2997 + _3041 + _5090 + 108 len ceil32(_6980)] = mem[_6628 + 32 len ceil32(_6980)]
                        if ceil32(_6980) > _6980:
                            mem[_6980 + _2997 + _3041 + _5090 + 108] = 0
                        return 32, mem[_2997 + _3041 + _5090 + 76 len ceil32(_6980) + 32]
                    _6629 = mem[64]
                    mem[64] = _2997 + _3041 + _5090 + 44
                    mem[_2997 + _3041 + _5090 + 44] = 32
                    _6981 = mem[_6629]
                    mem[_2997 + _3041 + _5090 + 76] = mem[_6629]
                    mem[_2997 + _3041 + _5090 + 108 len ceil32(_6981)] = mem[_6629 + 32 len ceil32(_6981)]
                    if ceil32(_6981) > _6981:
                        mem[_6981 + _2997 + _3041 + _5090 + 108] = 0
                    return 32, mem[_2997 + _3041 + _5090 + 76 len ceil32(_6981) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5091 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[mem[64] + mem[96] + _5091 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5091) <= _5091:
                    _6630 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5091 + 44
                    mem[_2997 + mem[96] + _5091 + 44] = 32
                    _6982 = mem[_6630]
                    mem[_2997 + _3041 + _5091 + 76] = mem[_6630]
                    mem[_2997 + _3041 + _5091 + 108 len ceil32(_6982)] = mem[_6630 + 32 len ceil32(_6982)]
                    if ceil32(_6982) > _6982:
                        mem[_6982 + _2997 + _3041 + _5091 + 108] = 0
                    return 32, mem[_2997 + _3041 + _5091 + 76 len ceil32(_6982) + 32]
                _6631 = mem[64]
                mem[64] = mem[64] + mem[96] + _5091 + 44
                mem[_2997 + mem[96] + _5091 + 44] = 32
                _6983 = mem[_6631]
                mem[_2997 + _3041 + _5091 + 76] = mem[_6631]
                mem[_2997 + _3041 + _5091 + 108 len ceil32(_6983)] = mem[_6631 + 32 len ceil32(_6983)]
                if ceil32(_6983) > _6983:
                    mem[_6983 + _2997 + _3041 + _5091 + 108] = 0
                return 32, mem[_2997 + _3041 + _5091 + 76 len ceil32(_6983) + 32]
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[285] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                mem[294] = 32
                mem[326] = mem[224]
                mem[358 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 358] = 0
                return Array(len=mem[224], data=mem[358 len ceil32(mem[224])])
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
                    mem[mem[64] + mem[96] + _5092 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                    if ceil32(_5092) <= _5092:
                        _6632 = mem[64]
                        mem[64] = mem[64] + mem[96] + _5092 + 41
                        mem[_2998 + mem[96] + _5092 + 41] = 32
                        _6984 = mem[_6632]
                        mem[_2998 + _3042 + _5092 + 73] = mem[_6632]
                        mem[_2998 + _3042 + _5092 + 105 len ceil32(_6984)] = mem[_6632 + 32 len ceil32(_6984)]
                        if ceil32(_6984) > _6984:
                            mem[_6984 + _2998 + _3042 + _5092 + 105] = 0
                        return 32, mem[_2998 + _3042 + _5092 + 73 len ceil32(_6984) + 32]
                    _6633 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5092 + 41
                    mem[_2998 + mem[96] + _5092 + 41] = 32
                    _6985 = mem[_6633]
                    mem[_2998 + _3042 + _5092 + 73] = mem[_6633]
                    mem[_2998 + _3042 + _5092 + 105 len ceil32(_6985)] = mem[_6633 + 32 len ceil32(_6985)]
                    if ceil32(_6985) > _6985:
                        mem[_6985 + _2998 + _3042 + _5092 + 105] = 0
                    return 32, mem[_2998 + _3042 + _5092 + 73 len ceil32(_6985) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5093 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[mem[64] + mem[96] + _5093 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                if ceil32(_5093) <= _5093:
                    _6634 = mem[64]
                    mem[64] = _2998 + _3042 + _5093 + 41
                    mem[_2998 + _3042 + _5093 + 41] = 32
                    _6986 = mem[_6634]
                    mem[_2998 + _3042 + _5093 + 73] = mem[_6634]
                    mem[_2998 + _3042 + _5093 + 105 len ceil32(_6986)] = mem[_6634 + 32 len ceil32(_6986)]
                    if ceil32(_6986) > _6986:
                        mem[_6986 + _2998 + _3042 + _5093 + 105] = 0
                    return 32, mem[_2998 + _3042 + _5093 + 73 len ceil32(_6986) + 32]
                _6635 = mem[64]
                mem[64] = _2998 + _3042 + _5093 + 41
                mem[_2998 + _3042 + _5093 + 41] = 32
                _6987 = mem[_6635]
                mem[_2998 + _3042 + _5093 + 73] = mem[_6635]
                mem[_2998 + _3042 + _5093 + 105 len ceil32(_6987)] = mem[_6635 + 32 len ceil32(_6987)]
                if ceil32(_6987) > _6987:
                    mem[_6987 + _2998 + _3042 + _5093 + 105] = 0
                return 32, mem[_2998 + _3042 + _5093 + 73 len ceil32(_6987) + 32]
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
                mem[mem[64] + mem[96] + _5094 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                if ceil32(_5094) <= _5094:
                    _6636 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5094 + 41
                    mem[_2999 + mem[96] + _5094 + 41] = 32
                    _6988 = mem[_6636]
                    mem[_2999 + _3043 + _5094 + 73] = mem[_6636]
                    mem[_2999 + _3043 + _5094 + 105 len ceil32(_6988)] = mem[_6636 + 32 len ceil32(_6988)]
                    if ceil32(_6988) > _6988:
                        mem[_6988 + _2999 + _3043 + _5094 + 105] = 0
                    return 32, mem[_2999 + _3043 + _5094 + 73 len ceil32(_6988) + 32]
                _6637 = mem[64]
                mem[64] = mem[64] + mem[96] + _5094 + 41
                mem[_2999 + mem[96] + _5094 + 41] = 32
                _6989 = mem[_6637]
                mem[_2999 + _3043 + _5094 + 73] = mem[_6637]
                mem[_2999 + _3043 + _5094 + 105 len ceil32(_6989)] = mem[_6637 + 32 len ceil32(_6989)]
                if ceil32(_6989) > _6989:
                    mem[_6989 + _2999 + _3043 + _5094 + 105] = 0
                return 32, mem[_2999 + _3043 + _5094 + 73 len ceil32(_6989) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5095 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[mem[64] + mem[96] + _5095 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
            if ceil32(_5095) <= _5095:
                _6638 = mem[64]
                mem[64] = mem[64] + mem[96] + _5095 + 41
                mem[_2999 + mem[96] + _5095 + 41] = 32
                _6990 = mem[_6638]
                mem[_2999 + _3043 + _5095 + 73] = mem[_6638]
                mem[_2999 + _3043 + _5095 + 105 len ceil32(_6990)] = mem[_6638 + 32 len ceil32(_6990)]
                if ceil32(_6990) > _6990:
                    mem[_6990 + _2999 + _3043 + _5095 + 105] = 0
                return 32, mem[_2999 + _3043 + _5095 + 73 len ceil32(_6990) + 32]
            _6639 = mem[64]
            mem[64] = mem[64] + mem[96] + _5095 + 41
            mem[_2999 + mem[96] + _5095 + 41] = 32
            _6991 = mem[_6639]
            mem[_2999 + _3043 + _5095 + 73] = mem[_6639]
            mem[_2999 + _3043 + _5095 + 105 len ceil32(_6991)] = mem[_6639 + 32 len ceil32(_6991)]
            if ceil32(_6991) > _6991:
                mem[_6991 + _2999 + _3043 + _5095 + 105] = 0
            return 32, mem[_2999 + _3043 + _5095 + 73 len ceil32(_6991) + 32]
        if block.number < 1:
            revert with 0, 17
        if sub_9c428332[arg1] >= block.number - 1:
            revert with 0, 'Token unrevealed'
        mem[32] = 21
        mem[96] = 28
        mem[0] = arg1
        mem[128] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
        if stor21[arg1] != 1:
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[285] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                mem[297] = 32
                mem[329] = mem[224]
                mem[361 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 361] = 0
                return Array(len=mem[224], data=mem[361 len ceil32(mem[224])])
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
                    mem[mem[64] + mem[96] + _5096 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5096) <= _5096:
                        _6640 = mem[64]
                        mem[64] = _3000 + _3044 + _5096 + 44
                        mem[_3000 + _3044 + _5096 + 44] = 32
                        _6992 = mem[_6640]
                        mem[_3000 + _3044 + _5096 + 76] = mem[_6640]
                        mem[_3000 + _3044 + _5096 + 108 len ceil32(_6992)] = mem[_6640 + 32 len ceil32(_6992)]
                        if ceil32(_6992) > _6992:
                            mem[_6992 + _3000 + _3044 + _5096 + 108] = 0
                        return 32, mem[_3000 + _3044 + _5096 + 76 len ceil32(_6992) + 32]
                    _6641 = mem[64]
                    mem[64] = _3000 + _3044 + _5096 + 44
                    mem[_3000 + _3044 + _5096 + 44] = 32
                    _6993 = mem[_6641]
                    mem[_3000 + _3044 + _5096 + 76] = mem[_6641]
                    mem[_3000 + _3044 + _5096 + 108 len ceil32(_6993)] = mem[_6641 + 32 len ceil32(_6993)]
                    if ceil32(_6993) > _6993:
                        mem[_6993 + _3000 + _3044 + _5096 + 108] = 0
                    return 32, mem[_3000 + _3044 + _5096 + 76 len ceil32(_6993) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5097 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[mem[64] + mem[96] + _5097 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5097) <= _5097:
                    _6642 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5097 + 44
                    mem[_3000 + mem[96] + _5097 + 44] = 32
                    _6994 = mem[_6642]
                    mem[_3000 + _3044 + _5097 + 76] = mem[_6642]
                    mem[_3000 + _3044 + _5097 + 108 len ceil32(_6994)] = mem[_6642 + 32 len ceil32(_6994)]
                    if ceil32(_6994) > _6994:
                        mem[_6994 + _3000 + _3044 + _5097 + 108] = 0
                    return 32, mem[_3000 + _3044 + _5097 + 76 len ceil32(_6994) + 32]
                _6643 = mem[64]
                mem[64] = mem[64] + mem[96] + _5097 + 44
                mem[_3000 + mem[96] + _5097 + 44] = 32
                _6995 = mem[_6643]
                mem[_3000 + _3044 + _5097 + 76] = mem[_6643]
                mem[_3000 + _3044 + _5097 + 108 len ceil32(_6995)] = mem[_6643 + 32 len ceil32(_6995)]
                if ceil32(_6995) > _6995:
                    mem[_6995 + _3000 + _3044 + _5097 + 108] = 0
                return 32, mem[_3000 + _3044 + _5097 + 76 len ceil32(_6995) + 32]
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
                mem[mem[64] + mem[96] + _5098 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5098) <= _5098:
                    _6644 = mem[64]
                    mem[64] = _3001 + _3045 + _5098 + 44
                    mem[_3001 + _3045 + _5098 + 44] = 32
                    _6996 = mem[_6644]
                    mem[_3001 + _3045 + _5098 + 76] = mem[_6644]
                    mem[_3001 + _3045 + _5098 + 108 len ceil32(_6996)] = mem[_6644 + 32 len ceil32(_6996)]
                    if ceil32(_6996) > _6996:
                        mem[_6996 + _3001 + _3045 + _5098 + 108] = 0
                    return 32, mem[_3001 + _3045 + _5098 + 76 len ceil32(_6996) + 32]
                _6645 = mem[64]
                mem[64] = _3001 + _3045 + _5098 + 44
                mem[_3001 + _3045 + _5098 + 44] = 32
                _6997 = mem[_6645]
                mem[_3001 + _3045 + _5098 + 76] = mem[_6645]
                mem[_3001 + _3045 + _5098 + 108 len ceil32(_6997)] = mem[_6645 + 32 len ceil32(_6997)]
                if ceil32(_6997) > _6997:
                    mem[_6997 + _3001 + _3045 + _5098 + 108] = 0
                return 32, mem[_3001 + _3045 + _5098 + 76 len ceil32(_6997) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5099 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[mem[64] + mem[96] + _5099 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
            if ceil32(_5099) <= _5099:
                _6646 = mem[64]
                mem[64] = mem[64] + mem[96] + _5099 + 44
                mem[_3001 + mem[96] + _5099 + 44] = 32
                _6998 = mem[_6646]
                mem[_3001 + _3045 + _5099 + 76] = mem[_6646]
                mem[_3001 + _3045 + _5099 + 108 len ceil32(_6998)] = mem[_6646 + 32 len ceil32(_6998)]
                if ceil32(_6998) > _6998:
                    mem[_6998 + _3001 + _3045 + _5099 + 108] = 0
                return 32, mem[_3001 + _3045 + _5099 + 76 len ceil32(_6998) + 32]
            _6647 = mem[64]
            mem[64] = mem[64] + mem[96] + _5099 + 44
            mem[_3001 + mem[96] + _5099 + 44] = 32
            _6999 = mem[_6647]
            mem[_3001 + _3045 + _5099 + 76] = mem[_6647]
            mem[_3001 + _3045 + _5099 + 108 len ceil32(_6999)] = mem[_6647 + 32 len ceil32(_6999)]
            if ceil32(_6999) > _6999:
                mem[_6999 + _3001 + _3045 + _5099 + 108] = 0
            return 32, mem[_3001 + _3045 + _5099 + 76 len ceil32(_6999) + 32]
        if not arg1:
            mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
            mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[285] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
            mem[294] = 32
            mem[326] = mem[224]
            mem[358 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + 358] = 0
            return Array(len=mem[224], data=mem[358 len ceil32(mem[224])])
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
                mem[mem[64] + mem[96] + _5100 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                if ceil32(_5100) <= _5100:
                    _6648 = mem[64]
                    mem[64] = _3002 + _3046 + _5100 + 41
                    mem[_3002 + _3046 + _5100 + 41] = 32
                    _7000 = mem[_6648]
                    mem[_3002 + _3046 + _5100 + 73] = mem[_6648]
                    mem[_3002 + _3046 + _5100 + 105 len ceil32(_7000)] = mem[_6648 + 32 len ceil32(_7000)]
                    if ceil32(_7000) > _7000:
                        mem[_7000 + _3002 + _3046 + _5100 + 105] = 0
                    return 32, mem[_3002 + _3046 + _5100 + 73 len ceil32(_7000) + 32]
                _6649 = mem[64]
                mem[64] = _3002 + _3046 + _5100 + 41
                mem[_3002 + _3046 + _5100 + 41] = 32
                _7001 = mem[_6649]
                mem[_3002 + _3046 + _5100 + 73] = mem[_6649]
                mem[_3002 + _3046 + _5100 + 105 len ceil32(_7001)] = mem[_6649 + 32 len ceil32(_7001)]
                if ceil32(_7001) > _7001:
                    mem[_7001 + _3002 + _3046 + _5100 + 105] = 0
                return 32, mem[_3002 + _3046 + _5100 + 73 len ceil32(_7001) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5101 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[mem[64] + mem[96] + _5101 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
            if ceil32(_5101) <= _5101:
                _6650 = mem[64]
                mem[64] = mem[64] + mem[96] + _5101 + 41
                mem[_3002 + mem[96] + _5101 + 41] = 32
                _7002 = mem[_6650]
                mem[_3002 + _3046 + _5101 + 73] = mem[_6650]
                mem[_3002 + _3046 + _5101 + 105 len ceil32(_7002)] = mem[_6650 + 32 len ceil32(_7002)]
                if ceil32(_7002) > _7002:
                    mem[_7002 + _3002 + _3046 + _5101 + 105] = 0
                return 32, mem[_3002 + _3046 + _5101 + 73 len ceil32(_7002) + 32]
            _6651 = mem[64]
            mem[64] = mem[64] + mem[96] + _5101 + 41
            mem[_3002 + mem[96] + _5101 + 41] = 32
            _7003 = mem[_6651]
            mem[_3002 + _3046 + _5101 + 73] = mem[_6651]
            mem[_3002 + _3046 + _5101 + 105 len ceil32(_7003)] = mem[_6651 + 32 len ceil32(_7003)]
            if ceil32(_7003) > _7003:
                mem[_7003 + _3002 + _3046 + _5101 + 105] = 0
            return 32, mem[_3002 + _3046 + _5101 + 73 len ceil32(_7003) + 32]
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
            mem[mem[64] + mem[96] + _5102 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
            if ceil32(_5102) <= _5102:
                _6652 = mem[64]
                mem[64] = mem[64] + mem[96] + _5102 + 41
                mem[_3003 + mem[96] + _5102 + 41] = 32
                _7004 = mem[_6652]
                mem[_3003 + _3047 + _5102 + 73] = mem[_6652]
                mem[_3003 + _3047 + _5102 + 105 len ceil32(_7004)] = mem[_6652 + 32 len ceil32(_7004)]
                if ceil32(_7004) > _7004:
                    mem[_7004 + _3003 + _3047 + _5102 + 105] = 0
                return 32, mem[_3003 + _3047 + _5102 + 73 len ceil32(_7004) + 32]
            _6653 = mem[64]
            mem[64] = mem[64] + mem[96] + _5102 + 41
            mem[_3003 + mem[96] + _5102 + 41] = 32
            _7005 = mem[_6653]
            mem[_3003 + _3047 + _5102 + 73] = mem[_6653]
            mem[_3003 + _3047 + _5102 + 105 len ceil32(_7005)] = mem[_6653 + 32 len ceil32(_7005)]
            if ceil32(_7005) > _7005:
                mem[_7005 + _3003 + _3047 + _5102 + 105] = 0
            return 32, mem[_3003 + _3047 + _5102 + 73 len ceil32(_7005) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _5103 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[mem[64] + mem[96] + _5103 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
        if ceil32(_5103) <= _5103:
            _6654 = mem[64]
            mem[64] = mem[64] + mem[96] + _5103 + 41
            mem[_3003 + mem[96] + _5103 + 41] = 32
            _7006 = mem[_6654]
            mem[_3003 + _3047 + _5103 + 73] = mem[_6654]
            mem[_3003 + _3047 + _5103 + 105 len ceil32(_7006)] = mem[_6654 + 32 len ceil32(_7006)]
            if ceil32(_7006) > _7006:
                mem[_7006 + _3003 + _3047 + _5103 + 105] = 0
            return 32, mem[_3003 + _3047 + _5103 + 73 len ceil32(_7006) + 32]
        _6655 = mem[64]
        mem[64] = mem[64] + mem[96] + _5103 + 41
        mem[_3003 + mem[96] + _5103 + 41] = 32
        _7007 = mem[_6655]
        mem[_3003 + _3047 + _5103 + 73] = mem[_6655]
        mem[_3003 + _3047 + _5103 + 105 len ceil32(_7007)] = mem[_6655 + 32 len ceil32(_7007)]
        if ceil32(_7007) > _7007:
            mem[_7007 + _3003 + _3047 + _5103 + 105] = 0
        return 32, mem[_3003 + _3047 + _5103 + 73 len ceil32(_7007) + 32]
    if block.number < 1:
        revert with 0, 17
    if sub_9c428332[arg1] >= block.number - 1:
        revert with 0, 'Token unrevealed'
    mem[32] = 21
    if 2 == stor21[arg1]:
        mem[96] = 28
        mem[0] = arg1
        mem[128] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
        if not arg1:
            mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
            mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[285] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
            mem[297] = 32
            mem[329] = mem[224]
            mem[361 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + 361] = 0
            return Array(len=mem[224], data=mem[361 len ceil32(mem[224])])
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
                mem[mem[64] + mem[96] + _5124 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5124) <= _5124:
                    _6696 = mem[64]
                    mem[64] = _3014 + _3058 + _5124 + 44
                    mem[_3014 + _3058 + _5124 + 44] = 32
                    _7048 = mem[_6696]
                    mem[_3014 + _3058 + _5124 + 76] = mem[_6696]
                    mem[_3014 + _3058 + _5124 + 108 len ceil32(_7048)] = mem[_6696 + 32 len ceil32(_7048)]
                    if ceil32(_7048) > _7048:
                        mem[_7048 + _3014 + _3058 + _5124 + 108] = 0
                    return 32, mem[_3014 + _3058 + _5124 + 76 len ceil32(_7048) + 32]
                _6697 = mem[64]
                mem[64] = _3014 + _3058 + _5124 + 44
                mem[_3014 + _3058 + _5124 + 44] = 32
                _7049 = mem[_6697]
                mem[_3014 + _3058 + _5124 + 76] = mem[_6697]
                mem[_3014 + _3058 + _5124 + 108 len ceil32(_7049)] = mem[_6697 + 32 len ceil32(_7049)]
                if ceil32(_7049) > _7049:
                    mem[_7049 + _3014 + _3058 + _5124 + 108] = 0
                return 32, mem[_3014 + _3058 + _5124 + 76 len ceil32(_7049) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5125 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[mem[64] + mem[96] + _5125 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
            if ceil32(_5125) <= _5125:
                _6698 = mem[64]
                mem[64] = mem[64] + mem[96] + _5125 + 44
                mem[_3014 + mem[96] + _5125 + 44] = 32
                _7050 = mem[_6698]
                mem[_3014 + _3058 + _5125 + 76] = mem[_6698]
                mem[_3014 + _3058 + _5125 + 108 len ceil32(_7050)] = mem[_6698 + 32 len ceil32(_7050)]
                if ceil32(_7050) > _7050:
                    mem[_7050 + _3014 + _3058 + _5125 + 108] = 0
                return 32, mem[_3014 + _3058 + _5125 + 76 len ceil32(_7050) + 32]
            _6699 = mem[64]
            mem[64] = mem[64] + mem[96] + _5125 + 44
            mem[_3014 + mem[96] + _5125 + 44] = 32
            _7051 = mem[_6699]
            mem[_3014 + _3058 + _5125 + 76] = mem[_6699]
            mem[_3014 + _3058 + _5125 + 108 len ceil32(_7051)] = mem[_6699 + 32 len ceil32(_7051)]
            if ceil32(_7051) > _7051:
                mem[_7051 + _3014 + _3058 + _5125 + 108] = 0
            return 32, mem[_3014 + _3058 + _5125 + 76 len ceil32(_7051) + 32]
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
            mem[mem[64] + mem[96] + _5126 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
            if ceil32(_5126) <= _5126:
                _6700 = mem[64]
                mem[64] = mem[64] + mem[96] + _5126 + 44
                mem[_3015 + mem[96] + _5126 + 44] = 32
                _7052 = mem[_6700]
                mem[_3015 + _3059 + _5126 + 76] = mem[_6700]
                mem[_3015 + _3059 + _5126 + 108 len ceil32(_7052)] = mem[_6700 + 32 len ceil32(_7052)]
                if ceil32(_7052) > _7052:
                    mem[_7052 + _3015 + _3059 + _5126 + 108] = 0
                return 32, mem[_3015 + _3059 + _5126 + 76 len ceil32(_7052) + 32]
            _6701 = mem[64]
            mem[64] = mem[64] + mem[96] + _5126 + 44
            mem[_3015 + mem[96] + _5126 + 44] = 32
            _7053 = mem[_6701]
            mem[_3015 + _3059 + _5126 + 76] = mem[_6701]
            mem[_3015 + _3059 + _5126 + 108 len ceil32(_7053)] = mem[_6701 + 32 len ceil32(_7053)]
            if ceil32(_7053) > _7053:
                mem[_7053 + _3015 + _3059 + _5126 + 108] = 0
            return 32, mem[_3015 + _3059 + _5126 + 76 len ceil32(_7053) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _5127 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[mem[64] + mem[96] + _5127 + 32] = 0x2d73656e696f722e6a736f6e0000000000000000000000000000000000000000
        if ceil32(_5127) <= _5127:
            _6702 = mem[64]
            mem[64] = mem[64] + mem[96] + _5127 + 44
            mem[_3015 + mem[96] + _5127 + 44] = 32
            _7054 = mem[_6702]
            mem[_3015 + _3059 + _5127 + 76] = mem[_6702]
            mem[_3015 + _3059 + _5127 + 108 len ceil32(_7054)] = mem[_6702 + 32 len ceil32(_7054)]
            if ceil32(_7054) > _7054:
                mem[_7054 + _3015 + _3059 + _5127 + 108] = 0
            return 32, mem[_3015 + _3059 + _5127 + 76 len ceil32(_7054) + 32]
        _6703 = mem[64]
        mem[64] = mem[64] + mem[96] + _5127 + 44
        mem[_3015 + mem[96] + _5127 + 44] = 32
        _7055 = mem[_6703]
        mem[_3015 + _3059 + _5127 + 76] = mem[_6703]
        mem[_3015 + _3059 + _5127 + 108 len ceil32(_7055)] = mem[_6703 + 32 len ceil32(_7055)]
        if ceil32(_7055) > _7055:
            mem[_7055 + _3015 + _3059 + _5127 + 108] = 0
        return 32, mem[_3015 + _3059 + _5127 + 76 len ceil32(_7055) + 32]
    if not ownerOf[arg1]:
        revert with 0, 'Invalid token ID'
    if 10000 <= arg1:
        mem[32] = 21
        mem[96] = 28
        mem[0] = arg1
        mem[128] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
        if stor21[arg1] != 1:
            if not arg1:
                mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
                mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[285] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                mem[297] = 32
                mem[329] = mem[224]
                mem[361 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + 361] = 0
                return Array(len=mem[224], data=mem[361 len ceil32(mem[224])])
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
                    mem[mem[64] + mem[96] + _5108 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                    if ceil32(_5108) <= _5108:
                        _6664 = mem[64]
                        mem[64] = _3006 + _3050 + _5108 + 44
                        mem[_3006 + _3050 + _5108 + 44] = 32
                        _7016 = mem[_6664]
                        mem[_3006 + _3050 + _5108 + 76] = mem[_6664]
                        mem[_3006 + _3050 + _5108 + 108 len ceil32(_7016)] = mem[_6664 + 32 len ceil32(_7016)]
                        if ceil32(_7016) > _7016:
                            mem[_7016 + _3006 + _3050 + _5108 + 108] = 0
                        return 32, mem[_3006 + _3050 + _5108 + 76 len ceil32(_7016) + 32]
                    _6665 = mem[64]
                    mem[64] = _3006 + _3050 + _5108 + 44
                    mem[_3006 + _3050 + _5108 + 44] = 32
                    _7017 = mem[_6665]
                    mem[_3006 + _3050 + _5108 + 76] = mem[_6665]
                    mem[_3006 + _3050 + _5108 + 108 len ceil32(_7017)] = mem[_6665 + 32 len ceil32(_7017)]
                    if ceil32(_7017) > _7017:
                        mem[_7017 + _3006 + _3050 + _5108 + 108] = 0
                    return 32, mem[_3006 + _3050 + _5108 + 76 len ceil32(_7017) + 32]
                mem[mem[96] + mem[64] + 32] = 0
                _5109 = mem[160]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                mem[mem[64] + mem[96] + _5109 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5109) <= _5109:
                    _6666 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5109 + 44
                    mem[_3006 + mem[96] + _5109 + 44] = 32
                    _7018 = mem[_6666]
                    mem[_3006 + _3050 + _5109 + 76] = mem[_6666]
                    mem[_3006 + _3050 + _5109 + 108 len ceil32(_7018)] = mem[_6666 + 32 len ceil32(_7018)]
                    if ceil32(_7018) > _7018:
                        mem[_7018 + _3006 + _3050 + _5109 + 108] = 0
                    return 32, mem[_3006 + _3050 + _5109 + 76 len ceil32(_7018) + 32]
                _6667 = mem[64]
                mem[64] = mem[64] + mem[96] + _5109 + 44
                mem[_3006 + mem[96] + _5109 + 44] = 32
                _7019 = mem[_6667]
                mem[_3006 + _3050 + _5109 + 76] = mem[_6667]
                mem[_3006 + _3050 + _5109 + 108 len ceil32(_7019)] = mem[_6667 + 32 len ceil32(_7019)]
                if ceil32(_7019) > _7019:
                    mem[_7019 + _3006 + _3050 + _5109 + 108] = 0
                return 32, mem[_3006 + _3050 + _5109 + 76 len ceil32(_7019) + 32]
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
                mem[mem[64] + mem[96] + _5110 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5110) <= _5110:
                    _6668 = mem[64]
                    mem[64] = mem[64] + mem[96] + _5110 + 44
                    mem[_3007 + mem[96] + _5110 + 44] = 32
                    _7020 = mem[_6668]
                    mem[_3007 + _3051 + _5110 + 76] = mem[_6668]
                    mem[_3007 + _3051 + _5110 + 108 len ceil32(_7020)] = mem[_6668 + 32 len ceil32(_7020)]
                    if ceil32(_7020) > _7020:
                        mem[_7020 + _3007 + _3051 + _5110 + 108] = 0
                    return 32, mem[_3007 + _3051 + _5110 + 76 len ceil32(_7020) + 32]
                _6669 = mem[64]
                mem[64] = mem[64] + mem[96] + _5110 + 44
                mem[_3007 + mem[96] + _5110 + 44] = 32
                _7021 = mem[_6669]
                mem[_3007 + _3051 + _5110 + 76] = mem[_6669]
                mem[_3007 + _3051 + _5110 + 108 len ceil32(_7021)] = mem[_6669 + 32 len ceil32(_7021)]
                if ceil32(_7021) > _7021:
                    mem[_7021 + _3007 + _3051 + _5110 + 108] = 0
                return 32, mem[_3007 + _3051 + _5110 + 76 len ceil32(_7021) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5111 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[mem[64] + mem[96] + _5111 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
            if ceil32(_5111) <= _5111:
                _6670 = mem[64]
                mem[64] = _3007 + _3051 + _5111 + 44
                mem[_3007 + _3051 + _5111 + 44] = 32
                _7022 = mem[_6670]
                mem[_3007 + _3051 + _5111 + 76] = mem[_6670]
                mem[_3007 + _3051 + _5111 + 108 len ceil32(_7022)] = mem[_6670 + 32 len ceil32(_7022)]
                if ceil32(_7022) > _7022:
                    mem[_7022 + _3007 + _3051 + _5111 + 108] = 0
                return 32, mem[_3007 + _3051 + _5111 + 76 len ceil32(_7022) + 32]
            _6671 = mem[64]
            mem[64] = _3007 + _3051 + _5111 + 44
            mem[_3007 + _3051 + _5111 + 44] = 32
            _7023 = mem[_6671]
            mem[_3007 + _3051 + _5111 + 76] = mem[_6671]
            mem[_3007 + _3051 + _5111 + 108 len ceil32(_7023)] = mem[_6671 + 32 len ceil32(_7023)]
            if ceil32(_7023) > _7023:
                mem[_7023 + _3007 + _3051 + _5111 + 108] = 0
            return 32, mem[_3007 + _3051 + _5111 + 76 len ceil32(_7023) + 32]
        if not arg1:
            mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
            mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[285] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
            mem[294] = 32
            mem[326] = mem[224]
            mem[358 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + 358] = 0
            return Array(len=mem[224], data=mem[358 len ceil32(mem[224])])
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
                mem[mem[64] + mem[96] + _5112 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
                if ceil32(_5112) <= _5112:
                    _6672 = mem[64]
                    mem[64] = _3008 + _3052 + _5112 + 41
                    mem[_3008 + _3052 + _5112 + 41] = 32
                    _7024 = mem[_6672]
                    mem[_3008 + _3052 + _5112 + 73] = mem[_6672]
                    mem[_3008 + _3052 + _5112 + 105 len ceil32(_7024)] = mem[_6672 + 32 len ceil32(_7024)]
                    if ceil32(_7024) > _7024:
                        mem[_7024 + _3008 + _3052 + _5112 + 105] = 0
                    return 32, mem[_3008 + _3052 + _5112 + 73 len ceil32(_7024) + 32]
                _6673 = mem[64]
                mem[64] = _3008 + _3052 + _5112 + 41
                mem[_3008 + _3052 + _5112 + 41] = 32
                _7025 = mem[_6673]
                mem[_3008 + _3052 + _5112 + 73] = mem[_6673]
                mem[_3008 + _3052 + _5112 + 105 len ceil32(_7025)] = mem[_6673 + 32 len ceil32(_7025)]
                if ceil32(_7025) > _7025:
                    mem[_7025 + _3008 + _3052 + _5112 + 105] = 0
                return 32, mem[_3008 + _3052 + _5112 + 73 len ceil32(_7025) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5113 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[mem[64] + mem[96] + _5113 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
            if ceil32(_5113) <= _5113:
                _6674 = mem[64]
                mem[64] = _3008 + _3052 + _5113 + 41
                mem[_3008 + _3052 + _5113 + 41] = 32
                _7026 = mem[_6674]
                mem[_3008 + _3052 + _5113 + 73] = mem[_6674]
                mem[_3008 + _3052 + _5113 + 105 len ceil32(_7026)] = mem[_6674 + 32 len ceil32(_7026)]
                if ceil32(_7026) > _7026:
                    mem[_7026 + _3008 + _3052 + _5113 + 105] = 0
                return 32, mem[_3008 + _3052 + _5113 + 73 len ceil32(_7026) + 32]
            _6675 = mem[64]
            mem[64] = _3008 + _3052 + _5113 + 41
            mem[_3008 + _3052 + _5113 + 41] = 32
            _7027 = mem[_6675]
            mem[_3008 + _3052 + _5113 + 73] = mem[_6675]
            mem[_3008 + _3052 + _5113 + 105 len ceil32(_7027)] = mem[_6675 + 32 len ceil32(_7027)]
            if ceil32(_7027) > _7027:
                mem[_7027 + _3008 + _3052 + _5113 + 105] = 0
            return 32, mem[_3008 + _3052 + _5113 + 73 len ceil32(_7027) + 32]
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
            mem[mem[64] + mem[96] + _5114 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
            if ceil32(_5114) <= _5114:
                _6676 = mem[64]
                mem[64] = _3009 + _3053 + _5114 + 41
                mem[_3009 + _3053 + _5114 + 41] = 32
                _7028 = mem[_6676]
                mem[_3009 + _3053 + _5114 + 73] = mem[_6676]
                mem[_3009 + _3053 + _5114 + 105 len ceil32(_7028)] = mem[_6676 + 32 len ceil32(_7028)]
                if ceil32(_7028) > _7028:
                    mem[_7028 + _3009 + _3053 + _5114 + 105] = 0
                return 32, mem[_3009 + _3053 + _5114 + 73 len ceil32(_7028) + 32]
            _6677 = mem[64]
            mem[64] = _3009 + _3053 + _5114 + 41
            mem[_3009 + _3053 + _5114 + 41] = 32
            _7029 = mem[_6677]
            mem[_3009 + _3053 + _5114 + 73] = mem[_6677]
            mem[_3009 + _3053 + _5114 + 105 len ceil32(_7029)] = mem[_6677 + 32 len ceil32(_7029)]
            if ceil32(_7029) > _7029:
                mem[_7029 + _3009 + _3053 + _5114 + 105] = 0
            return 32, mem[_3009 + _3053 + _5114 + 73 len ceil32(_7029) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _5115 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[mem[64] + mem[96] + _5115 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
        if ceil32(_5115) <= _5115:
            _6678 = mem[64]
            mem[64] = _3009 + _3053 + _5115 + 41
            mem[_3009 + _3053 + _5115 + 41] = 32
            _7030 = mem[_6678]
            mem[_3009 + _3053 + _5115 + 73] = mem[_6678]
            mem[_3009 + _3053 + _5115 + 105 len ceil32(_7030)] = mem[_6678 + 32 len ceil32(_7030)]
            if ceil32(_7030) > _7030:
                mem[_7030 + _3009 + _3053 + _5115 + 105] = 0
            return 32, mem[_3009 + _3053 + _5115 + 73 len ceil32(_7030) + 32]
        _6679 = mem[64]
        mem[64] = _3009 + _3053 + _5115 + 41
        mem[_3009 + _3053 + _5115 + 41] = 32
        _7031 = mem[_6679]
        mem[_3009 + _3053 + _5115 + 73] = mem[_6679]
        mem[_3009 + _3053 + _5115 + 105 len ceil32(_7031)] = mem[_6679 + 32 len ceil32(_7031)]
        if ceil32(_7031) > _7031:
            mem[_7031 + _3009 + _3053 + _5115 + 105] = 0
        return 32, mem[_3009 + _3053 + _5115 + 73 len ceil32(_7031) + 32]
    if block.number < 1:
        revert with 0, 17
    if sub_9c428332[arg1] >= block.number - 1:
        revert with 0, 'Token unrevealed'
    mem[32] = 21
    mem[96] = 28
    mem[0] = arg1
    mem[128] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
    if stor21[arg1] != 1:
        if not arg1:
            mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
            mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[285] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
            mem[297] = 32
            mem[329] = mem[224]
            mem[361 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + 361] = 0
            return Array(len=mem[224], data=mem[361 len ceil32(mem[224])])
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
                mem[mem[64] + mem[96] + _5116 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
                if ceil32(_5116) <= _5116:
                    _6680 = mem[64]
                    mem[64] = _3010 + _3054 + _5116 + 44
                    mem[_3010 + _3054 + _5116 + 44] = 32
                    _7032 = mem[_6680]
                    mem[_3010 + _3054 + _5116 + 76] = mem[_6680]
                    mem[_3010 + _3054 + _5116 + 108 len ceil32(_7032)] = mem[_6680 + 32 len ceil32(_7032)]
                    if ceil32(_7032) > _7032:
                        mem[_7032 + _3010 + _3054 + _5116 + 108] = 0
                    return 32, mem[_3010 + _3054 + _5116 + 76 len ceil32(_7032) + 32]
                _6681 = mem[64]
                mem[64] = _3010 + _3054 + _5116 + 44
                mem[_3010 + _3054 + _5116 + 44] = 32
                _7033 = mem[_6681]
                mem[_3010 + _3054 + _5116 + 76] = mem[_6681]
                mem[_3010 + _3054 + _5116 + 108 len ceil32(_7033)] = mem[_6681 + 32 len ceil32(_7033)]
                if ceil32(_7033) > _7033:
                    mem[_7033 + _3010 + _3054 + _5116 + 108] = 0
                return 32, mem[_3010 + _3054 + _5116 + 76 len ceil32(_7033) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _5117 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            mem[mem[64] + mem[96] + _5117 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
            if ceil32(_5117) <= _5117:
                _6682 = mem[64]
                mem[64] = _3010 + _3054 + _5117 + 44
                mem[_3010 + _3054 + _5117 + 44] = 32
                _7034 = mem[_6682]
                mem[_3010 + _3054 + _5117 + 76] = mem[_6682]
                mem[_3010 + _3054 + _5117 + 108 len ceil32(_7034)] = mem[_6682 + 32 len ceil32(_7034)]
                if ceil32(_7034) > _7034:
                    mem[_7034 + _3010 + _3054 + _5117 + 108] = 0
                return 32, mem[_3010 + _3054 + _5117 + 76 len ceil32(_7034) + 32]
            _6683 = mem[64]
            mem[64] = _3010 + _3054 + _5117 + 44
            mem[_3010 + _3054 + _5117 + 44] = 32
            _7035 = mem[_6683]
            mem[_3010 + _3054 + _5117 + 76] = mem[_6683]
            mem[_3010 + _3054 + _5117 + 108 len ceil32(_7035)] = mem[_6683 + 32 len ceil32(_7035)]
            if ceil32(_7035) > _7035:
                mem[_7035 + _3010 + _3054 + _5117 + 108] = 0
            return 32, mem[_3010 + _3054 + _5117 + 76 len ceil32(_7035) + 32]
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
            mem[mem[64] + mem[96] + _5118 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
            if ceil32(_5118) <= _5118:
                _6684 = mem[64]
                mem[64] = mem[64] + mem[96] + _5118 + 44
                mem[_3011 + mem[96] + _5118 + 44] = 32
                _7036 = mem[_6684]
                mem[_3011 + _3055 + _5118 + 76] = mem[_6684]
                mem[_3011 + _3055 + _5118 + 108 len ceil32(_7036)] = mem[_6684 + 32 len ceil32(_7036)]
                if ceil32(_7036) > _7036:
                    mem[_7036 + _3011 + _3055 + _5118 + 108] = 0
                return 32, mem[_3011 + _3055 + _5118 + 76 len ceil32(_7036) + 32]
            _6685 = mem[64]
            mem[64] = mem[64] + mem[96] + _5118 + 44
            mem[_3011 + mem[96] + _5118 + 44] = 32
            _7037 = mem[_6685]
            mem[_3011 + _3055 + _5118 + 76] = mem[_6685]
            mem[_3011 + _3055 + _5118 + 108 len ceil32(_7037)] = mem[_6685 + 32 len ceil32(_7037)]
            if ceil32(_7037) > _7037:
                mem[_7037 + _3011 + _3055 + _5118 + 108] = 0
            return 32, mem[_3011 + _3055 + _5118 + 76 len ceil32(_7037) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _5119 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[mem[64] + mem[96] + _5119 + 32] = 0x2d6a756e696f722e6a736f6e0000000000000000000000000000000000000000
        if ceil32(_5119) <= _5119:
            _6686 = mem[64]
            mem[64] = mem[64] + mem[96] + _5119 + 44
            mem[_3011 + mem[96] + _5119 + 44] = 32
            _7038 = mem[_6686]
            mem[_3011 + _3055 + _5119 + 76] = mem[_6686]
            mem[_3011 + _3055 + _5119 + 108 len ceil32(_7038)] = mem[_6686 + 32 len ceil32(_7038)]
            if ceil32(_7038) > _7038:
                mem[_7038 + _3011 + _3055 + _5119 + 108] = 0
            return 32, mem[_3011 + _3055 + _5119 + 76 len ceil32(_7038) + 32]
        _6687 = mem[64]
        mem[64] = mem[64] + mem[96] + _5119 + 44
        mem[_3011 + mem[96] + _5119 + 44] = 32
        _7039 = mem[_6687]
        mem[_3011 + _3055 + _5119 + 76] = mem[_6687]
        mem[_3011 + _3055 + _5119 + 108 len ceil32(_7039)] = mem[_6687 + 32 len ceil32(_7039)]
        if ceil32(_7039) > _7039:
            mem[_7039 + _3011 + _3055 + _5119 + 108] = 0
        return 32, mem[_3011 + _3055 + _5119 + 76 len ceil32(_7039) + 32]
    if not arg1:
        mem[256] = 0xfe68747470733a2f2f72656d6f6f742e6170702f6e66742f646174612f000000
        mem[284] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[285] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
        mem[294] = 32
        mem[326] = mem[224]
        mem[358 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
        if ceil32(mem[224]) > mem[224]:
            mem[mem[224] + 358] = 0
        return Array(len=mem[224], data=mem[358 len ceil32(mem[224])])
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
            mem[mem[64] + mem[96] + _5120 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
            if ceil32(_5120) <= _5120:
                _6688 = mem[64]
                mem[64] = _3012 + _3056 + _5120 + 41
                mem[_3012 + _3056 + _5120 + 41] = 32
                _7040 = mem[_6688]
                mem[_3012 + _3056 + _5120 + 73] = mem[_6688]
                mem[_3012 + _3056 + _5120 + 105 len ceil32(_7040)] = mem[_6688 + 32 len ceil32(_7040)]
                if ceil32(_7040) > _7040:
                    mem[_7040 + _3012 + _3056 + _5120 + 105] = 0
                return 32, mem[_3012 + _3056 + _5120 + 73 len ceil32(_7040) + 32]
            _6689 = mem[64]
            mem[64] = _3012 + _3056 + _5120 + 41
            mem[_3012 + _3056 + _5120 + 41] = 32
            _7041 = mem[_6689]
            mem[_3012 + _3056 + _5120 + 73] = mem[_6689]
            mem[_3012 + _3056 + _5120 + 105 len ceil32(_7041)] = mem[_6689 + 32 len ceil32(_7041)]
            if ceil32(_7041) > _7041:
                mem[_7041 + _3012 + _3056 + _5120 + 105] = 0
            return 32, mem[_3012 + _3056 + _5120 + 73 len ceil32(_7041) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _5121 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[mem[64] + mem[96] + _5121 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
        if ceil32(_5121) <= _5121:
            _6690 = mem[64]
            mem[64] = mem[64] + mem[96] + _5121 + 41
            mem[_3012 + mem[96] + _5121 + 41] = 32
            _7042 = mem[_6690]
            mem[_3012 + _3056 + _5121 + 73] = mem[_6690]
            mem[_3012 + _3056 + _5121 + 105 len ceil32(_7042)] = mem[_6690 + 32 len ceil32(_7042)]
            if ceil32(_7042) > _7042:
                mem[_7042 + _3012 + _3056 + _5121 + 105] = 0
            return 32, mem[_3012 + _3056 + _5121 + 73 len ceil32(_7042) + 32]
        _6691 = mem[64]
        mem[64] = mem[64] + mem[96] + _5121 + 41
        mem[_3012 + mem[96] + _5121 + 41] = 32
        _7043 = mem[_6691]
        mem[_3012 + _3056 + _5121 + 73] = mem[_6691]
        mem[_3012 + _3056 + _5121 + 105 len ceil32(_7043)] = mem[_6691 + 32 len ceil32(_7043)]
        if ceil32(_7043) > _7043:
            mem[_7043 + _3012 + _3056 + _5121 + 105] = 0
        return 32, mem[_3012 + _3056 + _5121 + 73 len ceil32(_7043) + 32]
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
        mem[mem[64] + mem[96] + _5122 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
        if ceil32(_5122) <= _5122:
            _6692 = mem[64]
            mem[64] = _3013 + _3057 + _5122 + 41
            mem[_3013 + _3057 + _5122 + 41] = 32
            _7044 = mem[_6692]
            mem[_3013 + _3057 + _5122 + 73] = mem[_6692]
            mem[_3013 + _3057 + _5122 + 105 len ceil32(_7044)] = mem[_6692 + 32 len ceil32(_7044)]
            if ceil32(_7044) > _7044:
                mem[_7044 + _3013 + _3057 + _5122 + 105] = 0
            return 32, mem[_3013 + _3057 + _5122 + 73 len ceil32(_7044) + 32]
        _6693 = mem[64]
        mem[64] = _3013 + _3057 + _5122 + 41
        mem[_3013 + _3057 + _5122 + 41] = 32
        _7045 = mem[_6693]
        mem[_3013 + _3057 + _5122 + 73] = mem[_6693]
        mem[_3013 + _3057 + _5122 + 105 len ceil32(_7045)] = mem[_6693 + 32 len ceil32(_7045)]
        if ceil32(_7045) > _7045:
            mem[_7045 + _3013 + _3057 + _5122 + 105] = 0
        return 32, mem[_3013 + _3057 + _5122 + 73 len ceil32(_7045) + 32]
    mem[mem[96] + mem[64] + 32] = 0
    _5123 = mem[160]
    mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    mem[mem[64] + mem[96] + _5123 + 32] = 0x2d6d69642e6a736f6e0000000000000000000000000000000000000000000000
    if ceil32(_5123) <= _5123:
        _6694 = mem[64]
        mem[64] = mem[64] + mem[96] + _5123 + 41
        mem[_3013 + mem[96] + _5123 + 41] = 32
        _7046 = mem[_6694]
        mem[_3013 + _3057 + _5123 + 73] = mem[_6694]
        mem[_3013 + _3057 + _5123 + 105 len ceil32(_7046)] = mem[_6694 + 32 len ceil32(_7046)]
        if ceil32(_7046) > _7046:
            mem[_7046 + _3013 + _3057 + _5123 + 105] = 0
        return 32, mem[_3013 + _3057 + _5123 + 73 len ceil32(_7046) + 32]
    _6695 = mem[64]
    mem[64] = mem[64] + mem[96] + _5123 + 41
    mem[_3013 + mem[96] + _5123 + 41] = 32
    _7047 = mem[_6695]
    mem[_3013 + _3057 + _5123 + 73] = mem[_6695]
    mem[_3013 + _3057 + _5123 + 105 len ceil32(_7047)] = mem[_6695 + 32 len ceil32(_7047)]
    if ceil32(_7047) > _7047:
        mem[_7047 + _3013 + _3057 + _5123 + 105] = 0
    return 32, mem[_3013 + _3057 + _5123 + 73 len ceil32(_7047) + 32]
}



}

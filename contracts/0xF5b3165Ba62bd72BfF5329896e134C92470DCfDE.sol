contract main {




// =====================  Runtime code  =====================


#
#  - mint(address arg1, uint256 arg2, uint256 arg3)
#  - burn(uint256 arg1)
#  - migrate(uint256 arg1)
#  - migrateAll()
#  - sub_6dbd9554(?)
#  - burn(address arg1, uint256 arg2)
#  - sub_b8749a73(?)
#
const devAddress = 0x7b5caaba0daf0c355959eb47a2ecff4517d2632

const MAX_ELEMENTS = 10000


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
uint256 stor12;
uint256 totalBurn;
address sub_c352d288Address;
address wrapperAddress;
array of struct stor18;
address sub_0a986f24Address;
address sub_83c3b1cfAddress;
address sub_8d173a68Address;
array of uint8 stor22;
uint256 stor335;
mapping of struct sub_58ca1759;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0a986f24(?) {
    return sub_0a986f24Address
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

function totalBurn() {
    return totalBurn
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_58ca1759(?) {
    require calldata.size - 4 >= 32
    return sub_58ca1759[arg1]
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

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function wrapperAddress() {
    return wrapperAddress
}

function sub_83c3b1cf(?) {
    return sub_83c3b1cfAddress
}

function sub_851f3452(?) {
    require calldata.size - 4 >= 32
    require arg1 < 10001
    return bool(stor22[uint8(arg1)])
}

function sub_8d173a68(?) {
    return sub_8d173a68Address
}

function owner() {
    return owner
}

function sub_c352d288(?) {
    return sub_c352d288Address
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

function totalMint() {
    if stor12 < totalBurn:
        revert with 0, 17
    return (stor12 - totalBurn)
}

function sub_35323718(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor335 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_b90983d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    wrapperAddress = address(arg1)
}

function sub_0dccda30(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c352d288Address = address(arg1)
}

function sub_c54a2e7b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_83c3b1cfAddress = address(arg1)
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

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address)
    call 0x07b5caaba0daf0c355959eb47a2ecff4517d2632 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
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

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 != 1:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
    else:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
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

function walletOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 6)
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
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
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while (uint255(stor18.length) * 0.5) + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function inCaseTokensGetStuck(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
    if owner != msg.sender:
        if paused:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
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
    if owner != msg.sender:
        if paused:
            revert with 0, 'ERC721Pausable: token transfer while paused'
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

function baseTokenURI() {
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor18.length):
                if 31 < uint255(stor18.length) * 0.5:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor18.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * stor18.length.field_8
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 0, 34
            if stor18.length.field_1:
                if 31 < stor18.length.field_1:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * stor18.length.field_8
        mem[ceil32(uint255(stor18.length) * 0.5) + 192 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
        if ceil32(uint255(stor18.length) * 0.5) > uint255(stor18.length) * 0.5:
            mem[(uint255(stor18.length) * 0.5) + ceil32(uint255(stor18.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)], mem[(2 * ceil32(uint255(stor18.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor18.length) * 0.5)]), 
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 0, 34
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor18.length):
            if 31 < uint255(stor18.length) * 0.5:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while (uint255(stor18.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if stor18.length.field_1:
            if 31 < stor18.length.field_1:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while stor18.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    mem[ceil32(stor18.length.field_1) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
    if ceil32(stor18.length.field_1) > stor18.length.field_1:
        mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + 192] = 0
    return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)], mem[(2 * ceil32(stor18.length.field_1)) + 192 len 2 * ceil32(stor18.length.field_1)]), 
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
    if owner != msg.sender:
        if paused:
            revert with 0, 'ERC721Pausable: token transfer while paused'
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor18.length):
                if 31 >= uint255(stor18.length) * 0.5:
                    mem[128] = 256 * stor18.length.field_8
                else:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor18.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 0, 34
            if stor18.length.field_1:
                if 31 >= stor18.length.field_1:
                    mem[128] = 256 * stor18.length.field_8
                else:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if uint255(stor18.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor18.length) * 0.5) + 224 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
            mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 257] = mem[ceil32(uint255(stor18.length) * 0.5) + 192]
            mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])] = mem[ceil32(uint255(stor18.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor18.length) * 0.5) + 192]:
                return Array(len=mem[ceil32(uint255(stor18.length) * 0.5) + 192], data=mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])]), 
            mem[mem[ceil32(uint255(stor18.length) * 0.5) + 192] + ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289] = 0
            return 32, mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192]) + 32], 
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
        mem[ceil32(uint255(stor18.length) * 0.5) + 128] = s
        if s:
            mem[ceil32(uint255(stor18.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor18.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor18.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
        if ceil32(uint255(stor18.length) * 0.5) > uint255(stor18.length) * 0.5:
            mem[(uint255(stor18.length) * 0.5) + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 128])] = mem[ceil32(uint255(stor18.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 128])]
        mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 192] = 32
        mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 224] = mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]:
            mem[mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256] = 0
        return Array(len=mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])]), 
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 0, 34
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor18.length):
            if 31 >= uint255(stor18.length) * 0.5:
                mem[128] = 256 * stor18.length.field_8
                if stor18.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 225] = 32
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257] = mem[ceil32(stor18.length.field_1) + 192]
                    mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
                    mem[mem[ceil32(stor18.length.field_1) + 192] + ceil32(stor18.length.field_1) + stor18.length.field_1 + 289] = 0
                    return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor18.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor18.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                if ceil32(stor18.length.field_1) > stor18.length.field_1:
                    mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor18.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]), 
                mem[mem[ceil32(stor18.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]) + 32], 
            mem[128] = uint256(stor18.field_0)
            idx = 128
            s = 0
            while (uint255(stor18.length) * 0.5) + 96 > idx:
                mem[idx + 32] = stor18[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if not stor18.length.field_1:
            if stor18.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 225] = 32
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257] = mem[ceil32(stor18.length.field_1) + 192]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
                mem[mem[ceil32(stor18.length.field_1) + 192] + ceil32(stor18.length.field_1) + stor18.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor18.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor18.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
            if ceil32(stor18.length.field_1) > stor18.length.field_1:
                mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor18.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor18.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]) + 32], 
        if 31 >= stor18.length.field_1:
            mem[128] = 256 * stor18.length.field_8
            if stor18.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 225] = 32
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257] = mem[ceil32(stor18.length.field_1) + 192]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
                mem[mem[ceil32(stor18.length.field_1) + 192] + ceil32(stor18.length.field_1) + stor18.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor18.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor18.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
            if ceil32(stor18.length.field_1) > stor18.length.field_1:
                mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor18.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor18.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]) + 32], 
        mem[128] = uint256(stor18.field_0)
        idx = 128
        s = 0
        while stor18.length.field_1 + 96 > idx:
            mem[idx + 32] = stor18[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor18.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 225] = 32
        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257] = mem[ceil32(stor18.length.field_1) + 192]
        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
        mem[mem[ceil32(stor18.length.field_1) + 192] + ceil32(stor18.length.field_1) + stor18.length.field_1 + 289] = 0
        return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
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
    mem[ceil32(stor18.length.field_1) + 128] = s
    if s:
        mem[ceil32(stor18.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
    if ceil32(stor18.length.field_1) > stor18.length.field_1:
        mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
    mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]:
        mem[mem[ceil32(stor18.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
    return Array(len=mem[ceil32(stor18.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(mem[ceil32(stor18.length.field_1) + ceil32(s) + 160])]), 
}



}

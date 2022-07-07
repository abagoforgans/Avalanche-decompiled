contract main {




// =====================  Runtime code  =====================


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
mapping of struct stor10;
uint8 stor11; offset 160
address owner;
uint256 stor12;
address sub_f38cc111Address;
address sub_a879b632Address;
address sub_28103770Address;
address sub_37648cbbAddress;
address sub_496bc29eAddress;
address sub_9a41ded8Address;
address sub_a9a45f3aAddress;
uint256 sub_cdaa2a43;
uint256 sub_a64e0015;
uint256 sub_04dd3bb4;
uint256 sub_355e8194;
uint256 sub_d51980d0;
uint256 sub_49325c95;
uint256 sub_0a78e9a5;
array of struct stor27;
uint256 maxSupply;
uint256 price;
address stor30;
mapping of uint256 sub_f147efeb;
mapping of uint8 whitelisted;

function sub_04dd3bb4(?) {
    return sub_04dd3bb4
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0a78e9a5(?) {
    return sub_0a78e9a5
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_28103770(?) {
    return sub_28103770Address
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

function sub_355e8194(?) {
    return sub_355e8194
}

function sub_37648cbb(?) {
    return sub_37648cbbAddress
}

function sub_49325c95(?) {
    return sub_49325c95
}

function sub_496bc29e(?) {
    return sub_496bc29eAddress
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(stor11)
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

function sub_9a41ded8(?) {
    return sub_9a41ded8Address
}

function price() {
    return price
}

function sub_a64e0015(?) {
    return sub_a64e0015
}

function sub_a879b632(?) {
    return sub_a879b632Address
}

function sub_a9a45f3a(?) {
    return sub_a9a45f3aAddress
}

function whitelistedAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return whitelisted[arg1]
}

function sub_cdaa2a43(?) {
    return sub_cdaa2a43
}

function sub_d51980d0(?) {
    return sub_d51980d0
}

function maxSupply() {
    return maxSupply
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_f147efeb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f147efeb[arg1]
}

function sub_f38cc111(?) {
    return sub_f38cc111Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor11:
        revert with 0, 'Pausable: paused'
    stor11 = 1
    emit Paused(msg.sender);
}

function setMutationContractAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor30 = arg1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor11:
        revert with 0, 'Pausable: not paused'
    stor11 = 0
    emit Unpaused(msg.sender);
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

function emergencyWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not eth.balance(this.address):
        revert with 0, 'Error: no fees :('
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_f147efeb[stor13] = 0
    sub_f147efeb[stor14] = 0
    sub_f147efeb[stor15] = 0
    sub_f147efeb[stor16] = 0
    sub_f147efeb[stor17] = 0
    sub_f147efeb[stor19] = 0
}

function withdraw() {
    if sub_f38cc111Address != msg.sender:
        if sub_a879b632Address != msg.sender:
            if sub_28103770Address != msg.sender:
                if sub_37648cbbAddress != msg.sender:
                    if sub_496bc29eAddress != msg.sender:
                        if sub_9a41ded8Address != msg.sender:
                            if sub_a9a45f3aAddress != msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dev Only: caller is not the developer'
    if not sub_f147efeb[msg.sender]:
        revert with 0, 'No Fees:('
    call msg.sender with:
       value sub_f147efeb[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_f147efeb[msg.sender] = 0
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
    if bool(stor27.length):
        if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor27[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor27.length = 0
            idx = 0
            while (uint255(stor27.length) * 0.5) + 31 / 32 > idx:
                stor27[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor27.length) == stor27.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor27[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor27.length = 0
            idx = 0
            while stor27.length.field_1 + 31 / 32 > idx:
                stor27[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function addWhitelistAddresses(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Address cannot be 0.'
        if idx >= arg1.length:
            revert with 0, 50
        if whitelisted[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'Balance must be 0.'
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 32
        whitelisted[mem[(32 * idx) + 140 len 20]] = 5
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if stor11:
        revert with 0, 'Pausable: paused'
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
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if stor11:
        revert with 0, 'Pausable: paused'
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

function baseURI() {
    if bool(stor27.length):
        if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor27.length):
            if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor27.length):
                if 31 < uint255(stor27.length) * 0.5:
                    mem[128] = uint256(stor27.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor27.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor27[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor27.length), data=mem[128 len ceil32(uint255(stor27.length) * 0.5)])
                mem[128] = 256 * stor27.length.field_8
        else:
            if bool(stor27.length) == stor27.length.field_1 < 32:
                revert with 0, 34
            if stor27.length.field_1:
                if 31 < stor27.length.field_1:
                    mem[128] = uint256(stor27.field_0)
                    idx = 128
                    s = 0
                    while stor27.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor27[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor27.length), data=mem[128 len ceil32(uint255(stor27.length) * 0.5)])
                mem[128] = 256 * stor27.length.field_8
        mem[ceil32(uint255(stor27.length) * 0.5) + 192 len ceil32(uint255(stor27.length) * 0.5)] = mem[128 len ceil32(uint255(stor27.length) * 0.5)]
        if ceil32(uint255(stor27.length) * 0.5) > uint255(stor27.length) * 0.5:
            mem[(uint255(stor27.length) * 0.5) + ceil32(uint255(stor27.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor27.length), data=mem[128 len ceil32(uint255(stor27.length) * 0.5)], mem[(2 * ceil32(uint255(stor27.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor27.length) * 0.5)]), 
    if bool(stor27.length) == stor27.length.field_1 < 32:
        revert with 0, 34
    if bool(stor27.length):
        if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor27.length):
            if 31 < uint255(stor27.length) * 0.5:
                mem[128] = uint256(stor27.field_0)
                idx = 128
                s = 0
                while (uint255(stor27.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor27[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor27.length % 128, data=mem[128 len ceil32(stor27.length.field_1)])
            mem[128] = 256 * stor27.length.field_8
    else:
        if bool(stor27.length) == stor27.length.field_1 < 32:
            revert with 0, 34
        if stor27.length.field_1:
            if 31 < stor27.length.field_1:
                mem[128] = uint256(stor27.field_0)
                idx = 128
                s = 0
                while stor27.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor27[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor27.length % 128, data=mem[128 len ceil32(stor27.length.field_1)])
            mem[128] = 256 * stor27.length.field_8
    mem[ceil32(stor27.length.field_1) + 192 len ceil32(stor27.length.field_1)] = mem[128 len ceil32(stor27.length.field_1)]
    if ceil32(stor27.length.field_1) > stor27.length.field_1:
        mem[stor27.length.field_1 + ceil32(stor27.length.field_1) + 192] = 0
    return Array(len=stor27.length % 128, data=mem[128 len ceil32(stor27.length.field_1)], mem[(2 * ceil32(stor27.length.field_1)) + 192 len 2 * ceil32(stor27.length.field_1)]), 
}

function mint() payable {
    if stor11:
        revert with 0, 'Pausable: paused'
    if not whitelisted[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The address can no longer pre-order'
    if price != msg.value:
        revert with 0, 'Invalid amount'
    if msg.value and sub_cdaa2a43 > -1 / msg.value:
        revert with 0, 17
    if msg.value and sub_a64e0015 > -1 / msg.value:
        revert with 0, 17
    if msg.value and sub_04dd3bb4 > -1 / msg.value:
        revert with 0, 17
    if msg.value and sub_355e8194 > -1 / msg.value:
        revert with 0, 17
    if msg.value and sub_d51980d0 > -1 / msg.value:
        revert with 0, 17
    if msg.value and sub_0a78e9a5 > -1 / msg.value:
        revert with 0, 17
    if sub_f147efeb[stor13] > !(msg.value * sub_cdaa2a43 / 10000):
        revert with 0, 17
    sub_f147efeb[stor13] += msg.value * sub_cdaa2a43 / 10000
    if sub_f147efeb[stor14] > !(msg.value * sub_a64e0015 / 10000):
        revert with 0, 17
    sub_f147efeb[stor14] += msg.value * sub_a64e0015 / 10000
    if sub_f147efeb[stor15] > !(msg.value * sub_04dd3bb4 / 10000):
        revert with 0, 17
    sub_f147efeb[stor15] += msg.value * sub_04dd3bb4 / 10000
    if sub_f147efeb[stor16] > !(msg.value * sub_355e8194 / 10000):
        revert with 0, 17
    sub_f147efeb[stor16] += msg.value * sub_355e8194 / 10000
    if sub_f147efeb[stor17] > !(msg.value * sub_d51980d0 / 10000):
        revert with 0, 17
    sub_f147efeb[stor17] += msg.value * sub_d51980d0 / 10000
    if sub_f147efeb[stor19] > !(msg.value * sub_0a78e9a5 / 10000):
        revert with 0, 17
    sub_f147efeb[stor19] += msg.value * sub_0a78e9a5 / 10000
    if whitelisted[msg.sender] < 1:
        revert with 0, 17
    whitelisted[msg.sender] = uint8(whitelisted[msg.sender] - 1)
    if tokenByIndex.length >= maxSupply:
        revert with 0, 'All Serums have been minted!'
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor12]:
        revert with 0, 'ERC721: token already minted'
    if stor11:
        revert with 0, 'Pausable: paused'
    stor9[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor12
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
            stor7[stor12] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor12] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor12]
        stor9[stor12] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor12] = msg.sender
    emit Transfer(0, msg.sender, stor12);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, stor12, 128, 0
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
    stor12++
}

function sub_2e4a15ce(?) {
    require calldata.size - 4 >= 32
    if stor30 != msg.sender:
        revert with 0, 'Invalid burner address'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if stor11:
        revert with 0, 'Pausable: paused'
    if not ownerOf[arg1]:
        stor9[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
    else:
        if ownerOf[arg1]:
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[stor2[arg1]] < 1:
                revert with 0, 17
            if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
                tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
                stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
            stor7[arg1] = 0
            tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor9[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    stor9[stor8[stor8.length]] = stor9[arg1]
    stor9[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == uint255(stor10[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10[arg1].field_0):
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == uint255(stor10[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor10[arg1].field_0 = 0
                if 31 < uint255(stor10[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor10[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 0, 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1:
                    idx = 0
                    while stor10[arg1].field_1 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
        if stor10[arg1].field_1:
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == uint255(stor10[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor10[arg1].field_0 = 0
                if 31 < uint255(stor10[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor10[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 0, 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1:
                    idx = 0
                    while stor10[arg1].field_1 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
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
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if stor11:
        revert with 0, 'Pausable: paused'
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
    if bool(stor27.length):
        if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor27.length):
            if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor27.length):
                if 31 >= uint255(stor27.length) * 0.5:
                    mem[128] = 256 * stor27.length.field_8
                else:
                    mem[128] = uint256(stor27.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor27.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor27[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor27.length) == stor27.length.field_1 < 32:
                revert with 0, 34
            if stor27.length.field_1:
                if 31 >= stor27.length.field_1:
                    mem[128] = 256 * stor27.length.field_8
                else:
                    mem[128] = uint256(stor27.field_0)
                    idx = 128
                    s = 0
                    while stor27.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor27[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if uint255(stor27.length) * 0.5 <= 0:
            return ''
        mem[ceil32(uint255(stor27.length) * 0.5) + 160 len ceil32(uint255(stor27.length) * 0.5)] = mem[128 len ceil32(uint255(stor27.length) * 0.5)]
        mem[(uint255(stor27.length) * 0.5) + ceil32(uint255(stor27.length) * 0.5) + 160] = 32
        mem[(uint255(stor27.length) * 0.5) + ceil32(uint255(stor27.length) * 0.5) + 192] = mem[ceil32(uint255(stor27.length) * 0.5) + 128]
        mem[(uint255(stor27.length) * 0.5) + ceil32(uint255(stor27.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor27.length) * 0.5) + 128])] = mem[ceil32(uint255(stor27.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor27.length) * 0.5) + 128])]
        if ceil32(mem[ceil32(uint255(stor27.length) * 0.5) + 128]) > mem[ceil32(uint255(stor27.length) * 0.5) + 128]:
            mem[mem[ceil32(uint255(stor27.length) * 0.5) + 128] + (uint255(stor27.length) * 0.5) + ceil32(uint255(stor27.length) * 0.5) + 224] = 0
        return Array(len=mem[ceil32(uint255(stor27.length) * 0.5) + 128], data=mem[(uint255(stor27.length) * 0.5) + ceil32(uint255(stor27.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor27.length) * 0.5) + 128])]), 
    if bool(stor27.length) == stor27.length.field_1 < 32:
        revert with 0, 34
    if bool(stor27.length):
        if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor27.length):
            if 31 >= uint255(stor27.length) * 0.5:
                mem[128] = 256 * stor27.length.field_8
            else:
                mem[128] = uint256(stor27.field_0)
                idx = 128
                s = 0
                while (uint255(stor27.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor27[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor27.length) == stor27.length.field_1 < 32:
            revert with 0, 34
        if stor27.length.field_1:
            if 31 >= stor27.length.field_1:
                mem[128] = 256 * stor27.length.field_8
            else:
                mem[128] = uint256(stor27.field_0)
                idx = 128
                s = 0
                while stor27.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor27[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor27.length.field_1 <= 0:
        return ''
    mem[ceil32(stor27.length.field_1) + 160 len ceil32(stor27.length.field_1)] = mem[128 len ceil32(stor27.length.field_1)]
    mem[stor27.length.field_1 + ceil32(stor27.length.field_1) + 160] = 32
    mem[stor27.length.field_1 + ceil32(stor27.length.field_1) + 192] = mem[ceil32(stor27.length.field_1) + 128]
    mem[stor27.length.field_1 + ceil32(stor27.length.field_1) + 224 len ceil32(mem[ceil32(stor27.length.field_1) + 128])] = mem[ceil32(stor27.length.field_1) + 160 len ceil32(mem[ceil32(stor27.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor27.length.field_1) + 128]) > mem[ceil32(stor27.length.field_1) + 128]:
        mem[mem[ceil32(stor27.length.field_1) + 128] + stor27.length.field_1 + ceil32(stor27.length.field_1) + 224] = 0
    return Array(len=mem[ceil32(stor27.length.field_1) + 128], data=mem[stor27.length.field_1 + ceil32(stor27.length.field_1) + 224 len ceil32(mem[ceil32(stor27.length.field_1) + 128])]), 
}

function sub_2116612f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _264 = mem[(32 * idx) + 128]
        s = 0
        while s < cd[36]:
            if tokenByIndex.length >= maxSupply:
                revert with 0, 'All Serums have been minted!'
            _392 = mem[64]
            mem[64] = mem[64] + 32
            mem[_392] = 0
            if not address(_264):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor12]:
                revert with 0, 'ERC721: token already minted'
            if stor11:
                revert with 0, 'Pausable: paused'
            stor9[stor12] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor12
            if address(_264):
                if not address(_264):
                    if balanceOf[address(_264)] > -2:
                        revert with 0, 17
                    balanceOf[address(_264)]++
                    mem[0] = stor12
                    mem[32] = 2
                    ownerOf[stor12] = address(_264)
                    emit Transfer(0, address(_264), stor12);
                    if ext_code.size(address(_264)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor12
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + mem[64] + 164] = mem[idx + _392 + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(address(_264))
                        call address(_264).0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
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
                        _524 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_524] == Mask(32, 224, mem[_524])
                        if Mask(32, 224, mem[_524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not address(_264):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(_264)][stor3[address(_264)]] = stor12
                    stor7[stor12] = balanceOf[address(_264)]
                    if balanceOf[address(_264)] > -2:
                        revert with 0, 17
                    balanceOf[address(_264)]++
                    mem[0] = stor12
                    mem[32] = 2
                    ownerOf[stor12] = address(_264)
                    emit Transfer(0, address(_264), stor12);
                    if ext_code.size(address(_264)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor12
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + mem[64] + 164] = mem[idx + _392 + 32]
                            idx = idx + 32
                            continue 
                        require ext_code.size(address(_264))
                        call address(_264).0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
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
                        _526 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_526] == Mask(32, 224, mem[_526])
                        if Mask(32, 224, mem[_526]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor12] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor12]
                stor9[stor12] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(_264)] > -2:
                    revert with 0, 17
                balanceOf[address(_264)]++
                mem[0] = stor12
                mem[32] = 2
                ownerOf[stor12] = address(_264)
                emit Transfer(0, address(_264), stor12);
                if ext_code.size(address(_264)):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor12
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    idx = 0
                    while idx < 0:
                        mem[idx + mem[64] + 164] = mem[idx + _392 + 32]
                        idx = idx + 32
                        continue 
                    require ext_code.size(address(_264))
                    call address(_264).0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor12, 128, 0
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
                    _528 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_528] == Mask(32, 224, mem[_528])
                    if Mask(32, 224, mem[_528]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            stor12++
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}

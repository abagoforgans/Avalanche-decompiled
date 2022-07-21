contract main {




// =====================  Runtime code  =====================


#
#  - fulfillRandomness(bytes32 arg1, uint256 arg2)
#  - sub_7326d17e(?)
#  - _fallback()
#
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
mapping of uint8 assetType;
address stor13;
address stor14;
address stor15;
address stor19;
address oracleAddress;
uint256 sub_8997ce4e;
uint256 price;
mapping of struct stor23;
mapping of uint256 sub_da38f599;
mapping of uint8 stor25;
mapping of uint256 sub_11ab39a8;
mapping of uint256 sub_653e3b20;
uint256 stor28;
uint256 stor29;
uint256 stor30;
array of uint256 sub_a86932c5;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
array of uint256 stor72469383181153217859287470524408136624600596745406682853122032531702882555911;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_11ab39a8(?) {
    require calldata.size - 4 >= 64
    require arg2 < 3
    return sub_11ab39a8[arg1][arg2]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_2478239a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor25[arg1])
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

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_653e3b20(?) {
    require calldata.size - 4 >= 32
    return sub_653e3b20[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function oracle() {
    return oracleAddress
}

function sub_8997ce4e(?) {
    return sub_8997ce4e
}

function owner() {
    return owner
}

function getAssetType(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint8(assetType[arg1]) >= 3:
        revert with 0, 33
    return uint8(assetType[arg1])
}

function price() {
    return price
}

function sub_a86932c5(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_a86932c5.length
    return sub_a86932c5[arg1]
}

function sub_da38f599(?) {
    require calldata.size - 4 >= 32
    return sub_da38f599[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_ef24822f(?) {
    return sub_a86932c5.length
}

function sub_2ddea3cd(?) {
    require calldata.size - 4 >= 32
    stor35 = arg1
}

function sub_32b7e381(?) {
    if stor35 > !stor36:
        revert with 0, 17
    return (stor35 + stor36)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function getOracleFee() {
    call oracleAddress.getFee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_00859249(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor25[address(arg1)] = uint8(bool(arg2))
}

function sub_99ba9578(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender - arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_a01df018(?) {
    require calldata.size - 4 >= 32
    if sub_11ab39a8[arg1][0] > !sub_11ab39a8[arg1][1]:
        revert with 0, 17
    if sub_11ab39a8[arg1][0] + sub_11ab39a8[arg1][1] > !sub_11ab39a8[arg1][2]:
        revert with 0, 17
    return (sub_11ab39a8[arg1][0] + sub_11ab39a8[arg1][1] + sub_11ab39a8[arg1][2])
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

function sub_c6eac296(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor19.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg2), arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_dbb10085(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor19, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function sub_26787cd7(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg2).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
}

function draw() payable {
    if stor35 > !stor36:
        revert with 0, 17
    call oracleAddress.getFee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < stor35 + stor36:
        revert with 0, 'Not yet'
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Invalid value'
    stor35 = block.timestamp
    call oracleAddress.0xbc5fc532 with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
        args stor35 + stor36, 64, 64, this.address, 0x1f1f897f00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_8997ce4e = ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if not arg1 - ownerOf[arg2]:
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

function sub_7708da48(?) payable {
    require calldata.size - 4 >= 32
    call oracleAddress.getFee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Invalid value'
    if not stor23[arg1].field_0:
        revert with 0, 'Invalid'
    if block.timestamp <= arg1:
        revert with 0, 'Not yet'
    if stor23[arg1].field_8:
        revert with 0, 'Already drawn'
    stor23[arg1].field_8 = 1
    call oracleAddress.0xbc5fc532 with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
        args arg1, 64, 64, this.address, 0x1f1f897f00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_8997ce4e = ext_call.return_data[0]
    sub_da38f599[stor21] = arg1
}

function _claimFees() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor28 = 0
    stor29 = 0
    stor30 = 0
    if stor28:
        call stor13.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, stor28
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
    if stor29:
        call stor14.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, stor29
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
    if stor30:
        call stor15.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, stor30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
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

function sub_93bcd4d4(?) {
    require calldata.size - 4 >= 32
    if stor23[arg1].field_512:
        if not stor23[arg1].field_512 - (uint255(stor23[arg1].field_512) * 0.5 < 32):
            revert with 0, 34
        if stor23[arg1].field_512:
            if not stor23[arg1].field_512 - (uint255(stor23[arg1].field_512) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor23[arg1].field_512):
                if 31 >= uint255(stor23[arg1].field_512) * 0.5:
                    mem[128] = 256 * stor23[arg1].field_520
                else:
                    mem[128] = stor23[arg1][2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor23[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor23[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if not stor23[arg1].field_512 - (stor23[arg1].field_513 < 32):
                revert with 0, 34
            if stor23[arg1].field_513:
                if 31 >= stor23[arg1].field_513:
                    mem[128] = 256 * stor23[arg1].field_520
                else:
                    mem[128] = stor23[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor23[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor23[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor23[arg1].field_16 >= 3:
            revert with 0, 33
        return bool(stor23[arg1].field_0), 
               bool(stor23[arg1].field_8),
               stor23[arg1].field_0,
               stor23[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor23[arg1].field_512), data=mem[128 len ceil32(uint255(stor23[arg1].field_512) * 0.5)]),
               stor23[arg1].field_768
    if not stor23[arg1].field_512 - (stor23[arg1].field_513 < 32):
        revert with 0, 34
    if stor23[arg1].field_512:
        if not stor23[arg1].field_512 - (uint255(stor23[arg1].field_512) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor23[arg1].field_512):
            if 31 >= uint255(stor23[arg1].field_512) * 0.5:
                mem[128] = 256 * stor23[arg1].field_520
            else:
                mem[128] = stor23[arg1][2].field_0
                idx = 128
                s = 0
                while (uint255(stor23[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor23[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if not stor23[arg1].field_512 - (stor23[arg1].field_513 < 32):
            revert with 0, 34
        if stor23[arg1].field_513:
            if 31 >= stor23[arg1].field_513:
                mem[128] = 256 * stor23[arg1].field_520
            else:
                mem[128] = stor23[arg1][2].field_0
                idx = 128
                s = 0
                while stor23[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor23[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor23[arg1].field_16 >= 3:
        revert with 0, 33
    return bool(stor23[arg1].field_0), 
           bool(stor23[arg1].field_8),
           stor23[arg1].field_0,
           stor23[arg1].field_256,
           Array(len=stor23[arg1].field_512, data=mem[128 len ceil32(stor23[arg1].field_513)]),
           stor23[arg1].field_768
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not -return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() {
    if bool(stor0.length):
        if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor0.length):
            if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
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
            if not bool(stor0.length) - (stor0.length.field_1 < 32):
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
    if not bool(stor0.length) - (stor0.length.field_1 < 32):
        revert with 0, 34
    if bool(stor0.length):
        if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
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
        if not bool(stor0.length) - (stor0.length.field_1 < 32):
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
        if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor1.length):
            if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
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
            if not bool(stor1.length) - (stor1.length.field_1 < 32):
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
    if not bool(stor1.length) - (stor1.length.field_1 < 32):
        revert with 0, 34
    if bool(stor1.length):
        if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
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
        if not bool(stor1.length) - (stor1.length.field_1 < 32):
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

function sub_a2b450a0(?) {
    require calldata.size - 4 >= 128
    require arg2 < 3
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 2:
        revert with 0, 33
    if not arg2:
        call stor13.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        require ext_code.size(stor19)
        call stor19.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args stor13, arg3, address(this.address), 0
    else:
        if arg2 > 2:
            revert with 0, 33
        if arg2 - 2:
            call stor15.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            require ext_code.size(stor19)
            call stor19.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args stor15, arg3, address(this.address), 0
        else:
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            require ext_code.size(stor19)
            call stor19.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args stor14, arg3, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 > 2:
        revert with 0, 33
    stor23[arg1].field_0 = 1
    stor23[arg1].field_8 = 0
    stor23[arg1].field_16 = 0
    if arg2 > 2:
        revert with 0, 33
    stor23[arg1].field_0 = 1
    stor23[arg1].field_8 = 0
    stor23[arg1].field_16 = Mask(240, 0, arg2)
    stor23[arg1].field_24 = 0
    stor23[arg1].field_24 = 0
    stor23[arg1].field_256 = arg3
    if stor23[arg1].field_512:
        if not stor23[arg1].field_512 - (uint255(stor23[arg1].field_512) * 0.5 < 32):
            revert with 0, 34
        if arg4.length:
            stor23[arg1][2][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor23[arg1].field_512 = 0
            idx = 0
            while (uint255(stor23[arg1].field_512) * 0.5) + 31 / 32 > idx:
                stor23[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor23[arg1].field_512 - (stor23[arg1].field_513 < 32):
            revert with 0, 34
        if arg4.length:
            stor23[arg1][2][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor23[arg1].field_512 = 0
            idx = 0
            while stor23[arg1].field_513 + 31 / 32 > idx:
                stor23[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor23[arg1].field_768 = 0
    emit 0xcf778afb: arg1
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not -arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not -return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_fbe14ce9(?) {
    require calldata.size - 4 >= 32
    if sub_11ab39a8[arg1][0] > !sub_11ab39a8[arg1][1]:
        revert with 0, 17
    if sub_11ab39a8[arg1][0] + sub_11ab39a8[arg1][1] > !sub_11ab39a8[arg1][2]:
        revert with 0, 17
    if sub_11ab39a8[arg1][0] + sub_11ab39a8[arg1][1] + sub_11ab39a8[arg1][2] <= 0:
        revert with 0, 'First claim'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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
    if uint8(assetType[arg1]) > 2:
        revert with 0, 33
    if not uint8(assetType[arg1]):
        if price > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        call stor19.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args stor13, 10^18 * price, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if price > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        call stor13.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 10^18 * price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        if stor32 < 1:
            revert with 0, 17
        stor32--
    else:
        if uint8(assetType[arg1]) > 2:
            revert with 0, 33
        if price > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
            revert with 0, 17
        if uint8(assetType[arg1]) - 2:
            call stor19.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor14, 10^6 * price, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if price > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            call stor14.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 10^6 * price
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            if stor33 < 1:
                revert with 0, 17
            stor33--
        else:
            call stor19.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor15, 10^6 * price, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if price > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            call stor15.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 10^6 * price
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            if stor34 < 1:
                revert with 0, 17
            stor34--
    if sub_a86932c5.length < 1:
        revert with 0, 17
    if sub_a86932c5.length - 1 >= sub_a86932c5.length:
        revert with 0, 50
    if not sub_a86932c5.length:
        revert with 0, 49
    sub_a86932c5[sub_a86932c5.length] = 0
    sub_a86932c5.length--
    idx = 0
    while idx < sub_a86932c5.length:
        mem[0] = 31
        if sub_a86932c5[idx] - arg1:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_a86932c5.length:
            revert with 0, 50
        sub_a86932c5[idx] = sub_a86932c5[sub_a86932c5.length]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[96] = 30
    mem[128] = 'https://my-chance.io/api/token'
    if not -arg1:
        mem[256] = 'https://my-chance.io/api/token'
        mem[286] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[287] = 32
        mem[319] = mem[224]
        mem[351 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
        if ceil32(mem[224]) > mem[224]:
            mem[mem[224] + 351] = 0
        return Array(len=mem[224], data=mem[351 len ceil32(mem[224])])
    s = 0
    idx = arg1
    while idx:
        if not s + 1:
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
        _175 = mem[64]
        _177 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _269 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_269) <= _269:
                _337 = mem[64]
                mem[64] = _269 + mem[64] + mem[96] + 32
                mem[_269 + _175 + mem[96] + 32] = 32
                _353 = mem[_337]
                mem[_269 + _175 + _177 + 64] = mem[_337]
                mem[_269 + _175 + _177 + 96 len ceil32(_353)] = mem[_337 + 32 len ceil32(_353)]
                if ceil32(_353) > _353:
                    mem[_353 + _269 + _175 + _177 + 96] = 0
                return 32, mem[_269 + _175 + _177 + 64 len ceil32(_353) + 32]
            mem[_269 + mem[64] + mem[96] + 32] = 0
            _338 = mem[64]
            mem[64] = _269 + _175 + _177 + 32
            mem[_269 + _175 + _177 + 32] = 32
            _354 = mem[_338]
            mem[_269 + _175 + _177 + 64] = mem[_338]
            mem[_269 + _175 + _177 + 96 len ceil32(_354)] = mem[_338 + 32 len ceil32(_354)]
            if ceil32(_354) > _354:
                mem[_354 + _269 + _175 + _177 + 96] = 0
            return 32, mem[_269 + _175 + _177 + 64 len ceil32(_354) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _270 = mem[160]
        mem[_175 + _177 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_270) <= _270:
            _339 = mem[64]
            mem[64] = _270 + _175 + _177 + 32
            mem[_270 + _175 + _177 + 32] = 32
            _355 = mem[_339]
            mem[_270 + _175 + _177 + 64] = mem[_339]
            mem[_270 + _175 + _177 + 96 len ceil32(_355)] = mem[_339 + 32 len ceil32(_355)]
            if ceil32(_355) > _355:
                mem[_355 + _270 + _175 + _177 + 96] = 0
            return 32, mem[_270 + _175 + _177 + 64 len ceil32(_355) + 32]
        mem[_270 + _175 + _177 + 32] = 0
        _340 = mem[64]
        mem[64] = _270 + _175 + _177 + 32
        mem[_270 + _175 + _177 + 32] = 32
        _356 = mem[_340]
        mem[_270 + _175 + _177 + 64] = mem[_340]
        mem[_270 + _175 + _177 + 96 len ceil32(_356)] = mem[_340 + 32 len ceil32(_356)]
        if ceil32(_356) > _356:
            mem[_356 + _270 + _175 + _177 + 96] = 0
        return 32, mem[_270 + _175 + _177 + 64 len ceil32(_356) + 32]
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
    _176 = mem[64]
    _178 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _271 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_271) <= _271:
            _341 = mem[64]
            mem[64] = _271 + mem[64] + mem[96] + 32
            mem[_271 + _176 + mem[96] + 32] = 32
            _357 = mem[_341]
            mem[_271 + _176 + _178 + 64] = mem[_341]
            mem[_271 + _176 + _178 + 96 len ceil32(_357)] = mem[_341 + 32 len ceil32(_357)]
            if ceil32(_357) > _357:
                mem[_357 + _271 + _176 + _178 + 96] = 0
            return 32, mem[_271 + _176 + _178 + 64 len ceil32(_357) + 32]
        mem[_271 + mem[64] + mem[96] + 32] = 0
        _342 = mem[64]
        mem[64] = _271 + mem[64] + mem[96] + 32
        mem[_271 + _176 + mem[96] + 32] = 32
        _358 = mem[_342]
        mem[_271 + _176 + _178 + 64] = mem[_342]
        mem[_271 + _176 + _178 + 96 len ceil32(_358)] = mem[_342 + 32 len ceil32(_358)]
        if ceil32(_358) > _358:
            mem[_358 + _271 + _176 + _178 + 96] = 0
        return 32, mem[_271 + _176 + _178 + 64 len ceil32(_358) + 32]
    mem[mem[96] + mem[64] + 32] = 0
    _272 = mem[160]
    mem[_176 + _178 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if ceil32(_272) <= _272:
        _343 = mem[64]
        mem[64] = _272 + _176 + _178 + 32
        mem[_272 + _176 + _178 + 32] = 32
        _359 = mem[_343]
        mem[_272 + _176 + _178 + 64] = mem[_343]
        mem[_272 + _176 + _178 + 96 len ceil32(_359)] = mem[_343 + 32 len ceil32(_359)]
        if ceil32(_359) > _359:
            mem[_359 + _272 + _176 + _178 + 96] = 0
        return 32, mem[_272 + _176 + _178 + 64 len ceil32(_359) + 32]
    mem[_272 + _176 + _178 + 32] = 0
    _344 = mem[64]
    mem[64] = _272 + _176 + _178 + 32
    mem[_272 + _176 + _178 + 32] = 32
    _360 = mem[_344]
    mem[_272 + _176 + _178 + 64] = mem[_344]
    mem[_272 + _176 + _178 + 96 len ceil32(_360)] = mem[_344 + 32 len ceil32(_360)]
    if ceil32(_360) > _360:
        mem[_360 + _272 + _176 + _178 + 96] = 0
    return 32, mem[_272 + _176 + _178 + 64 len ceil32(_360) + 32]
}

function sub_fbccfe03(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    if arg1 > 2:
        revert with 0, 33
    if not arg1:
        if price > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = 10^18 * price
        call stor13.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 10^18 * price
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        if price > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        require ext_code.size(stor19)
        call stor19.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args stor13, 10^18 * price, address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor32 > -2:
            revert with 0, 17
        stor32++
    else:
        if arg1 > 2:
            revert with 0, 33
        if price > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
            revert with 0, 17
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = 10^6 * price
        if arg1 - 2:
            call stor14.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^6 * price
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            if price > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            require ext_code.size(stor19)
            call stor19.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args stor14, 10^6 * price, address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor33 > -2:
                revert with 0, 17
            stor33++
        else:
            call stor15.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^6 * price
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            if price > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            require ext_code.size(stor19)
            call stor19.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args stor15, 10^6 * price, address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor34 > -2:
                revert with 0, 17
            stor34++
    stor11++
    mem[ceil32(return_data.size) + 96] = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor11]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor11] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor11
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor11
            stor7[stor11] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor11] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor11]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor11]
        stor9[stor11] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor11] = msg.sender
    emit Transfer(0, msg.sender, stor11);
    if ext_code.size(msg.sender):
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = stor11
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 260] = 0
        mem[ceil32(return_data.size) + 292 len 0] = None
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, stor11, 128, 0
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not -ext_call.return_data[0]:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            if not -return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if arg1 > 2:
        revert with 0, 33
    uint256(assetType[stor11]) = arg1 or Mask(248, 8, uint256(assetType[stor11]))
    sub_a86932c5.length++
    storA038[stor31.length] = stor11
    sub_653e3b20[stor11] = block.timestamp
}

function claim(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Invalid owner'
    if not stor25[address(arg2)]:
        revert with 0, 'Invalid charity'
    if arg3 <= 5:
        revert with 0, 'Minimum to donate is 5%'
    if sub_11ab39a8[arg1][0] > !sub_11ab39a8[arg1][1]:
        revert with 0, 17
    if sub_11ab39a8[arg1][0] + sub_11ab39a8[arg1][1] > !sub_11ab39a8[arg1][2]:
        revert with 0, 17
    if sub_11ab39a8[arg1][0] + sub_11ab39a8[arg1][1] + sub_11ab39a8[arg1][2] <= 0:
        revert with 0, 'Nothing to claim'
    sub_11ab39a8[arg1][0] = 0
    sub_11ab39a8[arg1][1] = 0
    sub_11ab39a8[arg1][2] = 0
    if arg3 <= 100:
        if sub_11ab39a8[arg1][0]:
            call stor19.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor13, sub_11ab39a8[arg1][0], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_11ab39a8[arg1][0] and arg3 > -1 / sub_11ab39a8[arg1][0]:
                revert with 0, 17
            if sub_11ab39a8[arg1][0] < sub_11ab39a8[arg1][0] * arg3 / 100:
                revert with 0, 17
            if sub_11ab39a8[arg1][0] - (sub_11ab39a8[arg1][0] * arg3 / 100) > 0x116e0689427378eb4d583d0116e0689427378eb4d583d0116e0689427378eb4:
                revert with 0, 17
            if stor28 > !((235 * sub_11ab39a8[arg1][0]) - (235 * sub_11ab39a8[arg1][0] * arg3 / 100) / 10000):
                revert with 0, 17
            stor28 += (235 * sub_11ab39a8[arg1][0]) - (235 * sub_11ab39a8[arg1][0] * arg3 / 100) / 10000
            if sub_11ab39a8[arg1][0] < (235 * sub_11ab39a8[arg1][0]) - (235 * sub_11ab39a8[arg1][0] * arg3 / 100) / 10000:
                revert with 0, 17
            if sub_11ab39a8[arg1][0] - ((235 * sub_11ab39a8[arg1][0]) - (235 * sub_11ab39a8[arg1][0] * arg3 / 100) / 10000) < sub_11ab39a8[arg1][0] * arg3 / 100:
                revert with 0, 17
            call stor13.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sub_11ab39a8[arg1][0] - ((235 * sub_11ab39a8[arg1][0]) - (235 * sub_11ab39a8[arg1][0] * arg3 / 100) / 10000) - (sub_11ab39a8[arg1][0] * arg3 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            call stor13.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), sub_11ab39a8[arg1][0] * arg3 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
        if sub_11ab39a8[arg1][1]:
            call stor19.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor14, sub_11ab39a8[arg1][1], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_11ab39a8[arg1][1] and arg3 > -1 / sub_11ab39a8[arg1][1]:
                revert with 0, 17
            if sub_11ab39a8[arg1][1] < sub_11ab39a8[arg1][1] * arg3 / 100:
                revert with 0, 17
            if sub_11ab39a8[arg1][1] - (sub_11ab39a8[arg1][1] * arg3 / 100) > 0x116e0689427378eb4d583d0116e0689427378eb4d583d0116e0689427378eb4:
                revert with 0, 17
            if stor29 > !((235 * sub_11ab39a8[arg1][1]) - (235 * sub_11ab39a8[arg1][1] * arg3 / 100) / 10000):
                revert with 0, 17
            stor29 += (235 * sub_11ab39a8[arg1][1]) - (235 * sub_11ab39a8[arg1][1] * arg3 / 100) / 10000
            if sub_11ab39a8[arg1][1] < (235 * sub_11ab39a8[arg1][1]) - (235 * sub_11ab39a8[arg1][1] * arg3 / 100) / 10000:
                revert with 0, 17
            if sub_11ab39a8[arg1][1] - ((235 * sub_11ab39a8[arg1][1]) - (235 * sub_11ab39a8[arg1][1] * arg3 / 100) / 10000) < sub_11ab39a8[arg1][1] * arg3 / 100:
                revert with 0, 17
            call stor14.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sub_11ab39a8[arg1][1] - ((235 * sub_11ab39a8[arg1][1]) - (235 * sub_11ab39a8[arg1][1] * arg3 / 100) / 10000) - (sub_11ab39a8[arg1][1] * arg3 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            call stor14.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), sub_11ab39a8[arg1][1] * arg3 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
        if sub_11ab39a8[arg1][2]:
            call stor19.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor15, sub_11ab39a8[arg1][2], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_11ab39a8[arg1][2] and arg3 > -1 / sub_11ab39a8[arg1][2]:
                revert with 0, 17
            if sub_11ab39a8[arg1][2] < sub_11ab39a8[arg1][2] * arg3 / 100:
                revert with 0, 17
            if sub_11ab39a8[arg1][2] - (sub_11ab39a8[arg1][2] * arg3 / 100) > 0x116e0689427378eb4d583d0116e0689427378eb4d583d0116e0689427378eb4:
                revert with 0, 17
            if stor30 > !((235 * sub_11ab39a8[arg1][2]) - (235 * sub_11ab39a8[arg1][2] * arg3 / 100) / 10000):
                revert with 0, 17
            stor30 += (235 * sub_11ab39a8[arg1][2]) - (235 * sub_11ab39a8[arg1][2] * arg3 / 100) / 10000
            if sub_11ab39a8[arg1][2] < (235 * sub_11ab39a8[arg1][2]) - (235 * sub_11ab39a8[arg1][2] * arg3 / 100) / 10000:
                revert with 0, 17
            if sub_11ab39a8[arg1][2] - ((235 * sub_11ab39a8[arg1][2]) - (235 * sub_11ab39a8[arg1][2] * arg3 / 100) / 10000) < sub_11ab39a8[arg1][2] * arg3 / 100:
                revert with 0, 17
            call stor15.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sub_11ab39a8[arg1][2] - ((235 * sub_11ab39a8[arg1][2]) - (235 * sub_11ab39a8[arg1][2] * arg3 / 100) / 10000) - (sub_11ab39a8[arg1][2] * arg3 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            call stor15.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), sub_11ab39a8[arg1][2] * arg3 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
    else:
        if sub_11ab39a8[arg1][0]:
            call stor19.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor13, sub_11ab39a8[arg1][0], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_11ab39a8[arg1][0] and 100 > -1 / sub_11ab39a8[arg1][0]:
                revert with 0, 17
            if sub_11ab39a8[arg1][0] < 100 * sub_11ab39a8[arg1][0] / 100:
                revert with 0, 17
            if sub_11ab39a8[arg1][0] - (100 * sub_11ab39a8[arg1][0] / 100) > 0x116e0689427378eb4d583d0116e0689427378eb4d583d0116e0689427378eb4:
                revert with 0, 17
            if stor28 > !((235 * sub_11ab39a8[arg1][0]) - (235 * 100 * sub_11ab39a8[arg1][0] / 100) / 10000):
                revert with 0, 17
            stor28 += (235 * sub_11ab39a8[arg1][0]) - (235 * 100 * sub_11ab39a8[arg1][0] / 100) / 10000
            if sub_11ab39a8[arg1][0] < (235 * sub_11ab39a8[arg1][0]) - (235 * 100 * sub_11ab39a8[arg1][0] / 100) / 10000:
                revert with 0, 17
            if sub_11ab39a8[arg1][0] - ((235 * sub_11ab39a8[arg1][0]) - (235 * 100 * sub_11ab39a8[arg1][0] / 100) / 10000) < 100 * sub_11ab39a8[arg1][0] / 100:
                revert with 0, 17
            call stor13.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sub_11ab39a8[arg1][0] - ((235 * sub_11ab39a8[arg1][0]) - (235 * 100 * sub_11ab39a8[arg1][0] / 100) / 10000) - (100 * sub_11ab39a8[arg1][0] / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            call stor13.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), 100 * sub_11ab39a8[arg1][0] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
        if sub_11ab39a8[arg1][1]:
            call stor19.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor14, sub_11ab39a8[arg1][1], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_11ab39a8[arg1][1] and 100 > -1 / sub_11ab39a8[arg1][1]:
                revert with 0, 17
            if sub_11ab39a8[arg1][1] < 100 * sub_11ab39a8[arg1][1] / 100:
                revert with 0, 17
            if sub_11ab39a8[arg1][1] - (100 * sub_11ab39a8[arg1][1] / 100) > 0x116e0689427378eb4d583d0116e0689427378eb4d583d0116e0689427378eb4:
                revert with 0, 17
            if stor29 > !((235 * sub_11ab39a8[arg1][1]) - (235 * 100 * sub_11ab39a8[arg1][1] / 100) / 10000):
                revert with 0, 17
            stor29 += (235 * sub_11ab39a8[arg1][1]) - (235 * 100 * sub_11ab39a8[arg1][1] / 100) / 10000
            if sub_11ab39a8[arg1][1] < (235 * sub_11ab39a8[arg1][1]) - (235 * 100 * sub_11ab39a8[arg1][1] / 100) / 10000:
                revert with 0, 17
            if sub_11ab39a8[arg1][1] - ((235 * sub_11ab39a8[arg1][1]) - (235 * 100 * sub_11ab39a8[arg1][1] / 100) / 10000) < 100 * sub_11ab39a8[arg1][1] / 100:
                revert with 0, 17
            call stor14.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sub_11ab39a8[arg1][1] - ((235 * sub_11ab39a8[arg1][1]) - (235 * 100 * sub_11ab39a8[arg1][1] / 100) / 10000) - (100 * sub_11ab39a8[arg1][1] / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            call stor14.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), 100 * sub_11ab39a8[arg1][1] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
        if sub_11ab39a8[arg1][2]:
            call stor19.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor15, sub_11ab39a8[arg1][2], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_11ab39a8[arg1][2] and 100 > -1 / sub_11ab39a8[arg1][2]:
                revert with 0, 17
            if sub_11ab39a8[arg1][2] < 100 * sub_11ab39a8[arg1][2] / 100:
                revert with 0, 17
            if sub_11ab39a8[arg1][2] - (100 * sub_11ab39a8[arg1][2] / 100) > 0x116e0689427378eb4d583d0116e0689427378eb4d583d0116e0689427378eb4:
                revert with 0, 17
            if stor30 > !((235 * sub_11ab39a8[arg1][2]) - (235 * 100 * sub_11ab39a8[arg1][2] / 100) / 10000):
                revert with 0, 17
            stor30 += (235 * sub_11ab39a8[arg1][2]) - (235 * 100 * sub_11ab39a8[arg1][2] / 100) / 10000
            if sub_11ab39a8[arg1][2] < (235 * sub_11ab39a8[arg1][2]) - (235 * 100 * sub_11ab39a8[arg1][2] / 100) / 10000:
                revert with 0, 17
            if sub_11ab39a8[arg1][2] - ((235 * sub_11ab39a8[arg1][2]) - (235 * 100 * sub_11ab39a8[arg1][2] / 100) / 10000) < 100 * sub_11ab39a8[arg1][2] / 100:
                revert with 0, 17
            call stor15.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sub_11ab39a8[arg1][2] - ((235 * sub_11ab39a8[arg1][2]) - (235 * 100 * sub_11ab39a8[arg1][2] / 100) / 10000) - (100 * sub_11ab39a8[arg1][2] / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            call stor15.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), 100 * sub_11ab39a8[arg1][2] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
}



}

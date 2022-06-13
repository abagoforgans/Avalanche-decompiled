contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#  - sub_e858ad17(?)
#
const DEFAULT_ADMIN_ROLE = 0


address owner;
array of struct stor1;
array of struct stor2;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
mapping of struct stor7;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
mapping of struct roleAdmin;
uint256 nextTokenId;
address settlementFeeRecipientAddress;
mapping of struct options;
uint256 impliedVolRate;
uint256 optionCollateralizationRatio;
uint256 sub_f3fa3495;
uint256 stakingFeePercentage;
uint256 sub_920a253e;
uint256 sub_ed0974c7;
uint8 sub_f12a0466; offset 160
uint128 stor24; offset 160
address priceProviderAddress;
address poolAddress;
mapping of uint8 stor26;
mapping of uint8 stor27;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function pool() {
    return poolAddress
}

function totalSupply() {
    return tokenByIndex.length
}

function settlementFeeRecipient() {
    return settlementFeeRecipientAddress
}

function impliedVolRate() {
    return impliedVolRate
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
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

function optionCollateralizationRatio() {
    return optionCollateralizationRatio
}

function options(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint8(options[arg1].field_0) >= 4:
        revert with 0, 33
    if uint8(options[arg1].field_1536) >= 3:
        revert with 0, 33
    return uint8(options[arg1].field_0), 
           options[arg1].field_256,
           options[arg1].field_512,
           options[arg1].field_768,
           options[arg1].field_1024,
           options[arg1].field_1280,
           uint8(options[arg1].field_1536)
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

function nextTokenId() {
    return nextTokenId
}

function owner() {
    return owner
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_920a253e(?) {
    return sub_920a253e
}

function sub_b7c9a6b0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor27[arg1])
}

function priceProvider() {
    return priceProviderAddress
}

function stakingFeePercentage() {
    return stakingFeePercentage
}

function sub_e11d1da2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor26[arg1])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function sub_ed0974c7(?) {
    return sub_ed0974c7
}

function sub_f12a0466(?) {
    if sub_f12a0466 >= 4:
        revert with 0, 33
    return sub_f12a0466
}

function sub_f3fa3495(?) {
    return sub_f3fa3495
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

function setAutoExerciseStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor26[msg.sender] = uint8(arg1)
    emit AutoExerciseStatusChange(arg1, msg.sender);
}

function sub_5cb6bc81(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10:
        revert with 0, 'wrong value'
    sub_ed0974c7 = arg1
    emit 0x8fb679aa: arg1
}

function setSettlementFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    settlementFeeRecipientAddress = arg1
    emit 0x92f6c1e8: arg1
}

function setStakingFeePercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0, 'StakingFeePercentage is too high'
    stakingFeePercentage = arg1
    emit 0x7ab3467f: arg1
}

function sub_ff0b025d(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 3:
        revert with 0, 33
    stor24 = Mask(96, 0, arg1)
    if arg1 >= 4:
        revert with 0, 33
    emit 0x75e98309: arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor6[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setOptionCollaterizationRatio(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 50 > arg1:
        revert with 0, 'wrong value'
    if arg1 > 100:
        revert with 0, 'wrong value'
    optionCollateralizationRatio = arg1
    emit 0x66b26a0d: arg1
}

function setImpliedVolRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ImpliedVolRate limit is too small'
    impliedVolRate = arg1
    emit 0x3e0c5924: arg1
}

function setSettlementFeePercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SettlementFeePercentage is too high'
    sub_f3fa3495 = arg1
    emit 0x803e7bba: arg1
}

function setReferralRewardPercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ReferralRewardPercentage is too high'
    sub_920a253e = arg1
    emit 0xc0894660: arg1
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

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
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
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor9[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor4[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor9[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor4[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
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
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
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
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 0, 34
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
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor2.length.field_1 % 128:
                if 31 < stor2.length.field_1 % 128:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor2.length.field_1 % 128:
            if 31 < stor2.length.field_1 % 128:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    mem[ceil32(stor2.length.field_1 % 128) + 192 len ceil32(stor2.length.field_1 % 128)] = mem[128 len ceil32(stor2.length.field_1 % 128)]
    if ceil32(stor2.length.field_1 % 128) > stor2.length.field_1 % 128:
        mem[stor2.length.field_1 % 128 + ceil32(stor2.length.field_1 % 128) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)], mem[(2 * ceil32(stor2.length.field_1 % 128)) + 192 len 2 * ceil32(stor2.length.field_1 % 128)]), 
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor9[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor4[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
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

function unlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp <= options[arg1].field_1280:
        revert with 0, 'Option has not expired yet'
    if uint8(options[arg1].field_0) > 3:
        revert with 0, 33
    if uint8(options[arg1].field_0) != 1:
        revert with 0, 'Option is not active'
    uint8(options[arg1].field_0) = 3
    require ext_code.size(poolAddress)
    call poolAddress.0x6198e339 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor3[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor3[arg1]] - 1 != stor9[arg1]:
            tokenOfOwnerByIndex[stor3[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1]
            stor9[stor8[stor3[arg1]][stor4[stor3[arg1]] - 1]] = stor9[arg1]
        stor9[arg1] = 0
        tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor11[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
    stor11[stor10[stor10.length]] = stor11[arg1]
    stor11[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor3[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor3[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if bool(stor7[arg1].field_0):
        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7[arg1].field_0):
            if bool(stor7[arg1].field_0):
                if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor7[arg1].field_0 = 0
                if 31 < uint255(stor7[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                stor7[arg1].field_0 = 0
                if 31 < stor7[arg1].field_1 % 128:
                    idx = 0
                    while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor7[arg1].field_1 % 128:
            if bool(stor7[arg1].field_0):
                if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor7[arg1].field_0 = 0
                if 31 < uint255(stor7[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                stor7[arg1].field_0 = 0
                if 31 < stor7[arg1].field_1 % 128:
                    idx = 0
                    while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    emit Expire(options[arg1].field_1024, arg1);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor6[stor3[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor3[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor3[arg1]] - 1 != stor9[arg1]:
            tokenOfOwnerByIndex[stor3[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1]
            stor9[stor8[stor3[arg1]][stor4[stor3[arg1]] - 1]] = stor9[arg1]
        stor9[arg1] = 0
        tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor11[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
    stor11[stor10[stor10.length]] = stor11[arg1]
    stor11[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor3[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor3[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if bool(stor7[arg1].field_0):
        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7[arg1].field_0):
            if bool(stor7[arg1].field_0):
                if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor7[arg1].field_0 = 0
                if 31 < uint255(stor7[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                stor7[arg1].field_0 = 0
                if 31 < stor7[arg1].field_1 % 128:
                    idx = 0
                    while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor7[arg1].field_1 % 128:
            if bool(stor7[arg1].field_0):
                if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor7[arg1].field_0 = 0
                if 31 < uint255(stor7[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                stor7[arg1].field_0 = 0
                if 31 < stor7[arg1].field_1 % 128:
                    idx = 0
                    while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor7[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function unlockAll(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        if block.timestamp <= options[cd[((32 * idx) + arg1 + 36)]].field_1280:
            revert with 0, 'Option has not expired yet'
        if uint8(options[cd[((32 * idx) + arg1 + 36)]].field_0) > 3:
            revert with 0, 33
        if uint8(options[cd[((32 * idx) + arg1 + 36)]].field_0) != 1:
            revert with 0, 'Option is not active'
        uint8(options[cd[((32 * idx) + arg1 + 36)]].field_0) = 3
        mem[100] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(poolAddress)
        call poolAddress.0x6198e339 with:
             gas gas_remaining wei
            args cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not ownerOf[cd[((32 * idx) + arg1 + 36)]]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[cd[((32 * idx) + arg1 + 36)]]:
            if not ownerOf[cd[((32 * idx) + arg1 + 36)]]:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[stor3[cd[((32 * idx) + arg1 + 36)]]] < 1:
                revert with 0, 17
            if balanceOf[stor3[cd[((32 * idx) + arg1 + 36)]]] - 1 != stor9[cd[((32 * idx) + arg1 + 36)]]:
                tokenOfOwnerByIndex[stor3[cd[((32 * idx) + arg1 + 36)]]][stor9[cd[((32 * idx) + arg1 + 36)]]] = tokenOfOwnerByIndex[stor3[cd[((32 * idx) + arg1 + 36)]]][stor4[stor3[cd[((32 * idx) + arg1 + 36)]]] - 1]
                stor9[stor8[stor3[cd[((32 * idx) + arg1 + 36)]]][stor4[stor3[cd[((32 * idx) + arg1 + 36)]]] - 1]] = stor9[cd[((32 * idx) + arg1 + 36)]]
            stor9[cd[((32 * idx) + arg1 + 36)]] = 0
            tokenOfOwnerByIndex[stor3[cd[((32 * idx) + arg1 + 36)]]][stor4[stor3[cd[((32 * idx) + arg1 + 36)]]] - 1] = 0
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[cd[((32 * idx) + arg1 + 36)]] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[cd[((32 * idx) + arg1 + 36)]]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[cd[((32 * idx) + arg1 + 36)]]
        stor11[cd[((32 * idx) + arg1 + 36)]] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
        approved[cd[((32 * idx) + arg1 + 36)]] = 0
        if not ownerOf[cd[((32 * idx) + arg1 + 36)]]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[cd[((32 * idx) + arg1 + 36)]], 0, cd[((32 * idx) + arg1 + 36)]);
        if balanceOf[stor3[cd[((32 * idx) + arg1 + 36)]]] < 1:
            revert with 0, 17
        balanceOf[stor3[cd[((32 * idx) + arg1 + 36)]]]--
        ownerOf[cd[((32 * idx) + arg1 + 36)]] = 0
        emit Transfer(ownerOf[cd[((32 * idx) + arg1 + 36)]], 0, cd[((32 * idx) + arg1 + 36)]);
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 7
        if bool(stor7[cd[((32 * idx) + arg1 + 36)]].field_0):
            if bool(stor7[cd[((32 * idx) + arg1 + 36)]].field_0) == uint255(stor7[cd[((32 * idx) + arg1 + 36)]].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7[cd[((32 * idx) + arg1 + 36)]].field_0):
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 7
                if bool(stor7[cd[((32 * idx) + arg1 + 36)]].field_0):
                    if bool(stor7[cd[((32 * idx) + arg1 + 36)]].field_0) == uint255(stor7[cd[((32 * idx) + arg1 + 36)]].field_0) * 0.5 < 32:
                        revert with 0, 34
                    stor7[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
                    if 31 < uint255(stor7[cd[((32 * idx) + arg1 + 36)]].field_0) * 0.5:
                        mem[0] = sha3(cd[((32 * idx) + arg1 + 36)], 7)
                        s = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 7))
                        while sha3(sha3(cd[((32 * idx) + arg1 + 36)], 7)) + ((uint255(stor7[cd[((32 * idx) + arg1 + 36)]].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor7[cd[((32 * idx) + arg1 + 36)]].field_0) == stor7[cd[((32 * idx) + arg1 + 36)]].field_1 % 128 < 32:
                        revert with 0, 34
                    stor7[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
                    if 31 < stor7[cd[((32 * idx) + arg1 + 36)]].field_1 % 128:
                        mem[0] = sha3(cd[((32 * idx) + arg1 + 36)], 7)
                        s = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 7))
                        while sha3(sha3(cd[((32 * idx) + arg1 + 36)], 7)) + (stor7[cd[((32 * idx) + arg1 + 36)]].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
        else:
            if bool(stor7[cd[((32 * idx) + arg1 + 36)]].field_0) == stor7[cd[((32 * idx) + arg1 + 36)]].field_1 % 128 < 32:
                revert with 0, 34
            if stor7[cd[((32 * idx) + arg1 + 36)]].field_1 % 128:
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 7
                if bool(stor7[cd[((32 * idx) + arg1 + 36)]].field_0):
                    if bool(stor7[cd[((32 * idx) + arg1 + 36)]].field_0) == uint255(stor7[cd[((32 * idx) + arg1 + 36)]].field_0) * 0.5 < 32:
                        revert with 0, 34
                    stor7[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
                    if 31 < uint255(stor7[cd[((32 * idx) + arg1 + 36)]].field_0) * 0.5:
                        mem[0] = sha3(cd[((32 * idx) + arg1 + 36)], 7)
                        s = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 7))
                        while sha3(sha3(cd[((32 * idx) + arg1 + 36)], 7)) + ((uint255(stor7[cd[((32 * idx) + arg1 + 36)]].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor7[cd[((32 * idx) + arg1 + 36)]].field_0) == stor7[cd[((32 * idx) + arg1 + 36)]].field_1 % 128 < 32:
                        revert with 0, 34
                    stor7[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
                    if 31 < stor7[cd[((32 * idx) + arg1 + 36)]].field_1 % 128:
                        mem[0] = sha3(cd[((32 * idx) + arg1 + 36)], 7)
                        s = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 7))
                        while sha3(sha3(cd[((32 * idx) + arg1 + 36)], 7)) + (stor7[cd[((32 * idx) + arg1 + 36)]].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
        mem[96] = options[cd[((32 * idx) + arg1 + 36)]].field_1024
        emit Expire(options[cd[((32 * idx) + arg1 + 36)]].field_1024, cd[((32 * idx) + arg1 + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function fees(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg4 < 3
    require ext_code.size(priceProviderAddress)
    staticcall priceProviderAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if arg2 and sub_f3fa3495 > -1 / arg2:
        revert with 0, 17
    if arg4 > 2:
        revert with 0, 33
    if arg4 != 1:
        if arg3 and 100 * 10^6 > -1 / arg3:
            revert with 0, 17
        if 1 > !(arg1 / 2):
            revert with 0, 17
        s = (arg1 / 2) + 1
        t = arg1
        while s < t:
            if not s:
                revert with 0, 18
            if arg1 / s > !s:
                revert with 0, 17
            s = (arg1 / s) + s / 2
            t = s
            continue 
        if arg2 and t > -1 / arg2:
            revert with 0, 17
        if arg2 * t and impliedVolRate > -1 / arg2 * t:
            revert with 0, 17
        if arg2 * t * impliedVolRate and ext_call.return_data[32] > -1 / arg2 * t * impliedVolRate:
            revert with 0, 17
        if not 100 * 10^6 * arg3:
            revert with 0, 18
        if arg3 > ext_call.return_data[32]:
            if arg4 > 2:
                revert with 0, 33
            if arg4 == 1:
                if arg3 < ext_call.return_data[32]:
                    revert with 0, 17
                if arg3 - ext_call.return_data[32] and arg2 > -1 / arg3 - ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3 > !((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]):
                    revert with 0, 17
                if (arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) > !(arg2 * sub_f3fa3495 / 100):
                    revert with 0, 17
                return (arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (arg2 * sub_f3fa3495 / 100), 
                       arg2 * sub_f3fa3495 / 100,
                       (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                       arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3
        if arg3 >= ext_call.return_data[32]:
            if arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3 > -1:
                revert with 0, 17
            if arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3 > !(arg2 * sub_f3fa3495 / 100):
                revert with 0, 17
            return (arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3) + (arg2 * sub_f3fa3495 / 100), 
                   arg2 * sub_f3fa3495 / 100,
                   0,
                   arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3
        if arg4 > 2:
            revert with 0, 33
        if arg4 != 2:
            if arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3 > -1:
                revert with 0, 17
            if arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3 > !(arg2 * sub_f3fa3495 / 100):
                revert with 0, 17
            return (arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3) + (arg2 * sub_f3fa3495 / 100), 
                   arg2 * sub_f3fa3495 / 100,
                   0,
                   arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3
        if ext_call.return_data[32] < arg3:
            revert with 0, 17
        if ext_call.return_data[32] - arg3 and arg2 > -1 / ext_call.return_data[32] - arg3:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3 > !((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]):
            revert with 0, 17
        if (arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) > !(arg2 * sub_f3fa3495 / 100):
            revert with 0, 17
        return (arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg2 * sub_f3fa3495 / 100), 
               arg2 * sub_f3fa3495 / 100,
               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
               arg2 * t * impliedVolRate * ext_call.return_data[32] / 100 * 10^6 * arg3
    if ext_call.return_data[32] and 100 * 10^6 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if 1 > !(arg1 / 2):
        revert with 0, 17
    s = (arg1 / 2) + 1
    t = arg1
    while s < t:
        if not s:
            revert with 0, 18
        if arg1 / s > !s:
            revert with 0, 17
        s = (arg1 / s) + s / 2
        t = s
        continue 
    if arg2 and t > -1 / arg2:
        revert with 0, 17
    if arg2 * t and impliedVolRate > -1 / arg2 * t:
        revert with 0, 17
    if arg2 * t * impliedVolRate and arg3 > -1 / arg2 * t * impliedVolRate:
        revert with 0, 17
    if not 100 * 10^6 * ext_call.return_data[32]:
        revert with 0, 18
    if arg3 > ext_call.return_data[32]:
        if arg4 > 2:
            revert with 0, 33
        if arg4 == 1:
            if arg3 < ext_call.return_data[32]:
                revert with 0, 17
            if arg3 - ext_call.return_data[32] and arg2 > -1 / arg3 - ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32] > !((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]):
                revert with 0, 17
            if (arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32]) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) > !(arg2 * sub_f3fa3495 / 100):
                revert with 0, 17
            return (arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32]) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (arg2 * sub_f3fa3495 / 100), 
                   arg2 * sub_f3fa3495 / 100,
                   (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                   arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32]
    if arg3 >= ext_call.return_data[32]:
        if arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32] > -1:
            revert with 0, 17
        if arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32] > !(arg2 * sub_f3fa3495 / 100):
            revert with 0, 17
        return (arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32]) + (arg2 * sub_f3fa3495 / 100), 
               arg2 * sub_f3fa3495 / 100,
               0,
               arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32]
    if arg4 > 2:
        revert with 0, 33
    if arg4 != 2:
        if arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32] > -1:
            revert with 0, 17
        if arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32] > !(arg2 * sub_f3fa3495 / 100):
            revert with 0, 17
        return (arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32]) + (arg2 * sub_f3fa3495 / 100), 
               arg2 * sub_f3fa3495 / 100,
               0,
               arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32]
    if ext_call.return_data[32] < arg3:
        revert with 0, 17
    if ext_call.return_data[32] - arg3 and arg2 > -1 / ext_call.return_data[32] - arg3:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32] > !((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]):
        revert with 0, 17
    if (arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32]) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) > !(arg2 * sub_f3fa3495 / 100):
        revert with 0, 17
    return (arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32]) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg2 * sub_f3fa3495 / 100), 
           arg2 * sub_f3fa3495 / 100,
           (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
           arg2 * t * impliedVolRate * arg3 / 100 * 10^6 * ext_call.return_data[32]
}

function exercise(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if options[arg1].field_1280 < 1800:
        revert with 0, 17
    if not stor26[stor3[arg1]]:
        if ownerOf[arg1] != msg.sender:
            if not stor26[stor3[arg1]]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.sender is not eligible to exercise the option'
            if block.timestamp <= options[arg1].field_1280 - 1800:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.sender is not eligible to exercise the option'
    else:
        if ownerOf[arg1] != msg.sender:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.sender is not eligible to exercise the option'
            if block.timestamp <= options[arg1].field_1280 - 1800:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.sender is not eligible to exercise the option'
    if block.timestamp > options[arg1].field_1280:
        revert with 0, 'Option has expired'
    if uint8(options[arg1].field_0) > 3:
        revert with 0, 33
    if uint8(options[arg1].field_0) != 1:
        revert with 0, 'Wrong state'
    uint8(options[arg1].field_0) = 2
    if uint8(options[arg1].field_0) > 3:
        revert with 0, 33
    if uint8(options[arg1].field_1536) > 2:
        revert with 0, 33
    require ext_code.size(priceProviderAddress)
    staticcall priceProviderAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if uint8(options[arg1].field_1536) > 2:
        revert with 0, 33
    if uint8(options[arg1].field_1536) != 2:
        if options[arg1].field_256 < ext_call.return_data[32]:
            revert with 0, 'Current price is too high'
        if options[arg1].field_256 < ext_call.return_data[32]:
            revert with 0, 17
        if options[arg1].field_256 - ext_call.return_data[32] and options[arg1].field_512 > -1 / options[arg1].field_256 - ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        require ext_code.size(poolAddress)
        if (options[arg1].field_256 * options[arg1].field_512) - (ext_call.return_data[32] * options[arg1].field_512) / ext_call.return_data[32] <= options[arg1].field_768:
            call poolAddress.0x81b34f15 with:
                 gas gas_remaining wei
                args arg1, ownerOf[arg1], (options[arg1].field_256 * options[arg1].field_512) - (ext_call.return_data[32] * options[arg1].field_512) / ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg1]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[stor3[arg1]] < 1:
                    revert with 0, 17
                if balanceOf[stor3[arg1]] - 1 != stor9[arg1]:
                    tokenOfOwnerByIndex[stor3[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1]
                    stor9[stor8[stor3[arg1]][stor4[stor3[arg1]] - 1]] = stor9[arg1]
                stor9[arg1] = 0
                tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1] = 0
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor11[arg1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[arg1]
            stor11[arg1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            approved[arg1] = 0
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[arg1], 0, arg1);
            if balanceOf[stor3[arg1]] < 1:
                revert with 0, 17
            balanceOf[stor3[arg1]]--
            ownerOf[arg1] = 0
            emit Transfer(ownerOf[arg1], 0, arg1);
            if bool(stor7[arg1].field_0):
                if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor7[arg1].field_0):
                    if bool(stor7[arg1].field_0):
                        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < uint255(stor7[arg1].field_0) * 0.5:
                            idx = 0
                            while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < stor7[arg1].field_1 % 128:
                            idx = 0
                            while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
            else:
                if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor7[arg1].field_1 % 128:
                    if bool(stor7[arg1].field_0):
                        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < uint255(stor7[arg1].field_0) * 0.5:
                            idx = 0
                            while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < stor7[arg1].field_1 % 128:
                            idx = 0
                            while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
            emit Exercise(((options[arg1].field_256 * options[arg1].field_512) - (ext_call.return_data[32] * options[arg1].field_512) / ext_call.return_data[32]), arg1);
        else:
            call poolAddress.0x81b34f15 with:
                 gas gas_remaining wei
                args arg1, ownerOf[arg1], options[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg1]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[stor3[arg1]] < 1:
                    revert with 0, 17
                if balanceOf[stor3[arg1]] - 1 != stor9[arg1]:
                    tokenOfOwnerByIndex[stor3[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1]
                    stor9[stor8[stor3[arg1]][stor4[stor3[arg1]] - 1]] = stor9[arg1]
                stor9[arg1] = 0
                tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1] = 0
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor11[arg1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[arg1]
            stor11[arg1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            approved[arg1] = 0
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[arg1], 0, arg1);
            if balanceOf[stor3[arg1]] < 1:
                revert with 0, 17
            balanceOf[stor3[arg1]]--
            ownerOf[arg1] = 0
            emit Transfer(ownerOf[arg1], 0, arg1);
            if bool(stor7[arg1].field_0):
                if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor7[arg1].field_0):
                    if bool(stor7[arg1].field_0):
                        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < uint255(stor7[arg1].field_0) * 0.5:
                            idx = 0
                            while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < stor7[arg1].field_1 % 128:
                            idx = 0
                            while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
            else:
                if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor7[arg1].field_1 % 128:
                    if bool(stor7[arg1].field_0):
                        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < uint255(stor7[arg1].field_0) * 0.5:
                            idx = 0
                            while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < stor7[arg1].field_1 % 128:
                            idx = 0
                            while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
            emit Exercise(options[arg1].field_768, arg1);
    else:
        if options[arg1].field_256 > ext_call.return_data[32]:
            revert with 0, 'Current price is too low'
        if ext_call.return_data[32] < options[arg1].field_256:
            revert with 0, 17
        if ext_call.return_data[32] - options[arg1].field_256 and options[arg1].field_512 > -1 / ext_call.return_data[32] - options[arg1].field_256:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        require ext_code.size(poolAddress)
        if (ext_call.return_data[32] * options[arg1].field_512) - (options[arg1].field_256 * options[arg1].field_512) / ext_call.return_data[32] <= options[arg1].field_768:
            call poolAddress.0x81b34f15 with:
                 gas gas_remaining wei
                args arg1, ownerOf[arg1], (ext_call.return_data[32] * options[arg1].field_512) - (options[arg1].field_256 * options[arg1].field_512) / ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg1]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[stor3[arg1]] < 1:
                    revert with 0, 17
                if balanceOf[stor3[arg1]] - 1 != stor9[arg1]:
                    tokenOfOwnerByIndex[stor3[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1]
                    stor9[stor8[stor3[arg1]][stor4[stor3[arg1]] - 1]] = stor9[arg1]
                stor9[arg1] = 0
                tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1] = 0
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor11[arg1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[arg1]
            stor11[arg1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            approved[arg1] = 0
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[arg1], 0, arg1);
            if balanceOf[stor3[arg1]] < 1:
                revert with 0, 17
            balanceOf[stor3[arg1]]--
            ownerOf[arg1] = 0
            emit Transfer(ownerOf[arg1], 0, arg1);
            if bool(stor7[arg1].field_0):
                if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor7[arg1].field_0):
                    if bool(stor7[arg1].field_0):
                        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < uint255(stor7[arg1].field_0) * 0.5:
                            idx = 0
                            while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < stor7[arg1].field_1 % 128:
                            idx = 0
                            while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
            else:
                if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor7[arg1].field_1 % 128:
                    if bool(stor7[arg1].field_0):
                        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < uint255(stor7[arg1].field_0) * 0.5:
                            idx = 0
                            while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < stor7[arg1].field_1 % 128:
                            idx = 0
                            while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
            emit Exercise(((ext_call.return_data[32] * options[arg1].field_512) - (options[arg1].field_256 * options[arg1].field_512) / ext_call.return_data[32]), arg1);
        else:
            call poolAddress.0x81b34f15 with:
                 gas gas_remaining wei
                args arg1, ownerOf[arg1], options[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg1]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[stor3[arg1]] < 1:
                    revert with 0, 17
                if balanceOf[stor3[arg1]] - 1 != stor9[arg1]:
                    tokenOfOwnerByIndex[stor3[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1]
                    stor9[stor8[stor3[arg1]][stor4[stor3[arg1]] - 1]] = stor9[arg1]
                stor9[arg1] = 0
                tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1] = 0
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor11[arg1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[arg1]
            stor11[arg1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            approved[arg1] = 0
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[arg1], 0, arg1);
            if balanceOf[stor3[arg1]] < 1:
                revert with 0, 17
            balanceOf[stor3[arg1]]--
            ownerOf[arg1] = 0
            emit Transfer(ownerOf[arg1], 0, arg1);
            if bool(stor7[arg1].field_0):
                if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor7[arg1].field_0):
                    if bool(stor7[arg1].field_0):
                        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < uint255(stor7[arg1].field_0) * 0.5:
                            idx = 0
                            while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < stor7[arg1].field_1 % 128:
                            idx = 0
                            while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
            else:
                if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor7[arg1].field_1 % 128:
                    if bool(stor7[arg1].field_0):
                        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < uint255(stor7[arg1].field_0) * 0.5:
                            idx = 0
                            while (uint255(stor7[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        stor7[arg1].field_0 = 0
                        if 31 < stor7[arg1].field_1 % 128:
                            idx = 0
                            while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                                stor7[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
            emit Exercise(options[arg1].field_768, arg1);
}



}

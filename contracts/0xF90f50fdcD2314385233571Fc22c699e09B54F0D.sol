contract main {




// =====================  Runtime code  =====================


#
#  - initialize(uint256 arg1, address arg2, string arg3, string arg4, address arg5)
#  - getPaid(address arg1)
#  - withdrawCollateral(uint256 arg1, uint256 arg2)
#  - destroyVault(uint256 arg1)
#  - setOpeningFee(uint256 arg1)
#  - depositCollateral(uint256 arg1, uint256 arg2)
#
const DEFAULT_ADMIN_ROLE = 0

const TREASURY_ROLE = 0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc


array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor152;
array of uint256 tokenByIndex;
mapping of uint256 stor154;
uint256 stor201;
mapping of struct roleAdmin;
uint256 vaultCounts;
uint256 minimumCollateralPercentage;
uint256 debtCeiling;
uint256 closingFee;
uint256 openingFee;
uint256 tokenPeg;
uint256 totalDebt;
uint256 debtRatio;
uint256 gainRatio;
mapping of uint256 tokenDebt;
address priceSourceAddress;
address tokenAddress;
address stor313;
address stabilityPoolAddress;
address gatewayAddress;
uint256 treasury;
mapping of uint8 stor317;
mapping of uint256 vaultCollateral;
mapping of uint256 vaultDebt;
uint256 minimumDebt;
uint8 mintingPaused;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136640;

function stabilityPool() payable {
    return stabilityPoolAddress
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function gateway() payable {
    return gatewayAddress
}

function totalSupply() payable {
    return tokenByIndex.length
}

function closingFee() payable {
    return closingFee
}

function priceSource() payable {
    return priceSourceAddress
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function minimumCollateralPercentage() payable {
    return minimumCollateralPercentage
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function gainRatio() payable {
    return gainRatio
}

function vaultCounts() payable {
    return vaultCounts
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function treasury() payable {
    return treasury
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function openingFee() payable {
    return openingFee
}

function tokenDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenDebt[arg1]
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getPricePeg() payable {
    return tokenPeg
}

function minimumDebt() payable {
    return minimumDebt
}

function tokenPeg() payable {
    return tokenPeg
}

function debtRatio() payable {
    return debtRatio
}

function vaultDebt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vaultDebt[arg1]
}

function vaultCollateral(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vaultCollateral[arg1]
}

function vaultExists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor317[arg1])
}

function mintingPaused() payable {
    return bool(mintingPaused)
}

function debtCeiling() payable {
    return debtCeiling
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function token() payable {
    return tokenAddress
}

function totalDebt() payable {
    return totalDebt
}

function _fallback() payable {
    revert
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return ''
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function getPriceSource() payable {
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    return ext_call.return_data[32]
}

function supportsInterface(bytes4 arg1) payable {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    revert with 0, 'transfer: disabled'
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    revert with 0, 'transfer: disabled'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    revert with 0, 'transfer: disabled'
}

function setTreasury(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc][address(msg.sender)].field_0:
        if not stor317[arg1]:
            revert with 0, 'Vault does not exist'
        treasury = arg1
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
    if not msg.sender + 10240:
        idx = 65
        s = 0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc
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
    revert with 0, 'Strings: hex length insufficient'
}

function setTokenPeg(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc][address(msg.sender)].field_0:
        if arg1 <= 0:
            revert with 0, 'Peg cannot be zero'
        tokenPeg = arg1
        emit 0x657d2b8c: arg1
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
    if not msg.sender + 10240:
        idx = 65
        s = 0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc
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
    revert with 0, 'Strings: hex length insufficient'
}

function setMintingPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc][address(msg.sender)].field_0:
        if arg1 != not mintingPaused:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Minting paused already set to this value.'
        mintingPaused = uint8(arg1)
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
    if not msg.sender + 10240:
        idx = 65
        s = 0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc
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
    revert with 0, 'Strings: hex length insufficient'
}

function setPriceSource(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc][address(msg.sender)].field_0:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Price source cannot be zero address'
        priceSourceAddress = arg1
        emit 0x96e1b2ba: arg1
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
    if not msg.sender + 10240:
        idx = 65
        s = 0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc
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
    revert with 0, 'Strings: hex length insufficient'
}

function setDebtCeiling(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc][address(msg.sender)].field_0:
        if debtCeiling > arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'setCeiling: Must be over the amount of current debt ceiling.'
        debtCeiling = arg1
        emit 0x9e883752: arg1
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
    if not msg.sender + 10240:
        idx = 65
        s = 0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc
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
    revert with 0, 'Strings: hex length insufficient'
}

function createVault() payable {
    vaultCounts++
    stor317[stor301] = 1
    emit CreateVault(vaultCounts, msg.sender);
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor301]:
        revert with 0, 'ERC721: token already minted'
    stor154[stor301] = tokenByIndex.length
    tokenByIndex.length++
    stor72A1[stor153.length] = vaultCounts
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = vaultCounts
            stor152[stor301] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[stor301] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[stor301]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[stor301]
        stor154[stor301] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor301] = msg.sender
    emit Transfer(0, msg.sender, vaultCounts);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function setMinimumDebt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc
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
        revert with 0, 'Strings: hex length insufficient'
    if arg1 <= 0:
        revert with 0, 'Minimum debt cannot be zero'
    if minimumDebt >= debtCeiling:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Minimum debt cannot be greater than debt ceiling'
    minimumDebt = arg1
    emit 0xe9031d10: arg1
}

function setGateway(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc
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
        revert with 0, 'Strings: hex length insufficient'
    if not arg1:
        revert with 0, 'Gateway cannot be zero address'
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must be a contract to be the gateway.'
    gatewayAddress = arg1
    emit 0x138dfef1: arg1
}

function setMinimumCollateralPercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc][address(msg.sender)].field_0:
        if arg1 < 110:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Minimum collateral percentage must be within range 110-400'
        if arg1 > 400:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Minimum collateral percentage must be within range 110-400'
        minimumCollateralPercentage = arg1
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
    if not msg.sender + 10240:
        idx = 65
        s = 0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc
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
    revert with 0, 'Strings: hex length insufficient'
}

function setStabilityPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc
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
        revert with 0, 'Strings: hex length insufficient'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stability pool cannot be zero address'
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must be a contract to be the stability pool.'
    stabilityPoolAddress = arg1
    emit 0xeeec3ab9: arg1
}

function setDebtRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc
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
        revert with 0, 'Strings: hex length insufficient'
    if 10000 > !closingFee:
        revert with 0, 17
    if gainRatio > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if 1000 * gainRatio / arg1 and closingFee + 10000 > -1 / 1000 * gainRatio / arg1:
        revert with 0, 17
    require (10000 * 1000 * gainRatio / arg1) + (closingFee * 1000 * gainRatio / arg1) < 100 * 10^6
    debtRatio = arg1
    emit 0x29c334aa: arg1
}

function setGainRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc
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
        revert with 0, 'Strings: hex length insufficient'
    if 10000 > !closingFee:
        revert with 0, 17
    if arg1 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not debtRatio:
        revert with 0, 18
    if 1000 * arg1 / debtRatio and closingFee + 10000 > -1 / 1000 * arg1 / debtRatio:
        revert with 0, 17
    require (10000 * 1000 * arg1 / debtRatio) + (closingFee * 1000 * arg1 / debtRatio) < 100 * 10^6
    gainRatio = arg1
    emit 0xee1adee4: arg1
}

function setClosingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0xfee1dcbdb91df27212a29bc27177c840cf2f819ecf2187432e1fac86c2dd5dfc
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
        revert with 0, 'Strings: hex length insufficient'
    if arg1 > 250:
        revert with 0, 'Closing fee cannot be above 1%'
    if 10000 > !arg1:
        revert with 0, 17
    if gainRatio > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not debtRatio:
        revert with 0, 18
    if 1000 * gainRatio / debtRatio and arg1 + 10000 > -1 / 1000 * gainRatio / debtRatio:
        revert with 0, 17
    require (10000 * 1000 * gainRatio / debtRatio) + (arg1 * 1000 * gainRatio / debtRatio) < 100 * 10^6
    closingFee = arg1
    emit 0x2be5116c: arg1
}

function checkCost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor317[arg1]:
        revert with 0, 'Vault must exist'
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    if not ext_call.return_data[32]:
        revert with 0, 'Price must be above 0'
    if not tokenPeg:
        revert with 0, 'Peg must be above 0'
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    if vaultCollateral[arg1] and ext_call.return_data[32] > -1 / vaultCollateral[arg1]:
        revert with 0, 17
    if vaultDebt[arg1] and tokenPeg > -1 / vaultDebt[arg1]:
        revert with 0, 17
    if vaultCollateral[arg1] * ext_call.return_data[32] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not tokenPeg:
        revert with 0, 18
    if not debtRatio:
        revert with 0, 18
    return (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio)
}

function transferVault(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not stor317[arg1]:
        revert with 0, 'Vault does not exist'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if gatewayAddress != msg.sender:
            revert with 0, 'Vault is not owned by you'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor103[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor103[arg1]] - 1 != stor152[arg1]:
            tokenOfOwnerByIndex[stor103[arg1]][stor152[arg1]] = tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1]
            stor152[stor151[stor103[arg1]][stor104[stor103[arg1]] - 1]] = stor152[arg1]
        stor152[arg1] = 0
        tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor154[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor154[arg1]] = tokenByIndex[tokenByIndex.length]
    stor154[stor153[stor153.length]] = stor154[arg1]
    stor154[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor103[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor103[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if not arg2:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg1]:
        revert with 0, 'ERC721: token already minted'
    stor154[arg1] = tokenByIndex.length
    tokenByIndex.length++
    stor72A1[stor153.length] = arg1
    if arg2:
        if arg2:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg1
            stor152[arg1] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg1]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg1]
        stor154[arg1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg1] = arg2
    emit Transfer(0, arg2, arg1);
    emit TransferVault(arg1, msg.sender, arg2);
}

function name() payable {
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor101.length):
            if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor101.length):
                if 31 < uint255(stor101.length) * 0.5:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor101.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(uint255(stor101.length) * 0.5) + 192 len ceil32(uint255(stor101.length) * 0.5)] = mem[128 len ceil32(uint255(stor101.length) * 0.5)]
        if ceil32(uint255(stor101.length) * 0.5) > uint255(stor101.length) * 0.5:
            mem[(uint255(stor101.length) * 0.5) + ceil32(uint255(stor101.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)], mem[(2 * ceil32(uint255(stor101.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor101.length) * 0.5)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 0, 34
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor101.length):
            if 31 < uint255(stor101.length) * 0.5:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while (uint255(stor101.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() payable {
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor102.length):
            if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor102.length):
                if 31 < uint255(stor102.length) * 0.5:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor102.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(uint255(stor102.length) * 0.5) + 192 len ceil32(uint255(stor102.length) * 0.5)] = mem[128 len ceil32(uint255(stor102.length) * 0.5)]
        if ceil32(uint255(stor102.length) * 0.5) > uint255(stor102.length) * 0.5:
            mem[(uint255(stor102.length) * 0.5) + ceil32(uint255(stor102.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)], mem[(2 * ceil32(uint255(stor102.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor102.length) * 0.5)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 0, 34
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor102.length):
            if 31 < uint255(stor102.length) * 0.5:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while (uint255(stor102.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function checkLiquidation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor317[arg1]:
        revert with 0, 'Vault must exist'
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    if not ext_call.return_data[32]:
        revert with 0, 'Price must be above 0'
    if not tokenPeg:
        revert with 0, 'Peg must be above 0'
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    if vaultCollateral[arg1] and ext_call.return_data[32] > -1 / vaultCollateral[arg1]:
        revert with 0, 17
    if vaultDebt[arg1] and tokenPeg > -1 / vaultDebt[arg1]:
        revert with 0, 17
    if vaultCollateral[arg1] * ext_call.return_data[32] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if vaultDebt[arg1] * tokenPeg <= 0:
        revert with 0, 'Cannot have zero debt'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        if 100 * vaultCollateral[arg1] * ext_call.return_data[32] and 1 > -1 / 100 * vaultCollateral[arg1] * ext_call.return_data[32]:
            revert with 0, 17
        if not vaultDebt[arg1] * tokenPeg:
            revert with 0, 18
        if 100 * vaultCollateral[arg1] * ext_call.return_data[32] / vaultDebt[arg1] * tokenPeg >= minimumCollateralPercentage:
            return 0
    else:
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            if 100 * vaultCollateral[arg1] * ext_call.return_data[32] and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / 100 * vaultCollateral[arg1] * ext_call.return_data[32]:
                revert with 0, 17
            if not vaultDebt[arg1] * tokenPeg:
                revert with 0, 18
            if 100 * vaultCollateral[arg1] * ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 18) / vaultDebt[arg1] * tokenPeg >= minimumCollateralPercentage:
                return 0
        else:
            s = 10
            t = 1
            idx = uint8(-ext_call.return_data[31 len 1] + 18)
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if 100 * vaultCollateral[arg1] * ext_call.return_data[32] and s * t > -1 / 100 * vaultCollateral[arg1] * ext_call.return_data[32]:
                revert with 0, 17
            if not vaultDebt[arg1] * tokenPeg:
                revert with 0, 18
            if 100 * vaultCollateral[arg1] * ext_call.return_data[32] * s * t / vaultDebt[arg1] * tokenPeg >= minimumCollateralPercentage:
                return 0
    return 1
}

function checkExtract(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor317[arg1]:
        revert with 0, 'Vault must exist'
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    if not ext_call.return_data[32]:
        revert with 0, 'Price must be above 0'
    if not tokenPeg:
        revert with 0, 'Peg must be above 0'
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    if vaultCollateral[arg1] and ext_call.return_data[32] > -1 / vaultCollateral[arg1]:
        revert with 0, 17
    if vaultDebt[arg1] and tokenPeg > -1 / vaultDebt[arg1]:
        revert with 0, 17
    if vaultCollateral[arg1] * ext_call.return_data[32] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        require ext_code.size(priceSourceAddress)
        staticcall priceSourceAddress.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if ext_call.return_data[32] < 0:
            revert with 0, 'Chainlink returned a negative price'
        if ext_call.return_data[32] > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if 10 * ext_call.return_data[32] and debtRatio > -1 / 10 * ext_call.return_data[32]:
            revert with 0, 17
        if vaultDebt[arg1] * tokenPeg and gainRatio > -1 / vaultDebt[arg1] * tokenPeg:
            revert with 0, 17
        if not 10 * ext_call.return_data[32] * debtRatio:
            revert with 0, 18
        return (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio)
    if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
        require ext_code.size(priceSourceAddress)
        staticcall priceSourceAddress.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if ext_call.return_data[32] < 0:
            revert with 0, 'Chainlink returned a negative price'
        if ext_call.return_data[32] > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if 10 * ext_call.return_data[32] and debtRatio > -1 / 10 * ext_call.return_data[32]:
            revert with 0, 17
        if vaultDebt[arg1] * tokenPeg and gainRatio > -1 / vaultDebt[arg1] * tokenPeg:
            revert with 0, 17
        if not 10 * ext_call.return_data[32] * debtRatio:
            revert with 0, 18
        if not 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 18
        return (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18))
    s = 10
    t = 1
    idx = uint8(-ext_call.return_data[31 len 1] + 18)
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    if ext_call.return_data[32] > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    if 10 * ext_call.return_data[32] and debtRatio > -1 / 10 * ext_call.return_data[32]:
        revert with 0, 17
    if vaultDebt[arg1] * tokenPeg and gainRatio > -1 / vaultDebt[arg1] * tokenPeg:
        revert with 0, 17
    if not 10 * ext_call.return_data[32] * debtRatio:
        revert with 0, 18
    if not s * t:
        revert with 0, 18
    return (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t)
}

function borrowToken(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor317[arg1]:
        revert with 0, 'Vault does not exist'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if gatewayAddress != msg.sender:
            revert with 0, 'Vault is not owned by you'
    if stor201 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor201 = 2
    if mintingPaused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Minting for this bank is paused. Deposits, payments, and withdrawals are all still functional'
    if arg2 <= 0:
        revert with 0, 'Must borrow non-zero amount'
    if totalDebt > !arg2:
        revert with 0, 17
    if totalDebt + arg2 > debtCeiling:
        revert with 0, 'Cannot mint over debt ceiling.'
    if vaultDebt[arg1] > !arg2:
        revert with 0, 17
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    if not ext_call.return_data[32]:
        revert with 0, 'Price must be above 0'
    if not tokenPeg:
        revert with 0, 'Peg must be above 0'
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    if vaultCollateral[arg1] and ext_call.return_data[32] > -1 / vaultCollateral[arg1]:
        revert with 0, 17
    if vaultDebt[arg1] + arg2 and tokenPeg > -1 / vaultDebt[arg1] + arg2:
        revert with 0, 17
    if vaultCollateral[arg1] * ext_call.return_data[32] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        if 100 * vaultCollateral[arg1] * ext_call.return_data[32] and 1 > -1 / 100 * vaultCollateral[arg1] * ext_call.return_data[32]:
            revert with 0, 17
        if not (vaultDebt[arg1] * tokenPeg) + (arg2 * tokenPeg):
            revert with 0, 18
        if minimumCollateralPercentage > 100 * vaultCollateral[arg1] * ext_call.return_data[32] / (vaultDebt[arg1] * tokenPeg) + (arg2 * tokenPeg):
            revert with 0, 'Borrow would put vault below minimum collateral percentage'
    else:
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            if 100 * vaultCollateral[arg1] * ext_call.return_data[32] and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / 100 * vaultCollateral[arg1] * ext_call.return_data[32]:
                revert with 0, 17
            if not (vaultDebt[arg1] * tokenPeg) + (arg2 * tokenPeg):
                revert with 0, 18
            if minimumCollateralPercentage > 100 * vaultCollateral[arg1] * ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 18) / (vaultDebt[arg1] * tokenPeg) + (arg2 * tokenPeg):
                revert with 0, 'Borrow would put vault below minimum collateral percentage'
        else:
            s = 10
            t = 1
            idx = uint8(-ext_call.return_data[31 len 1] + 18)
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if 100 * vaultCollateral[arg1] * ext_call.return_data[32] and s * t > -1 / 100 * vaultCollateral[arg1] * ext_call.return_data[32]:
                revert with 0, 17
            if not (vaultDebt[arg1] * tokenPeg) + (arg2 * tokenPeg):
                revert with 0, 18
            if minimumCollateralPercentage > 100 * vaultCollateral[arg1] * ext_call.return_data[32] * s * t / (vaultDebt[arg1] * tokenPeg) + (arg2 * tokenPeg):
                revert with 0, 'Borrow would put vault below minimum collateral percentage'
    if vaultDebt[arg1] + arg2 < minimumDebt:
        revert with 0, 'Borrow needs to be larger than the minimum debt'
    if arg2 > !totalDebt:
        revert with 0, 17
    if arg2 + totalDebt < totalDebt:
        revert with 0, 1
    if arg2 + totalDebt > debtCeiling:
        revert with 0, 'Cannot exceed debt ceiling for this vault'
    if arg2 > !vaultDebt[arg1]:
        revert with 0, 17
    if arg2 + vaultDebt[arg1] < vaultDebt[arg1]:
        revert with 0, 1
    if totalDebt > !arg2:
        revert with 0, 17
    if totalDebt + arg2 > debtCeiling:
        revert with 0, 'Debt can not go above debt ceiling'
    totalDebt += arg2
    vaultDebt[arg1] += arg2
    require ext_code.size(stor313)
    call stor313.mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BorrowToken(arg1, arg2);
    stor201 = 1
}

function payBackToken(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor317[arg1]:
        revert with 0, 'Vault does not exist'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if gatewayAddress != msg.sender:
            revert with 0, 'Vault is not owned by you'
    if stor201 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor201 = 2
    require ext_code.size(stor313)
    staticcall stor313.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Token balance too low'
    if arg2 > vaultDebt[arg1]:
        revert with 0, 'Vault debt less than amount to pay back'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        require ext_code.size(priceSourceAddress)
        staticcall priceSourceAddress.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if ext_call.return_data[32] < 0:
            revert with 0, 'Chainlink returned a negative price'
        if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if arg2 and closingFee > -1 / arg2:
            revert with 0, 17
        if arg2 * closingFee and tokenPeg > -1 / arg2 * closingFee:
            revert with 0, 17
        if not 10000 * ext_call.return_data[32]:
            revert with 0, 18
        if totalDebt < arg2:
            revert with 0, 'Cannot get rid of more debt than exists.'
        if arg2 > vaultDebt[arg1]:
            revert with 0, 'Cannot get rid of more debt than user has'
        if totalDebt < arg2:
            revert with 0, 17
        if totalDebt - arg2 > totalDebt:
            revert with 0, 1
        if vaultDebt[arg1] < arg2:
            revert with 0, 17
        if vaultDebt[arg1] - arg2 > vaultDebt[arg1]:
            revert with 0, 1
        if arg2 > totalDebt:
            revert with 0, 'Debt can not go below 0.'
        if totalDebt < arg2:
            revert with 0, 17
        totalDebt -= arg2
        vaultDebt[arg1] -= arg2
        if arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] > vaultCollateral[arg1]:
            revert with 0, 'Cannot remove more than the deposited collateral'
        if vaultCollateral[arg1] < arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32]:
            revert with 0, 17
        if vaultCollateral[arg1] - (arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32]) > vaultCollateral[arg1]:
            revert with 0, 1
        vaultCollateral[arg1] -= arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32]
        if vaultCollateral[stor316] > !(arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32]):
            revert with 0, 17
        if vaultCollateral[stor316] + (arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32]) < vaultCollateral[stor316]:
            revert with 0, 1
        vaultCollateral[stor316] += arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32]
        require ext_code.size(stor313)
        call stor313.burn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit PayBackToken(arg1, arg2, arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32]);
    else:
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            require ext_code.size(priceSourceAddress)
            staticcall priceSourceAddress.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] < 0:
                revert with 0, 'Chainlink returned a negative price'
            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if arg2 and closingFee > -1 / arg2:
                revert with 0, 17
            if arg2 * closingFee and tokenPeg > -1 / arg2 * closingFee:
                revert with 0, 17
            if not 10000 * ext_call.return_data[32]:
                revert with 0, 18
            if not 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            if totalDebt < arg2:
                revert with 0, 'Cannot get rid of more debt than exists.'
            if arg2 > vaultDebt[arg1]:
                revert with 0, 'Cannot get rid of more debt than user has'
            if totalDebt < arg2:
                revert with 0, 17
            if totalDebt - arg2 > totalDebt:
                revert with 0, 1
            if vaultDebt[arg1] < arg2:
                revert with 0, 17
            if vaultDebt[arg1] - arg2 > vaultDebt[arg1]:
                revert with 0, 1
            if arg2 > totalDebt:
                revert with 0, 'Debt can not go below 0.'
            if totalDebt < arg2:
                revert with 0, 17
            totalDebt -= arg2
            vaultDebt[arg1] -= arg2
            if arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18) > vaultCollateral[arg1]:
                revert with 0, 'Cannot remove more than the deposited collateral'
            if vaultCollateral[arg1] < arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 17
            if vaultCollateral[arg1] - (arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)) > vaultCollateral[arg1]:
                revert with 0, 1
            vaultCollateral[arg1] -= arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)
            if vaultCollateral[stor316] > !(arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)):
                revert with 0, 17
            if vaultCollateral[stor316] + (arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)) < vaultCollateral[stor316]:
                revert with 0, 1
            vaultCollateral[stor316] += arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)
            require ext_code.size(stor313)
            call stor313.burn(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit PayBackToken(arg1, arg2, arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18));
        else:
            s = 10
            t = 1
            idx = uint8(-ext_call.return_data[31 len 1] + 18)
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            require ext_code.size(priceSourceAddress)
            staticcall priceSourceAddress.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] < 0:
                revert with 0, 'Chainlink returned a negative price'
            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if arg2 and closingFee > -1 / arg2:
                revert with 0, 17
            if arg2 * closingFee and tokenPeg > -1 / arg2 * closingFee:
                revert with 0, 17
            if not 10000 * ext_call.return_data[32]:
                revert with 0, 18
            if not s * t:
                revert with 0, 18
            if totalDebt < arg2:
                revert with 0, 'Cannot get rid of more debt than exists.'
            if arg2 > vaultDebt[arg1]:
                revert with 0, 'Cannot get rid of more debt than user has'
            if totalDebt < arg2:
                revert with 0, 17
            if totalDebt - arg2 > totalDebt:
                revert with 0, 1
            if vaultDebt[arg1] < arg2:
                revert with 0, 17
            if vaultDebt[arg1] - arg2 > vaultDebt[arg1]:
                revert with 0, 1
            if arg2 > totalDebt:
                revert with 0, 'Debt can not go below 0.'
            if totalDebt < arg2:
                revert with 0, 17
            totalDebt -= arg2
            vaultDebt[arg1] -= arg2
            if arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t > vaultCollateral[arg1]:
                revert with 0, 'Cannot remove more than the deposited collateral'
            if vaultCollateral[arg1] < arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t:
                revert with 0, 17
            if vaultCollateral[arg1] - (arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t) > vaultCollateral[arg1]:
                revert with 0, 1
            vaultCollateral[arg1] -= arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t
            if vaultCollateral[stor316] > !(arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t):
                revert with 0, 17
            if vaultCollateral[stor316] + (arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t) < vaultCollateral[stor316]:
                revert with 0, 1
            vaultCollateral[stor316] += arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t
            require ext_code.size(stor313)
            call stor313.burn(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit PayBackToken(arg1, arg2, arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t);
    stor201 = 1
}

function liquidateVault(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stabilityPoolAddress:
        if stabilityPoolAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'buyRiskyVault disabled for public'
    if stor201 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor201 = 2
    if not stor317[arg1]:
        revert with 0, 'Vault does not exist'
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    if not ext_call.return_data[32]:
        revert with 0, 'Price must be above 0'
    if not tokenPeg:
        revert with 0, 'Peg must be above 0'
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    if vaultCollateral[arg1] and ext_call.return_data[32] > -1 / vaultCollateral[arg1]:
        revert with 0, 17
    if vaultDebt[arg1] and tokenPeg > -1 / vaultDebt[arg1]:
        revert with 0, 17
    if vaultCollateral[arg1] * ext_call.return_data[32] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if vaultDebt[arg1] * tokenPeg <= 0:
        revert with 0, 'Vault has no debt'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        if 100 * vaultCollateral[arg1] * ext_call.return_data[32] and 1 > -1 / 100 * vaultCollateral[arg1] * ext_call.return_data[32]:
            revert with 0, 17
        if not vaultDebt[arg1] * tokenPeg:
            revert with 0, 18
        if 100 * vaultCollateral[arg1] * ext_call.return_data[32] / vaultDebt[arg1] * tokenPeg >= minimumCollateralPercentage:
            revert with 0, 'Vault is not below minimum collateral percentage'
    else:
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            if 100 * vaultCollateral[arg1] * ext_call.return_data[32] and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / 100 * vaultCollateral[arg1] * ext_call.return_data[32]:
                revert with 0, 17
            if not vaultDebt[arg1] * tokenPeg:
                revert with 0, 18
            if 100 * vaultCollateral[arg1] * ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 18) / vaultDebt[arg1] * tokenPeg >= minimumCollateralPercentage:
                revert with 0, 'Vault is not below minimum collateral percentage'
        else:
            s = 10
            t = 1
            idx = uint8(-ext_call.return_data[31 len 1] + 18)
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if 100 * vaultCollateral[arg1] * ext_call.return_data[32] and s * t > -1 / 100 * vaultCollateral[arg1] * ext_call.return_data[32]:
                revert with 0, 17
            if not vaultDebt[arg1] * tokenPeg:
                revert with 0, 18
            if 100 * vaultCollateral[arg1] * ext_call.return_data[32] * s * t / vaultDebt[arg1] * tokenPeg >= minimumCollateralPercentage:
                revert with 0, 'Vault is not below minimum collateral percentage'
    if not stor317[arg1]:
        revert with 0, 'Vault must exist'
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    if not ext_call.return_data[32]:
        revert with 0, 'Price must be above 0'
    if not tokenPeg:
        revert with 0, 'Peg must be above 0'
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Chainlink returned a negative price'
    if vaultCollateral[arg1] and ext_call.return_data[32] > -1 / vaultCollateral[arg1]:
        revert with 0, 17
    if vaultDebt[arg1] and tokenPeg > -1 / vaultDebt[arg1]:
        revert with 0, 17
    if vaultCollateral[arg1] * ext_call.return_data[32] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        require ext_code.size(priceSourceAddress)
        staticcall priceSourceAddress.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if ext_call.return_data[32] < 0:
            revert with 0, 'Chainlink returned a negative price'
        if ext_call.return_data[32] > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if 10 * ext_call.return_data[32] and debtRatio > -1 / 10 * ext_call.return_data[32]:
            revert with 0, 17
        if vaultDebt[arg1] * tokenPeg and gainRatio > -1 / vaultDebt[arg1] * tokenPeg:
            revert with 0, 17
        if not 10 * ext_call.return_data[32] * debtRatio:
            revert with 0, 18
        if not stor317[arg1]:
            revert with 0, 'Vault must exist'
        require ext_code.size(priceSourceAddress)
        staticcall priceSourceAddress.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if ext_call.return_data[32] < 0:
            revert with 0, 'Chainlink returned a negative price'
        if not ext_call.return_data[32]:
            revert with 0, 'Price must be above 0'
        if not tokenPeg:
            revert with 0, 'Peg must be above 0'
        require ext_code.size(priceSourceAddress)
        staticcall priceSourceAddress.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if ext_call.return_data[32] < 0:
            revert with 0, 'Chainlink returned a negative price'
        if vaultCollateral[arg1] and ext_call.return_data[32] > -1 / vaultCollateral[arg1]:
            revert with 0, 17
        if vaultDebt[arg1] and tokenPeg > -1 / vaultDebt[arg1]:
            revert with 0, 17
        if vaultCollateral[arg1] * ext_call.return_data[32] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if not tokenPeg:
            revert with 0, 18
        if not debtRatio:
            revert with 0, 18
        require ext_code.size(stor313)
        staticcall stor313.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
            revert with 0, 'Token balance too low to pay off outstanding debt'
        require ext_code.size(stor313)
        call stor313.burn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if vaultDebt[arg1] < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
            revert with 0, 17
        vaultDebt[arg1] -= vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(-ext_call.return_data[31 len 1] + 18):
            require ext_code.size(priceSourceAddress)
            staticcall priceSourceAddress.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] < 0:
                revert with 0, 'Chainlink returned a negative price'
            if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio and closingFee > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                revert with 0, 17
            if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee and tokenPeg > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee:
                revert with 0, 17
            if not 10000 * ext_call.return_data[32]:
                revert with 0, 18
            if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio):
                revert with 0, 17
            if vaultCollateral[arg1] < (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]) + (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio):
                revert with 0, 17
            vaultCollateral[arg1] = vaultCollateral[arg1] - (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]) - (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio)
            if vaultCollateral[stor316] > !(vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]):
                revert with 0, 17
            vaultCollateral[stor316] += vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]
            if tokenDebt[msg.sender] > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio):
                revert with 0, 17
            tokenDebt[msg.sender] += vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio
            if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio > totalDebt:
                revert with 0, 'Debt can not go below 0.'
            if totalDebt < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                revert with 0, 17
            totalDebt -= vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit LiquidateVault(arg1, ownerOf[arg1], msg.sender, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio, vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]);
        else:
            if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
                require ext_code.size(priceSourceAddress)
                staticcall priceSourceAddress.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if ext_call.return_data[32] < 0:
                    revert with 0, 'Chainlink returned a negative price'
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio and closingFee > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                    revert with 0, 17
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee and tokenPeg > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee:
                    revert with 0, 17
                if not 10000 * ext_call.return_data[32]:
                    revert with 0, 18
                if not 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18) > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio):
                    revert with 0, 17
                if vaultCollateral[arg1] < (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)) + (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio):
                    revert with 0, 17
                vaultCollateral[arg1] = vaultCollateral[arg1] - (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)) - (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio)
                if vaultCollateral[stor316] > !(vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)):
                    revert with 0, 17
                vaultCollateral[stor316] += vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)
                if tokenDebt[msg.sender] > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio):
                    revert with 0, 17
                tokenDebt[msg.sender] += vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio > totalDebt:
                    revert with 0, 'Debt can not go below 0.'
                if totalDebt < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                    revert with 0, 17
                totalDebt -= vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit LiquidateVault(arg1, ownerOf[arg1], msg.sender, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio, vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18));
            else:
                s = 10
                t = 1
                idx = uint8(-ext_call.return_data[31 len 1] + 18)
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                require ext_code.size(priceSourceAddress)
                staticcall priceSourceAddress.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if ext_call.return_data[32] < 0:
                    revert with 0, 'Chainlink returned a negative price'
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio and closingFee > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                    revert with 0, 17
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee and tokenPeg > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee:
                    revert with 0, 17
                if not 10000 * ext_call.return_data[32]:
                    revert with 0, 18
                if not s * t:
                    revert with 0, 18
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio):
                    revert with 0, 17
                if vaultCollateral[arg1] < (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t) + (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio):
                    revert with 0, 17
                vaultCollateral[arg1] = vaultCollateral[arg1] - (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t) - (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio)
                if vaultCollateral[stor316] > !(vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t):
                    revert with 0, 17
                vaultCollateral[stor316] += vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t
                if tokenDebt[msg.sender] > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio):
                    revert with 0, 17
                tokenDebt[msg.sender] += vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio > totalDebt:
                    revert with 0, 'Debt can not go below 0.'
                if totalDebt < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                    revert with 0, 17
                totalDebt -= vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit LiquidateVault(arg1, ownerOf[arg1], msg.sender, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio, vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t);
    else:
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            require ext_code.size(priceSourceAddress)
            staticcall priceSourceAddress.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] < 0:
                revert with 0, 'Chainlink returned a negative price'
            if ext_call.return_data[32] > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if 10 * ext_call.return_data[32] and debtRatio > -1 / 10 * ext_call.return_data[32]:
                revert with 0, 17
            if vaultDebt[arg1] * tokenPeg and gainRatio > -1 / vaultDebt[arg1] * tokenPeg:
                revert with 0, 17
            if not 10 * ext_call.return_data[32] * debtRatio:
                revert with 0, 18
            if not 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            if not stor317[arg1]:
                revert with 0, 'Vault must exist'
            require ext_code.size(priceSourceAddress)
            staticcall priceSourceAddress.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] < 0:
                revert with 0, 'Chainlink returned a negative price'
            if not ext_call.return_data[32]:
                revert with 0, 'Price must be above 0'
            if not tokenPeg:
                revert with 0, 'Peg must be above 0'
            require ext_code.size(priceSourceAddress)
            staticcall priceSourceAddress.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] < 0:
                revert with 0, 'Chainlink returned a negative price'
            if vaultCollateral[arg1] and ext_call.return_data[32] > -1 / vaultCollateral[arg1]:
                revert with 0, 17
            if vaultDebt[arg1] and tokenPeg > -1 / vaultDebt[arg1]:
                revert with 0, 17
            if vaultCollateral[arg1] * ext_call.return_data[32] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if not tokenPeg:
                revert with 0, 18
            if not debtRatio:
                revert with 0, 18
            require ext_code.size(stor313)
            staticcall stor313.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                revert with 0, 'Token balance too low to pay off outstanding debt'
            require ext_code.size(stor313)
            call stor313.burn(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if vaultDebt[arg1] < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                revert with 0, 17
            vaultDebt[arg1] -= vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(-ext_call.return_data[31 len 1] + 18):
                require ext_code.size(priceSourceAddress)
                staticcall priceSourceAddress.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if ext_call.return_data[32] < 0:
                    revert with 0, 'Chainlink returned a negative price'
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio and closingFee > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                    revert with 0, 17
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee and tokenPeg > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee:
                    revert with 0, 17
                if not 10000 * ext_call.return_data[32]:
                    revert with 0, 18
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18)):
                    revert with 0, 17
                if vaultCollateral[arg1] < (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]) + (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18)):
                    revert with 0, 17
                vaultCollateral[arg1] = vaultCollateral[arg1] - (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]) - (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18))
                if vaultCollateral[stor316] > !(vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]):
                    revert with 0, 17
                vaultCollateral[stor316] += vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]
                if tokenDebt[msg.sender] > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18)):
                    revert with 0, 17
                tokenDebt[msg.sender] += vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18)
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio > totalDebt:
                    revert with 0, 'Debt can not go below 0.'
                if totalDebt < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                    revert with 0, 17
                totalDebt -= vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit LiquidateVault(arg1, ownerOf[arg1], msg.sender, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio, vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18), vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]);
            else:
                if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
                    require ext_code.size(priceSourceAddress)
                    staticcall priceSourceAddress.latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                    if ext_call.return_data[32] < 0:
                        revert with 0, 'Chainlink returned a negative price'
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio and closingFee > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                        revert with 0, 17
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee and tokenPeg > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee:
                        revert with 0, 17
                    if not 10000 * ext_call.return_data[32]:
                        revert with 0, 18
                    if not 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18) > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18)):
                        revert with 0, 17
                    if vaultCollateral[arg1] < (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)) + (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18)):
                        revert with 0, 17
                    vaultCollateral[arg1] = vaultCollateral[arg1] - (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)) - (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18))
                    if vaultCollateral[stor316] > !(vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)):
                        revert with 0, 17
                    vaultCollateral[stor316] += vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)
                    if tokenDebt[msg.sender] > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18)):
                        revert with 0, 17
                    tokenDebt[msg.sender] += vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18)
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio > totalDebt:
                        revert with 0, 'Debt can not go below 0.'
                    if totalDebt < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                        revert with 0, 17
                    totalDebt -= vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit LiquidateVault(arg1, ownerOf[arg1], msg.sender, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio, vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18), vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18));
                else:
                    s = 10
                    t = 1
                    idx = uint8(-ext_call.return_data[31 len 1] + 18)
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    require ext_code.size(priceSourceAddress)
                    staticcall priceSourceAddress.latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                    if ext_call.return_data[32] < 0:
                        revert with 0, 'Chainlink returned a negative price'
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio and closingFee > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                        revert with 0, 17
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee and tokenPeg > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee:
                        revert with 0, 17
                    if not 10000 * ext_call.return_data[32]:
                        revert with 0, 18
                    if not s * t:
                        revert with 0, 18
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18)):
                        revert with 0, 17
                    if vaultCollateral[arg1] < (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t) + (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18)):
                        revert with 0, 17
                    vaultCollateral[arg1] = vaultCollateral[arg1] - (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t) - (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18))
                    if vaultCollateral[stor316] > !(vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t):
                        revert with 0, 17
                    vaultCollateral[stor316] += vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t
                    if tokenDebt[msg.sender] > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18)):
                        revert with 0, 17
                    tokenDebt[msg.sender] += vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18)
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio > totalDebt:
                        revert with 0, 'Debt can not go below 0.'
                    if totalDebt < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                        revert with 0, 17
                    totalDebt -= vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit LiquidateVault(arg1, ownerOf[arg1], msg.sender, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio, vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / 10^uint8(-uint8(ext_call.return_data[0]) + 18), vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / s * t);
        else:
            s = 10
            t = 1
            idx = uint8(-ext_call.return_data[31 len 1] + 18)
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            require ext_code.size(priceSourceAddress)
            staticcall priceSourceAddress.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] < 0:
                revert with 0, 'Chainlink returned a negative price'
            if ext_call.return_data[32] > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if 10 * ext_call.return_data[32] and debtRatio > -1 / 10 * ext_call.return_data[32]:
                revert with 0, 17
            if vaultDebt[arg1] * tokenPeg and gainRatio > -1 / vaultDebt[arg1] * tokenPeg:
                revert with 0, 17
            if not 10 * ext_call.return_data[32] * debtRatio:
                revert with 0, 18
            if not s * t:
                revert with 0, 18
            if not stor317[arg1]:
                revert with 0, 'Vault must exist'
            require ext_code.size(priceSourceAddress)
            staticcall priceSourceAddress.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] < 0:
                revert with 0, 'Chainlink returned a negative price'
            if not ext_call.return_data[32]:
                revert with 0, 'Price must be above 0'
            if not tokenPeg:
                revert with 0, 'Peg must be above 0'
            require ext_code.size(priceSourceAddress)
            staticcall priceSourceAddress.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] < 0:
                revert with 0, 'Chainlink returned a negative price'
            if vaultCollateral[arg1] and ext_call.return_data[32] > -1 / vaultCollateral[arg1]:
                revert with 0, 17
            if vaultDebt[arg1] and tokenPeg > -1 / vaultDebt[arg1]:
                revert with 0, 17
            if vaultCollateral[arg1] * ext_call.return_data[32] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if not tokenPeg:
                revert with 0, 18
            if not debtRatio:
                revert with 0, 18
            require ext_code.size(stor313)
            staticcall stor313.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                revert with 0, 'Token balance too low to pay off outstanding debt'
            require ext_code.size(stor313)
            call stor313.burn(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if vaultDebt[arg1] < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                revert with 0, 17
            vaultDebt[arg1] -= vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(-ext_call.return_data[31 len 1] + 18):
                require ext_code.size(priceSourceAddress)
                staticcall priceSourceAddress.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if ext_call.return_data[32] < 0:
                    revert with 0, 'Chainlink returned a negative price'
                if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio and closingFee > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                    revert with 0, 17
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee and tokenPeg > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee:
                    revert with 0, 17
                if not 10000 * ext_call.return_data[32]:
                    revert with 0, 18
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t):
                    revert with 0, 17
                if vaultCollateral[arg1] < (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]) + (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t):
                    revert with 0, 17
                vaultCollateral[arg1] = vaultCollateral[arg1] - (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]) - (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t)
                if vaultCollateral[stor316] > !(vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]):
                    revert with 0, 17
                vaultCollateral[stor316] += vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]
                if tokenDebt[msg.sender] > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t):
                    revert with 0, 17
                tokenDebt[msg.sender] += vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t
                if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio > totalDebt:
                    revert with 0, 'Debt can not go below 0.'
                if totalDebt < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                    revert with 0, 17
                totalDebt -= vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit LiquidateVault(arg1, ownerOf[arg1], msg.sender, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio, vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32]);
            else:
                if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
                    require ext_code.size(priceSourceAddress)
                    staticcall priceSourceAddress.latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                    if ext_call.return_data[32] < 0:
                        revert with 0, 'Chainlink returned a negative price'
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio and closingFee > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                        revert with 0, 17
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee and tokenPeg > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee:
                        revert with 0, 17
                    if not 10000 * ext_call.return_data[32]:
                        revert with 0, 18
                    if not 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18) > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t):
                        revert with 0, 17
                    if vaultCollateral[arg1] < (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)) + (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t):
                        revert with 0, 17
                    vaultCollateral[arg1] = vaultCollateral[arg1] - (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)) - (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t)
                    if vaultCollateral[stor316] > !(vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)):
                        revert with 0, 17
                    vaultCollateral[stor316] += vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18)
                    if tokenDebt[msg.sender] > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t):
                        revert with 0, 17
                    tokenDebt[msg.sender] += vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio > totalDebt:
                        revert with 0, 'Debt can not go below 0.'
                    if totalDebt < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                        revert with 0, 17
                    totalDebt -= vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit LiquidateVault(arg1, ownerOf[arg1], msg.sender, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio, vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / 10^uint8(-uint8(ext_call.return_data[0]) + 18));
                else:
                    u = 10
                    v = 1
                    idx = uint8(-ext_call.return_data[31 len 1] + 18)
                    while idx > 1:
                        if u > -1 / u:
                            revert with 0, 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 0, 17
                    require ext_code.size(priceSourceAddress)
                    staticcall priceSourceAddress.latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                    if ext_call.return_data[32] < 0:
                        revert with 0, 'Chainlink returned a negative price'
                    if ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio and closingFee > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                        revert with 0, 17
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee and tokenPeg > -1 / vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee:
                        revert with 0, 17
                    if not 10000 * ext_call.return_data[32]:
                        revert with 0, 18
                    if not u * v:
                        revert with 0, 18
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / u * v > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t):
                        revert with 0, 17
                    if vaultCollateral[arg1] < (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / u * v) + (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t):
                        revert with 0, 17
                    vaultCollateral[arg1] = vaultCollateral[arg1] - (vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / u * v) - (vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t)
                    if vaultCollateral[stor316] > !(vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / u * v):
                        revert with 0, 17
                    vaultCollateral[stor316] += vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / u * v
                    if tokenDebt[msg.sender] > !(vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t):
                        revert with 0, 17
                    tokenDebt[msg.sender] += vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t
                    if vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio > totalDebt:
                        revert with 0, 'Debt can not go below 0.'
                    if totalDebt < vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio:
                        revert with 0, 17
                    totalDebt -= vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit LiquidateVault(arg1, ownerOf[arg1], msg.sender, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio, vaultDebt[arg1] * tokenPeg * gainRatio / 10 * ext_call.return_data[32] * debtRatio / s * t, vaultDebt[arg1] * tokenPeg / tokenPeg / debtRatio * closingFee * tokenPeg / 10000 * ext_call.return_data[32] / u * v);
    stor201 = 1
}



}

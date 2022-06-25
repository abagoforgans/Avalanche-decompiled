contract main {




// =====================  Runtime code  =====================


#
#  - compoundReward(uint256 arg1)
#  - burn(uint256 arg1)
#  - cashoutAll()
#  - cashoutReward(uint256 arg1)
#  - changeTierSystem(uint24[6] arg1, uint16[6] arg2)
#  - sub_97c8f2ac(?)
#  - compoundAll()
#  - sub_a0fd81c9(?)
#  - sub_afcd96ad(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of struct stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of struct stor7;
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
uint8 paused;
address owner;
uint256 stor401;
address sub_e1b12268Address;
address liquidityPoolManagerImplementationAddress;
uint256 stor551;
mapping of struct stor552;
mapping of struct stor553;
array of uint256 stor554;
uint256 rewardPerDay;
uint256 creationMinPrice;
uint256 compoundDelay;
uint256 processingFee;
array of uint16 tierSlope;
uint256 totalValueLocked;
uint256 sub_dfe59ed4;
uint256 sub_d25e3369;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136640;
array of uint256 stor92563391796531448025736367971217786061797538077753646771409532489194446654766;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function creationMinPrice() payable {
    return creationMinPrice
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

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() payable {
    return bool(paused)
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

function owner() payable {
    return owner
}

function compoundDelay() payable {
    return compoundDelay
}

function tierLevel(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 6
    return tierLevel[arg1 / 10].field_8 * 3 * arg1 % 10 % 16777216
}

function rewardPerDay() payable {
    return rewardPerDay
}

function getLiquidityPoolManagerImplementation() payable {
    return liquidityPoolManagerImplementationAddress
}

function tierSlope(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 6
    return tierSlope[uint8(arg1)]
}

function sub_d25e3369(?) payable {
    return sub_d25e3369
}

function processingFee() payable {
    return processingFee
}

function sub_dfe59ed4(?) payable {
    return sub_dfe59ed4
}

function sub_e1b12268(?) payable {
    return sub_e1b12268Address
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function totalValueLocked() payable {
    return totalValueLocked
}

function _fallback() payable {
    revert
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 'Use API', 0
}

function sub_e98bc9f5(?) payable {
    if sub_dfe59ed4 > !sub_d25e3369:
        revert with 0, 17
    return (sub_dfe59ed4 + sub_d25e3369)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_b550ecb2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return (balanceOf[address(arg1)] > 0)
}

function recoverLostAVAX() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function changeCompoundDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'turbines: compoundDelay must be greater than 0'
    compoundDelay = arg1
}

function changeNodeMinPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'turbines: Minimum price to create a turbine must be above 0'
    creationMinPrice = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function recoverLostTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_23ebc62f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(address(arg1)):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Wind: You can only set 0x0 or a contract address as a new implementation'
    sub_e1b12268Address = address(arg1)
    emit 0x1ad42e06: sub_e1b12268Address, address(arg1)
}

function supportsInterface(bytes4 arg1) payable {
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

function changeLiquidityPoolManagerImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        if arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'LiquidityPoolManager: You can only set 0x0 or a contract address as a new implementation'
    liquidityPoolManagerImplementationAddress = arg1
    emit UpdateLiquidityPoolManager(liquidityPoolManagerImplementationAddress, arg1);
}

function sub_c185eb2c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(arg1) == ownerOf[arg2]:
        return True
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    if approved[arg2] == address(arg1):
        return True
    return bool(stor106[stor103[arg2]][address(arg1)])
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
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
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
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
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
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
        else:
            if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor101.length.field_1 % 128:
                if 31 < stor101.length.field_1 % 128:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
        mem[ceil32(uint255(stor101.length) * 0.5) + 192 len ceil32(uint255(stor101.length) * 0.5)] = mem[128 len ceil32(uint255(stor101.length) * 0.5)]
        if ceil32(uint255(stor101.length) * 0.5) > uint255(stor101.length) * 0.5:
            mem[(uint255(stor101.length) * 0.5) + ceil32(uint255(stor101.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)], mem[(2 * ceil32(uint255(stor101.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor101.length) * 0.5)]), 
    if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
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
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
    else:
        if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor101.length.field_1 % 128:
            if 31 < stor101.length.field_1 % 128:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
    mem[ceil32(stor101.length.field_1 % 128) + 192 len ceil32(stor101.length.field_1 % 128)] = mem[128 len ceil32(stor101.length.field_1 % 128)]
    if ceil32(stor101.length.field_1 % 128) > stor101.length.field_1 % 128:
        mem[stor101.length.field_1 % 128 + ceil32(stor101.length.field_1 % 128) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)], mem[(2 * ceil32(stor101.length.field_1 % 128)) + 192 len 2 * ceil32(stor101.length.field_1 % 128)]), 
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
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
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
                mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
        else:
            if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor102.length.field_1 % 128:
                if 31 < stor102.length.field_1 % 128:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
        mem[ceil32(uint255(stor102.length) * 0.5) + 192 len ceil32(uint255(stor102.length) * 0.5)] = mem[128 len ceil32(uint255(stor102.length) * 0.5)]
        if ceil32(uint255(stor102.length) * 0.5) > uint255(stor102.length) * 0.5:
            mem[(uint255(stor102.length) * 0.5) + ceil32(uint255(stor102.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)], mem[(2 * ceil32(uint255(stor102.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor102.length) * 0.5)]), 
    if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
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
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
    else:
        if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor102.length.field_1 % 128:
            if 31 < stor102.length.field_1 % 128:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
    mem[ceil32(stor102.length.field_1 % 128) + 192 len ceil32(stor102.length.field_1 % 128)] = mem[128 len ceil32(stor102.length.field_1 % 128)]
    if ceil32(stor102.length.field_1 % 128) > stor102.length.field_1 % 128:
        mem[stor102.length.field_1 % 128 + ceil32(stor102.length.field_1 % 128) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)], mem[(2 * ceil32(stor102.length.field_1 % 128)) + 192 len 2 * ceil32(stor102.length.field_1 % 128)]), 
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        uint255(stor101.length.field_1) = 14
        Mask(112, 0, stor101.length.field_144) = Mask(112, 0, 'Wind Ecosystem')
        idx = 0
        while (uint255(stor101.length) * 0.5) + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        uint255(stor101.length.field_1) = 14
        Mask(112, 0, stor101.length.field_144) = Mask(112, 0, 'Wind Ecosystem')
        idx = 0
        while stor101.length.field_1 % 128 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        uint255(stor102.length.field_1) = 7
        stor102.length.field_200 % 72057594037927936 = 'TURBINE' % 72057594037927936
        idx = 0
        while (uint255(stor102.length) * 0.5) + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        uint255(stor102.length.field_1) = 7
        stor102.length.field_200 % 72057594037927936 = 'TURBINE' % 72057594037927936
        idx = 0
        while stor102.length.field_1 % 128 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor401 = 1
    paused = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    creationMinPrice = 42000 * 10^18
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    compoundDelay = 4 * 3600
    mem[224] = 100000
    mem[256] = 105000
    mem[288] = 110000
    mem[320] = 120000
    mem[352] = 130000
    mem[384] = 140000
    mem[416] = 1000
    mem[448] = 500
    mem[480] = 100
    mem[512] = 50
    mem[544] = 10
    mem[576] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    s = 0
    idx = 224
    while 416 > idx:
        tierLevel.length = mem[idx + 29 len 3] * 256^s or !(16777215 * 256^s) and tierLevel.length
        s = s + (-3 * s + 5 / 32) + (-1 * s * s + 5 / 32) + 3
        idx = idx + 32
        continue 
    idx = 18
    s = 559
    while idx:
        stor[s] = !(16777215 * 256^idx) and stor[s]
        idx = idx + (-3 * idx + 5 / 32) + (-1 * idx * idx + 5 / 32) + 3
        s = (idx + 5 / 32) + s
        continue 
    idx = s
    while 560 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    s = 0
    idx = 416
    while 608 > idx:
        tierSlope.length = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and tierSlope.length
        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
        idx = idx + 32
        continue 
    idx = 12
    s = 560
    while idx:
        stor[s] = !(65535 * 256^idx) and stor[s]
        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
        s = (idx + 3 / 32) + s
        continue 
    idx = (Mask(254, 1, None - 9) + 15 / 32 * uint255(None - 9) >> 1) + 560
    while 561 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function calculateTotalDailyEmission() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < stor554.length:
        mem[0] = stor554[idx]
        mem[32] = 553
        _9 = mem[64]
        mem[64] = mem[64] + 96
        mem[_9] = stor553[stor554[idx]].field_0
        mem[_9 + 32] = stor553[stor554[idx]].field_256
        mem[_9 + 64] = bool(uint8(stor553[stor554[idx]].field_512))
        if stor553[stor554[idx]].field_0 >= tierLevel.length.field_96 % 16777216:
            if stor553[stor554[idx]].field_0 > 0x1e5ad3c5a971001e5ad3c5a971001e5ad3c5a971001e5ad3c5a971001e5ad3:
                revert with 0, 17
            if 2159 * stor553[stor554[idx]].field_0 / 100000 and stor553[stor554[idx]].field_256 > -1 / 2159 * stor553[stor554[idx]].field_0 / 100000:
                revert with 0, 17
            if s > !(2159 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (2159 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000)
            continue 
        if stor553[stor554[idx]].field_0 >= tierLevel.length.field_72 % 16777216:
            if stor553[stor554[idx]].field_0 > 0x1ec853b0a3883c9a64c3c1f4374ff66165d8cce56d0fc082d363aeb7030190:
                revert with 0, 17
            if 2129 * stor553[stor554[idx]].field_0 / 100000 and stor553[stor554[idx]].field_256 > -1 / 2129 * stor553[stor554[idx]].field_0 / 100000:
                revert with 0, 17
            if s > !(2129 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (2129 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000)
            continue 
        if stor553[stor554[idx]].field_0 >= tierLevel.length.field_48 % 16777216:
            if stor553[stor554[idx]].field_0 > 0x1f38f4e6c0f1f969fc57534cf563a4c5946dc43cfb3e52b0d89b2300da8eb2:
                revert with 0, 17
            if 2099 * stor553[stor554[idx]].field_0 / 100000 and stor553[stor554[idx]].field_256 > -1 / 2099 * stor553[stor554[idx]].field_0 / 100000:
                revert with 0, 17
            if s > !(2099 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (2099 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000)
            continue 
        if stor553[stor554[idx]].field_0 >= tierLevel.length.field_24 % 16777216:
            if stor553[stor554[idx]].field_0 > 0x209f0743689e024b2e82bd5b1c294945315067fae726dd77a74fa440bb9269:
                revert with 0, 17
            if 2009 * stor553[stor554[idx]].field_0 / 100000 and stor553[stor554[idx]].field_256 > -1 / 2009 * stor553[stor554[idx]].field_0 / 100000:
                revert with 0, 17
            if s > !(2009 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (2009 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000)
            continue 
        if stor553[stor554[idx]].field_0 <= tierLevel.length:
            if stor553[stor554[idx]].field_0 > 0x25af9f6df77635e115ef37cb0107cd5c01c43b7927998a868d07369d840c5d:
                revert with 0, 17
            if 1739 * stor553[stor554[idx]].field_0 / 100000 and stor553[stor554[idx]].field_256 > -1 / 1739 * stor553[stor554[idx]].field_0 / 100000:
                revert with 0, 17
            if s > !(1739 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (1739 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000)
            continue 
        if stor553[stor554[idx]].field_0 > 0x246ddb494900246ddb494900246ddb494900246ddb494900246ddb49490024:
            revert with 0, 17
        if 1799 * stor553[stor554[idx]].field_0 / 100000 and stor553[stor554[idx]].field_256 > -1 / 1799 * stor553[stor554[idx]].field_0 / 100000:
            revert with 0, 17
        if s > !(1799 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (1799 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000)
        continue 
    return s
}

function sub_e416d71c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = address(arg1)
    mem[32] = 104
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = balanceOf[address(arg1)]
    mem[64] = (32 * balanceOf[address(arg1)]) + 128
    if not balanceOf[address(arg1)]:
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if tokenOfOwnerByIndex[address(arg1)][idx] <= 0:
                revert with 0, 'turbines: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            _166 = mem[64]
            mem[64] = mem[64] + 288
            mem[_166] = stor552[stor151[address(arg1)][idx]].field_0
            if bool(stor552[stor151[address(arg1)][idx]].field_256):
                if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                    revert with 0, 34
                _173 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) + 32
                mem[_173] = uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5
                if bool(stor552[stor151[address(arg1)][idx]].field_256):
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(arg1)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5:
                            mem[_173 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_173 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _173 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _173 + (uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(arg1)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(arg1)][idx]].field_257 % 128:
                            mem[_173 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_173 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _173 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _173 + stor552[stor151[address(arg1)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_166 + 32] = _173
            else:
                if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                    revert with 0, 34
                _175 = mem[64]
                mem[64] = mem[64] + ceil32(stor552[stor151[address(arg1)][idx]].field_257 % 128) + 32
                mem[_175] = stor552[stor151[address(arg1)][idx]].field_257 % 128
                if bool(stor552[stor151[address(arg1)][idx]].field_256):
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(arg1)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5:
                            mem[_175 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_175 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _175 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _175 + (uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(arg1)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(arg1)][idx]].field_257 % 128:
                            mem[_175 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_175 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _175 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _175 + stor552[stor151[address(arg1)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_166 + 32] = _175
            mem[_166 + 64] = stor552[stor151[address(arg1)][idx]].field_512
            mem[_166 + 96] = stor552[stor151[address(arg1)][idx]].field_768
            mem[_166 + 128] = stor552[stor151[address(arg1)][idx]].field_1024
            mem[_166 + 160] = stor552[stor151[address(arg1)][idx]].field_1280
            mem[_166 + 192] = stor552[stor151[address(arg1)][idx]].field_1536
            mem[_166 + 224] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1792))
            mem[_166 + 256] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1800))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1792):
                revert with 0, 'turbines: This turbine doesn't exist'
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if tokenOfOwnerByIndex[address(arg1)][idx] <= 0:
                revert with 0, 'turbines: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            _169 = mem[64]
            mem[64] = mem[64] + 288
            mem[_169] = stor552[stor151[address(arg1)][idx]].field_0
            if bool(stor552[stor151[address(arg1)][idx]].field_256):
                if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                    revert with 0, 34
                _174 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) + 32
                mem[_174] = uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5
                if bool(stor552[stor151[address(arg1)][idx]].field_256):
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(arg1)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5:
                            mem[_174 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_174 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _174 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _174 + (uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(arg1)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(arg1)][idx]].field_257 % 128:
                            mem[_174 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_174 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _174 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _174 + stor552[stor151[address(arg1)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_169 + 32] = _174
            else:
                if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                    revert with 0, 34
                _176 = mem[64]
                mem[64] = mem[64] + ceil32(stor552[stor151[address(arg1)][idx]].field_257 % 128) + 32
                mem[_176] = stor552[stor151[address(arg1)][idx]].field_257 % 128
                if bool(stor552[stor151[address(arg1)][idx]].field_256):
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(arg1)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5:
                            mem[_176 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_176 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _176 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _176 + (uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(arg1)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(arg1)][idx]].field_257 % 128:
                            mem[_176 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_176 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _176 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _176 + stor552[stor151[address(arg1)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_169 + 32] = _176
            mem[_169 + 64] = stor552[stor151[address(arg1)][idx]].field_512
            mem[_169 + 96] = stor552[stor151[address(arg1)][idx]].field_768
            mem[_169 + 128] = stor552[stor151[address(arg1)][idx]].field_1024
            mem[_169 + 160] = stor552[stor151[address(arg1)][idx]].field_1280
            mem[_169 + 192] = stor552[stor151[address(arg1)][idx]].field_1536
            mem[_169 + 224] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1792))
            mem[_169 + 256] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1800))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1792):
                revert with 0, 'turbines: This turbine doesn't exist'
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function isNameAvailable(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not arg1:
        revert with 0, 'ERC721: balance query for the zero address'
    mem[0] = arg1
    mem[32] = 104
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg2.length)) + 97] = balanceOf[address(arg1)]
    mem[64] = ceil32(ceil32(arg2.length)) + (32 * balanceOf[address(arg1)]) + 129
    if not balanceOf[address(arg1)]:
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if tokenOfOwnerByIndex[address(arg1)][idx] <= 0:
                revert with 0, 'turbines: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            _360 = mem[64]
            mem[64] = mem[64] + 288
            mem[_360] = stor552[stor151[address(arg1)][idx]].field_0
            if bool(stor552[stor151[address(arg1)][idx]].field_256):
                if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                    revert with 0, 34
                _370 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) + 32
                mem[_370] = uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5
                if bool(stor552[stor151[address(arg1)][idx]].field_256):
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(arg1)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5:
                            mem[_370 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_370 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _370 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _370 + (uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(arg1)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(arg1)][idx]].field_257 % 128:
                            mem[_370 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_370 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _370 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _370 + stor552[stor151[address(arg1)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_360 + 32] = _370
            else:
                if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                    revert with 0, 34
                _377 = mem[64]
                mem[64] = mem[64] + ceil32(stor552[stor151[address(arg1)][idx]].field_257 % 128) + 32
                mem[_377] = stor552[stor151[address(arg1)][idx]].field_257 % 128
                if bool(stor552[stor151[address(arg1)][idx]].field_256):
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(arg1)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5:
                            mem[_377 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_377 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _377 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _377 + (uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(arg1)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(arg1)][idx]].field_257 % 128:
                            mem[_377 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_377 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _377 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _377 + stor552[stor151[address(arg1)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_360 + 32] = _377
            mem[_360 + 64] = stor552[stor151[address(arg1)][idx]].field_512
            mem[_360 + 96] = stor552[stor151[address(arg1)][idx]].field_768
            mem[_360 + 128] = stor552[stor151[address(arg1)][idx]].field_1024
            mem[_360 + 160] = stor552[stor151[address(arg1)][idx]].field_1280
            mem[_360 + 192] = stor552[stor151[address(arg1)][idx]].field_1536
            mem[_360 + 224] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1792))
            mem[_360 + 256] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1800))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1792):
                revert with 0, 'turbines: This turbine doesn't exist'
            if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129] = tokenOfOwnerByIndex[address(arg1)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _654 = mem[ceil32(ceil32(arg2.length)) + 97]
        idx = 0
        while idx < _654:
            if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]
            mem[32] = 552
            _660 = sha3(mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129], 552)
            _661 = mem[64]
            mem[64] = mem[64] + 288
            mem[_661] = stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_0
            if bool(stor1[_660].field_0):
                if bool(stor1[_660].field_0) == uint255(stor1[_660].field_0) * 0.5 < 32:
                    revert with 0, 34
                _692 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_660].field_0) * 0.5) + 32
                mem[_692] = uint255(stor1[_660].field_0) * 0.5
                if bool(stor1[_660].field_0):
                    if bool(stor1[_660].field_0) == uint255(stor1[_660].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[_660].field_0):
                        if 31 >= uint255(stor1[_660].field_0) * 0.5:
                            mem[_692 + 32] = 256 * Mask(248, 0, stor1[_660].field_8)
                        else:
                            mem[0] = _660 + 1
                            mem[_692 + 32] = stor[sha3(_660 + 1)]
                            s = _692 + 32
                            t = sha3(_660 + 1)
                            while _692 + (uint255(stor1[_660].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[_660].field_0) == stor1[_660].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[_660].field_1 % 128:
                        if 31 >= stor1[_660].field_1 % 128:
                            mem[_692 + 32] = 256 * Mask(248, 0, stor1[_660].field_8)
                        else:
                            mem[0] = _660 + 1
                            mem[_692 + 32] = stor[sha3(_660 + 1)]
                            s = _692 + 32
                            t = sha3(_660 + 1)
                            while _692 + stor1[_660].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_661 + 32] = _692
                mem[_661 + 64] = stor2[_660]
                mem[_661 + 96] = stor3[_660]
                mem[_661 + 128] = stor4[_660]
                mem[_661 + 160] = stor5[_660]
                mem[_661 + 192] = stor6[_660]
                mem[_661 + 224] = bool(uint8(stor7[_660].field_0))
                mem[_661 + 256] = bool(uint8(stor7[_660].field_8))
                if sha3(mem[128 len mem[96]]) == sha3(mem[_692 + 32 len uint255(stor1[_660].field_0) * 0.5]):
                    return 0
            else:
                if bool(stor1[_660].field_0) == stor1[_660].field_1 % 128 < 32:
                    revert with 0, 34
                _694 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_660].field_1 % 128) + 32
                mem[_694] = stor1[_660].field_1 % 128
                if bool(stor1[_660].field_0):
                    if bool(stor1[_660].field_0) == uint255(stor1[_660].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[_660].field_0):
                        if 31 >= uint255(stor1[_660].field_0) * 0.5:
                            mem[_694 + 32] = 256 * Mask(248, 0, stor1[_660].field_8)
                        else:
                            mem[0] = _660 + 1
                            mem[_694 + 32] = stor[sha3(_660 + 1)]
                            s = _694 + 32
                            t = sha3(_660 + 1)
                            while _694 + (uint255(stor1[_660].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[_660].field_0) == stor1[_660].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[_660].field_1 % 128:
                        if 31 >= stor1[_660].field_1 % 128:
                            mem[_694 + 32] = 256 * Mask(248, 0, stor1[_660].field_8)
                        else:
                            mem[0] = _660 + 1
                            mem[_694 + 32] = stor[sha3(_660 + 1)]
                            s = _694 + 32
                            t = sha3(_660 + 1)
                            while _694 + stor1[_660].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_661 + 32] = _694
                mem[_661 + 64] = stor2[_660]
                mem[_661 + 96] = stor3[_660]
                mem[_661 + 128] = stor4[_660]
                mem[_661 + 160] = stor5[_660]
                mem[_661 + 192] = stor6[_660]
                mem[_661 + 224] = bool(uint8(stor7[_660].field_0))
                mem[_661 + 256] = bool(uint8(stor7[_660].field_8))
                if sha3(mem[128 len mem[96]]) == sha3(mem[_694 + 32 len stor1[_660].field_1 % 128]):
                    return 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(ceil32(arg2.length)) + 129 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if tokenOfOwnerByIndex[address(arg1)][idx] <= 0:
                revert with 0, 'turbines: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            _364 = mem[64]
            mem[64] = mem[64] + 288
            mem[_364] = stor552[stor151[address(arg1)][idx]].field_0
            if bool(stor552[stor151[address(arg1)][idx]].field_256):
                if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                    revert with 0, 34
                _371 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) + 32
                mem[_371] = uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5
                if bool(stor552[stor151[address(arg1)][idx]].field_256):
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(arg1)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5:
                            mem[_371 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_371 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _371 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _371 + (uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(arg1)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(arg1)][idx]].field_257 % 128:
                            mem[_371 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_371 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _371 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _371 + stor552[stor151[address(arg1)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_364 + 32] = _371
            else:
                if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                    revert with 0, 34
                _383 = mem[64]
                mem[64] = mem[64] + ceil32(stor552[stor151[address(arg1)][idx]].field_257 % 128) + 32
                mem[_383] = stor552[stor151[address(arg1)][idx]].field_257 % 128
                if bool(stor552[stor151[address(arg1)][idx]].field_256):
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(arg1)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5:
                            mem[_383 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_383 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _383 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _383 + (uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(arg1)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(arg1)][idx]].field_257 % 128:
                            mem[_383 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_383 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _383 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _383 + stor552[stor151[address(arg1)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_364 + 32] = _383
            mem[_364 + 64] = stor552[stor151[address(arg1)][idx]].field_512
            mem[_364 + 96] = stor552[stor151[address(arg1)][idx]].field_768
            mem[_364 + 128] = stor552[stor151[address(arg1)][idx]].field_1024
            mem[_364 + 160] = stor552[stor151[address(arg1)][idx]].field_1280
            mem[_364 + 192] = stor552[stor151[address(arg1)][idx]].field_1536
            mem[_364 + 224] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1792))
            mem[_364 + 256] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1800))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1792):
                revert with 0, 'turbines: This turbine doesn't exist'
            if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129] = tokenOfOwnerByIndex[address(arg1)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _655 = mem[ceil32(ceil32(arg2.length)) + 97]
        idx = 0
        while idx < _655:
            if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]
            mem[32] = 552
            _668 = sha3(mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129], 552)
            _669 = mem[64]
            mem[64] = mem[64] + 288
            mem[_669] = stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_0
            if bool(stor1[_668].field_0):
                if bool(stor1[_668].field_0) == uint255(stor1[_668].field_0) * 0.5 < 32:
                    revert with 0, 34
                _693 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_668].field_0) * 0.5) + 32
                mem[_693] = uint255(stor1[_668].field_0) * 0.5
                if bool(stor1[_668].field_0):
                    if bool(stor1[_668].field_0) == uint255(stor1[_668].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[_668].field_0):
                        if 31 >= uint255(stor1[_668].field_0) * 0.5:
                            mem[_693 + 32] = 256 * Mask(248, 0, stor1[_668].field_8)
                        else:
                            mem[0] = _668 + 1
                            mem[_693 + 32] = stor[sha3(_668 + 1)]
                            s = _693 + 32
                            t = sha3(_668 + 1)
                            while _693 + (uint255(stor1[_668].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[_668].field_0) == stor1[_668].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[_668].field_1 % 128:
                        if 31 >= stor1[_668].field_1 % 128:
                            mem[_693 + 32] = 256 * Mask(248, 0, stor1[_668].field_8)
                        else:
                            mem[0] = _668 + 1
                            mem[_693 + 32] = stor[sha3(_668 + 1)]
                            s = _693 + 32
                            t = sha3(_668 + 1)
                            while _693 + stor1[_668].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_669 + 32] = _693
                mem[_669 + 64] = stor2[_668]
                mem[_669 + 96] = stor3[_668]
                mem[_669 + 128] = stor4[_668]
                mem[_669 + 160] = stor5[_668]
                mem[_669 + 192] = stor6[_668]
                mem[_669 + 224] = bool(uint8(stor7[_668].field_0))
                mem[_669 + 256] = bool(uint8(stor7[_668].field_8))
                if sha3(mem[128 len mem[96]]) == sha3(mem[_693 + 32 len uint255(stor1[_668].field_0) * 0.5]):
                    return 0
            else:
                if bool(stor1[_668].field_0) == stor1[_668].field_1 % 128 < 32:
                    revert with 0, 34
                _699 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_668].field_1 % 128) + 32
                mem[_699] = stor1[_668].field_1 % 128
                if bool(stor1[_668].field_0):
                    if bool(stor1[_668].field_0) == uint255(stor1[_668].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[_668].field_0):
                        if 31 >= uint255(stor1[_668].field_0) * 0.5:
                            mem[_699 + 32] = 256 * Mask(248, 0, stor1[_668].field_8)
                        else:
                            mem[0] = _668 + 1
                            mem[_699 + 32] = stor[sha3(_668 + 1)]
                            s = _699 + 32
                            t = sha3(_668 + 1)
                            while _699 + (uint255(stor1[_668].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[_668].field_0) == stor1[_668].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[_668].field_1 % 128:
                        if 31 >= stor1[_668].field_1 % 128:
                            mem[_699 + 32] = 256 * Mask(248, 0, stor1[_668].field_8)
                        else:
                            mem[0] = _668 + 1
                            mem[_699 + 32] = stor[sha3(_668 + 1)]
                            s = _699 + 32
                            t = sha3(_668 + 1)
                            while _699 + stor1[_668].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_669 + 32] = _699
                mem[_669 + 64] = stor2[_668]
                mem[_669 + 96] = stor3[_668]
                mem[_669 + 128] = stor4[_668]
                mem[_669 + 160] = stor5[_668]
                mem[_669 + 192] = stor6[_668]
                mem[_669 + 224] = bool(uint8(stor7[_668].field_0))
                mem[_669 + 256] = bool(uint8(stor7[_668].field_8))
                if sha3(mem[128 len mem[96]]) == sha3(mem[_699 + 32 len stor1[_668].field_1 % 128]):
                    return 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    return 1
}

function sub_54958f88(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if arg1.length <= 1:
        revert with 0, 'turbines: Incorrect name length, must be between 2 to 31'
    if arg1.length >= 32:
        revert with 0, 'turbines: Incorrect name length, must be between 2 to 31'
    if arg2 < creationMinPrice:
        revert with 0, 'turbines: turbine value set below minimum'
    if not msg.sender:
        revert with 0, 'ERC721: balance query for the zero address'
    mem[0] = msg.sender
    mem[32] = 104
    if balanceOf[address(msg.sender)] > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + 97] = balanceOf[address(msg.sender)]
    mem[64] = ceil32(ceil32(arg1.length)) + (32 * balanceOf[address(msg.sender)]) + 129
    if not balanceOf[address(msg.sender)]:
        idx = 0
        while idx < balanceOf[address(msg.sender)]:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(msg.sender)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if tokenOfOwnerByIndex[address(msg.sender)][idx] <= 0:
                revert with 0, 'turbines: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
            mem[32] = 552
            _1985 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1985] = stor552[stor151[address(msg.sender)][idx]].field_0
            if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                    revert with 0, 34
                _2004 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                mem[_2004] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                            mem[_2004 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_2004 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _2004 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _2004 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            mem[_2004 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_2004 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _2004 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _2004 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1985 + 32] = _2004
            else:
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                    revert with 0, 34
                _2011 = mem[64]
                mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                mem[_2011] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                            mem[_2011 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_2011 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _2011 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _2011 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            mem[_2011 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_2011 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _2011 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _2011 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1985 + 32] = _2011
            mem[_1985 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
            mem[_1985 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
            mem[_1985 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
            mem[_1985 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
            mem[_1985 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
            mem[_1985 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
            mem[_1985 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
            if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                revert with 0, 'turbines: This turbine doesn't exist'
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3888 = mem[ceil32(ceil32(arg1.length)) + 97]
        idx = 0
        while idx < _3888:
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]
            mem[32] = 552
            _3893 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552)
            _3894 = mem[64]
            mem[64] = mem[64] + 288
            mem[_3894] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_0
            if bool(stor1[_3893].field_0):
                if bool(stor1[_3893].field_0) == uint255(stor1[_3893].field_0) * 0.5 < 32:
                    revert with 0, 34
                _3929 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_3893].field_0) * 0.5) + 32
                mem[_3929] = uint255(stor1[_3893].field_0) * 0.5
                if bool(stor1[_3893].field_0):
                    if bool(stor1[_3893].field_0) == uint255(stor1[_3893].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[_3893].field_0):
                        if 31 >= uint255(stor1[_3893].field_0) * 0.5:
                            mem[_3929 + 32] = 256 * Mask(248, 0, stor1[_3893].field_8)
                        else:
                            mem[0] = _3893 + 1
                            mem[_3929 + 32] = stor[sha3(_3893 + 1)]
                            s = _3929 + 32
                            t = sha3(_3893 + 1)
                            while _3929 + (uint255(stor1[_3893].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[_3893].field_0) == stor1[_3893].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[_3893].field_1 % 128:
                        if 31 >= stor1[_3893].field_1 % 128:
                            mem[_3929 + 32] = 256 * Mask(248, 0, stor1[_3893].field_8)
                        else:
                            mem[0] = _3893 + 1
                            mem[_3929 + 32] = stor[sha3(_3893 + 1)]
                            s = _3929 + 32
                            t = sha3(_3893 + 1)
                            while _3929 + stor1[_3893].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_3894 + 32] = _3929
                mem[_3894 + 64] = stor2[_3893]
                mem[_3894 + 96] = stor3[_3893]
                mem[_3894 + 128] = stor4[_3893]
                mem[_3894 + 160] = stor5[_3893]
                mem[_3894 + 192] = stor6[_3893]
                mem[_3894 + 224] = bool(uint8(stor7[_3893].field_0))
                mem[_3894 + 256] = bool(uint8(stor7[_3893].field_8))
                if sha3(mem[128 len mem[96]]) == sha3(mem[_3929 + 32 len uint255(stor1[_3893].field_0) * 0.5]):
                    revert with 0, 'Turbines: Name not available'
            else:
                if bool(stor1[_3893].field_0) == stor1[_3893].field_1 % 128 < 32:
                    revert with 0, 34
                _3932 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_3893].field_1 % 128) + 32
                mem[_3932] = stor1[_3893].field_1 % 128
                if bool(stor1[_3893].field_0):
                    if bool(stor1[_3893].field_0) == uint255(stor1[_3893].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[_3893].field_0):
                        if 31 >= uint255(stor1[_3893].field_0) * 0.5:
                            mem[_3932 + 32] = 256 * Mask(248, 0, stor1[_3893].field_8)
                        else:
                            mem[0] = _3893 + 1
                            mem[_3932 + 32] = stor[sha3(_3893 + 1)]
                            s = _3932 + 32
                            t = sha3(_3893 + 1)
                            while _3932 + (uint255(stor1[_3893].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[_3893].field_0) == stor1[_3893].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[_3893].field_1 % 128:
                        if 31 >= stor1[_3893].field_1 % 128:
                            mem[_3932 + 32] = 256 * Mask(248, 0, stor1[_3893].field_8)
                        else:
                            mem[0] = _3893 + 1
                            mem[_3932 + 32] = stor[sha3(_3893 + 1)]
                            s = _3932 + 32
                            t = sha3(_3893 + 1)
                            while _3932 + stor1[_3893].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_3894 + 32] = _3932
                mem[_3894 + 64] = stor2[_3893]
                mem[_3894 + 96] = stor3[_3893]
                mem[_3894 + 128] = stor4[_3893]
                mem[_3894 + 160] = stor5[_3893]
                mem[_3894 + 192] = stor6[_3893]
                mem[_3894 + 224] = bool(uint8(stor7[_3893].field_0))
                mem[_3894 + 256] = bool(uint8(stor7[_3893].field_8))
                if sha3(mem[128 len mem[96]]) == sha3(mem[_3932 + 32 len stor1[_3893].field_1 % 128]):
                    revert with 0, 'Turbines: Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        staticcall sub_e1b12268Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3910 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_3910] < creationMinPrice:
            revert with 0, 'turbines: Balance too low for creation'
        mem[mem[64]] = 0xdb0e185b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg2
        require ext_code.size(sub_e1b12268Address)
        call sub_e1b12268Address.accountBurn(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor551++
        if totalValueLocked > !arg2:
            revert with 0, 17
        totalValueLocked += arg2
        mem[0] = tierLevel.length
        mem[32] = 553
        if uint8(stor553[stor559.length].field_512):
            if tierLevel.length != stor553[stor559.length].field_0:
                revert with 0, 'turbines: rewardMult does not match in TierStorage'
            if arg2 > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                revert with 0, 17
            if stor553[stor559.length].field_256 < 0 and arg2 < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            stor553[stor559.length].field_256 += arg2
            _4156 = mem[64]
            mem[64] = mem[64] + 288
            mem[_4156] = stor551
            mem[_4156 + 32] = 96
            mem[_4156 + 64] = block.timestamp
            mem[_4156 + 96] = block.timestamp
            mem[_4156 + 128] = tierLevel.length
            mem[_4156 + 160] = arg2
            mem[_4156 + 192] = 0
            mem[_4156 + 224] = 1
            mem[_4156 + 256] = 0
        else:
            if arg2 <= 0:
                revert with 0, 'turbines: Fatal error while creating new TierStorage. Amount cannot be below zero.'
            _4096 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4096] = tierLevel.length
            mem[_4096 + 32] = arg2
            mem[_4096 + 64] = 1
            mem[32] = 553
            stor553[stor559.length].field_0 = tierLevel.length
            stor553[stor559.length].field_256 = arg2
            uint8(stor553[stor559.length].field_512) = 1
            stor554.length++
            mem[0] = 554
            storCCA5[stor554.length] = tierLevel.length
            _4118 = mem[64]
            mem[64] = mem[64] + 288
            mem[_4118] = stor551
            mem[_4118 + 32] = 96
            mem[_4118 + 64] = block.timestamp
            mem[_4118 + 96] = block.timestamp
            mem[_4118 + 128] = tierLevel.length
            mem[_4118 + 160] = arg2
            mem[_4118 + 192] = 0
            mem[_4118 + 224] = 1
            mem[_4118 + 256] = 0
    else:
        mem[ceil32(ceil32(arg1.length)) + 129 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
        idx = 0
        while idx < balanceOf[address(msg.sender)]:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(msg.sender)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if tokenOfOwnerByIndex[address(msg.sender)][idx] <= 0:
                revert with 0, 'turbines: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
            mem[32] = 552
            _1990 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1990] = stor552[stor151[address(msg.sender)][idx]].field_0
            if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                    revert with 0, 34
                _2005 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                mem[_2005] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                            mem[_2005 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_2005 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _2005 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _2005 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            mem[_2005 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_2005 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _2005 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _2005 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1990 + 32] = _2005
            else:
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                    revert with 0, 34
                _2017 = mem[64]
                mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                mem[_2017] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                            mem[_2017 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_2017 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _2017 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _2017 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            mem[_2017 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_2017 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _2017 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _2017 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1990 + 32] = _2017
            mem[_1990 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
            mem[_1990 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
            mem[_1990 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
            mem[_1990 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
            mem[_1990 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
            mem[_1990 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
            mem[_1990 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
            if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                revert with 0, 'turbines: This turbine doesn't exist'
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3889 = mem[ceil32(ceil32(arg1.length)) + 97]
        idx = 0
        while idx < _3889:
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]
            mem[32] = 552
            _3900 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552)
            _3901 = mem[64]
            mem[64] = mem[64] + 288
            mem[_3901] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_0
            if bool(stor1[_3900].field_0):
                if bool(stor1[_3900].field_0) == uint255(stor1[_3900].field_0) * 0.5 < 32:
                    revert with 0, 34
                _3931 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_3900].field_0) * 0.5) + 32
                mem[_3931] = uint255(stor1[_3900].field_0) * 0.5
                if bool(stor1[_3900].field_0):
                    if bool(stor1[_3900].field_0) == uint255(stor1[_3900].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[_3900].field_0):
                        if 31 >= uint255(stor1[_3900].field_0) * 0.5:
                            mem[_3931 + 32] = 256 * Mask(248, 0, stor1[_3900].field_8)
                        else:
                            mem[0] = _3900 + 1
                            mem[_3931 + 32] = stor[sha3(_3900 + 1)]
                            s = _3931 + 32
                            t = sha3(_3900 + 1)
                            while _3931 + (uint255(stor1[_3900].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[_3900].field_0) == stor1[_3900].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[_3900].field_1 % 128:
                        if 31 >= stor1[_3900].field_1 % 128:
                            mem[_3931 + 32] = 256 * Mask(248, 0, stor1[_3900].field_8)
                        else:
                            mem[0] = _3900 + 1
                            mem[_3931 + 32] = stor[sha3(_3900 + 1)]
                            s = _3931 + 32
                            t = sha3(_3900 + 1)
                            while _3931 + stor1[_3900].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_3901 + 32] = _3931
                mem[_3901 + 64] = stor2[_3900]
                mem[_3901 + 96] = stor3[_3900]
                mem[_3901 + 128] = stor4[_3900]
                mem[_3901 + 160] = stor5[_3900]
                mem[_3901 + 192] = stor6[_3900]
                mem[_3901 + 224] = bool(uint8(stor7[_3900].field_0))
                mem[_3901 + 256] = bool(uint8(stor7[_3900].field_8))
                if sha3(mem[128 len mem[96]]) == sha3(mem[_3931 + 32 len uint255(stor1[_3900].field_0) * 0.5]):
                    revert with 0, 'Turbines: Name not available'
            else:
                if bool(stor1[_3900].field_0) == stor1[_3900].field_1 % 128 < 32:
                    revert with 0, 34
                _3937 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_3900].field_1 % 128) + 32
                mem[_3937] = stor1[_3900].field_1 % 128
                if bool(stor1[_3900].field_0):
                    if bool(stor1[_3900].field_0) == uint255(stor1[_3900].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[_3900].field_0):
                        if 31 >= uint255(stor1[_3900].field_0) * 0.5:
                            mem[_3937 + 32] = 256 * Mask(248, 0, stor1[_3900].field_8)
                        else:
                            mem[0] = _3900 + 1
                            mem[_3937 + 32] = stor[sha3(_3900 + 1)]
                            s = _3937 + 32
                            t = sha3(_3900 + 1)
                            while _3937 + (uint255(stor1[_3900].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[_3900].field_0) == stor1[_3900].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[_3900].field_1 % 128:
                        if 31 >= stor1[_3900].field_1 % 128:
                            mem[_3937 + 32] = 256 * Mask(248, 0, stor1[_3900].field_8)
                        else:
                            mem[0] = _3900 + 1
                            mem[_3937 + 32] = stor[sha3(_3900 + 1)]
                            s = _3937 + 32
                            t = sha3(_3900 + 1)
                            while _3937 + stor1[_3900].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_3901 + 32] = _3937
                mem[_3901 + 64] = stor2[_3900]
                mem[_3901 + 96] = stor3[_3900]
                mem[_3901 + 128] = stor4[_3900]
                mem[_3901 + 160] = stor5[_3900]
                mem[_3901 + 192] = stor6[_3900]
                mem[_3901 + 224] = bool(uint8(stor7[_3900].field_0))
                mem[_3901 + 256] = bool(uint8(stor7[_3900].field_8))
                if sha3(mem[128 len mem[96]]) == sha3(mem[_3937 + 32 len stor1[_3900].field_1 % 128]):
                    revert with 0, 'Turbines: Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        staticcall sub_e1b12268Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3911 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_3911] < creationMinPrice:
            revert with 0, 'turbines: Balance too low for creation'
        mem[mem[64]] = 0xdb0e185b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg2
        require ext_code.size(sub_e1b12268Address)
        call sub_e1b12268Address.accountBurn(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor551++
        if totalValueLocked > !arg2:
            revert with 0, 17
        totalValueLocked += arg2
        mem[0] = tierLevel.length
        mem[32] = 553
        if uint8(stor553[stor559.length].field_512):
            if tierLevel.length != stor553[stor559.length].field_0:
                revert with 0, 'turbines: rewardMult does not match in TierStorage'
            if arg2 > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                revert with 0, 17
            if stor553[stor559.length].field_256 < 0 and arg2 < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            stor553[stor559.length].field_256 += arg2
            _4157 = mem[64]
            mem[64] = mem[64] + 288
            mem[_4157] = stor551
            mem[_4157 + 32] = 96
            mem[_4157 + 64] = block.timestamp
            mem[_4157 + 96] = block.timestamp
            mem[_4157 + 128] = tierLevel.length
            mem[_4157 + 160] = arg2
            mem[_4157 + 192] = 0
            mem[_4157 + 224] = 1
            mem[_4157 + 256] = 0
        else:
            if arg2 <= 0:
                revert with 0, 'turbines: Fatal error while creating new TierStorage. Amount cannot be below zero.'
            _4107 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4107] = tierLevel.length
            mem[_4107 + 32] = arg2
            mem[_4107 + 64] = 1
            mem[32] = 553
            stor553[stor559.length].field_0 = tierLevel.length
            stor553[stor559.length].field_256 = arg2
            uint8(stor553[stor559.length].field_512) = 1
            stor554.length++
            mem[0] = 554
            storCCA5[stor554.length] = tierLevel.length
            _4125 = mem[64]
            mem[64] = mem[64] + 288
            mem[_4125] = stor551
            mem[_4125 + 32] = 96
            mem[_4125 + 64] = block.timestamp
            mem[_4125 + 96] = block.timestamp
            mem[_4125 + 128] = tierLevel.length
            mem[_4125 + 160] = arg2
            mem[_4125 + 192] = 0
            mem[_4125 + 224] = 1
            mem[_4125 + 256] = 0
    stor552[stor551].field_0 = stor551
    if bool(stor552[stor551].field_256):
        if bool(stor552[stor551].field_256) == uint255(stor552[stor551].field_256) * 0.5 < 32:
            revert with 0, 34
        if mem[96]:
            stor552[stor551][1][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor552[stor551].field_256 = 0
            idx = 0
            while (uint255(stor552[stor551].field_256) * 0.5) + 31 / 32 > idx:
                stor552[stor551][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor552[stor551].field_256) == stor552[stor551].field_257 % 128 < 32:
            revert with 0, 34
        if mem[96]:
            stor552[stor551][1][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor552[stor551].field_256 = 0
            idx = 0
            while stor552[stor551].field_257 % 128 + 31 / 32 > idx:
                stor552[stor551][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    stor552[stor551].field_512 = block.timestamp
    stor552[stor551].field_768 = block.timestamp
    stor552[stor551].field_1024 = tierLevel.length
    stor552[stor551].field_1280 = arg2
    stor552[stor551].field_1536 = 0
    uint8(stor552[stor551].field_1792) = 1
    Mask(248, 0, stor552[stor551].field_1800) = 0
    Mask(240, 0, stor552[stor551].field_1808) = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor551]:
        revert with 0, 'ERC721: token already minted'
    if paused:
        revert with 0, 'Pausable: paused'
    stor154[stor551] = tokenByIndex.length
    tokenByIndex.length++
    stor72A1[stor153.length] = stor551
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = stor551
            stor152[stor551] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[stor551] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[stor551]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[stor551]
        stor154[stor551] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor551] = msg.sender
    emit Transfer(0, msg.sender, stor551);
    emit Create(arg2, msg.sender, stor551);
    return stor551
}



}

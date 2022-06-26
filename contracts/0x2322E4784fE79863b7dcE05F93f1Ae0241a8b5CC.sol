contract main {




// =====================  Runtime code  =====================


#
#  - compoundReward(uint256 arg1)
#  - cashoutAll()
#  - cashoutReward(uint256 arg1)
#  - changeTierSystem(uint24[6] arg1, uint16[6] arg2)
#  - compoundAll()
#  - sub_a74c0906(?)
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
array of uint8 stor7;
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
mapping of struct stor201;
uint8 paused;
address owner;
uint256 stor401;
address universeImplementationAddress;
address liquidityPoolManagerImplementationAddress;
uint256 stor551;
mapping of struct stor552;
mapping of struct stor553;
array of uint256 stor554;
uint256 rewardPerDay;
uint256 creationMinPrice;
uint256 compoundDelay;
uint8 stor558;
uint256 stor558; offset 8
uint256 processingFee;
array of uint16 tierSlope;
uint256 totalValueLocked;
uint256 sub_dfe59ed4;
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

function getUniverseImplementation() payable {
    return universeImplementationAddress
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

function processingFee() payable {
    return processingFee
}

function sub_dfe59ed4(?) payable {
    return sub_dfe59ed4
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

function sub_88b56d15(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerDay = 34724
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

function isOwnerOfPlanets(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
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

function changeProcessingFee(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 30:
        revert with 0, 'Cashout fee can never exceed 30%'
    uint8(stor558.field_0) = arg1
    Mask(248, 0, stor558.field_8) = 0
}

function changeCompoundDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Planets: compoundDelay must be greater than 0'
    compoundDelay = arg1
}

function changeNodeMinPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Planets: Minimum price to create a Planet must be above 0'
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

function changeUniverseImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        if arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Universe: You can only set 0x0 or a contract address as a new implementation'
    universeImplementationAddress = arg1
    emit UpdateUniverse(universeImplementationAddress, arg1);
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
        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if 24 * 3600 * rewardPerDay / 10^6 and stor553[stor554[idx]].field_0 > -1 / 24 * 3600 * rewardPerDay / 10^6:
            revert with 0, 17
        if 24 * 3600 * rewardPerDay / 10^6 * stor553[stor554[idx]].field_0 / 100000 and stor553[stor554[idx]].field_256 > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor553[stor554[idx]].field_0 / 100000:
            revert with 0, 17
        if s > !(24 * 3600 * rewardPerDay / 10^6 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (24 * 3600 * rewardPerDay / 10^6 * stor553[stor554[idx]].field_0 / 100000 * stor553[stor554[idx]].field_256 / 100000)
        continue 
    return (s * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length * stor554.length)
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
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
        revert with 0, 'ERC721: transfer of token that is not own'
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
        revert with 0, 'ERC721: transfer of token that is not own'
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if bool(stor201[arg1].field_0):
        if bool(stor201[arg1].field_0) == uint255(stor201[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor201[arg1].field_0):
            if bool(stor201[arg1].field_0) == uint255(stor201[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor201[arg1].field_0):
                if 31 < uint255(stor201[arg1].field_0) * 0.5:
                    mem[128] = stor201[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor201[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor201[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor201[arg1].field_0), data=mem[128 len ceil32(uint255(stor201[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor201[arg1].field_8)
        else:
            if bool(stor201[arg1].field_0) == stor201[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor201[arg1].field_1 % 128:
                if 31 < stor201[arg1].field_1 % 128:
                    mem[128] = stor201[arg1].field_0
                    idx = 128
                    s = 0
                    while stor201[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor201[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor201[arg1].field_0), data=mem[128 len ceil32(uint255(stor201[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor201[arg1].field_8)
        mem[ceil32(uint255(stor201[arg1].field_0) * 0.5) + 224 len ceil32(uint255(stor201[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor201[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor201[arg1].field_0) * 0.5) > uint255(stor201[arg1].field_0) * 0.5:
            mem[(uint255(stor201[arg1].field_0) * 0.5) + ceil32(uint255(stor201[arg1].field_0) * 0.5) + 224] = 0
        return Array(len=2 * Mask(256, -1, stor201[arg1].field_0), data=mem[128 len ceil32(uint255(stor201[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor201[arg1].field_0) * 0.5)) + 224 len 2 * ceil32(uint255(stor201[arg1].field_0) * 0.5)]), 
    if bool(stor201[arg1].field_0) == stor201[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor201[arg1].field_0):
        if bool(stor201[arg1].field_0) == uint255(stor201[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor201[arg1].field_0):
            if 31 < uint255(stor201[arg1].field_0) * 0.5:
                mem[128] = stor201[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor201[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor201[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor201[arg1].field_0 % 128, data=mem[128 len ceil32(stor201[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor201[arg1].field_8)
    else:
        if bool(stor201[arg1].field_0) == stor201[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor201[arg1].field_1 % 128:
            if 31 < stor201[arg1].field_1 % 128:
                mem[128] = stor201[arg1].field_0
                idx = 128
                s = 0
                while stor201[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor201[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor201[arg1].field_0 % 128, data=mem[128 len ceil32(stor201[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor201[arg1].field_8)
    mem[ceil32(stor201[arg1].field_1 % 128) + 224 len ceil32(stor201[arg1].field_1 % 128)] = mem[128 len ceil32(stor201[arg1].field_1 % 128)]
    if ceil32(stor201[arg1].field_1 % 128) > stor201[arg1].field_1 % 128:
        mem[stor201[arg1].field_1 % 128 + ceil32(stor201[arg1].field_1 % 128) + 224] = 0
    return Array(len=stor201[arg1].field_0 % 128, data=mem[128 len ceil32(stor201[arg1].field_1 % 128)], mem[(2 * ceil32(stor201[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor201[arg1].field_1 % 128)]), 
}

function getPlanetIdsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = arg1
    mem[32] = 104
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = balanceOf[address(arg1)]
    mem[64] = (32 * balanceOf[address(arg1)]) + 128
    if not balanceOf[address(arg1)]:
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if tokenOfOwnerByIndex[address(arg1)][idx] <= 0:
                revert with 0, 'Planets: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            _166 = mem[64]
            mem[64] = mem[64] + 256
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
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1792):
                revert with 0, 'Planets: This planet doesn't exist'
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
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if tokenOfOwnerByIndex[address(arg1)][idx] <= 0:
                revert with 0, 'Planets: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            _169 = mem[64]
            mem[64] = mem[64] + 256
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
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1792):
                revert with 0, 'Planets: This planet doesn't exist'
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

function isOwnerOfPlanet(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = balanceOf[address(arg1)]
    mem[64] = (32 * balanceOf[address(arg1)]) + 128
    if not balanceOf[address(arg1)]:
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if tokenOfOwnerByIndex[address(arg1)][idx] <= 0:
                revert with 0, 'Planets: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            _177 = mem[64]
            mem[64] = mem[64] + 256
            mem[_177] = stor552[stor151[address(arg1)][idx]].field_0
            if bool(stor552[stor151[address(arg1)][idx]].field_256):
                if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                    revert with 0, 34
                _185 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) + 32
                mem[_185] = uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5
                if bool(stor552[stor151[address(arg1)][idx]].field_256):
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(arg1)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5:
                            mem[_185 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_185 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _185 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _185 + (uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(arg1)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(arg1)][idx]].field_257 % 128:
                            mem[_185 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_185 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _185 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _185 + stor552[stor151[address(arg1)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_177 + 32] = _185
            else:
                if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                    revert with 0, 34
                _187 = mem[64]
                mem[64] = mem[64] + ceil32(stor552[stor151[address(arg1)][idx]].field_257 % 128) + 32
                mem[_187] = stor552[stor151[address(arg1)][idx]].field_257 % 128
                if bool(stor552[stor151[address(arg1)][idx]].field_256):
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(arg1)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5:
                            mem[_187 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_187 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _187 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _187 + (uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(arg1)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(arg1)][idx]].field_257 % 128:
                            mem[_187 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_187 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _187 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _187 + stor552[stor151[address(arg1)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_177 + 32] = _187
            mem[_177 + 64] = stor552[stor151[address(arg1)][idx]].field_512
            mem[_177 + 96] = stor552[stor151[address(arg1)][idx]].field_768
            mem[_177 + 128] = stor552[stor151[address(arg1)][idx]].field_1024
            mem[_177 + 160] = stor552[stor151[address(arg1)][idx]].field_1280
            mem[_177 + 192] = stor552[stor151[address(arg1)][idx]].field_1536
            mem[_177 + 224] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1792))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1792):
                revert with 0, 'Planets: This planet doesn't exist'
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
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if tokenOfOwnerByIndex[address(arg1)][idx] <= 0:
                revert with 0, 'Planets: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            _181 = mem[64]
            mem[64] = mem[64] + 256
            mem[_181] = stor552[stor151[address(arg1)][idx]].field_0
            if bool(stor552[stor151[address(arg1)][idx]].field_256):
                if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                    revert with 0, 34
                _186 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) + 32
                mem[_186] = uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5
                if bool(stor552[stor151[address(arg1)][idx]].field_256):
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(arg1)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5:
                            mem[_186 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_186 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _186 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _186 + (uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(arg1)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(arg1)][idx]].field_257 % 128:
                            mem[_186 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_186 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _186 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _186 + stor552[stor151[address(arg1)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_181 + 32] = _186
            else:
                if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                    revert with 0, 34
                _188 = mem[64]
                mem[64] = mem[64] + ceil32(stor552[stor151[address(arg1)][idx]].field_257 % 128) + 32
                mem[_188] = stor552[stor151[address(arg1)][idx]].field_257 % 128
                if bool(stor552[stor151[address(arg1)][idx]].field_256):
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(arg1)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5:
                            mem[_188 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_188 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _188 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _188 + (uint255(stor552[stor151[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(arg1)][idx]].field_256) == stor552[stor151[address(arg1)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(arg1)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(arg1)][idx]].field_257 % 128:
                            mem[_188 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg1)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1
                            mem[_188 + 32] = stor552[stor151[address(arg1)][idx]][1].field_0
                            s = _188 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(arg1)][idx], 552) + 1)
                            while _188 + stor552[stor151[address(arg1)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_181 + 32] = _188
            mem[_181 + 64] = stor552[stor151[address(arg1)][idx]].field_512
            mem[_181 + 96] = stor552[stor151[address(arg1)][idx]].field_768
            mem[_181 + 128] = stor552[stor151[address(arg1)][idx]].field_1024
            mem[_181 + 160] = stor552[stor151[address(arg1)][idx]].field_1280
            mem[_181 + 192] = stor552[stor151[address(arg1)][idx]].field_1536
            mem[_181 + 224] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1792))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1792):
                revert with 0, 'Planets: This planet doesn't exist'
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        if mem[(32 * idx) + 128] == arg2:
            return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
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
    mem[96] = 22
    mem[128] = 'Ape Universe Ecosystem' << 80
    mem[160] = 5
    mem[192] = 0x4170654553000000000000000000000000000000000000000000000000000000
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        uint255(stor101.length.field_1) = 22
        Mask(176, 0, stor101.length.field_80) = Mask(176, 0, 'Ape Universe Ecosystem')
        idx = 0
        while (uint255(stor101.length) * 0.5) + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
        if bool(stor102.length):
            if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
                revert with 0, 34
            mem[0] = 102
            bool(stor102.length) = 0
            uint255(stor102.length.field_1) = 5
            stor102.length.field_216 % 1099511627776 = 281058559315
            idx = 0
            while (uint255(stor102.length) * 0.5) + 31 / 32 > idx:
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
            creationMinPrice = 52000 * 10^18
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            compoundDelay = 12 * 3600
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            processingFee = 30
            mem[224] = 100000
            mem[256] = 105000
            mem[288] = 110000
            mem[320] = 120000
            mem[352] = 130000
            mem[384] = 140000
            mem[64] = 608
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
            if 608 <= var129004:
                if not var129001:
                    tierSlope.length = 0
                else:
                    tierSlope.length = !(65535 * 256^var129001) and tierSlope.length
                    idx = var129001 + (2 * -var129001 + 3 / 32) + (-1 * var129001 * var129001 + 3 / 32) + 2
                    s = (var129001 + 3 / 32) + 560
                    while idx:
                        stor[s] = !(65535 * 256^idx) and stor[s]
                        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                        s = (idx + 3 / 32) + s
                        continue 
                    idx = (var129001 + 3 / 32) + (var129001 + (2 * -var129001 + 3 / 32) + (-1 * var129001 * var129001 + 3 / 32) + Mask(254, 1, None + -var129001 + (floor32(var129001 + 3) >> 4) + (var129001 * var129001 + 3 / 32) + 1) + 5 / 32 * uint255(None + -var129001 + (floor32(var129001 + 3) >> 4) + (var129001 * var129001 + 3 / 32) + 1) >> 1) + 560
                    while 561 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                if not uint8(stor0.field_8):
                    uint8(stor0.field_8) = 0
            else:
                tierSlope.length = mem[var129004 + 30 len 2] * 256^var129001 or !(65535 * 256^var129001) and tierSlope.length
                s = var129001 + (2 * -var129001 + 3 / 32) + (-1 * var129001 * var129001 + 3 / 32) + 2
                t = (var129001 + 3 / 32) + 560
                idx = var129004 + 32
                while 608 > idx:
                    stor[t] = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor[t]
                    s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                    t = (s + 3 / 32) + t
                    idx = idx + 32
                    continue 
                idx = var129001 + (2 * -var129001 + 3 / 32) + (-1 * var129001 * var129001 + 3 / 32) + (floor32(-var129004 + 607) >> 4) + 2
                s = (var129001 + 3 / 32) + (var129001 + (2 * -var129001 + 3 / 32) + (-1 * var129001 * var129001 + 3 / 32) + (floor32(-var129004 + 607) >> 4) + 5 / 32 * Mask(251, 0, -var129004 + 607) >> 5) + 560
                while idx:
                    stor[s] = !(65535 * 256^idx) and stor[s]
                    idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                    s = (idx + 3 / 32) + s
                    continue 
                idx = (var129001 + 3 / 32) + (var129001 + (2 * -var129001 + 3 / 32) + (-1 * var129001 * var129001 + 3 / 32) + (floor32(-var129004 + 607) >> 4) + 5 / 32 * Mask(251, 0, -var129004 + 607) >> 5) + (var129001 + (2 * -var129001 + 3 / 32) + (-1 * var129001 * var129001 + 3 / 32) + (floor32(-var129004 + 607) >> 4) + Mask(254, 1, None + -var129001 + (floor32(var129001 + 3) >> 4) + (var129001 * var129001 + 3 / 32) + -(floor32(-var129004 + 607) >> 4) + 1) + 5 / 32 * uint255(None + -var129001 + (floor32(var129001 + 3) >> 4) + (var129001 * var129001 + 3 / 32) + -(floor32(-var129004 + 607) >> 4) + 1) >> 1) + 560
                while 561 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                if not uint8(stor0.field_8):
                    uint8(stor0.field_8) = 0
        else:
            if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = 102
            bool(stor102.length) = 0
            uint255(stor102.length.field_1) = 5
            stor102.length.field_216 % 1099511627776 = 281058559315
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
            creationMinPrice = 52000 * 10^18
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            compoundDelay = 12 * 3600
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            processingFee = 30
            mem[224] = 100000
            mem[256] = 105000
            mem[288] = 110000
            mem[320] = 120000
            mem[352] = 130000
            mem[384] = 140000
            mem[64] = 608
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
            if 608 <= var130004:
                if not var130001:
                    tierSlope.length = 0
                else:
                    tierSlope.length = !(65535 * 256^var130001) and tierSlope.length
                    idx = var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + 2
                    s = (var130001 + 3 / 32) + 560
                    while idx:
                        stor[s] = !(65535 * 256^idx) and stor[s]
                        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                        s = (idx + 3 / 32) + s
                        continue 
                    idx = (var130001 + 3 / 32) + (var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + Mask(254, 1, None + -var130001 + (floor32(var130001 + 3) >> 4) + (var130001 * var130001 + 3 / 32) + 1) + 5 / 32 * uint255(None + -var130001 + (floor32(var130001 + 3) >> 4) + (var130001 * var130001 + 3 / 32) + 1) >> 1) + 560
                    while 561 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                if not uint8(stor0.field_8):
                    uint8(stor0.field_8) = 0
            else:
                tierSlope.length = mem[var130004 + 30 len 2] * 256^var130001 or !(65535 * 256^var130001) and tierSlope.length
                s = var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + 2
                t = (var130001 + 3 / 32) + 560
                idx = var130004 + 32
                while 608 > idx:
                    stor[t] = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor[t]
                    s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                    t = (s + 3 / 32) + t
                    idx = idx + 32
                    continue 
                idx = var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + (floor32(-var130004 + 607) >> 4) + 2
                s = (var130001 + 3 / 32) + (var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + (floor32(-var130004 + 607) >> 4) + 5 / 32 * Mask(251, 0, -var130004 + 607) >> 5) + 560
                while idx:
                    stor[s] = !(65535 * 256^idx) and stor[s]
                    idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                    s = (idx + 3 / 32) + s
                    continue 
                idx = (var130001 + 3 / 32) + (var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + (floor32(-var130004 + 607) >> 4) + 5 / 32 * Mask(251, 0, -var130004 + 607) >> 5) + (var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + (floor32(-var130004 + 607) >> 4) + Mask(254, 1, None + -var130001 + (floor32(var130001 + 3) >> 4) + (var130001 * var130001 + 3 / 32) + -(floor32(-var130004 + 607) >> 4) + 1) + 5 / 32 * uint255(None + -var130001 + (floor32(var130001 + 3) >> 4) + (var130001 * var130001 + 3 / 32) + -(floor32(-var130004 + 607) >> 4) + 1) >> 1) + 560
                while 561 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                if not uint8(stor0.field_8):
                    uint8(stor0.field_8) = 0
    else:
        if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        uint255(stor101.length.field_1) = 22
        Mask(176, 0, stor101.length.field_80) = Mask(176, 0, 'Ape Universe Ecosystem')
        idx = 0
        while stor101.length.field_1 % 128 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
        if bool(stor102.length):
            if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
                revert with 0, 34
            mem[0] = 102
            bool(stor102.length) = 0
            uint255(stor102.length.field_1) = 5
            stor102.length.field_216 % 1099511627776 = 281058559315
            idx = 0
            while (uint255(stor102.length) * 0.5) + 31 / 32 > idx:
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
            creationMinPrice = 52000 * 10^18
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            compoundDelay = 12 * 3600
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            processingFee = 30
            mem[224] = 100000
            mem[256] = 105000
            mem[288] = 110000
            mem[320] = 120000
            mem[352] = 130000
            mem[384] = 140000
            mem[64] = 608
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
            if 608 <= var130004:
                if not var130001:
                    tierSlope.length = 0
                else:
                    tierSlope.length = !(65535 * 256^var130001) and tierSlope.length
                    idx = var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + 2
                    s = (var130001 + 3 / 32) + 560
                    while idx:
                        stor[s] = !(65535 * 256^idx) and stor[s]
                        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                        s = (idx + 3 / 32) + s
                        continue 
                    idx = (var130001 + 3 / 32) + (var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + Mask(254, 1, None + -var130001 + (floor32(var130001 + 3) >> 4) + (var130001 * var130001 + 3 / 32) + 1) + 5 / 32 * uint255(None + -var130001 + (floor32(var130001 + 3) >> 4) + (var130001 * var130001 + 3 / 32) + 1) >> 1) + 560
                    while 561 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                if not uint8(stor0.field_8):
                    uint8(stor0.field_8) = 0
            else:
                tierSlope.length = mem[var130004 + 30 len 2] * 256^var130001 or !(65535 * 256^var130001) and tierSlope.length
                s = var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + 2
                t = (var130001 + 3 / 32) + 560
                idx = var130004 + 32
                while 608 > idx:
                    stor[t] = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor[t]
                    s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                    t = (s + 3 / 32) + t
                    idx = idx + 32
                    continue 
                idx = var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + (floor32(-var130004 + 607) >> 4) + 2
                s = (var130001 + 3 / 32) + (var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + (floor32(-var130004 + 607) >> 4) + 5 / 32 * Mask(251, 0, -var130004 + 607) >> 5) + 560
                while idx:
                    stor[s] = !(65535 * 256^idx) and stor[s]
                    idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                    s = (idx + 3 / 32) + s
                    continue 
                idx = (var130001 + 3 / 32) + (var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + (floor32(-var130004 + 607) >> 4) + 5 / 32 * Mask(251, 0, -var130004 + 607) >> 5) + (var130001 + (2 * -var130001 + 3 / 32) + (-1 * var130001 * var130001 + 3 / 32) + (floor32(-var130004 + 607) >> 4) + Mask(254, 1, None + -var130001 + (floor32(var130001 + 3) >> 4) + (var130001 * var130001 + 3 / 32) + -(floor32(-var130004 + 607) >> 4) + 1) + 5 / 32 * uint255(None + -var130001 + (floor32(var130001 + 3) >> 4) + (var130001 * var130001 + 3 / 32) + -(floor32(-var130004 + 607) >> 4) + 1) >> 1) + 560
                while 561 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                if not uint8(stor0.field_8):
                    uint8(stor0.field_8) = 0
        else:
            if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = 102
            bool(stor102.length) = 0
            uint255(stor102.length.field_1) = 5
            stor102.length.field_216 % 1099511627776 = 281058559315
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
            creationMinPrice = 52000 * 10^18
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            compoundDelay = 12 * 3600
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            processingFee = 30
            mem[224] = 100000
            mem[256] = 105000
            mem[288] = 110000
            mem[320] = 120000
            mem[352] = 130000
            mem[384] = 140000
            mem[64] = 608
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
            if 608 <= var131004:
                if not var131001:
                    tierSlope.length = 0
                else:
                    tierSlope.length = !(65535 * 256^var131001) and tierSlope.length
                    idx = var131001 + (2 * -var131001 + 3 / 32) + (-1 * var131001 * var131001 + 3 / 32) + 2
                    s = (var131001 + 3 / 32) + 560
                    while idx:
                        stor[s] = !(65535 * 256^idx) and stor[s]
                        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                        s = (idx + 3 / 32) + s
                        continue 
                    idx = (var131001 + 3 / 32) + (var131001 + (2 * -var131001 + 3 / 32) + (-1 * var131001 * var131001 + 3 / 32) + Mask(254, 1, None + -var131001 + (floor32(var131001 + 3) >> 4) + (var131001 * var131001 + 3 / 32) + 1) + 5 / 32 * uint255(None + -var131001 + (floor32(var131001 + 3) >> 4) + (var131001 * var131001 + 3 / 32) + 1) >> 1) + 560
                    while 561 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                if not uint8(stor0.field_8):
                    uint8(stor0.field_8) = 0
            else:
                tierSlope.length = mem[var131004 + 30 len 2] * 256^var131001 or !(65535 * 256^var131001) and tierSlope.length
                s = var131001 + (2 * -var131001 + 3 / 32) + (-1 * var131001 * var131001 + 3 / 32) + 2
                t = (var131001 + 3 / 32) + 560
                idx = var131004 + 32
                while 608 > idx:
                    stor[t] = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor[t]
                    s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                    t = (s + 3 / 32) + t
                    idx = idx + 32
                    continue 
                idx = var131001 + (2 * -var131001 + 3 / 32) + (-1 * var131001 * var131001 + 3 / 32) + (floor32(-var131004 + 607) >> 4) + 2
                s = (var131001 + 3 / 32) + (var131001 + (2 * -var131001 + 3 / 32) + (-1 * var131001 * var131001 + 3 / 32) + (floor32(-var131004 + 607) >> 4) + 5 / 32 * Mask(251, 0, -var131004 + 607) >> 5) + 560
                while idx:
                    stor[s] = !(65535 * 256^idx) and stor[s]
                    idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                    s = (idx + 3 / 32) + s
                    continue 
                idx = (var131001 + 3 / 32) + (var131001 + (2 * -var131001 + 3 / 32) + (-1 * var131001 * var131001 + 3 / 32) + (floor32(-var131004 + 607) >> 4) + 5 / 32 * Mask(251, 0, -var131004 + 607) >> 5) + (var131001 + (2 * -var131001 + 3 / 32) + (-1 * var131001 * var131001 + 3 / 32) + (floor32(-var131004 + 607) >> 4) + Mask(254, 1, None + -var131001 + (floor32(var131001 + 3) >> 4) + (var131001 * var131001 + 3 / 32) + -(floor32(-var131004 + 607) >> 4) + 1) + 5 / 32 * uint255(None + -var131001 + (floor32(var131001 + 3) >> 4) + (var131001 * var131001 + 3 / 32) + -(floor32(-var131004 + 607) >> 4) + 1) >> 1) + 560
                while 561 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                if not uint8(stor0.field_8):
                    uint8(stor0.field_8) = 0
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
                revert with 0, 'Planets: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            _360 = mem[64]
            mem[64] = mem[64] + 256
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
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1792):
                revert with 0, 'Planets: This planet doesn't exist'
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
            mem[64] = mem[64] + 256
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
                mem[_661 + 224] = bool(stor7[_660])
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
                mem[_661 + 224] = bool(stor7[_660])
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
                revert with 0, 'Planets: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            _364 = mem[64]
            mem[64] = mem[64] + 256
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
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1792):
                revert with 0, 'Planets: This planet doesn't exist'
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
            mem[64] = mem[64] + 256
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
                mem[_669 + 224] = bool(stor7[_668])
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
                mem[_669 + 224] = bool(stor7[_668])
                if sha3(mem[128 len mem[96]]) == sha3(mem[_699 + 32 len stor1[_668].field_1 % 128]):
                    return 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    return 1
}

function createPlanetWithTokens(string arg1, uint256 arg2) payable {
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
    if stor401 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor401 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not universeImplementationAddress:
        revert with 0, 'Planets: Universe is not set'
    if 1 >= arg1.length:
        revert with 0, 'Planets: Incorrect name length, must be between 2 to 31'
    if arg1.length >= 32:
        revert with 0, 'Planets: Incorrect name length, must be between 2 to 31'
    if arg2 < creationMinPrice:
        revert with 0, 'Planets: Planet value set below minimum'
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
                revert with 0, 'Planets: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
            mem[32] = 552
            _1957 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1957] = stor552[stor151[address(msg.sender)][idx]].field_0
            if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                    revert with 0, 34
                _1976 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                mem[_1976] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                            mem[_1976 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_1976 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _1976 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _1976 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            mem[_1976 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_1976 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _1976 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _1976 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1957 + 32] = _1976
            else:
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                    revert with 0, 34
                _1983 = mem[64]
                mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                mem[_1983] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                            mem[_1983 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_1983 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _1983 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _1983 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            mem[_1983 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_1983 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _1983 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _1983 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1957 + 32] = _1983
            mem[_1957 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
            mem[_1957 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
            mem[_1957 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
            mem[_1957 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
            mem[_1957 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
            mem[_1957 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
            if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                revert with 0, 'Planets: This planet doesn't exist'
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3828 = mem[ceil32(ceil32(arg1.length)) + 97]
        idx = 0
        while idx < _3828:
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]
            mem[32] = 552
            _3833 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552)
            _3834 = mem[64]
            mem[64] = mem[64] + 256
            mem[_3834] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_0
            if bool(stor1[_3833].field_0):
                if bool(stor1[_3833].field_0) == uint255(stor1[_3833].field_0) * 0.5 < 32:
                    revert with 0, 34
                _3869 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_3833].field_0) * 0.5) + 32
                mem[_3869] = uint255(stor1[_3833].field_0) * 0.5
                if bool(stor1[_3833].field_0):
                    if bool(stor1[_3833].field_0) == uint255(stor1[_3833].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[_3833].field_0):
                        if 31 >= uint255(stor1[_3833].field_0) * 0.5:
                            mem[_3869 + 32] = 256 * Mask(248, 0, stor1[_3833].field_8)
                        else:
                            mem[0] = _3833 + 1
                            mem[_3869 + 32] = stor[sha3(_3833 + 1)]
                            s = _3869 + 32
                            t = sha3(_3833 + 1)
                            while _3869 + (uint255(stor1[_3833].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[_3833].field_0) == stor1[_3833].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[_3833].field_1 % 128:
                        if 31 >= stor1[_3833].field_1 % 128:
                            mem[_3869 + 32] = 256 * Mask(248, 0, stor1[_3833].field_8)
                        else:
                            mem[0] = _3833 + 1
                            mem[_3869 + 32] = stor[sha3(_3833 + 1)]
                            s = _3869 + 32
                            t = sha3(_3833 + 1)
                            while _3869 + stor1[_3833].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_3834 + 32] = _3869
                mem[_3834 + 64] = stor2[_3833]
                mem[_3834 + 96] = stor3[_3833]
                mem[_3834 + 128] = stor4[_3833]
                mem[_3834 + 160] = stor5[_3833]
                mem[_3834 + 192] = stor6[_3833]
                mem[_3834 + 224] = bool(stor7[_3833])
                if sha3(mem[128 len mem[96]]) == sha3(mem[_3869 + 32 len uint255(stor1[_3833].field_0) * 0.5]):
                    revert with 0, 'Planets: Name not available'
            else:
                if bool(stor1[_3833].field_0) == stor1[_3833].field_1 % 128 < 32:
                    revert with 0, 34
                _3872 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_3833].field_1 % 128) + 32
                mem[_3872] = stor1[_3833].field_1 % 128
                if bool(stor1[_3833].field_0):
                    if bool(stor1[_3833].field_0) == uint255(stor1[_3833].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[_3833].field_0):
                        if 31 >= uint255(stor1[_3833].field_0) * 0.5:
                            mem[_3872 + 32] = 256 * Mask(248, 0, stor1[_3833].field_8)
                        else:
                            mem[0] = _3833 + 1
                            mem[_3872 + 32] = stor[sha3(_3833 + 1)]
                            s = _3872 + 32
                            t = sha3(_3833 + 1)
                            while _3872 + (uint255(stor1[_3833].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[_3833].field_0) == stor1[_3833].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[_3833].field_1 % 128:
                        if 31 >= stor1[_3833].field_1 % 128:
                            mem[_3872 + 32] = 256 * Mask(248, 0, stor1[_3833].field_8)
                        else:
                            mem[0] = _3833 + 1
                            mem[_3872 + 32] = stor[sha3(_3833 + 1)]
                            s = _3872 + 32
                            t = sha3(_3833 + 1)
                            while _3872 + stor1[_3833].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_3834 + 32] = _3872
                mem[_3834 + 64] = stor2[_3833]
                mem[_3834 + 96] = stor3[_3833]
                mem[_3834 + 128] = stor4[_3833]
                mem[_3834 + 160] = stor5[_3833]
                mem[_3834 + 192] = stor6[_3833]
                mem[_3834 + 224] = bool(stor7[_3833])
                if sha3(mem[128 len mem[96]]) == sha3(mem[_3872 + 32 len stor1[_3833].field_1 % 128]):
                    revert with 0, 'Planets: Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        staticcall universeImplementationAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3850 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_3850] < creationMinPrice:
            revert with 0, 'Planets: Balance too low for creation'
        mem[mem[64]] = 0xdb0e185b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg2
        require ext_code.size(universeImplementationAddress)
        call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
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
                revert with 0, 'Planets: rewardMult does not match in TierStorage'
            if arg2 > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                revert with 0, 17
            if stor553[stor559.length].field_256 < 0 and arg2 < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            stor553[stor559.length].field_256 += arg2
            _4096 = mem[64]
            mem[64] = mem[64] + 256
            mem[_4096] = stor551
            mem[_4096 + 32] = 96
            mem[_4096 + 64] = block.timestamp
            mem[_4096 + 96] = block.timestamp
            mem[_4096 + 128] = tierLevel.length
            mem[_4096 + 160] = arg2
            mem[_4096 + 192] = 0
            mem[_4096 + 224] = 1
        else:
            if arg2 <= 0:
                revert with 0, 'Planets: Fatal error while creating new TierStorage. Amount cannot be below zero.'
            _4036 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4036] = tierLevel.length
            mem[_4036 + 32] = arg2
            mem[_4036 + 64] = 1
            mem[32] = 553
            stor553[stor559.length].field_0 = tierLevel.length
            stor553[stor559.length].field_256 = arg2
            uint8(stor553[stor559.length].field_512) = 1
            stor554.length++
            mem[0] = 554
            storCCA5[stor554.length] = tierLevel.length
            _4058 = mem[64]
            mem[64] = mem[64] + 256
            mem[_4058] = stor551
            mem[_4058 + 32] = 96
            mem[_4058 + 64] = block.timestamp
            mem[_4058 + 96] = block.timestamp
            mem[_4058 + 128] = tierLevel.length
            mem[_4058 + 160] = arg2
            mem[_4058 + 192] = 0
            mem[_4058 + 224] = 1
    else:
        mem[ceil32(ceil32(arg1.length)) + 129 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
        idx = 0
        while idx < balanceOf[address(msg.sender)]:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(msg.sender)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if tokenOfOwnerByIndex[address(msg.sender)][idx] <= 0:
                revert with 0, 'Planets: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
            mem[32] = 552
            _1962 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1962] = stor552[stor151[address(msg.sender)][idx]].field_0
            if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                    revert with 0, 34
                _1977 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                mem[_1977] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                            mem[_1977 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_1977 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _1977 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _1977 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            mem[_1977 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_1977 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _1977 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _1977 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1962 + 32] = _1977
            else:
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                    revert with 0, 34
                _1989 = mem[64]
                mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                mem[_1989] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                        if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                            mem[_1989 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_1989 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _1989 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _1989 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                        if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            mem[_1989 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                        else:
                            mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                            mem[_1989 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                            s = _1989 + 32
                            t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                            while _1989 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1962 + 32] = _1989
            mem[_1962 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
            mem[_1962 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
            mem[_1962 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
            mem[_1962 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
            mem[_1962 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
            mem[_1962 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
            if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                revert with 0, 'Planets: This planet doesn't exist'
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3829 = mem[ceil32(ceil32(arg1.length)) + 97]
        idx = 0
        while idx < _3829:
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]
            mem[32] = 552
            _3840 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552)
            _3841 = mem[64]
            mem[64] = mem[64] + 256
            mem[_3841] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_0
            if bool(stor1[_3840].field_0):
                if bool(stor1[_3840].field_0) == uint255(stor1[_3840].field_0) * 0.5 < 32:
                    revert with 0, 34
                _3871 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_3840].field_0) * 0.5) + 32
                mem[_3871] = uint255(stor1[_3840].field_0) * 0.5
                if bool(stor1[_3840].field_0):
                    if bool(stor1[_3840].field_0) == uint255(stor1[_3840].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[_3840].field_0):
                        if 31 >= uint255(stor1[_3840].field_0) * 0.5:
                            mem[_3871 + 32] = 256 * Mask(248, 0, stor1[_3840].field_8)
                        else:
                            mem[0] = _3840 + 1
                            mem[_3871 + 32] = stor[sha3(_3840 + 1)]
                            s = _3871 + 32
                            t = sha3(_3840 + 1)
                            while _3871 + (uint255(stor1[_3840].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[_3840].field_0) == stor1[_3840].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[_3840].field_1 % 128:
                        if 31 >= stor1[_3840].field_1 % 128:
                            mem[_3871 + 32] = 256 * Mask(248, 0, stor1[_3840].field_8)
                        else:
                            mem[0] = _3840 + 1
                            mem[_3871 + 32] = stor[sha3(_3840 + 1)]
                            s = _3871 + 32
                            t = sha3(_3840 + 1)
                            while _3871 + stor1[_3840].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_3841 + 32] = _3871
                mem[_3841 + 64] = stor2[_3840]
                mem[_3841 + 96] = stor3[_3840]
                mem[_3841 + 128] = stor4[_3840]
                mem[_3841 + 160] = stor5[_3840]
                mem[_3841 + 192] = stor6[_3840]
                mem[_3841 + 224] = bool(stor7[_3840])
                if sha3(mem[128 len mem[96]]) == sha3(mem[_3871 + 32 len uint255(stor1[_3840].field_0) * 0.5]):
                    revert with 0, 'Planets: Name not available'
            else:
                if bool(stor1[_3840].field_0) == stor1[_3840].field_1 % 128 < 32:
                    revert with 0, 34
                _3877 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_3840].field_1 % 128) + 32
                mem[_3877] = stor1[_3840].field_1 % 128
                if bool(stor1[_3840].field_0):
                    if bool(stor1[_3840].field_0) == uint255(stor1[_3840].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1[_3840].field_0):
                        if 31 >= uint255(stor1[_3840].field_0) * 0.5:
                            mem[_3877 + 32] = 256 * Mask(248, 0, stor1[_3840].field_8)
                        else:
                            mem[0] = _3840 + 1
                            mem[_3877 + 32] = stor[sha3(_3840 + 1)]
                            s = _3877 + 32
                            t = sha3(_3840 + 1)
                            while _3877 + (uint255(stor1[_3840].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor1[_3840].field_0) == stor1[_3840].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor1[_3840].field_1 % 128:
                        if 31 >= stor1[_3840].field_1 % 128:
                            mem[_3877 + 32] = 256 * Mask(248, 0, stor1[_3840].field_8)
                        else:
                            mem[0] = _3840 + 1
                            mem[_3877 + 32] = stor[sha3(_3840 + 1)]
                            s = _3877 + 32
                            t = sha3(_3840 + 1)
                            while _3877 + stor1[_3840].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_3841 + 32] = _3877
                mem[_3841 + 64] = stor2[_3840]
                mem[_3841 + 96] = stor3[_3840]
                mem[_3841 + 128] = stor4[_3840]
                mem[_3841 + 160] = stor5[_3840]
                mem[_3841 + 192] = stor6[_3840]
                mem[_3841 + 224] = bool(stor7[_3840])
                if sha3(mem[128 len mem[96]]) == sha3(mem[_3877 + 32 len stor1[_3840].field_1 % 128]):
                    revert with 0, 'Planets: Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        staticcall universeImplementationAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3851 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_3851] < creationMinPrice:
            revert with 0, 'Planets: Balance too low for creation'
        mem[mem[64]] = 0xdb0e185b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg2
        require ext_code.size(universeImplementationAddress)
        call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
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
                revert with 0, 'Planets: rewardMult does not match in TierStorage'
            if arg2 > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                revert with 0, 17
            if stor553[stor559.length].field_256 < 0 and arg2 < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            stor553[stor559.length].field_256 += arg2
            _4097 = mem[64]
            mem[64] = mem[64] + 256
            mem[_4097] = stor551
            mem[_4097 + 32] = 96
            mem[_4097 + 64] = block.timestamp
            mem[_4097 + 96] = block.timestamp
            mem[_4097 + 128] = tierLevel.length
            mem[_4097 + 160] = arg2
            mem[_4097 + 192] = 0
            mem[_4097 + 224] = 1
        else:
            if arg2 <= 0:
                revert with 0, 'Planets: Fatal error while creating new TierStorage. Amount cannot be below zero.'
            _4047 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4047] = tierLevel.length
            mem[_4047 + 32] = arg2
            mem[_4047 + 64] = 1
            mem[32] = 553
            stor553[stor559.length].field_0 = tierLevel.length
            stor553[stor559.length].field_256 = arg2
            uint8(stor553[stor559.length].field_512) = 1
            stor554.length++
            mem[0] = 554
            storCCA5[stor554.length] = tierLevel.length
            _4065 = mem[64]
            mem[64] = mem[64] + 256
            mem[_4065] = stor551
            mem[_4065 + 32] = 96
            mem[_4065 + 64] = block.timestamp
            mem[_4065 + 96] = block.timestamp
            mem[_4065 + 128] = tierLevel.length
            mem[_4065 + 160] = arg2
            mem[_4065 + 192] = 0
            mem[_4065 + 224] = 1
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
    stor401 = 1
    return stor551
}

function getPlanetsByIds(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg1.length
    mem[64] = ceil32(32 * arg1.length) + (32 * arg1.length) + 129
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _511 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 552
            _512 = sha3(mem[(32 * idx) + 128], 552)
            _513 = mem[64]
            mem[64] = mem[64] + 256
            mem[_513] = stor552[mem[(32 * idx) + 128]].field_0
            if bool(stor1[_512].field_0):
                if bool(stor1[_512].field_0) == uint255(stor1[_512].field_0) * 0.5 < 32:
                    revert with 0, 34
                _521 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_512].field_0) * 0.5) + 32
                mem[_521] = uint255(stor1[_512].field_0) * 0.5
                if bool(stor1[_512].field_0):
                    if bool(stor1[_512].field_0) == uint255(stor1[_512].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_512].field_0):
                        mem[_513 + 32] = _521
                        mem[_513 + 64] = stor2[_512]
                        mem[_513 + 96] = stor3[_512]
                        mem[_513 + 128] = stor4[_512]
                        mem[_513 + 160] = stor5[_512]
                        mem[_513 + 192] = stor6[_512]
                        mem[_513 + 224] = bool(stor7[_512])
                        _531 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_531] = _513
                        mem[_531 + 32] = _511
                        if block.timestamp < stor3[_512]:
                            revert with 0, 17
                        if block.timestamp - stor3[_512] and rewardPerDay > -1 / block.timestamp - stor3[_512]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 and stor4[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000:
                            revert with 0, 17
                        mem[_531 + 64] = (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000:
                            revert with 0, 17
                        mem[_531 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                        mem[_531 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _531
                    else:
                        if 31 >= uint255(stor1[_512].field_0) * 0.5:
                            mem[_521 + 32] = 256 * Mask(248, 0, stor1[_512].field_8)
                            mem[_513 + 32] = _521
                            mem[_513 + 64] = stor2[_512]
                            mem[_513 + 96] = stor3[_512]
                            mem[_513 + 128] = stor4[_512]
                            mem[_513 + 160] = stor5[_512]
                            mem[_513 + 192] = stor6[_512]
                            mem[_513 + 224] = bool(stor7[_512])
                            _565 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_565] = _513
                            mem[_565 + 32] = _511
                            if block.timestamp < stor3[_512]:
                                revert with 0, 17
                            if block.timestamp - stor3[_512] and rewardPerDay > -1 / block.timestamp - stor3[_512]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 and stor4[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_565 + 64] = (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_565 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            mem[_565 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _565
                        else:
                            mem[0] = _512 + 1
                            mem[_521 + 32] = stor[sha3(_512 + 1)]
                            s = _521 + 32
                            t = sha3(_512 + 1)
                            while _521 + (uint255(stor1[_512].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_513 + 32] = _521
                            mem[_513 + 64] = stor2[_512]
                            mem[_513 + 96] = stor3[_512]
                            mem[_513 + 128] = stor4[_512]
                            mem[_513 + 160] = stor5[_512]
                            mem[_513 + 192] = stor6[_512]
                            mem[_513 + 224] = bool(stor7[_512])
                            _764 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_764] = _513
                            mem[_764 + 32] = _511
                            if block.timestamp < stor3[_512]:
                                revert with 0, 17
                            if block.timestamp - stor3[_512] and rewardPerDay > -1 / block.timestamp - stor3[_512]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 and stor4[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_764 + 64] = (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_764 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            mem[_764 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _764
                else:
                    if bool(stor1[_512].field_0) == stor1[_512].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_512].field_1 % 128:
                        mem[_513 + 32] = _521
                        mem[_513 + 64] = stor2[_512]
                        mem[_513 + 96] = stor3[_512]
                        mem[_513 + 128] = stor4[_512]
                        mem[_513 + 160] = stor5[_512]
                        mem[_513 + 192] = stor6[_512]
                        mem[_513 + 224] = bool(stor7[_512])
                        _560 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_560] = _513
                        mem[_560 + 32] = _511
                        if block.timestamp < stor3[_512]:
                            revert with 0, 17
                        if block.timestamp - stor3[_512] and rewardPerDay > -1 / block.timestamp - stor3[_512]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 and stor4[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000:
                            revert with 0, 17
                        mem[_560 + 64] = (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000:
                            revert with 0, 17
                        mem[_560 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                        mem[_560 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _560
                    else:
                        if 31 >= stor1[_512].field_1 % 128:
                            mem[_521 + 32] = 256 * Mask(248, 0, stor1[_512].field_8)
                            mem[_513 + 32] = _521
                            mem[_513 + 64] = stor2[_512]
                            mem[_513 + 96] = stor3[_512]
                            mem[_513 + 128] = stor4[_512]
                            mem[_513 + 160] = stor5[_512]
                            mem[_513 + 192] = stor6[_512]
                            mem[_513 + 224] = bool(stor7[_512])
                            _579 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_579] = _513
                            mem[_579 + 32] = _511
                            if block.timestamp < stor3[_512]:
                                revert with 0, 17
                            if block.timestamp - stor3[_512] and rewardPerDay > -1 / block.timestamp - stor3[_512]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 and stor4[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_579 + 64] = (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_579 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            mem[_579 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _579
                        else:
                            mem[0] = _512 + 1
                            mem[_521 + 32] = stor[sha3(_512 + 1)]
                            s = _521 + 32
                            t = sha3(_512 + 1)
                            while _521 + stor1[_512].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_513 + 32] = _521
                            mem[_513 + 64] = stor2[_512]
                            mem[_513 + 96] = stor3[_512]
                            mem[_513 + 128] = stor4[_512]
                            mem[_513 + 160] = stor5[_512]
                            mem[_513 + 192] = stor6[_512]
                            mem[_513 + 224] = bool(stor7[_512])
                            _765 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_765] = _513
                            mem[_765 + 32] = _511
                            if block.timestamp < stor3[_512]:
                                revert with 0, 17
                            if block.timestamp - stor3[_512] and rewardPerDay > -1 / block.timestamp - stor3[_512]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 and stor4[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_765 + 64] = (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_765 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            mem[_765 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _765
            else:
                if bool(stor1[_512].field_0) == stor1[_512].field_1 % 128 < 32:
                    revert with 0, 34
                _523 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_512].field_1 % 128) + 32
                mem[_523] = stor1[_512].field_1 % 128
                if bool(stor1[_512].field_0):
                    if bool(stor1[_512].field_0) == uint255(stor1[_512].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_512].field_0):
                        mem[_513 + 32] = _523
                        mem[_513 + 64] = stor2[_512]
                        mem[_513 + 96] = stor3[_512]
                        mem[_513 + 128] = stor4[_512]
                        mem[_513 + 160] = stor5[_512]
                        mem[_513 + 192] = stor6[_512]
                        mem[_513 + 224] = bool(stor7[_512])
                        _561 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_561] = _513
                        mem[_561 + 32] = _511
                        if block.timestamp < stor3[_512]:
                            revert with 0, 17
                        if block.timestamp - stor3[_512] and rewardPerDay > -1 / block.timestamp - stor3[_512]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 and stor4[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000:
                            revert with 0, 17
                        mem[_561 + 64] = (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000:
                            revert with 0, 17
                        mem[_561 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                        mem[_561 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _561
                    else:
                        if 31 >= uint255(stor1[_512].field_0) * 0.5:
                            mem[_523 + 32] = 256 * Mask(248, 0, stor1[_512].field_8)
                            mem[_513 + 32] = _523
                            mem[_513 + 64] = stor2[_512]
                            mem[_513 + 96] = stor3[_512]
                            mem[_513 + 128] = stor4[_512]
                            mem[_513 + 160] = stor5[_512]
                            mem[_513 + 192] = stor6[_512]
                            mem[_513 + 224] = bool(stor7[_512])
                            _580 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_580] = _513
                            mem[_580 + 32] = _511
                            if block.timestamp < stor3[_512]:
                                revert with 0, 17
                            if block.timestamp - stor3[_512] and rewardPerDay > -1 / block.timestamp - stor3[_512]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 and stor4[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_580 + 64] = (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_580 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            mem[_580 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _580
                        else:
                            mem[0] = _512 + 1
                            mem[_523 + 32] = stor[sha3(_512 + 1)]
                            s = _523 + 32
                            t = sha3(_512 + 1)
                            while _523 + (uint255(stor1[_512].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_513 + 32] = _523
                            mem[_513 + 64] = stor2[_512]
                            mem[_513 + 96] = stor3[_512]
                            mem[_513 + 128] = stor4[_512]
                            mem[_513 + 160] = stor5[_512]
                            mem[_513 + 192] = stor6[_512]
                            mem[_513 + 224] = bool(stor7[_512])
                            _766 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_766] = _513
                            mem[_766 + 32] = _511
                            if block.timestamp < stor3[_512]:
                                revert with 0, 17
                            if block.timestamp - stor3[_512] and rewardPerDay > -1 / block.timestamp - stor3[_512]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 and stor4[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_766 + 64] = (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_766 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            mem[_766 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _766
                else:
                    if bool(stor1[_512].field_0) == stor1[_512].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_512].field_1 % 128:
                        mem[_513 + 32] = _523
                        mem[_513 + 64] = stor2[_512]
                        mem[_513 + 96] = stor3[_512]
                        mem[_513 + 128] = stor4[_512]
                        mem[_513 + 160] = stor5[_512]
                        mem[_513 + 192] = stor6[_512]
                        mem[_513 + 224] = bool(stor7[_512])
                        _574 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_574] = _513
                        mem[_574 + 32] = _511
                        if block.timestamp < stor3[_512]:
                            revert with 0, 17
                        if block.timestamp - stor3[_512] and rewardPerDay > -1 / block.timestamp - stor3[_512]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 and stor4[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000:
                            revert with 0, 17
                        mem[_574 + 64] = (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000:
                            revert with 0, 17
                        mem[_574 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                        mem[_574 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _574
                    else:
                        if 31 >= stor1[_512].field_1 % 128:
                            mem[_523 + 32] = 256 * Mask(248, 0, stor1[_512].field_8)
                            mem[_513 + 32] = _523
                            mem[_513 + 64] = stor2[_512]
                            mem[_513 + 96] = stor3[_512]
                            mem[_513 + 128] = stor4[_512]
                            mem[_513 + 160] = stor5[_512]
                            mem[_513 + 192] = stor6[_512]
                            mem[_513 + 224] = bool(stor7[_512])
                            _592 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_592] = _513
                            mem[_592 + 32] = _511
                            if block.timestamp < stor3[_512]:
                                revert with 0, 17
                            if block.timestamp - stor3[_512] and rewardPerDay > -1 / block.timestamp - stor3[_512]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 and stor4[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_592 + 64] = (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_592 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            mem[_592 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _592
                        else:
                            mem[0] = _512 + 1
                            mem[_523 + 32] = stor[sha3(_512 + 1)]
                            s = _523 + 32
                            t = sha3(_512 + 1)
                            while _523 + stor1[_512].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_513 + 32] = _523
                            mem[_513 + 64] = stor2[_512]
                            mem[_513 + 96] = stor3[_512]
                            mem[_513 + 128] = stor4[_512]
                            mem[_513 + 160] = stor5[_512]
                            mem[_513 + 192] = stor6[_512]
                            mem[_513 + 224] = bool(stor7[_512])
                            _767 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_767] = _513
                            mem[_767 + 32] = _511
                            if block.timestamp < stor3[_512]:
                                revert with 0, 17
                            if block.timestamp - stor3[_512] and rewardPerDay > -1 / block.timestamp - stor3[_512]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 and stor4[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_767 + 64] = (block.timestamp * rewardPerDay) - (stor3[_512] * rewardPerDay) / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 and stor5[_512] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000:
                                revert with 0, 17
                            mem[_767 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_512] / 100000 * stor5[_512] / 100000
                            mem[_767 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _767
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _510 = mem[64]
        mem[mem[64]] = 32
        _514 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + 97]
        idx = 0
        s = ceil32(32 * arg1.length) + 129
        t = mem[64] + (32 * _514) + 64
        u = mem[64] + 64
        while idx < _514:
            mem[u] = t + -_510 - 64
            _758 = mem[s]
            _759 = mem[mem[s]]
            mem[t] = 160
            mem[t + 160] = mem[_759]
            _761 = mem[_759 + 32]
            mem[t + 192] = 256
            _763 = mem[_761]
            mem[t + 416] = mem[_761]
            v = 0
            while v < _763:
                mem[v + t + 448] = mem[v + _761 + 32]
                v = v + 32
                continue 
            if ceil32(_763) > _763:
                mem[_763 + t + 448] = 0
            mem[t + 224] = mem[_759 + 64]
            mem[t + 256] = mem[_759 + 96]
            mem[t + 288] = mem[_759 + 128]
            mem[t + 320] = mem[_759 + 160]
            mem[t + 352] = mem[_759 + 192]
            mem[t + 384] = bool(mem[_759 + 224])
            mem[t + 32] = mem[_758 + 32]
            mem[t + 64] = mem[_758 + 64]
            mem[t + 96] = mem[_758 + 96]
            mem[t + 128] = mem[_758 + 128]
            idx = idx + 1
            s = s + 32
            t = ceil32(_763) + t + 448
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = ceil32(32 * arg1.length) + (32 * arg1.length) + 545
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 289] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 321] = 96
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 353] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 385] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 417] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 449] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 481] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 513] = 0
    mem[var26002] = var26001
    mem[var26002 + 32] = 0
    mem[var26002 + 64] = 0
    mem[var26002 + 96] = 0
    mem[var26002 + 128] = 0
    mem[var28002] = var28001
    if not var28003 - 1:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _1341 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 552
            _1342 = sha3(mem[(32 * idx) + 128], 552)
            _1343 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1343] = stor552[mem[(32 * idx) + 128]].field_0
            if bool(stor1[_1342].field_0):
                if bool(stor1[_1342].field_0) == uint255(stor1[_1342].field_0) * 0.5 < 32:
                    revert with 0, 34
                _1352 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_1342].field_0) * 0.5) + 32
                mem[_1352] = uint255(stor1[_1342].field_0) * 0.5
                if bool(stor1[_1342].field_0):
                    if bool(stor1[_1342].field_0) == uint255(stor1[_1342].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_1342].field_0):
                        mem[_1343 + 32] = _1352
                        mem[_1343 + 64] = stor2[_1342]
                        mem[_1343 + 96] = stor3[_1342]
                        mem[_1343 + 128] = stor4[_1342]
                        mem[_1343 + 160] = stor5[_1342]
                        mem[_1343 + 192] = stor6[_1342]
                        mem[_1343 + 224] = bool(stor7[_1342])
                        _1365 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_1365] = _1343
                        mem[_1365 + 32] = _1341
                        if block.timestamp < stor3[_1342]:
                            revert with 0, 17
                        if block.timestamp - stor3[_1342] and rewardPerDay > -1 / block.timestamp - stor3[_1342]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 and stor4[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000:
                            revert with 0, 17
                        mem[_1365 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000:
                            revert with 0, 17
                        mem[_1365 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                        mem[_1365 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1365
                    else:
                        if 31 >= uint255(stor1[_1342].field_0) * 0.5:
                            mem[_1352 + 32] = 256 * Mask(248, 0, stor1[_1342].field_8)
                            mem[_1343 + 32] = _1352
                            mem[_1343 + 64] = stor2[_1342]
                            mem[_1343 + 96] = stor3[_1342]
                            mem[_1343 + 128] = stor4[_1342]
                            mem[_1343 + 160] = stor5[_1342]
                            mem[_1343 + 192] = stor6[_1342]
                            mem[_1343 + 224] = bool(stor7[_1342])
                            _1396 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1396] = _1343
                            mem[_1396 + 32] = _1341
                            if block.timestamp < stor3[_1342]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1342] and rewardPerDay > -1 / block.timestamp - stor3[_1342]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 and stor4[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1396 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1396 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            mem[_1396 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1396
                        else:
                            mem[0] = _1342 + 1
                            mem[_1352 + 32] = stor[sha3(_1342 + 1)]
                            s = _1352 + 32
                            t = sha3(_1342 + 1)
                            while _1352 + (uint255(stor1[_1342].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1343 + 32] = _1352
                            mem[_1343 + 64] = stor2[_1342]
                            mem[_1343 + 96] = stor3[_1342]
                            mem[_1343 + 128] = stor4[_1342]
                            mem[_1343 + 160] = stor5[_1342]
                            mem[_1343 + 192] = stor6[_1342]
                            mem[_1343 + 224] = bool(stor7[_1342])
                            _1594 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1594] = _1343
                            mem[_1594 + 32] = _1341
                            if block.timestamp < stor3[_1342]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1342] and rewardPerDay > -1 / block.timestamp - stor3[_1342]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 and stor4[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1594 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1594 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            mem[_1594 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1594
                else:
                    if bool(stor1[_1342].field_0) == stor1[_1342].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_1342].field_1 % 128:
                        mem[_1343 + 32] = _1352
                        mem[_1343 + 64] = stor2[_1342]
                        mem[_1343 + 96] = stor3[_1342]
                        mem[_1343 + 128] = stor4[_1342]
                        mem[_1343 + 160] = stor5[_1342]
                        mem[_1343 + 192] = stor6[_1342]
                        mem[_1343 + 224] = bool(stor7[_1342])
                        _1393 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_1393] = _1343
                        mem[_1393 + 32] = _1341
                        if block.timestamp < stor3[_1342]:
                            revert with 0, 17
                        if block.timestamp - stor3[_1342] and rewardPerDay > -1 / block.timestamp - stor3[_1342]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 and stor4[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000:
                            revert with 0, 17
                        mem[_1393 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000:
                            revert with 0, 17
                        mem[_1393 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                        mem[_1393 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1393
                    else:
                        if 31 >= stor1[_1342].field_1 % 128:
                            mem[_1352 + 32] = 256 * Mask(248, 0, stor1[_1342].field_8)
                            mem[_1343 + 32] = _1352
                            mem[_1343 + 64] = stor2[_1342]
                            mem[_1343 + 96] = stor3[_1342]
                            mem[_1343 + 128] = stor4[_1342]
                            mem[_1343 + 160] = stor5[_1342]
                            mem[_1343 + 192] = stor6[_1342]
                            mem[_1343 + 224] = bool(stor7[_1342])
                            _1409 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1409] = _1343
                            mem[_1409 + 32] = _1341
                            if block.timestamp < stor3[_1342]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1342] and rewardPerDay > -1 / block.timestamp - stor3[_1342]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 and stor4[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1409 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1409 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            mem[_1409 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1409
                        else:
                            mem[0] = _1342 + 1
                            mem[_1352 + 32] = stor[sha3(_1342 + 1)]
                            s = _1352 + 32
                            t = sha3(_1342 + 1)
                            while _1352 + stor1[_1342].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1343 + 32] = _1352
                            mem[_1343 + 64] = stor2[_1342]
                            mem[_1343 + 96] = stor3[_1342]
                            mem[_1343 + 128] = stor4[_1342]
                            mem[_1343 + 160] = stor5[_1342]
                            mem[_1343 + 192] = stor6[_1342]
                            mem[_1343 + 224] = bool(stor7[_1342])
                            _1595 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1595] = _1343
                            mem[_1595 + 32] = _1341
                            if block.timestamp < stor3[_1342]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1342] and rewardPerDay > -1 / block.timestamp - stor3[_1342]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 and stor4[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1595 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1595 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            mem[_1595 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1595
            else:
                if bool(stor1[_1342].field_0) == stor1[_1342].field_1 % 128 < 32:
                    revert with 0, 34
                _1354 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_1342].field_1 % 128) + 32
                mem[_1354] = stor1[_1342].field_1 % 128
                if bool(stor1[_1342].field_0):
                    if bool(stor1[_1342].field_0) == uint255(stor1[_1342].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_1342].field_0):
                        mem[_1343 + 32] = _1354
                        mem[_1343 + 64] = stor2[_1342]
                        mem[_1343 + 96] = stor3[_1342]
                        mem[_1343 + 128] = stor4[_1342]
                        mem[_1343 + 160] = stor5[_1342]
                        mem[_1343 + 192] = stor6[_1342]
                        mem[_1343 + 224] = bool(stor7[_1342])
                        _1394 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_1394] = _1343
                        mem[_1394 + 32] = _1341
                        if block.timestamp < stor3[_1342]:
                            revert with 0, 17
                        if block.timestamp - stor3[_1342] and rewardPerDay > -1 / block.timestamp - stor3[_1342]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 and stor4[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000:
                            revert with 0, 17
                        mem[_1394 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000:
                            revert with 0, 17
                        mem[_1394 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                        mem[_1394 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1394
                    else:
                        if 31 >= uint255(stor1[_1342].field_0) * 0.5:
                            mem[_1354 + 32] = 256 * Mask(248, 0, stor1[_1342].field_8)
                            mem[_1343 + 32] = _1354
                            mem[_1343 + 64] = stor2[_1342]
                            mem[_1343 + 96] = stor3[_1342]
                            mem[_1343 + 128] = stor4[_1342]
                            mem[_1343 + 160] = stor5[_1342]
                            mem[_1343 + 192] = stor6[_1342]
                            mem[_1343 + 224] = bool(stor7[_1342])
                            _1410 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1410] = _1343
                            mem[_1410 + 32] = _1341
                            if block.timestamp < stor3[_1342]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1342] and rewardPerDay > -1 / block.timestamp - stor3[_1342]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 and stor4[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1410 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1410 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            mem[_1410 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1410
                        else:
                            mem[0] = _1342 + 1
                            mem[_1354 + 32] = stor[sha3(_1342 + 1)]
                            s = _1354 + 32
                            t = sha3(_1342 + 1)
                            while _1354 + (uint255(stor1[_1342].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1343 + 32] = _1354
                            mem[_1343 + 64] = stor2[_1342]
                            mem[_1343 + 96] = stor3[_1342]
                            mem[_1343 + 128] = stor4[_1342]
                            mem[_1343 + 160] = stor5[_1342]
                            mem[_1343 + 192] = stor6[_1342]
                            mem[_1343 + 224] = bool(stor7[_1342])
                            _1596 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1596] = _1343
                            mem[_1596 + 32] = _1341
                            if block.timestamp < stor3[_1342]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1342] and rewardPerDay > -1 / block.timestamp - stor3[_1342]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 and stor4[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1596 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1596 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            mem[_1596 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1596
                else:
                    if bool(stor1[_1342].field_0) == stor1[_1342].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_1342].field_1 % 128:
                        mem[_1343 + 32] = _1354
                        mem[_1343 + 64] = stor2[_1342]
                        mem[_1343 + 96] = stor3[_1342]
                        mem[_1343 + 128] = stor4[_1342]
                        mem[_1343 + 160] = stor5[_1342]
                        mem[_1343 + 192] = stor6[_1342]
                        mem[_1343 + 224] = bool(stor7[_1342])
                        _1405 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_1405] = _1343
                        mem[_1405 + 32] = _1341
                        if block.timestamp < stor3[_1342]:
                            revert with 0, 17
                        if block.timestamp - stor3[_1342] and rewardPerDay > -1 / block.timestamp - stor3[_1342]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 and stor4[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000:
                            revert with 0, 17
                        mem[_1405 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000:
                            revert with 0, 17
                        mem[_1405 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                        mem[_1405 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1405
                    else:
                        if 31 >= stor1[_1342].field_1 % 128:
                            mem[_1354 + 32] = 256 * Mask(248, 0, stor1[_1342].field_8)
                            mem[_1343 + 32] = _1354
                            mem[_1343 + 64] = stor2[_1342]
                            mem[_1343 + 96] = stor3[_1342]
                            mem[_1343 + 128] = stor4[_1342]
                            mem[_1343 + 160] = stor5[_1342]
                            mem[_1343 + 192] = stor6[_1342]
                            mem[_1343 + 224] = bool(stor7[_1342])
                            _1423 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1423] = _1343
                            mem[_1423 + 32] = _1341
                            if block.timestamp < stor3[_1342]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1342] and rewardPerDay > -1 / block.timestamp - stor3[_1342]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 and stor4[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1423 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1423 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            mem[_1423 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1423
                        else:
                            mem[0] = _1342 + 1
                            mem[_1354 + 32] = stor[sha3(_1342 + 1)]
                            s = _1354 + 32
                            t = sha3(_1342 + 1)
                            while _1354 + stor1[_1342].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1343 + 32] = _1354
                            mem[_1343 + 64] = stor2[_1342]
                            mem[_1343 + 96] = stor3[_1342]
                            mem[_1343 + 128] = stor4[_1342]
                            mem[_1343 + 160] = stor5[_1342]
                            mem[_1343 + 192] = stor6[_1342]
                            mem[_1343 + 224] = bool(stor7[_1342])
                            _1597 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1597] = _1343
                            mem[_1597 + 32] = _1341
                            if block.timestamp < stor3[_1342]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1342] and rewardPerDay > -1 / block.timestamp - stor3[_1342]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 and stor4[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1597 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1342] * rewardPerDay) / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 and stor5[_1342] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000:
                                revert with 0, 17
                            mem[_1597 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1342] / 100000 * stor5[_1342] / 100000
                            mem[_1597 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1597
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1340 = mem[64]
        mem[mem[64]] = 32
        _1344 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + 97]
        idx = 0
        s = ceil32(32 * arg1.length) + 129
        t = mem[64] + (32 * _1344) + 64
        u = mem[64] + 64
        while idx < _1344:
            mem[u] = t + -_1340 - 64
            _1588 = mem[s]
            _1589 = mem[mem[s]]
            mem[t] = 160
            mem[t + 160] = mem[_1589]
            _1591 = mem[_1589 + 32]
            mem[t + 192] = 256
            _1593 = mem[_1591]
            mem[t + 416] = mem[_1591]
            v = 0
            while v < _1593:
                mem[v + t + 448] = mem[v + _1591 + 32]
                v = v + 32
                continue 
            if ceil32(_1593) > _1593:
                mem[_1593 + t + 448] = 0
            mem[t + 224] = mem[_1589 + 64]
            mem[t + 256] = mem[_1589 + 96]
            mem[t + 288] = mem[_1589 + 128]
            mem[t + 320] = mem[_1589 + 160]
            mem[t + 352] = mem[_1589 + 192]
            mem[t + 384] = bool(mem[_1589 + 224])
            mem[t + 32] = mem[_1588 + 32]
            mem[t + 64] = mem[_1588 + 64]
            mem[t + 96] = mem[_1588 + 96]
            mem[t + 128] = mem[_1588 + 128]
            idx = idx + 1
            s = s + 32
            t = ceil32(_1593) + t + 448
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = ceil32(32 * arg1.length) + (32 * arg1.length) + 961
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 705] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 737] = 96
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 769] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 801] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 833] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 865] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 897] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 929] = 0
    mem[var34002] = var34001
    mem[var34002 + 32] = 0
    mem[var34002 + 64] = 0
    mem[var34002 + 96] = 0
    mem[var34002 + 128] = 0
    mem[var36002] = var36001
    if not var36003 - 1:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _2171 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 552
            _2172 = sha3(mem[(32 * idx) + 128], 552)
            _2173 = mem[64]
            mem[64] = mem[64] + 256
            mem[_2173] = stor552[mem[(32 * idx) + 128]].field_0
            if bool(stor1[_2172].field_0):
                if bool(stor1[_2172].field_0) == uint255(stor1[_2172].field_0) * 0.5 < 32:
                    revert with 0, 34
                _2182 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_2172].field_0) * 0.5) + 32
                mem[_2182] = uint255(stor1[_2172].field_0) * 0.5
                if bool(stor1[_2172].field_0):
                    if bool(stor1[_2172].field_0) == uint255(stor1[_2172].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_2172].field_0):
                        mem[_2173 + 32] = _2182
                        mem[_2173 + 64] = stor2[_2172]
                        mem[_2173 + 96] = stor3[_2172]
                        mem[_2173 + 128] = stor4[_2172]
                        mem[_2173 + 160] = stor5[_2172]
                        mem[_2173 + 192] = stor6[_2172]
                        mem[_2173 + 224] = bool(stor7[_2172])
                        _2195 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2195] = _2173
                        mem[_2195 + 32] = _2171
                        if block.timestamp < stor3[_2172]:
                            revert with 0, 17
                        if block.timestamp - stor3[_2172] and rewardPerDay > -1 / block.timestamp - stor3[_2172]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 and stor4[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000:
                            revert with 0, 17
                        mem[_2195 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000:
                            revert with 0, 17
                        mem[_2195 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                        mem[_2195 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2195
                    else:
                        if 31 >= uint255(stor1[_2172].field_0) * 0.5:
                            mem[_2182 + 32] = 256 * Mask(248, 0, stor1[_2172].field_8)
                            mem[_2173 + 32] = _2182
                            mem[_2173 + 64] = stor2[_2172]
                            mem[_2173 + 96] = stor3[_2172]
                            mem[_2173 + 128] = stor4[_2172]
                            mem[_2173 + 160] = stor5[_2172]
                            mem[_2173 + 192] = stor6[_2172]
                            mem[_2173 + 224] = bool(stor7[_2172])
                            _2226 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2226] = _2173
                            mem[_2226 + 32] = _2171
                            if block.timestamp < stor3[_2172]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2172] and rewardPerDay > -1 / block.timestamp - stor3[_2172]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 and stor4[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2226 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2226 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            mem[_2226 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2226
                        else:
                            mem[0] = _2172 + 1
                            mem[_2182 + 32] = stor[sha3(_2172 + 1)]
                            s = _2182 + 32
                            t = sha3(_2172 + 1)
                            while _2182 + (uint255(stor1[_2172].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_2173 + 32] = _2182
                            mem[_2173 + 64] = stor2[_2172]
                            mem[_2173 + 96] = stor3[_2172]
                            mem[_2173 + 128] = stor4[_2172]
                            mem[_2173 + 160] = stor5[_2172]
                            mem[_2173 + 192] = stor6[_2172]
                            mem[_2173 + 224] = bool(stor7[_2172])
                            _2424 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2424] = _2173
                            mem[_2424 + 32] = _2171
                            if block.timestamp < stor3[_2172]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2172] and rewardPerDay > -1 / block.timestamp - stor3[_2172]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 and stor4[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2424 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2424 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            mem[_2424 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2424
                else:
                    if bool(stor1[_2172].field_0) == stor1[_2172].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_2172].field_1 % 128:
                        mem[_2173 + 32] = _2182
                        mem[_2173 + 64] = stor2[_2172]
                        mem[_2173 + 96] = stor3[_2172]
                        mem[_2173 + 128] = stor4[_2172]
                        mem[_2173 + 160] = stor5[_2172]
                        mem[_2173 + 192] = stor6[_2172]
                        mem[_2173 + 224] = bool(stor7[_2172])
                        _2223 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2223] = _2173
                        mem[_2223 + 32] = _2171
                        if block.timestamp < stor3[_2172]:
                            revert with 0, 17
                        if block.timestamp - stor3[_2172] and rewardPerDay > -1 / block.timestamp - stor3[_2172]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 and stor4[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000:
                            revert with 0, 17
                        mem[_2223 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000:
                            revert with 0, 17
                        mem[_2223 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                        mem[_2223 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2223
                    else:
                        if 31 >= stor1[_2172].field_1 % 128:
                            mem[_2182 + 32] = 256 * Mask(248, 0, stor1[_2172].field_8)
                            mem[_2173 + 32] = _2182
                            mem[_2173 + 64] = stor2[_2172]
                            mem[_2173 + 96] = stor3[_2172]
                            mem[_2173 + 128] = stor4[_2172]
                            mem[_2173 + 160] = stor5[_2172]
                            mem[_2173 + 192] = stor6[_2172]
                            mem[_2173 + 224] = bool(stor7[_2172])
                            _2239 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2239] = _2173
                            mem[_2239 + 32] = _2171
                            if block.timestamp < stor3[_2172]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2172] and rewardPerDay > -1 / block.timestamp - stor3[_2172]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 and stor4[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2239 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2239 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            mem[_2239 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2239
                        else:
                            mem[0] = _2172 + 1
                            mem[_2182 + 32] = stor[sha3(_2172 + 1)]
                            s = _2182 + 32
                            t = sha3(_2172 + 1)
                            while _2182 + stor1[_2172].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_2173 + 32] = _2182
                            mem[_2173 + 64] = stor2[_2172]
                            mem[_2173 + 96] = stor3[_2172]
                            mem[_2173 + 128] = stor4[_2172]
                            mem[_2173 + 160] = stor5[_2172]
                            mem[_2173 + 192] = stor6[_2172]
                            mem[_2173 + 224] = bool(stor7[_2172])
                            _2425 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2425] = _2173
                            mem[_2425 + 32] = _2171
                            if block.timestamp < stor3[_2172]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2172] and rewardPerDay > -1 / block.timestamp - stor3[_2172]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 and stor4[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2425 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2425 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            mem[_2425 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2425
            else:
                if bool(stor1[_2172].field_0) == stor1[_2172].field_1 % 128 < 32:
                    revert with 0, 34
                _2184 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_2172].field_1 % 128) + 32
                mem[_2184] = stor1[_2172].field_1 % 128
                if bool(stor1[_2172].field_0):
                    if bool(stor1[_2172].field_0) == uint255(stor1[_2172].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_2172].field_0):
                        mem[_2173 + 32] = _2184
                        mem[_2173 + 64] = stor2[_2172]
                        mem[_2173 + 96] = stor3[_2172]
                        mem[_2173 + 128] = stor4[_2172]
                        mem[_2173 + 160] = stor5[_2172]
                        mem[_2173 + 192] = stor6[_2172]
                        mem[_2173 + 224] = bool(stor7[_2172])
                        _2224 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2224] = _2173
                        mem[_2224 + 32] = _2171
                        if block.timestamp < stor3[_2172]:
                            revert with 0, 17
                        if block.timestamp - stor3[_2172] and rewardPerDay > -1 / block.timestamp - stor3[_2172]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 and stor4[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000:
                            revert with 0, 17
                        mem[_2224 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000:
                            revert with 0, 17
                        mem[_2224 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                        mem[_2224 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2224
                    else:
                        if 31 >= uint255(stor1[_2172].field_0) * 0.5:
                            mem[_2184 + 32] = 256 * Mask(248, 0, stor1[_2172].field_8)
                            mem[_2173 + 32] = _2184
                            mem[_2173 + 64] = stor2[_2172]
                            mem[_2173 + 96] = stor3[_2172]
                            mem[_2173 + 128] = stor4[_2172]
                            mem[_2173 + 160] = stor5[_2172]
                            mem[_2173 + 192] = stor6[_2172]
                            mem[_2173 + 224] = bool(stor7[_2172])
                            _2240 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2240] = _2173
                            mem[_2240 + 32] = _2171
                            if block.timestamp < stor3[_2172]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2172] and rewardPerDay > -1 / block.timestamp - stor3[_2172]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 and stor4[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2240 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2240 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            mem[_2240 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2240
                        else:
                            mem[0] = _2172 + 1
                            mem[_2184 + 32] = stor[sha3(_2172 + 1)]
                            s = _2184 + 32
                            t = sha3(_2172 + 1)
                            while _2184 + (uint255(stor1[_2172].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_2173 + 32] = _2184
                            mem[_2173 + 64] = stor2[_2172]
                            mem[_2173 + 96] = stor3[_2172]
                            mem[_2173 + 128] = stor4[_2172]
                            mem[_2173 + 160] = stor5[_2172]
                            mem[_2173 + 192] = stor6[_2172]
                            mem[_2173 + 224] = bool(stor7[_2172])
                            _2426 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2426] = _2173
                            mem[_2426 + 32] = _2171
                            if block.timestamp < stor3[_2172]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2172] and rewardPerDay > -1 / block.timestamp - stor3[_2172]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 and stor4[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2426 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2426 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            mem[_2426 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2426
                else:
                    if bool(stor1[_2172].field_0) == stor1[_2172].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_2172].field_1 % 128:
                        mem[_2173 + 32] = _2184
                        mem[_2173 + 64] = stor2[_2172]
                        mem[_2173 + 96] = stor3[_2172]
                        mem[_2173 + 128] = stor4[_2172]
                        mem[_2173 + 160] = stor5[_2172]
                        mem[_2173 + 192] = stor6[_2172]
                        mem[_2173 + 224] = bool(stor7[_2172])
                        _2235 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2235] = _2173
                        mem[_2235 + 32] = _2171
                        if block.timestamp < stor3[_2172]:
                            revert with 0, 17
                        if block.timestamp - stor3[_2172] and rewardPerDay > -1 / block.timestamp - stor3[_2172]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 and stor4[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000:
                            revert with 0, 17
                        mem[_2235 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000:
                            revert with 0, 17
                        mem[_2235 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                        mem[_2235 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2235
                    else:
                        if 31 >= stor1[_2172].field_1 % 128:
                            mem[_2184 + 32] = 256 * Mask(248, 0, stor1[_2172].field_8)
                            mem[_2173 + 32] = _2184
                            mem[_2173 + 64] = stor2[_2172]
                            mem[_2173 + 96] = stor3[_2172]
                            mem[_2173 + 128] = stor4[_2172]
                            mem[_2173 + 160] = stor5[_2172]
                            mem[_2173 + 192] = stor6[_2172]
                            mem[_2173 + 224] = bool(stor7[_2172])
                            _2253 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2253] = _2173
                            mem[_2253 + 32] = _2171
                            if block.timestamp < stor3[_2172]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2172] and rewardPerDay > -1 / block.timestamp - stor3[_2172]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 and stor4[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2253 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2253 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            mem[_2253 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2253
                        else:
                            mem[0] = _2172 + 1
                            mem[_2184 + 32] = stor[sha3(_2172 + 1)]
                            s = _2184 + 32
                            t = sha3(_2172 + 1)
                            while _2184 + stor1[_2172].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_2173 + 32] = _2184
                            mem[_2173 + 64] = stor2[_2172]
                            mem[_2173 + 96] = stor3[_2172]
                            mem[_2173 + 128] = stor4[_2172]
                            mem[_2173 + 160] = stor5[_2172]
                            mem[_2173 + 192] = stor6[_2172]
                            mem[_2173 + 224] = bool(stor7[_2172])
                            _2427 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2427] = _2173
                            mem[_2427 + 32] = _2171
                            if block.timestamp < stor3[_2172]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2172] and rewardPerDay > -1 / block.timestamp - stor3[_2172]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 and stor4[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2427 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2172] * rewardPerDay) / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 and stor5[_2172] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000:
                                revert with 0, 17
                            mem[_2427 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2172] / 100000 * stor5[_2172] / 100000
                            mem[_2427 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2427
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2170 = mem[64]
        mem[mem[64]] = 32
        _2174 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + 97]
        idx = 0
        s = ceil32(32 * arg1.length) + 129
        t = mem[64] + (32 * _2174) + 64
        u = mem[64] + 64
        while idx < _2174:
            mem[u] = t + -_2170 - 64
            _2418 = mem[s]
            _2419 = mem[mem[s]]
            mem[t] = 160
            mem[t + 160] = mem[_2419]
            _2421 = mem[_2419 + 32]
            mem[t + 192] = 256
            _2423 = mem[_2421]
            mem[t + 416] = mem[_2421]
            v = 0
            while v < _2423:
                mem[v + t + 448] = mem[v + _2421 + 32]
                v = v + 32
                continue 
            if ceil32(_2423) > _2423:
                mem[_2423 + t + 448] = 0
            mem[t + 224] = mem[_2419 + 64]
            mem[t + 256] = mem[_2419 + 96]
            mem[t + 288] = mem[_2419 + 128]
            mem[t + 320] = mem[_2419 + 160]
            mem[t + 352] = mem[_2419 + 192]
            mem[t + 384] = bool(mem[_2419 + 224])
            mem[t + 32] = mem[_2418 + 32]
            mem[t + 64] = mem[_2418 + 64]
            mem[t + 96] = mem[_2418 + 96]
            mem[t + 128] = mem[_2418 + 128]
            idx = idx + 1
            s = s + 32
            t = ceil32(_2423) + t + 448
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = ceil32(32 * arg1.length) + (32 * arg1.length) + 1377
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1121] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1153] = 96
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1185] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1217] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1249] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1281] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1313] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1345] = 0
    mem[var42002] = var42001
    mem[var42002 + 32] = 0
    mem[var42002 + 64] = 0
    mem[var42002 + 96] = 0
    mem[var42002 + 128] = 0
    mem[var44002] = var44001
    if not var44003 - 1:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _3001 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 552
            _3002 = sha3(mem[(32 * idx) + 128], 552)
            _3003 = mem[64]
            mem[64] = mem[64] + 256
            mem[_3003] = stor552[mem[(32 * idx) + 128]].field_0
            if bool(stor1[_3002].field_0):
                if bool(stor1[_3002].field_0) == uint255(stor1[_3002].field_0) * 0.5 < 32:
                    revert with 0, 34
                _3012 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_3002].field_0) * 0.5) + 32
                mem[_3012] = uint255(stor1[_3002].field_0) * 0.5
                if bool(stor1[_3002].field_0):
                    if bool(stor1[_3002].field_0) == uint255(stor1[_3002].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_3002].field_0):
                        mem[_3003 + 32] = _3012
                        mem[_3003 + 64] = stor2[_3002]
                        mem[_3003 + 96] = stor3[_3002]
                        mem[_3003 + 128] = stor4[_3002]
                        mem[_3003 + 160] = stor5[_3002]
                        mem[_3003 + 192] = stor6[_3002]
                        mem[_3003 + 224] = bool(stor7[_3002])
                        _3025 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3025] = _3003
                        mem[_3025 + 32] = _3001
                        if block.timestamp < stor3[_3002]:
                            revert with 0, 17
                        if block.timestamp - stor3[_3002] and rewardPerDay > -1 / block.timestamp - stor3[_3002]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 and stor4[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000:
                            revert with 0, 17
                        mem[_3025 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000:
                            revert with 0, 17
                        mem[_3025 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                        mem[_3025 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3025
                    else:
                        if 31 >= uint255(stor1[_3002].field_0) * 0.5:
                            mem[_3012 + 32] = 256 * Mask(248, 0, stor1[_3002].field_8)
                            mem[_3003 + 32] = _3012
                            mem[_3003 + 64] = stor2[_3002]
                            mem[_3003 + 96] = stor3[_3002]
                            mem[_3003 + 128] = stor4[_3002]
                            mem[_3003 + 160] = stor5[_3002]
                            mem[_3003 + 192] = stor6[_3002]
                            mem[_3003 + 224] = bool(stor7[_3002])
                            _3056 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3056] = _3003
                            mem[_3056 + 32] = _3001
                            if block.timestamp < stor3[_3002]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3002] and rewardPerDay > -1 / block.timestamp - stor3[_3002]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 and stor4[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3056 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3056 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            mem[_3056 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3056
                        else:
                            mem[0] = _3002 + 1
                            mem[_3012 + 32] = stor[sha3(_3002 + 1)]
                            s = _3012 + 32
                            t = sha3(_3002 + 1)
                            while _3012 + (uint255(stor1[_3002].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_3003 + 32] = _3012
                            mem[_3003 + 64] = stor2[_3002]
                            mem[_3003 + 96] = stor3[_3002]
                            mem[_3003 + 128] = stor4[_3002]
                            mem[_3003 + 160] = stor5[_3002]
                            mem[_3003 + 192] = stor6[_3002]
                            mem[_3003 + 224] = bool(stor7[_3002])
                            _3254 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3254] = _3003
                            mem[_3254 + 32] = _3001
                            if block.timestamp < stor3[_3002]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3002] and rewardPerDay > -1 / block.timestamp - stor3[_3002]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 and stor4[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3254 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3254 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            mem[_3254 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3254
                else:
                    if bool(stor1[_3002].field_0) == stor1[_3002].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_3002].field_1 % 128:
                        mem[_3003 + 32] = _3012
                        mem[_3003 + 64] = stor2[_3002]
                        mem[_3003 + 96] = stor3[_3002]
                        mem[_3003 + 128] = stor4[_3002]
                        mem[_3003 + 160] = stor5[_3002]
                        mem[_3003 + 192] = stor6[_3002]
                        mem[_3003 + 224] = bool(stor7[_3002])
                        _3053 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3053] = _3003
                        mem[_3053 + 32] = _3001
                        if block.timestamp < stor3[_3002]:
                            revert with 0, 17
                        if block.timestamp - stor3[_3002] and rewardPerDay > -1 / block.timestamp - stor3[_3002]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 and stor4[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000:
                            revert with 0, 17
                        mem[_3053 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000:
                            revert with 0, 17
                        mem[_3053 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                        mem[_3053 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3053
                    else:
                        if 31 >= stor1[_3002].field_1 % 128:
                            mem[_3012 + 32] = 256 * Mask(248, 0, stor1[_3002].field_8)
                            mem[_3003 + 32] = _3012
                            mem[_3003 + 64] = stor2[_3002]
                            mem[_3003 + 96] = stor3[_3002]
                            mem[_3003 + 128] = stor4[_3002]
                            mem[_3003 + 160] = stor5[_3002]
                            mem[_3003 + 192] = stor6[_3002]
                            mem[_3003 + 224] = bool(stor7[_3002])
                            _3069 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3069] = _3003
                            mem[_3069 + 32] = _3001
                            if block.timestamp < stor3[_3002]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3002] and rewardPerDay > -1 / block.timestamp - stor3[_3002]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 and stor4[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3069 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3069 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            mem[_3069 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3069
                        else:
                            mem[0] = _3002 + 1
                            mem[_3012 + 32] = stor[sha3(_3002 + 1)]
                            s = _3012 + 32
                            t = sha3(_3002 + 1)
                            while _3012 + stor1[_3002].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_3003 + 32] = _3012
                            mem[_3003 + 64] = stor2[_3002]
                            mem[_3003 + 96] = stor3[_3002]
                            mem[_3003 + 128] = stor4[_3002]
                            mem[_3003 + 160] = stor5[_3002]
                            mem[_3003 + 192] = stor6[_3002]
                            mem[_3003 + 224] = bool(stor7[_3002])
                            _3255 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3255] = _3003
                            mem[_3255 + 32] = _3001
                            if block.timestamp < stor3[_3002]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3002] and rewardPerDay > -1 / block.timestamp - stor3[_3002]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 and stor4[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3255 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3255 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            mem[_3255 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3255
            else:
                if bool(stor1[_3002].field_0) == stor1[_3002].field_1 % 128 < 32:
                    revert with 0, 34
                _3014 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_3002].field_1 % 128) + 32
                mem[_3014] = stor1[_3002].field_1 % 128
                if bool(stor1[_3002].field_0):
                    if bool(stor1[_3002].field_0) == uint255(stor1[_3002].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_3002].field_0):
                        mem[_3003 + 32] = _3014
                        mem[_3003 + 64] = stor2[_3002]
                        mem[_3003 + 96] = stor3[_3002]
                        mem[_3003 + 128] = stor4[_3002]
                        mem[_3003 + 160] = stor5[_3002]
                        mem[_3003 + 192] = stor6[_3002]
                        mem[_3003 + 224] = bool(stor7[_3002])
                        _3054 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3054] = _3003
                        mem[_3054 + 32] = _3001
                        if block.timestamp < stor3[_3002]:
                            revert with 0, 17
                        if block.timestamp - stor3[_3002] and rewardPerDay > -1 / block.timestamp - stor3[_3002]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 and stor4[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000:
                            revert with 0, 17
                        mem[_3054 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000:
                            revert with 0, 17
                        mem[_3054 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                        mem[_3054 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3054
                    else:
                        if 31 >= uint255(stor1[_3002].field_0) * 0.5:
                            mem[_3014 + 32] = 256 * Mask(248, 0, stor1[_3002].field_8)
                            mem[_3003 + 32] = _3014
                            mem[_3003 + 64] = stor2[_3002]
                            mem[_3003 + 96] = stor3[_3002]
                            mem[_3003 + 128] = stor4[_3002]
                            mem[_3003 + 160] = stor5[_3002]
                            mem[_3003 + 192] = stor6[_3002]
                            mem[_3003 + 224] = bool(stor7[_3002])
                            _3070 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3070] = _3003
                            mem[_3070 + 32] = _3001
                            if block.timestamp < stor3[_3002]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3002] and rewardPerDay > -1 / block.timestamp - stor3[_3002]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 and stor4[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3070 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3070 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            mem[_3070 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3070
                        else:
                            mem[0] = _3002 + 1
                            mem[_3014 + 32] = stor[sha3(_3002 + 1)]
                            s = _3014 + 32
                            t = sha3(_3002 + 1)
                            while _3014 + (uint255(stor1[_3002].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_3003 + 32] = _3014
                            mem[_3003 + 64] = stor2[_3002]
                            mem[_3003 + 96] = stor3[_3002]
                            mem[_3003 + 128] = stor4[_3002]
                            mem[_3003 + 160] = stor5[_3002]
                            mem[_3003 + 192] = stor6[_3002]
                            mem[_3003 + 224] = bool(stor7[_3002])
                            _3256 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3256] = _3003
                            mem[_3256 + 32] = _3001
                            if block.timestamp < stor3[_3002]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3002] and rewardPerDay > -1 / block.timestamp - stor3[_3002]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 and stor4[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3256 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3256 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            mem[_3256 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3256
                else:
                    if bool(stor1[_3002].field_0) == stor1[_3002].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_3002].field_1 % 128:
                        mem[_3003 + 32] = _3014
                        mem[_3003 + 64] = stor2[_3002]
                        mem[_3003 + 96] = stor3[_3002]
                        mem[_3003 + 128] = stor4[_3002]
                        mem[_3003 + 160] = stor5[_3002]
                        mem[_3003 + 192] = stor6[_3002]
                        mem[_3003 + 224] = bool(stor7[_3002])
                        _3065 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3065] = _3003
                        mem[_3065 + 32] = _3001
                        if block.timestamp < stor3[_3002]:
                            revert with 0, 17
                        if block.timestamp - stor3[_3002] and rewardPerDay > -1 / block.timestamp - stor3[_3002]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 and stor4[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000:
                            revert with 0, 17
                        mem[_3065 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000:
                            revert with 0, 17
                        mem[_3065 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                        mem[_3065 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3065
                    else:
                        if 31 >= stor1[_3002].field_1 % 128:
                            mem[_3014 + 32] = 256 * Mask(248, 0, stor1[_3002].field_8)
                            mem[_3003 + 32] = _3014
                            mem[_3003 + 64] = stor2[_3002]
                            mem[_3003 + 96] = stor3[_3002]
                            mem[_3003 + 128] = stor4[_3002]
                            mem[_3003 + 160] = stor5[_3002]
                            mem[_3003 + 192] = stor6[_3002]
                            mem[_3003 + 224] = bool(stor7[_3002])
                            _3083 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3083] = _3003
                            mem[_3083 + 32] = _3001
                            if block.timestamp < stor3[_3002]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3002] and rewardPerDay > -1 / block.timestamp - stor3[_3002]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 and stor4[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3083 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3083 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            mem[_3083 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3083
                        else:
                            mem[0] = _3002 + 1
                            mem[_3014 + 32] = stor[sha3(_3002 + 1)]
                            s = _3014 + 32
                            t = sha3(_3002 + 1)
                            while _3014 + stor1[_3002].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_3003 + 32] = _3014
                            mem[_3003 + 64] = stor2[_3002]
                            mem[_3003 + 96] = stor3[_3002]
                            mem[_3003 + 128] = stor4[_3002]
                            mem[_3003 + 160] = stor5[_3002]
                            mem[_3003 + 192] = stor6[_3002]
                            mem[_3003 + 224] = bool(stor7[_3002])
                            _3257 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3257] = _3003
                            mem[_3257 + 32] = _3001
                            if block.timestamp < stor3[_3002]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3002] and rewardPerDay > -1 / block.timestamp - stor3[_3002]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 and stor4[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3257 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3002] * rewardPerDay) / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 and stor5[_3002] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000:
                                revert with 0, 17
                            mem[_3257 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3002] / 100000 * stor5[_3002] / 100000
                            mem[_3257 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3257
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3000 = mem[64]
        mem[mem[64]] = 32
        _3004 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + 97]
        idx = 0
        s = ceil32(32 * arg1.length) + 129
        t = mem[64] + (32 * _3004) + 64
        u = mem[64] + 64
        while idx < _3004:
            mem[u] = t + -_3000 - 64
            _3248 = mem[s]
            _3249 = mem[mem[s]]
            mem[t] = 160
            mem[t + 160] = mem[_3249]
            _3251 = mem[_3249 + 32]
            mem[t + 192] = 256
            _3253 = mem[_3251]
            mem[t + 416] = mem[_3251]
            v = 0
            while v < _3253:
                mem[v + t + 448] = mem[v + _3251 + 32]
                v = v + 32
                continue 
            if ceil32(_3253) > _3253:
                mem[_3253 + t + 448] = 0
            mem[t + 224] = mem[_3249 + 64]
            mem[t + 256] = mem[_3249 + 96]
            mem[t + 288] = mem[_3249 + 128]
            mem[t + 320] = mem[_3249 + 160]
            mem[t + 352] = mem[_3249 + 192]
            mem[t + 384] = bool(mem[_3249 + 224])
            mem[t + 32] = mem[_3248 + 32]
            mem[t + 64] = mem[_3248 + 64]
            mem[t + 96] = mem[_3248 + 96]
            mem[t + 128] = mem[_3248 + 128]
            idx = idx + 1
            s = s + 32
            t = ceil32(_3253) + t + 448
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = ceil32(32 * arg1.length) + (32 * arg1.length) + 1793
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1537] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1569] = 96
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1601] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1633] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1665] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1697] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1729] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1761] = 0
    mem[var50002] = var50001
    mem[var50002 + 32] = 0
    mem[var50002 + 64] = 0
    mem[var50002 + 96] = 0
    mem[var50002 + 128] = 0
    mem[var52002] = var52001
    if var52003 - 1:
        # nil
    else:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _3831 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 552
            _3832 = sha3(mem[(32 * idx) + 128], 552)
            _3833 = mem[64]
            mem[64] = mem[64] + 256
            mem[_3833] = stor552[mem[(32 * idx) + 128]].field_0
            if bool(stor1[_3832].field_0):
                if bool(stor1[_3832].field_0) == uint255(stor1[_3832].field_0) * 0.5 < 32:
                    revert with 0, 34
                _3842 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_3832].field_0) * 0.5) + 32
                mem[_3842] = uint255(stor1[_3832].field_0) * 0.5
                if bool(stor1[_3832].field_0):
                    if bool(stor1[_3832].field_0) == uint255(stor1[_3832].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_3832].field_0):
                        mem[_3833 + 32] = _3842
                        mem[_3833 + 64] = stor2[_3832]
                        mem[_3833 + 96] = stor3[_3832]
                        mem[_3833 + 128] = stor4[_3832]
                        mem[_3833 + 160] = stor5[_3832]
                        mem[_3833 + 192] = stor6[_3832]
                        mem[_3833 + 224] = bool(stor7[_3832])
                        _3855 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3855] = _3833
                        mem[_3855 + 32] = _3831
                        if block.timestamp < stor3[_3832]:
                            revert with 0, 17
                        if block.timestamp - stor3[_3832] and rewardPerDay > -1 / block.timestamp - stor3[_3832]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 and stor4[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000:
                            revert with 0, 17
                        mem[_3855 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000:
                            revert with 0, 17
                        mem[_3855 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                        mem[_3855 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3855
                    else:
                        if 31 >= uint255(stor1[_3832].field_0) * 0.5:
                            mem[_3842 + 32] = 256 * Mask(248, 0, stor1[_3832].field_8)
                            mem[_3833 + 32] = _3842
                            mem[_3833 + 64] = stor2[_3832]
                            mem[_3833 + 96] = stor3[_3832]
                            mem[_3833 + 128] = stor4[_3832]
                            mem[_3833 + 160] = stor5[_3832]
                            mem[_3833 + 192] = stor6[_3832]
                            mem[_3833 + 224] = bool(stor7[_3832])
                            _3886 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3886] = _3833
                            mem[_3886 + 32] = _3831
                            if block.timestamp < stor3[_3832]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3832] and rewardPerDay > -1 / block.timestamp - stor3[_3832]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 and stor4[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_3886 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_3886 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            mem[_3886 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3886
                        else:
                            mem[0] = _3832 + 1
                            mem[_3842 + 32] = stor[sha3(_3832 + 1)]
                            s = _3842 + 32
                            t = sha3(_3832 + 1)
                            while _3842 + (uint255(stor1[_3832].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_3833 + 32] = _3842
                            mem[_3833 + 64] = stor2[_3832]
                            mem[_3833 + 96] = stor3[_3832]
                            mem[_3833 + 128] = stor4[_3832]
                            mem[_3833 + 160] = stor5[_3832]
                            mem[_3833 + 192] = stor6[_3832]
                            mem[_3833 + 224] = bool(stor7[_3832])
                            _4084 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_4084] = _3833
                            mem[_4084 + 32] = _3831
                            if block.timestamp < stor3[_3832]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3832] and rewardPerDay > -1 / block.timestamp - stor3[_3832]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 and stor4[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_4084 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_4084 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            mem[_4084 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4084
                else:
                    if bool(stor1[_3832].field_0) == stor1[_3832].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_3832].field_1 % 128:
                        mem[_3833 + 32] = _3842
                        mem[_3833 + 64] = stor2[_3832]
                        mem[_3833 + 96] = stor3[_3832]
                        mem[_3833 + 128] = stor4[_3832]
                        mem[_3833 + 160] = stor5[_3832]
                        mem[_3833 + 192] = stor6[_3832]
                        mem[_3833 + 224] = bool(stor7[_3832])
                        _3883 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3883] = _3833
                        mem[_3883 + 32] = _3831
                        if block.timestamp < stor3[_3832]:
                            revert with 0, 17
                        if block.timestamp - stor3[_3832] and rewardPerDay > -1 / block.timestamp - stor3[_3832]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 and stor4[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000:
                            revert with 0, 17
                        mem[_3883 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000:
                            revert with 0, 17
                        mem[_3883 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                        mem[_3883 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3883
                    else:
                        if 31 >= stor1[_3832].field_1 % 128:
                            mem[_3842 + 32] = 256 * Mask(248, 0, stor1[_3832].field_8)
                            mem[_3833 + 32] = _3842
                            mem[_3833 + 64] = stor2[_3832]
                            mem[_3833 + 96] = stor3[_3832]
                            mem[_3833 + 128] = stor4[_3832]
                            mem[_3833 + 160] = stor5[_3832]
                            mem[_3833 + 192] = stor6[_3832]
                            mem[_3833 + 224] = bool(stor7[_3832])
                            _3899 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3899] = _3833
                            mem[_3899 + 32] = _3831
                            if block.timestamp < stor3[_3832]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3832] and rewardPerDay > -1 / block.timestamp - stor3[_3832]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 and stor4[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_3899 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_3899 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            mem[_3899 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3899
                        else:
                            mem[0] = _3832 + 1
                            mem[_3842 + 32] = stor[sha3(_3832 + 1)]
                            s = _3842 + 32
                            t = sha3(_3832 + 1)
                            while _3842 + stor1[_3832].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_3833 + 32] = _3842
                            mem[_3833 + 64] = stor2[_3832]
                            mem[_3833 + 96] = stor3[_3832]
                            mem[_3833 + 128] = stor4[_3832]
                            mem[_3833 + 160] = stor5[_3832]
                            mem[_3833 + 192] = stor6[_3832]
                            mem[_3833 + 224] = bool(stor7[_3832])
                            _4085 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_4085] = _3833
                            mem[_4085 + 32] = _3831
                            if block.timestamp < stor3[_3832]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3832] and rewardPerDay > -1 / block.timestamp - stor3[_3832]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 and stor4[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_4085 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_4085 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            mem[_4085 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4085
            else:
                if bool(stor1[_3832].field_0) == stor1[_3832].field_1 % 128 < 32:
                    revert with 0, 34
                _3844 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_3832].field_1 % 128) + 32
                mem[_3844] = stor1[_3832].field_1 % 128
                if bool(stor1[_3832].field_0):
                    if bool(stor1[_3832].field_0) == uint255(stor1[_3832].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_3832].field_0):
                        mem[_3833 + 32] = _3844
                        mem[_3833 + 64] = stor2[_3832]
                        mem[_3833 + 96] = stor3[_3832]
                        mem[_3833 + 128] = stor4[_3832]
                        mem[_3833 + 160] = stor5[_3832]
                        mem[_3833 + 192] = stor6[_3832]
                        mem[_3833 + 224] = bool(stor7[_3832])
                        _3884 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3884] = _3833
                        mem[_3884 + 32] = _3831
                        if block.timestamp < stor3[_3832]:
                            revert with 0, 17
                        if block.timestamp - stor3[_3832] and rewardPerDay > -1 / block.timestamp - stor3[_3832]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 and stor4[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000:
                            revert with 0, 17
                        mem[_3884 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000:
                            revert with 0, 17
                        mem[_3884 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                        mem[_3884 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3884
                    else:
                        if 31 >= uint255(stor1[_3832].field_0) * 0.5:
                            mem[_3844 + 32] = 256 * Mask(248, 0, stor1[_3832].field_8)
                            mem[_3833 + 32] = _3844
                            mem[_3833 + 64] = stor2[_3832]
                            mem[_3833 + 96] = stor3[_3832]
                            mem[_3833 + 128] = stor4[_3832]
                            mem[_3833 + 160] = stor5[_3832]
                            mem[_3833 + 192] = stor6[_3832]
                            mem[_3833 + 224] = bool(stor7[_3832])
                            _3900 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3900] = _3833
                            mem[_3900 + 32] = _3831
                            if block.timestamp < stor3[_3832]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3832] and rewardPerDay > -1 / block.timestamp - stor3[_3832]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 and stor4[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_3900 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_3900 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            mem[_3900 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3900
                        else:
                            mem[0] = _3832 + 1
                            mem[_3844 + 32] = stor[sha3(_3832 + 1)]
                            s = _3844 + 32
                            t = sha3(_3832 + 1)
                            while _3844 + (uint255(stor1[_3832].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_3833 + 32] = _3844
                            mem[_3833 + 64] = stor2[_3832]
                            mem[_3833 + 96] = stor3[_3832]
                            mem[_3833 + 128] = stor4[_3832]
                            mem[_3833 + 160] = stor5[_3832]
                            mem[_3833 + 192] = stor6[_3832]
                            mem[_3833 + 224] = bool(stor7[_3832])
                            _4086 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_4086] = _3833
                            mem[_4086 + 32] = _3831
                            if block.timestamp < stor3[_3832]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3832] and rewardPerDay > -1 / block.timestamp - stor3[_3832]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 and stor4[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_4086 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_4086 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            mem[_4086 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4086
                else:
                    if bool(stor1[_3832].field_0) == stor1[_3832].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_3832].field_1 % 128:
                        mem[_3833 + 32] = _3844
                        mem[_3833 + 64] = stor2[_3832]
                        mem[_3833 + 96] = stor3[_3832]
                        mem[_3833 + 128] = stor4[_3832]
                        mem[_3833 + 160] = stor5[_3832]
                        mem[_3833 + 192] = stor6[_3832]
                        mem[_3833 + 224] = bool(stor7[_3832])
                        _3895 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3895] = _3833
                        mem[_3895 + 32] = _3831
                        if block.timestamp < stor3[_3832]:
                            revert with 0, 17
                        if block.timestamp - stor3[_3832] and rewardPerDay > -1 / block.timestamp - stor3[_3832]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 and stor4[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000:
                            revert with 0, 17
                        mem[_3895 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000:
                            revert with 0, 17
                        mem[_3895 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                        mem[_3895 + 128] = compoundDelay
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3895
                    else:
                        if 31 >= stor1[_3832].field_1 % 128:
                            mem[_3844 + 32] = 256 * Mask(248, 0, stor1[_3832].field_8)
                            mem[_3833 + 32] = _3844
                            mem[_3833 + 64] = stor2[_3832]
                            mem[_3833 + 96] = stor3[_3832]
                            mem[_3833 + 128] = stor4[_3832]
                            mem[_3833 + 160] = stor5[_3832]
                            mem[_3833 + 192] = stor6[_3832]
                            mem[_3833 + 224] = bool(stor7[_3832])
                            _3913 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3913] = _3833
                            mem[_3913 + 32] = _3831
                            if block.timestamp < stor3[_3832]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3832] and rewardPerDay > -1 / block.timestamp - stor3[_3832]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 and stor4[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_3913 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_3913 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            mem[_3913 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3913
                        else:
                            mem[0] = _3832 + 1
                            mem[_3844 + 32] = stor[sha3(_3832 + 1)]
                            s = _3844 + 32
                            t = sha3(_3832 + 1)
                            while _3844 + stor1[_3832].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_3833 + 32] = _3844
                            mem[_3833 + 64] = stor2[_3832]
                            mem[_3833 + 96] = stor3[_3832]
                            mem[_3833 + 128] = stor4[_3832]
                            mem[_3833 + 160] = stor5[_3832]
                            mem[_3833 + 192] = stor6[_3832]
                            mem[_3833 + 224] = bool(stor7[_3832])
                            _4087 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_4087] = _3833
                            mem[_4087 + 32] = _3831
                            if block.timestamp < stor3[_3832]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3832] and rewardPerDay > -1 / block.timestamp - stor3[_3832]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 and stor4[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_4087 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3832] * rewardPerDay) / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 and stor5[_3832] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000:
                                revert with 0, 17
                            mem[_4087 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3832] / 100000 * stor5[_3832] / 100000
                            mem[_4087 + 128] = compoundDelay
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4087
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _3834 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + 97]
        if var66001 >= _3834:
            return memory
              from mem[64]
               len var66003 - mem[64]
        # nil
}



}

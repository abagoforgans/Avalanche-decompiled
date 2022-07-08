contract main {




// =====================  Runtime code  =====================


#
#  - sub_19217b58(?)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - cashoutAll()
#  - cashoutReward(uint256 arg1)
#  - sub_7197fc9e(?)
#  - sub_ef34ded9(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of struct stor1;
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
address sub_4d1c3621Address;
address liquidityPoolManagerImplementationAddress;
mapping of struct stor552;
array of struct stor553;
uint256 stor554;
uint256 stor555;
uint256 stor556;
uint256 sub_e6ae99e6;
uint256 sub_20e51fd9;
uint256 sub_22451834;
uint256 sub_39807f8d;
uint256 sub_1fdb4c5f;
uint256 sub_8783b90d;
uint256 sub_babf971c;
uint256 creationMinPrice;
uint256 sub_8a0bbae4;
uint256 sub_8a99d6ef;
uint256 sub_3e1fddb9;
uint256 sub_2f0da35d;
uint256 sub_9a1172c9;
uint256 sub_43348e23;
uint256 totalValueLocked;
address sub_dca87ef1Address;
mapping of uint256 stor573;
address sub_eb437d40Address;
uint256 sub_00dca0c0;
uint256 winnerFee;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136640;

function sub_00dca0c0(?) payable {
    return sub_00dca0c0
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function sub_1fdb4c5f(?) payable {
    return sub_1fdb4c5f
}

function sub_20e51fd9(?) payable {
    return sub_20e51fd9
}

function creationMinPrice() payable {
    return creationMinPrice
}

function sub_22451834(?) payable {
    return sub_22451834
}

function sub_2f0da35d(?) payable {
    return sub_2f0da35d
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

function sub_39807f8d(?) payable {
    return sub_39807f8d
}

function sub_3e1fddb9(?) payable {
    return sub_3e1fddb9
}

function sub_43348e23(?) payable {
    return sub_43348e23
}

function sub_4d1c3621(?) payable {
    return sub_4d1c3621Address
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function winnerFee() payable {
    return winnerFee
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

function sub_8783b90d(?) payable {
    return sub_8783b90d
}

function sub_8a0bbae4(?) payable {
    return sub_8a0bbae4
}

function sub_8a99d6ef(?) payable {
    return sub_8a99d6ef
}

function owner() payable {
    return owner
}

function sub_9a1172c9(?) payable {
    return sub_9a1172c9
}

function sub_babf971c(?) payable {
    return sub_babf971c
}

function getLiquidityPoolManagerImplementation() payable {
    return liquidityPoolManagerImplementationAddress
}

function sub_dca87ef1(?) payable {
    return sub_dca87ef1Address
}

function sub_e6ae99e6(?) payable {
    return sub_e6ae99e6
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function sub_eb437d40(?) payable {
    return sub_eb437d40Address
}

function totalValueLocked() payable {
    return totalValueLocked
}

function _fallback() payable {
    revert
}

function sub_cfa4a5bf(?) payable {
    return stor554, stor555, stor556
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

function sub_df5d280a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require address(arg1)
    sub_dca87ef1Address = address(arg1)
}

function sub_0933ca9f(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8a99d6ef = arg1
    sub_3e1fddb9 = arg2
    sub_2f0da35d = arg3
    sub_9a1172c9 = arg4
    sub_43348e23 = arg5
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

function sub_b34e6e9f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Troops: Maximum fee percent to create a Troop must not be larger than 50'
    sub_8a0bbae4 = arg1
}

function changeNodeMinPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Troops: Minimum price to create a Troop must be above 0'
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

function sub_b387a400(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 10000:
        revert with 0, 'fee values are invalid'
    if arg3 > arg2:
        revert with 0, 'fee values are invalid'
    sub_eb437d40Address = address(arg1)
    sub_00dca0c0 = arg2
    winnerFee = arg3
}

function sub_59cd8843(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Troops: rewardPerDay must be greater than 0'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Troops: rewardPerDay must be greater than 0'
    sub_e6ae99e6 = arg1
    sub_20e51fd9 = arg2
}

function sub_698bcd8e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_e6ae99e6 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Troops: Reward grade for Gladiator is invalid'
    if arg1 > sub_20e51fd9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Troops: Reward grade for Gladiator is invalid'
    sub_babf971c = arg1
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

function sub_9ebf906a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(address(arg1)):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Army: You can only set 0x0 or a contract address as a new implementation'
    sub_4d1c3621Address = address(arg1)
    emit 0xa3e8afe8: sub_4d1c3621Address, address(arg1)
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
                        'LiquidityPoolManagerUpgradeable: You can only set 0x0 or a contract address as a new implementation'
    liquidityPoolManagerImplementationAddress = arg1
    emit UpdateLiquidityPoolManager(liquidityPoolManagerImplementationAddress, arg1);
}

function sub_82d0dcf8(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Troops: Reward grade timestamp order is invalid'
    if arg2 >= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Troops: Reward grade timestamp order is invalid'
    if arg3 >= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Troops: Reward grade timestamp order is invalid'
    sub_22451834 = arg1
    sub_39807f8d = arg2
    sub_1fdb4c5f = arg3
    sub_8783b90d = arg4
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

function sub_ccf19e15(?) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_eb437d40Address != msg.sender:
        revert with 0, 'not battle field'
    if stor552[arg2].field_1024 and sub_00dca0c0 > -1 / stor552[arg2].field_1024:
        revert with 0, 17
    if stor552[arg2].field_1024 and winnerFee > -1 / stor552[arg2].field_1024:
        revert with 0, 17
    if stor552[arg2].field_1024 < stor552[arg2].field_1024 * sub_00dca0c0 / 10000:
        revert with 0, 17
    stor552[arg2].field_1024 -= stor552[arg2].field_1024 * sub_00dca0c0 / 10000
    if stor552[arg2].field_1024 * sub_00dca0c0 / 10000 < stor552[arg2].field_1024 * winnerFee / 10000:
        revert with 0, 17
    if stor552[arg1].field_1024 > !((stor552[arg2].field_1024 * sub_00dca0c0 / 10000) - (stor552[arg2].field_1024 * winnerFee / 10000)):
        revert with 0, 17
    stor552[arg1].field_1024 = stor552[arg1].field_1024 + (stor552[arg2].field_1024 * sub_00dca0c0 / 10000) - (stor552[arg2].field_1024 * winnerFee / 10000)
    return (stor552[arg2].field_1024 * sub_00dca0c0 / 10000)
}

function sub_0e127233(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not address(arg1):
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        if tokenOfOwnerByIndex[address(arg1)][idx] <= 0:
            revert with 0, 'Troops: Id must be higher than zero'
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 552
        require uint8(stor552[stor151[address(arg1)][idx]].field_1536)
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 1 == bool(uint8(stor552[arg1].field_1544)):
        return 32, 67, 
               0x4468747470733a2f2f697066732e696f2f697066732f516d567878784b443847634575326665557062324a653344487151344b437851487443674e5a4837557968636e, mem[195 len 29] >> 280,
               0
    if stor552[arg1].field_768 > !sub_22451834:
        revert with 0, 17
    if block.timestamp <= stor552[arg1].field_768 + sub_22451834:
        return 32, 67, 
               0x4e68747470733a2f2f697066732e696f2f697066732f516d5a4c474c646a7575443754416375587848444b685a63374b643237766434744b4570525a65713965624d34, mem[195 len 29] >> 280,
               0
    if stor552[arg1].field_768 > !sub_39807f8d:
        revert with 0, 17
    if block.timestamp <= stor552[arg1].field_768 + sub_39807f8d:
        return 32, 67, 
               0x4568747470733a2f2f697066732e696f2f697066732f516d61705a565678384758754c6d6857554144686145764e6a6e6d426138597634794c7754446f455238594854, mem[195 len 29] >> 280,
               0
    if stor552[arg1].field_768 > !sub_1fdb4c5f:
        revert with 0, 17
    if block.timestamp > stor552[arg1].field_768 + sub_1fdb4c5f:
        return 32, 67, 
               0x3668747470733a2f2f697066732e696f2f697066732f516d5250516b565a663550796a7663774a414337326b4a51696a79446734587a54435a706e7a647a7652727772, mem[195 len 29] >> 280,
               0
    return 32, 67, 
           0xfe68747470733a2f2f697066732e696f2f697066732f516d57513443754e743832687a52757a74514c5076674d697a3454683456724e506b707971597a597337766134, mem[195 len 29] >> 280,
           0
}

function sub_cba90361(?) payable {
    require calldata.size - 4 >= 64
    if stor401 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor401 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not sub_4d1c3621Address:
        revert with 0, 'Troops: Army is not set'
    require sub_dca87ef1Address
    if not uint8(stor552[arg1].field_1536):
        revert with 0, 'non-existent troop'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'not owner of the troop'
    staticcall sub_dca87ef1Address.0xf71520db with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call sub_dca87ef1Address.0x12e36401 with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if 1 == ext_call.return_data[0]:
            if 5 <= stor573[arg1]:
                revert with 0, 'shield count exceeds'
            if stor573[arg1] == -1:
                revert with 0, 17
            stor573[arg1]++
    else:
        if stor552[arg1].field_1024 > !ext_call.return_data[0]:
            revert with 0, 17
        stor552[arg1].field_1024 += ext_call.return_data[0]
        if bool(uint8(stor552[arg1].field_1544)) != 1:
            idx = stor554
            while idx < stor553.length:
                mem[0] = 553
                if stor553[idx].field_256 != stor552[arg1].field_768:
                    stor401 = 1
                    return arg1
                if stor553[idx].field_0 > !ext_call.return_data[0]:
                    revert with 0, 17
                stor553[idx].field_0 += ext_call.return_data[0]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if stor556 > !ext_call.return_data[0]:
                revert with 0, 17
            stor556 += ext_call.return_data[0]
    stor401 = 1
    return arg1
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
        Mask(112, 0, stor101.length.field_144) = Mask(112, 0, 'Army Ecosystem')
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
        Mask(112, 0, stor101.length.field_144) = Mask(112, 0, 'Army Ecosystem')
        idx = 0
        while stor101.length.field_1 % 128 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        uint255(stor102.length.field_1) = 5
        stor102.length.field_216 % 1099511627776 = 362158182224
        idx = 0
        while (uint255(stor102.length) * 0.5) + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        uint255(stor102.length.field_1) = 5
        stor102.length.field_216 % 1099511627776 = 362158182224
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
}

function sub_f32b1fdf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < balanceOf[address(arg1)]:
        if not address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        if tokenOfOwnerByIndex[address(arg1)][idx] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Troops: Id must be higher than zero'
        require uint8(stor552[stor151[address(arg1)][idx]].field_1536)
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 552
        if s > !stor552[stor151[address(arg1)][idx]].field_1024:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor552[stor151[address(arg1)][idx]].field_1024
        continue 
    return (s * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)])
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
            mem[ceil32(uint255(stor101.length) * 0.5) + (uint255(stor101.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor101.length.field_1 % 128) + stor101.length.field_1 % 128 + 192] = 0
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
            mem[ceil32(uint255(stor102.length) * 0.5) + (uint255(stor102.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor102.length.field_1 % 128) + stor102.length.field_1 % 128 + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)], mem[(2 * ceil32(stor102.length.field_1 % 128)) + 192 len 2 * ceil32(stor102.length.field_1 % 128)]), 
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
                revert with 0, 'Troops: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            require uint8(stor552[stor151[address(arg1)][idx]].field_1536)
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129] = tokenOfOwnerByIndex[address(arg1)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]
            mem[32] = 552
            _196 = sha3(mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129], 552)
            _198 = sha3(mem[128 len mem[96]])
            _199 = mem[64]
            if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256):
                if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) == uint255(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256):
                    mem[mem[64]] = Mask(248, 8, stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256)
                    if sha3(mem[mem[64] len uint255(stor552[mem[0]].field_256) * 0.5]) == _198:
                        return 0
                else:
                    if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            return 0
                    else:
                        mem[0] = sha3(mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129], 552) + 1
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor1[_196].field_0) * 0.5:
                            mem[s + _199] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _199 + (uint255(stor1[_196].field_0) * 0.5) - mem[64]]) == _198:
                            return 0
            else:
                if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) == stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_257 % 128 < 32:
                    revert with 0, 34
                if not bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256):
                    mem[mem[64]] = Mask(248, 8, stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256)
                    if sha3(mem[mem[64] len stor552[mem[0]].field_257 % 128]) == _198:
                        return 0
                else:
                    if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            return 0
                    else:
                        mem[0] = sha3(mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129], 552) + 1
                        s = 0
                        t = sha3(mem[0])
                        while s < stor1[_196].field_1 % 128:
                            mem[s + _199] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _199 + stor1[_196].field_1 % 128 - mem[64]]) == _198:
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
                revert with 0, 'Troops: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            require uint8(stor552[stor151[address(arg1)][idx]].field_1536)
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129] = tokenOfOwnerByIndex[address(arg1)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]
            mem[32] = 552
            _202 = sha3(mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129], 552)
            _204 = sha3(mem[128 len mem[96]])
            _205 = mem[64]
            if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256):
                if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) == uint255(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256):
                    mem[mem[64]] = Mask(248, 8, stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256)
                    if sha3(mem[mem[64] len uint255(stor552[mem[0]].field_256) * 0.5]) == _204:
                        return 0
                else:
                    if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            return 0
                    else:
                        mem[0] = sha3(mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129], 552) + 1
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor1[_202].field_0) * 0.5:
                            mem[s + _205] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _205 + (uint255(stor1[_202].field_0) * 0.5) - mem[64]]) == _204:
                            return 0
            else:
                if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) == stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_257 % 128 < 32:
                    revert with 0, 34
                if not bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256):
                    mem[mem[64]] = Mask(248, 8, stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256)
                    if sha3(mem[mem[64] len stor552[mem[0]].field_257 % 128]) == _204:
                        return 0
                else:
                    if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            return 0
                    else:
                        mem[0] = sha3(mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129], 552) + 1
                        s = 0
                        t = sha3(mem[0])
                        while s < stor1[_202].field_1 % 128:
                            mem[s + _205] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _205 + stor1[_202].field_1 % 128 - mem[64]]) == _204:
                            return 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    return 1
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
    mem[arg4.length + 128] = 0
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
    if owner != arg2:
        if 1 == bool(uint8(stor552[arg3].field_1536)):
            if 1 == bool(uint8(stor552[arg3].field_1544)):
                if not liquidityPoolManagerImplementationAddress:
                    if not arg2:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if balanceOf[address(arg2)] > test266151307():
                        revert with 0, 65
                    if balanceOf[address(arg2)]:
                        mem[ceil32(ceil32(arg4.length)) + 129 len 32 * balanceOf[address(arg2)]] = call.data[calldata.size len 32 * balanceOf[address(arg2)]]
                    idx = 0
                    while idx < balanceOf[address(arg2)]:
                        if not arg2:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if idx >= balanceOf[address(arg2)]:
                            revert with 0, 'ERC721Enumerable: owner index out of bounds'
                        if tokenOfOwnerByIndex[address(arg2)][idx] <= 0:
                            revert with 0, 'Troops: Id must be higher than zero'
                        mem[0] = tokenOfOwnerByIndex[address(arg2)][idx]
                        mem[32] = 552
                        require uint8(stor552[stor151[address(arg2)][idx]].field_1536)
                        if idx >= balanceOf[address(arg2)]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129] = tokenOfOwnerByIndex[address(arg2)][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < balanceOf[address(arg2)]:
                        if idx >= balanceOf[address(arg2)]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]
                        mem[32] = 552
                        if not uint8(stor552[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]].field_1544):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s == -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if s >= 2:
                        revert with 0, 'No more than 2 Gladiators'
                else:
                    mem[ceil32(ceil32(arg4.length)) + 101] = arg2
                    staticcall liquidityPoolManagerImplementationAddress.0xb278110f with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        if not arg2:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if balanceOf[address(arg2)] > test266151307():
                            revert with 0, 65
                        if balanceOf[address(arg2)]:
                            mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129 len 32 * balanceOf[address(arg2)]] = call.data[calldata.size len 32 * balanceOf[address(arg2)]]
                        idx = 0
                        while idx < balanceOf[address(arg2)]:
                            if not arg2:
                                revert with 0, 'ERC721: balance query for the zero address'
                            if idx >= balanceOf[address(arg2)]:
                                revert with 0, 'ERC721Enumerable: owner index out of bounds'
                            if tokenOfOwnerByIndex[address(arg2)][idx] <= 0:
                                revert with 0, 'Troops: Id must be higher than zero'
                            mem[0] = tokenOfOwnerByIndex[address(arg2)][idx]
                            mem[32] = 552
                            require uint8(stor552[stor151[address(arg2)][idx]].field_1536)
                            if idx >= balanceOf[address(arg2)]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129] = tokenOfOwnerByIndex[address(arg2)][idx]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        idx = 0
                        s = 0
                        while idx < balanceOf[address(arg2)]:
                            if idx >= balanceOf[address(arg2)]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129]
                            mem[32] = 552
                            if not uint8(stor552[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129]].field_1544):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s == -1:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if s >= 2:
                            revert with 0, 'No more than 2 Gladiators'
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

function sub_c9619f43(?) payable {
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
    if not sub_4d1c3621Address:
        revert with 0, 'Troops: Army is not set'
    if not ownerOf[arg2]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'Troops: Rename context invalid'
    if arg1.length <= 1:
        revert with 0, 'Troops: Rename context invalid'
    if arg1.length >= 32:
        revert with 0, 'Troops: Rename context invalid'
    if not msg.sender:
        revert with 0, 'ERC721: balance query for the zero address'
    mem[0] = msg.sender
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
                revert with 0, 'Troops: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
            mem[32] = 552
            require uint8(stor552[stor151[address(msg.sender)][idx]].field_1536)
            if idx >= balanceOf[address(msg.sender)]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < balanceOf[address(msg.sender)]:
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]
            mem[32] = 552
            _234 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552)
            _236 = sha3(mem[128 len mem[96]])
            _237 = mem[64]
            if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256):
                if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256) == uint255(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256):
                    mem[mem[64]] = Mask(248, 8, stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256)
                    if sha3(mem[mem[64] len uint255(stor552[mem[0]].field_256) * 0.5]) == _236:
                        revert with 0, 'Troops: Rename context invalid'
                else:
                    if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            revert with 0, 'Troops: Rename context invalid'
                    else:
                        mem[0] = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552) + 1
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor1[_234].field_0) * 0.5:
                            mem[s + _237] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _237 + (uint255(stor1[_234].field_0) * 0.5) - mem[64]]) == _236:
                            revert with 0, 'Troops: Rename context invalid'
            else:
                if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256) == stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_257 % 128 < 32:
                    revert with 0, 34
                if not bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256):
                    mem[mem[64]] = Mask(248, 8, stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256)
                    if sha3(mem[mem[64] len stor552[mem[0]].field_257 % 128]) == _236:
                        revert with 0, 'Troops: Rename context invalid'
                else:
                    if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            revert with 0, 'Troops: Rename context invalid'
                    else:
                        mem[0] = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552) + 1
                        s = 0
                        t = sha3(mem[0])
                        while s < stor1[_234].field_1 % 128:
                            mem[s + _237] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _237 + stor1[_234].field_1 % 128 - mem[64]]) == _236:
                            revert with 0, 'Troops: Rename context invalid'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(ceil32(arg1.length)) + 129 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
        idx = 0
        while idx < balanceOf[address(msg.sender)]:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(msg.sender)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            if tokenOfOwnerByIndex[address(msg.sender)][idx] <= 0:
                revert with 0, 'Troops: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
            mem[32] = 552
            require uint8(stor552[stor151[address(msg.sender)][idx]].field_1536)
            if idx >= balanceOf[address(msg.sender)]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < balanceOf[address(msg.sender)]:
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]
            mem[32] = 552
            _239 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552)
            _241 = sha3(mem[128 len mem[96]])
            _242 = mem[64]
            if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256):
                if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256) == uint255(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256):
                    mem[mem[64]] = Mask(248, 8, stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256)
                    if sha3(mem[mem[64] len uint255(stor552[mem[0]].field_256) * 0.5]) == _241:
                        revert with 0, 'Troops: Rename context invalid'
                else:
                    if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            revert with 0, 'Troops: Rename context invalid'
                    else:
                        mem[0] = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552) + 1
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor1[_239].field_0) * 0.5:
                            mem[s + _242] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _242 + (uint255(stor1[_239].field_0) * 0.5) - mem[64]]) == _241:
                            revert with 0, 'Troops: Rename context invalid'
            else:
                if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256) == stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_257 % 128 < 32:
                    revert with 0, 34
                if not bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256):
                    mem[mem[64]] = Mask(248, 8, stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256)
                    if sha3(mem[mem[64] len stor552[mem[0]].field_257 % 128]) == _241:
                        revert with 0, 'Troops: Rename context invalid'
                else:
                    if bool(stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_256) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            revert with 0, 'Troops: Rename context invalid'
                    else:
                        mem[0] = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552) + 1
                        s = 0
                        t = sha3(mem[0])
                        while s < stor1[_239].field_1 % 128:
                            mem[s + _242] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _242 + stor1[_239].field_1 % 128 - mem[64]]) == _241:
                            revert with 0, 'Troops: Rename context invalid'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if bool(stor552[arg2].field_256):
        if bool(stor552[arg2].field_256) == uint255(stor552[arg2].field_256) * 0.5 < 32:
            revert with 0, 34
        if mem[96]:
            stor552[arg2][1][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor552[arg2].field_256 = 0
            s = 0
            while (uint255(stor552[arg2].field_256) * 0.5) + 31 / 32 > s:
                stor552[arg2][s + 1].field_0 = 0
                s = s + 1
                continue 
    else:
        if bool(stor552[arg2].field_256) == stor552[arg2].field_257 % 128 < 32:
            revert with 0, 34
        if mem[96]:
            stor552[arg2][1][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor552[arg2].field_256 = 0
            idx = 0
            while stor552[arg2].field_257 % 128 + 31 / 32 > idx:
                stor552[arg2][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    stor401 = 1
}

function calculateTotalDailyEmission() payable {
    if sub_babf971c and 24 * 3600 > -1 / sub_babf971c:
        revert with 0, 17
    if 24 * 3600 * sub_babf971c and stor556 > -1 / 24 * 3600 * sub_babf971c:
        revert with 0, 17
    if not stor553.length:
        return (24 * 3600 * sub_babf971c * stor556 / 10^11)
    if stor553.length < 1:
        revert with 0, 17
    if stor553.length - 1 >= stor553.length:
        revert with 0, 50
    if stor553[stor553.length - 1].field_256 > block.timestamp:
        return (24 * 3600 * sub_babf971c * stor556 / 10^11)
    if sub_20e51fd9 and 24 * 3600 > -1 / sub_20e51fd9:
        revert with 0, 17
    if 24 * 3600 * sub_20e51fd9 and stor555 > -1 / 24 * 3600 * sub_20e51fd9:
        revert with 0, 17
    if 24 * 3600 * sub_babf971c * stor556 > !(24 * 3600 * sub_20e51fd9 * stor555):
        revert with 0, 17
    idx = stor554
    while idx < stor553.length:
        mem[0] = 553
        if stor553[idx].field_256 != 0:
            if stor553[idx].field_256 > -7776001:
                revert with 0, 17
            if stor553[idx].field_256 + (2160 * 24 * 3600) <= block.timestamp:
                if sub_20e51fd9 and 24 * 3600 > -1 / sub_20e51fd9:
                    revert with 0, 17
                if 24 * 3600 * sub_20e51fd9 and stor553[idx].field_0 > -1 / 24 * 3600 * sub_20e51fd9:
                    revert with 0, 17
                if (24 * 3600 * sub_babf971c * stor556) + (24 * 3600 * sub_20e51fd9 * stor555) > !(24 * 3600 * sub_20e51fd9 * stor553[idx].field_0):
                    revert with 0, 17
            else:
                if block.timestamp > -86401:
                    revert with 0, 17
                if stor553[idx].field_256 > -7776001:
                    revert with 0, 17
                if stor553[idx].field_256 > -7776001:
                    revert with 0, 17
                if stor553[idx].field_256 + (2160 * 24 * 3600) < block.timestamp:
                    revert with 0, 17
                if stor553[idx].field_256 + (2160 * 24 * 3600) <= block.timestamp + (24 * 3600):
                    if sub_20e51fd9 < sub_e6ae99e6:
                        revert with 0, 17
                    if sub_20e51fd9 - sub_e6ae99e6 and stor553[idx].field_256 + -block.timestamp + (2160 * 24 * 3600) > -1 / sub_20e51fd9 - sub_e6ae99e6:
                        revert with 0, 17
                    if sub_20e51fd9 < (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600:
                        revert with 0, 17
                    if 24 * 3600 < stor553[idx].field_256 + -block.timestamp + (2160 * 24 * 3600):
                        revert with 0, 17
                    if sub_20e51fd9 and -stor553[idx].field_256 + block.timestamp - (2136 * 24 * 3600) > -1 / sub_20e51fd9:
                        revert with 0, 17
                    if sub_20e51fd9 > !(sub_20e51fd9 - ((2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600)):
                        revert with 0, 17
                    if (2 * sub_20e51fd9) - ((2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) and stor553[idx].field_256 + -block.timestamp + (2160 * 24 * 3600) > -1 / (2 * sub_20e51fd9) - ((2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600):
                        revert with 0, 17
                    if (2 * 2160 * 24 * 3600 * sub_20e51fd9) + (2 * stor553[idx].field_256 * sub_20e51fd9) + (2 * -1 * block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) - (stor553[idx].field_256 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) + (block.timestamp * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) / 2 > !((-7689600 * sub_20e51fd9) - (stor553[idx].field_256 * sub_20e51fd9) + (block.timestamp * sub_20e51fd9)):
                        revert with 0, 17
                    if ((2 * 2160 * 24 * 3600 * sub_20e51fd9) + (2 * stor553[idx].field_256 * sub_20e51fd9) + (2 * -1 * block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) - (stor553[idx].field_256 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) + (block.timestamp * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) / 2) - (2136 * 24 * 3600 * sub_20e51fd9) - (stor553[idx].field_256 * sub_20e51fd9) + (block.timestamp * sub_20e51fd9) and stor553[idx].field_0 > -1 / ((2 * 2160 * 24 * 3600 * sub_20e51fd9) + (2 * stor553[idx].field_256 * sub_20e51fd9) + (2 * -1 * block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) - (stor553[idx].field_256 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) + (block.timestamp * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) / 2) - (2136 * 24 * 3600 * sub_20e51fd9) - (stor553[idx].field_256 * sub_20e51fd9) + (block.timestamp * sub_20e51fd9):
                        revert with 0, 17
                    if (24 * 3600 * sub_babf971c * stor556) + (24 * 3600 * sub_20e51fd9 * stor555) > !(((2 * 2160 * 24 * 3600 * sub_20e51fd9) + (2 * stor553[idx].field_256 * sub_20e51fd9) + (2 * -1 * block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) - (stor553[idx].field_256 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) + (block.timestamp * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) / 2 * stor553[idx].field_0) - (2136 * 24 * 3600 * sub_20e51fd9 * stor553[idx].field_0) - (stor553[idx].field_256 * sub_20e51fd9 * stor553[idx].field_0) + (block.timestamp * sub_20e51fd9 * stor553[idx].field_0)):
                        revert with 0, 17
                else:
                    if stor553[idx].field_256 + -block.timestamp + (2160 * 24 * 3600) < 24 * 3600:
                        revert with 0, 17
                    if sub_20e51fd9 < sub_e6ae99e6:
                        revert with 0, 17
                    if sub_20e51fd9 - sub_e6ae99e6 and stor553[idx].field_256 + -block.timestamp + (2136 * 24 * 3600) > -1 / sub_20e51fd9 - sub_e6ae99e6:
                        revert with 0, 17
                    if sub_20e51fd9 < (2136 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2136 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600:
                        revert with 0, 17
                    if stor553[idx].field_256 + -block.timestamp + (2136 * 24 * 3600) > -86401:
                        revert with 0, 17
                    if sub_20e51fd9 < sub_e6ae99e6:
                        revert with 0, 17
                    if sub_20e51fd9 - sub_e6ae99e6 and stor553[idx].field_256 + -block.timestamp + (2160 * 24 * 3600) > -1 / sub_20e51fd9 - sub_e6ae99e6:
                        revert with 0, 17
                    if sub_20e51fd9 < (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600:
                        revert with 0, 17
                    if sub_20e51fd9 - ((2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) > !(sub_20e51fd9 - ((2136 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2136 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600)):
                        revert with 0, 17
                    if (2 * sub_20e51fd9) - ((2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) - ((2136 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2136 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) and 24 * 3600 > -1 / (2 * sub_20e51fd9) - ((2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) - ((2136 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2136 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600):
                        revert with 0, 17
                    if Mask(255, 1, (48 * 24 * 3600 * sub_20e51fd9) - (24 * 3600 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) - (24 * 3600 * (2136 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2136 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600)) and stor553[idx].field_0 > -1 / (48 * 24 * 3600 * sub_20e51fd9) - (24 * 3600 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) - (24 * 3600 * (2136 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2136 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) / 2:
                        revert with 0, 17
                    if (24 * 3600 * sub_babf971c * stor556) + (24 * 3600 * sub_20e51fd9 * stor555) > !((48 * 24 * 3600 * sub_20e51fd9) - (24 * 3600 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) - (24 * 3600 * (2136 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2136 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) / 2 * stor553[idx].field_0):
                        revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return ((24 * 3600 * sub_babf971c * stor556) + (24 * 3600 * sub_20e51fd9 * stor555) / 10^11)
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
    if owner == arg2:
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
    else:
        if bool(uint8(stor552[arg3].field_1536)) != 1:
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
        else:
            if bool(uint8(stor552[arg3].field_1544)) != 1:
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
            else:
                if not liquidityPoolManagerImplementationAddress:
                    if not arg2:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if balanceOf[address(arg2)] > test266151307():
                        revert with 0, 65
                    if balanceOf[address(arg2)]:
                        mem[160 len 32 * balanceOf[address(arg2)]] = call.data[calldata.size len 32 * balanceOf[address(arg2)]]
                    idx = 0
                    while idx < balanceOf[address(arg2)]:
                        if not arg2:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if idx >= balanceOf[address(arg2)]:
                            revert with 0, 'ERC721Enumerable: owner index out of bounds'
                        if tokenOfOwnerByIndex[address(arg2)][idx] <= 0:
                            revert with 0, 'Troops: Id must be higher than zero'
                        mem[0] = tokenOfOwnerByIndex[address(arg2)][idx]
                        mem[32] = 552
                        require uint8(stor552[stor151[address(arg2)][idx]].field_1536)
                        if idx >= balanceOf[address(arg2)]:
                            revert with 0, 50
                        mem[(32 * idx) + 160] = tokenOfOwnerByIndex[address(arg2)][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < balanceOf[address(arg2)]:
                        if idx >= balanceOf[address(arg2)]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 160]
                        mem[32] = 552
                        if not uint8(stor552[mem[(32 * idx) + 160]].field_1544):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s == -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if s >= 2:
                        revert with 0, 'No more than 2 Gladiators'
                else:
                    mem[132] = arg2
                    staticcall liquidityPoolManagerImplementationAddress.0xb278110f with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        if not arg2:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if balanceOf[address(arg2)] > test266151307():
                            revert with 0, 65
                        if balanceOf[address(arg2)]:
                            mem[ceil32(return_data.size) + 160 len 32 * balanceOf[address(arg2)]] = call.data[calldata.size len 32 * balanceOf[address(arg2)]]
                        idx = 0
                        while idx < balanceOf[address(arg2)]:
                            if not arg2:
                                revert with 0, 'ERC721: balance query for the zero address'
                            if idx >= balanceOf[address(arg2)]:
                                revert with 0, 'ERC721Enumerable: owner index out of bounds'
                            if tokenOfOwnerByIndex[address(arg2)][idx] <= 0:
                                revert with 0, 'Troops: Id must be higher than zero'
                            mem[0] = tokenOfOwnerByIndex[address(arg2)][idx]
                            mem[32] = 552
                            require uint8(stor552[stor151[address(arg2)][idx]].field_1536)
                            if idx >= balanceOf[address(arg2)]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(return_data.size) + 160] = tokenOfOwnerByIndex[address(arg2)][idx]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        idx = 0
                        s = 0
                        while idx < balanceOf[address(arg2)]:
                            if idx >= balanceOf[address(arg2)]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 160]
                            mem[32] = 552
                            if not uint8(stor552[mem[(32 * idx) + ceil32(return_data.size) + 160]].field_1544):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s == -1:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if s >= 2:
                            revert with 0, 'No more than 2 Gladiators'
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



}

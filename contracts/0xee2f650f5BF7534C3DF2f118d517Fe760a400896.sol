contract main {




// =====================  Runtime code  =====================


#
#  - sub_19217b58(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - cashoutAll()
#  - cashoutReward(uint256 arg1)
#  - sub_7197fc9e(?)
#  - sub_f8b85ec3(?)
#
const sub_ca11899f(?) = '', 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of struct stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of struct stor6;
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
uint256 stor559;
uint256 stor560;
uint256 stor561;
uint256 stor562;
uint256 stor563;
uint256 creationMinPrice;
uint256 sub_8a99d6ef;
uint256 sub_3e1fddb9;
uint256 sub_2f0da35d;
uint256 sub_9a1172c9;
uint256 sub_43348e23;
uint256 totalValueLocked;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136640;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function sub_20e51fd9(?) payable {
    return sub_20e51fd9
}

function creationMinPrice() payable {
    return creationMinPrice
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

function sub_8a99d6ef(?) payable {
    return sub_8a99d6ef
}

function owner() payable {
    return owner
}

function sub_9a1172c9(?) payable {
    return sub_9a1172c9
}

function getLiquidityPoolManagerImplementation() payable {
    return liquidityPoolManagerImplementationAddress
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

function totalValueLocked() payable {
    return totalValueLocked
}

function _fallback() payable {
    revert
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

function sub_1db01e5d(?) payable {
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

function sub_698bcd8e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_e6ae99e6 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Troops: Reward grade for Gladiator is invalid'
    if arg1 > sub_20e51fd9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Troops: Reward grade for Gladiator is invalid'
    stor563 = arg1
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

function sub_0933ca9f(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 5000:
        revert with 0, 'Cashout fee can never exceed 50%'
    if arg2 > 5000:
        revert with 0, 'Cashout fee can never exceed 50%'
    if arg3 > 5000:
        revert with 0, 'Cashout fee can never exceed 50%'
    if arg4 > 5000:
        revert with 0, 'Cashout fee can never exceed 50%'
    if arg5 > 5000:
        revert with 0, 'Cashout fee can never exceed 50%'
    sub_8a99d6ef = arg1
    sub_3e1fddb9 = arg2
    sub_2f0da35d = arg3
    sub_9a1172c9 = arg4
    sub_43348e23 = arg5
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
    stor559 = arg1
    stor560 = arg2
    stor561 = arg3
    stor562 = arg4
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

function sub_eb6cc010(?) payable {
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[64] = (32 * stor553.length) + 384
    mem[352] = stor553.length
    s = 384
    idx = 0
    while idx < stor553.length:
        mem[0] = 553
        _16 = mem[64]
        mem[64] = mem[64] + 64
        mem[_16] = stor553[idx].field_0
        mem[_16 + 32] = stor553[idx].field_256
        mem[s] = _16
        s = s + 32
        idx = idx + 1
        continue 
    mem[224] = 352
    mem[256] = stor554
    mem[288] = stor555
    mem[320] = stor556
    _17 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 128
    _19 = mem[352]
    mem[mem[64] + 160] = mem[352]
    s = mem[64] + 192
    idx = 0
    t = 384
    while idx < _19:
        _30 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_30 + 32]
        s = s + 64
        idx = idx + 1
        t = t + 32
        continue 
    mem[_17 + 64] = mem[256]
    mem[_17 + 96] = mem[288]
    mem[_17 + 128] = mem[320]
    return memory
      from mem[64]
       len _17 + (64 * _19) + -mem[64] + 192
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e6ae99e6 = 28935
    sub_20e51fd9 = 46299
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_e6ae99e6 > 40509:
        revert with 0, 'Troops: Reward grade for Gladiator is invalid'
    if 40509 > sub_20e51fd9:
        revert with 0, 'Troops: Reward grade for Gladiator is invalid'
    stor563 = 40509
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor559 = 72 * 24 * 3600
    stor560 = 168 * 24 * 3600
    stor561 = 720 * 24 * 3600
    stor562 = 240 * 10^6 * 24 * 3600
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    creationMinPrice = 20000 * 10^18
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8a99d6ef = 5000
    sub_3e1fddb9 = 4500
    sub_2f0da35d = 4000
    sub_9a1172c9 = 3000
    sub_43348e23 = 3000
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
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

function calculateTotalDailyEmission() payable {
    if stor563 and 24 * 3600 > -1 / stor563:
        revert with 0, 17
    if 24 * 3600 * stor563 and stor556 > -1 / 24 * 3600 * stor563:
        revert with 0, 17
    if not stor553.length:
        return (24 * 3600 * stor563 * stor556 / 10^11)
    if stor553.length < 1:
        revert with 0, 17
    if stor553.length - 1 >= stor553.length:
        revert with 0, 50
    if stor553[stor553.length - 1].field_256 > block.timestamp:
        return (24 * 3600 * stor563 * stor556 / 10^11)
    if sub_20e51fd9 and 24 * 3600 > -1 / sub_20e51fd9:
        revert with 0, 17
    if 24 * 3600 * sub_20e51fd9 and stor555 > -1 / 24 * 3600 * sub_20e51fd9:
        revert with 0, 17
    if 24 * 3600 * stor563 * stor556 > !(24 * 3600 * sub_20e51fd9 * stor555):
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
                if (24 * 3600 * stor563 * stor556) + (24 * 3600 * sub_20e51fd9 * stor555) > !(24 * 3600 * sub_20e51fd9 * stor553[idx].field_0):
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
                    if (24 * 3600 * stor563 * stor556) + (24 * 3600 * sub_20e51fd9 * stor555) > !(((2 * 2160 * 24 * 3600 * sub_20e51fd9) + (2 * stor553[idx].field_256 * sub_20e51fd9) + (2 * -1 * block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) - (stor553[idx].field_256 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) + (block.timestamp * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) / 2 * stor553[idx].field_0) - (2136 * 24 * 3600 * sub_20e51fd9 * stor553[idx].field_0) - (stor553[idx].field_256 * sub_20e51fd9 * stor553[idx].field_0) + (block.timestamp * sub_20e51fd9 * stor553[idx].field_0)):
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
                    if (24 * 3600 * stor563 * stor556) + (24 * 3600 * sub_20e51fd9 * stor555) > !((48 * 24 * 3600 * sub_20e51fd9) - (24 * 3600 * (2160 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2160 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) - (24 * 3600 * (2136 * 24 * 3600 * sub_20e51fd9) + (stor553[idx].field_256 * sub_20e51fd9) - (block.timestamp * sub_20e51fd9) - (2136 * 24 * 3600 * sub_e6ae99e6) - (stor553[idx].field_256 * sub_e6ae99e6) + (block.timestamp * sub_e6ae99e6) / 2160 * 24 * 3600) / 2 * stor553[idx].field_0):
                        revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return ((24 * 3600 * stor563 * stor556) + (24 * 3600 * sub_20e51fd9 * stor555) / 10^11)
}

function sub_0e127233(?) payable {
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
                revert with 0, 'Troops: Id must be higher than zero'
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
            mem[_166 + 192] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1536))
            mem[_166 + 224] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1544))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1536):
                revert with 0, 'Troops: This troop doesn't exist'
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
                revert with 0, 'Troops: Id must be higher than zero'
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
            mem[_169 + 192] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1536))
            mem[_169 + 224] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1544))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1536):
                revert with 0, 'Troops: This troop doesn't exist'
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

function sub_8b4ed2d7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
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
                revert with 0, 'Troops: Id must be higher than zero'
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
            mem[_177 + 192] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1536))
            mem[_177 + 224] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1544))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1536):
                revert with 0, 'Troops: This troop doesn't exist'
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
                revert with 0, 'Troops: Id must be higher than zero'
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
            mem[_181 + 192] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1536))
            mem[_181 + 224] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1544))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1536):
                revert with 0, 'Troops: This troop doesn't exist'
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor552[arg1].field_256):
        if bool(stor552[arg1].field_256) == uint255(stor552[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if bool(stor552[arg1].field_256):
            if bool(stor552[arg1].field_256) == uint255(stor552[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor552[arg1].field_256):
                if 31 < uint255(stor552[arg1].field_256) * 0.5:
                    idx = 384
                    s = 0
                    while (uint255(stor552[arg1].field_256) * 0.5) + 352 > idx:
                        mem[idx + 32] = stor552[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor552[arg1].field_256) == stor552[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor552[arg1].field_257 % 128:
                if 31 < stor552[arg1].field_257 % 128:
                    idx = 384
                    s = 0
                    while stor552[arg1].field_257 % 128 + 352 > idx:
                        mem[idx + 32] = stor552[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if 1 == bool(uint8(stor552[arg1].field_1544)):
            return 32, 74, 
                   0x4568747470733a2f2f697066732e696e667572612e696f2f697066732f516d567878784b443847634575326665557062324a653344487151344b437851487443674e5a4837557968636e, mem[ceil32(uint255(stor552[arg1].field_256) * 0.5) + 490 len 22] >> 336,
                   0
        if bool(stor552[arg1].field_256):
            if bool(stor552[arg1].field_256) == uint255(stor552[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if bool(stor552[arg1].field_256):
                if bool(stor552[arg1].field_256) == uint255(stor552[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor552[arg1].field_256):
                    if 31 < uint255(stor552[arg1].field_256) * 0.5:
                        idx = ceil32(uint255(stor552[arg1].field_256) * 0.5) + 672
                        s = 0
                        while ceil32(uint255(stor552[arg1].field_256) * 0.5) + (uint255(stor552[arg1].field_256) * 0.5) + 640 > idx:
                            mem[idx + 32] = stor552[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor552[arg1].field_256) == stor552[arg1].field_257 % 128 < 32:
                    revert with 0, 34
                if stor552[arg1].field_257 % 128:
                    if 31 < stor552[arg1].field_257 % 128:
                        idx = ceil32(uint255(stor552[arg1].field_256) * 0.5) + 672
                        s = 0
                        while ceil32(uint255(stor552[arg1].field_256) * 0.5) + stor552[arg1].field_257 % 128 + 640 > idx:
                            mem[idx + 32] = stor552[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if stor552[arg1].field_768 > !stor559:
                revert with 0, 17
            if block.timestamp <= stor552[arg1].field_768 + stor559:
                return 32, 74, 
                       0x3668747470733a2f2f697066732e696e667572612e696f2f697066732f516d5a4c474c646a7575443754416375587848444b685a63374b643237766434744b4570525a65713965624d34, mem[(2 * ceil32(uint255(stor552[arg1].field_256) * 0.5)) + 778 len 22] >> 336,
                       0
            if stor552[arg1].field_768 > !stor560:
                revert with 0, 17
            if block.timestamp <= stor552[arg1].field_768 + stor560:
                return 32, 74, 
                       0xfe68747470733a2f2f697066732e696e667572612e696f2f697066732f516d61705a565678384758754c6d6857554144686145764e6a6e6d426138597634794c7754446f455238594854, mem[(2 * ceil32(uint255(stor552[arg1].field_256) * 0.5)) + 778 len 22] >> 336,
                       0
            if stor552[arg1].field_768 > !stor561:
                revert with 0, 17
            if block.timestamp > stor552[arg1].field_768 + stor561:
                return 32, 74, 
                       0x4468747470733a2f2f697066732e696e667572612e696f2f697066732f516d5250516b565a663550796a7663774a414337326b4a51696a79446734587a54435a706e7a647a7652727772, mem[(2 * ceil32(uint255(stor552[arg1].field_256) * 0.5)) + 778 len 22] >> 336,
                       0
            return 32, 74, 
                   0x4e68747470733a2f2f697066732e696e667572612e696f2f697066732f516d57513443754e743832687a52757a74514c5076674d697a3454683456724e506b707971597a597337766134, mem[(2 * ceil32(uint255(stor552[arg1].field_256) * 0.5)) + 778 len 22] >> 336,
                   0
        if bool(stor552[arg1].field_256) == stor552[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if bool(stor552[arg1].field_256):
            if bool(stor552[arg1].field_256) == uint255(stor552[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor552[arg1].field_256):
                if 31 < uint255(stor552[arg1].field_256) * 0.5:
                    idx = ceil32(uint255(stor552[arg1].field_256) * 0.5) + 672
                    s = 0
                    while ceil32(uint255(stor552[arg1].field_256) * 0.5) + (uint255(stor552[arg1].field_256) * 0.5) + 640 > idx:
                        mem[idx + 32] = stor552[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor552[arg1].field_256) == stor552[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor552[arg1].field_257 % 128:
                if 31 < stor552[arg1].field_257 % 128:
                    idx = ceil32(uint255(stor552[arg1].field_256) * 0.5) + 672
                    s = 0
                    while ceil32(uint255(stor552[arg1].field_256) * 0.5) + stor552[arg1].field_257 % 128 + 640 > idx:
                        mem[idx + 32] = stor552[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor552[arg1].field_768 > !stor559:
            revert with 0, 17
        if block.timestamp <= stor552[arg1].field_768 + stor559:
            return 32, 74, 
                   0x3668747470733a2f2f697066732e696e667572612e696f2f697066732f516d5a4c474c646a7575443754416375587848444b685a63374b643237766434744b4570525a65713965624d34, mem[ceil32(uint255(stor552[arg1].field_256) * 0.5) + ceil32(stor552[arg1].field_257 % 128) + 778 len 22] >> 336,
                   0
        if stor552[arg1].field_768 > !stor560:
            revert with 0, 17
        if block.timestamp <= stor552[arg1].field_768 + stor560:
            return 32, 74, 
                   0xfe68747470733a2f2f697066732e696e667572612e696f2f697066732f516d61705a565678384758754c6d6857554144686145764e6a6e6d426138597634794c7754446f455238594854, mem[ceil32(uint255(stor552[arg1].field_256) * 0.5) + ceil32(stor552[arg1].field_257 % 128) + 778 len 22] >> 336,
                   0
        if stor552[arg1].field_768 > !stor561:
            revert with 0, 17
        if block.timestamp > stor552[arg1].field_768 + stor561:
            return 32, 74, 
                   0x4468747470733a2f2f697066732e696e667572612e696f2f697066732f516d5250516b565a663550796a7663774a414337326b4a51696a79446734587a54435a706e7a647a7652727772, mem[ceil32(uint255(stor552[arg1].field_256) * 0.5) + ceil32(stor552[arg1].field_257 % 128) + 778 len 22] >> 336,
                   0
        return 32, 74, 
               0x4e68747470733a2f2f697066732e696e667572612e696f2f697066732f516d57513443754e743832687a52757a74514c5076674d697a3454683456724e506b707971597a597337766134, mem[ceil32(uint255(stor552[arg1].field_256) * 0.5) + ceil32(stor552[arg1].field_257 % 128) + 778 len 22] >> 336,
               0
    if bool(stor552[arg1].field_256) == stor552[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor552[arg1].field_256):
        if bool(stor552[arg1].field_256) == uint255(stor552[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor552[arg1].field_256):
            if 31 < uint255(stor552[arg1].field_256) * 0.5:
                idx = 384
                s = 0
                while (uint255(stor552[arg1].field_256) * 0.5) + 352 > idx:
                    mem[idx + 32] = stor552[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor552[arg1].field_256) == stor552[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor552[arg1].field_257 % 128:
            if 31 < stor552[arg1].field_257 % 128:
                idx = 384
                s = 0
                while stor552[arg1].field_257 % 128 + 352 > idx:
                    mem[idx + 32] = stor552[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if 1 == bool(uint8(stor552[arg1].field_1544)):
        return 32, 74, 
               0x4568747470733a2f2f697066732e696e667572612e696f2f697066732f516d567878784b443847634575326665557062324a653344487151344b437851487443674e5a4837557968636e, mem[ceil32(stor552[arg1].field_257 % 128) + 490 len 22] >> 336,
               0
    if bool(stor552[arg1].field_256):
        if bool(stor552[arg1].field_256) == uint255(stor552[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if bool(stor552[arg1].field_256):
            if bool(stor552[arg1].field_256) == uint255(stor552[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor552[arg1].field_256):
                if 31 < uint255(stor552[arg1].field_256) * 0.5:
                    idx = ceil32(stor552[arg1].field_257 % 128) + 672
                    s = 0
                    while ceil32(stor552[arg1].field_257 % 128) + (uint255(stor552[arg1].field_256) * 0.5) + 640 > idx:
                        mem[idx + 32] = stor552[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor552[arg1].field_256) == stor552[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor552[arg1].field_257 % 128:
                if 31 < stor552[arg1].field_257 % 128:
                    idx = ceil32(stor552[arg1].field_257 % 128) + 672
                    s = 0
                    while ceil32(stor552[arg1].field_257 % 128) + stor552[arg1].field_257 % 128 + 640 > idx:
                        mem[idx + 32] = stor552[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor552[arg1].field_768 > !stor559:
            revert with 0, 17
        if block.timestamp <= stor552[arg1].field_768 + stor559:
            return 32, 74, 
                   0x3668747470733a2f2f697066732e696e667572612e696f2f697066732f516d5a4c474c646a7575443754416375587848444b685a63374b643237766434744b4570525a65713965624d34, mem[ceil32(stor552[arg1].field_257 % 128) + ceil32(uint255(stor552[arg1].field_256) * 0.5) + 778 len 22] >> 336,
                   0
        if stor552[arg1].field_768 > !stor560:
            revert with 0, 17
        if block.timestamp <= stor552[arg1].field_768 + stor560:
            return 32, 74, 
                   0xfe68747470733a2f2f697066732e696e667572612e696f2f697066732f516d61705a565678384758754c6d6857554144686145764e6a6e6d426138597634794c7754446f455238594854, mem[ceil32(stor552[arg1].field_257 % 128) + ceil32(uint255(stor552[arg1].field_256) * 0.5) + 778 len 22] >> 336,
                   0
        if stor552[arg1].field_768 > !stor561:
            revert with 0, 17
        if block.timestamp > stor552[arg1].field_768 + stor561:
            return 32, 74, 
                   0x4468747470733a2f2f697066732e696e667572612e696f2f697066732f516d5250516b565a663550796a7663774a414337326b4a51696a79446734587a54435a706e7a647a7652727772, mem[ceil32(stor552[arg1].field_257 % 128) + ceil32(uint255(stor552[arg1].field_256) * 0.5) + 778 len 22] >> 336,
                   0
        return 32, 74, 
               0x4e68747470733a2f2f697066732e696e667572612e696f2f697066732f516d57513443754e743832687a52757a74514c5076674d697a3454683456724e506b707971597a597337766134, mem[ceil32(stor552[arg1].field_257 % 128) + ceil32(uint255(stor552[arg1].field_256) * 0.5) + 778 len 22] >> 336,
               0
    if bool(stor552[arg1].field_256) == stor552[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor552[arg1].field_256):
        if bool(stor552[arg1].field_256) == uint255(stor552[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor552[arg1].field_256):
            if 31 < uint255(stor552[arg1].field_256) * 0.5:
                idx = ceil32(stor552[arg1].field_257 % 128) + 672
                s = 0
                while ceil32(stor552[arg1].field_257 % 128) + (uint255(stor552[arg1].field_256) * 0.5) + 640 > idx:
                    mem[idx + 32] = stor552[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor552[arg1].field_256) == stor552[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor552[arg1].field_257 % 128:
            if 31 < stor552[arg1].field_257 % 128:
                idx = ceil32(stor552[arg1].field_257 % 128) + 672
                s = 0
                while ceil32(stor552[arg1].field_257 % 128) + stor552[arg1].field_257 % 128 + 640 > idx:
                    mem[idx + 32] = stor552[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor552[arg1].field_768 > !stor559:
        revert with 0, 17
    if block.timestamp <= stor552[arg1].field_768 + stor559:
        return 32, 74, 
               0x3668747470733a2f2f697066732e696e667572612e696f2f697066732f516d5a4c474c646a7575443754416375587848444b685a63374b643237766434744b4570525a65713965624d34, mem[(2 * ceil32(stor552[arg1].field_257 % 128)) + 778 len 22] >> 336,
               0
    if stor552[arg1].field_768 > !stor560:
        revert with 0, 17
    if block.timestamp <= stor552[arg1].field_768 + stor560:
        return 32, 74, 
               0xfe68747470733a2f2f697066732e696e667572612e696f2f697066732f516d61705a565678384758754c6d6857554144686145764e6a6e6d426138597634794c7754446f455238594854, mem[(2 * ceil32(stor552[arg1].field_257 % 128)) + 778 len 22] >> 336,
               0
    if stor552[arg1].field_768 > !stor561:
        revert with 0, 17
    if block.timestamp > stor552[arg1].field_768 + stor561:
        return 32, 74, 
               0x4468747470733a2f2f697066732e696e667572612e696f2f697066732f516d5250516b565a663550796a7663774a414337326b4a51696a79446734587a54435a706e7a647a7652727772, mem[(2 * ceil32(stor552[arg1].field_257 % 128)) + 778 len 22] >> 336,
               0
    return 32, 74, 
           0x4e68747470733a2f2f697066732e696e667572612e696f2f697066732f516d57513443754e743832687a52757a74514c5076674d697a3454683456724e506b707971597a597337766134, mem[(2 * ceil32(stor552[arg1].field_257 % 128)) + 778 len 22] >> 336,
           0
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
                revert with 0, 'Troops: Id must be higher than zero'
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
            mem[_360 + 192] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1536))
            mem[_360 + 224] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1544))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1536):
                revert with 0, 'Troops: This troop doesn't exist'
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
                mem[_661 + 192] = bool(uint8(stor6[_660].field_0))
                mem[_661 + 224] = bool(uint8(stor6[_660].field_8))
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
                mem[_661 + 192] = bool(uint8(stor6[_660].field_0))
                mem[_661 + 224] = bool(uint8(stor6[_660].field_8))
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
                revert with 0, 'Troops: Id must be higher than zero'
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
            mem[_364 + 192] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1536))
            mem[_364 + 224] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1544))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1536):
                revert with 0, 'Troops: This troop doesn't exist'
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
                mem[_669 + 192] = bool(uint8(stor6[_668].field_0))
                mem[_669 + 224] = bool(uint8(stor6[_668].field_8))
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
                mem[_669 + 192] = bool(uint8(stor6[_668].field_0))
                mem[_669 + 224] = bool(uint8(stor6[_668].field_8))
                if sha3(mem[128 len mem[96]]) == sha3(mem[_699 + 32 len stor1[_668].field_1 % 128]):
                    return 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if msg.sender == ownerOf[arg3]:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
        if paused:
            revert with 0, 'Pausable: paused'
        if not arg2:
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
        else:
            if owner == arg2:
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
            else:
                if bool(uint8(stor552[arg3].field_1536)) != 1:
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
                else:
                    if bool(uint8(stor552[arg3].field_1544)) != 1:
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
                    else:
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                        if balanceOf[address(arg2)] > test266151307():
                            revert with 0, 65
                        mem[96] = balanceOf[address(arg2)]
                        mem[64] = (32 * balanceOf[address(arg2)]) + 128
                        if not balanceOf[address(arg2)]:
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
                                _3838 = mem[64]
                                mem[64] = mem[64] + 256
                                mem[_3838] = stor552[stor151[address(arg2)][idx]].field_0
                                if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    _3874 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) + 32
                                    mem[_3874] = uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                            if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                mem[_3874 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_3874 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _3874 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _3874 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                            if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                mem[_3874 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_3874 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _3874 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _3874 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    mem[_3838 + 32] = _3874
                                else:
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                        revert with 0, 34
                                    _3889 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor552[stor151[address(arg2)][idx]].field_257 % 128) + 32
                                    mem[_3889] = stor552[stor151[address(arg2)][idx]].field_257 % 128
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                            if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                mem[_3889 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_3889 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _3889 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _3889 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                            if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                mem[_3889 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_3889 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _3889 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _3889 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    mem[_3838 + 32] = _3889
                                mem[_3838 + 64] = stor552[stor151[address(arg2)][idx]].field_512
                                mem[_3838 + 96] = stor552[stor151[address(arg2)][idx]].field_768
                                mem[_3838 + 128] = stor552[stor151[address(arg2)][idx]].field_1024
                                mem[_3838 + 160] = stor552[stor151[address(arg2)][idx]].field_1280
                                mem[_3838 + 192] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1536))
                                mem[_3838 + 224] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1544))
                                if not uint8(stor552[stor151[address(arg2)][idx]].field_1536):
                                    revert with 0, 'Troops: This troop doesn't exist'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg2)][idx]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            mem[128 len 32 * balanceOf[address(arg2)]] = call.data[calldata.size len 32 * balanceOf[address(arg2)]]
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
                                _3841 = mem[64]
                                mem[64] = mem[64] + 256
                                mem[_3841] = stor552[stor151[address(arg2)][idx]].field_0
                                if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    _3876 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) + 32
                                    mem[_3876] = uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                            if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                mem[_3876 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_3876 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _3876 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _3876 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                            if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                mem[_3876 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_3876 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _3876 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _3876 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    mem[_3841 + 32] = _3876
                                else:
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                        revert with 0, 34
                                    _3894 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor552[stor151[address(arg2)][idx]].field_257 % 128) + 32
                                    mem[_3894] = stor552[stor151[address(arg2)][idx]].field_257 % 128
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                            if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                mem[_3894 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_3894 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _3894 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _3894 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                            if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                mem[_3894 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_3894 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _3894 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _3894 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    mem[_3841 + 32] = _3894
                                mem[_3841 + 64] = stor552[stor151[address(arg2)][idx]].field_512
                                mem[_3841 + 96] = stor552[stor151[address(arg2)][idx]].field_768
                                mem[_3841 + 128] = stor552[stor151[address(arg2)][idx]].field_1024
                                mem[_3841 + 160] = stor552[stor151[address(arg2)][idx]].field_1280
                                mem[_3841 + 192] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1536))
                                mem[_3841 + 224] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1544))
                                if not uint8(stor552[stor151[address(arg2)][idx]].field_1536):
                                    revert with 0, 'Troops: This troop doesn't exist'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg2)][idx]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        idx = 0
                        s = 0
                        while idx < mem[96]:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 552
                            if not uint8(stor552[mem[(32 * idx) + 128]].field_1544):
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
                            revert with 0, 'Each holder can not hold more than 2 Gladiators'
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
    else:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] == msg.sender:
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg3] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
            if paused:
                revert with 0, 'Pausable: paused'
            if not arg2:
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
            else:
                if owner == arg2:
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
                else:
                    if bool(uint8(stor552[arg3].field_1536)) != 1:
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
                    else:
                        if bool(uint8(stor552[arg3].field_1544)) != 1:
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
                        else:
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                            if balanceOf[address(arg2)] > test266151307():
                                revert with 0, 65
                            mem[96] = balanceOf[address(arg2)]
                            mem[64] = (32 * balanceOf[address(arg2)]) + 128
                            if not balanceOf[address(arg2)]:
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
                                    _3844 = mem[64]
                                    mem[64] = mem[64] + 256
                                    mem[_3844] = stor552[stor151[address(arg2)][idx]].field_0
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        _3878 = mem[64]
                                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) + 32
                                        mem[_3878] = uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_3878 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3878 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3878 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3878 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_3878 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3878 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3878 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3878 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_3844 + 32] = _3878
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        _3899 = mem[64]
                                        mem[64] = mem[64] + ceil32(stor552[stor151[address(arg2)][idx]].field_257 % 128) + 32
                                        mem[_3899] = stor552[stor151[address(arg2)][idx]].field_257 % 128
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_3899 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3899 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3899 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3899 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_3899 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3899 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3899 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3899 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_3844 + 32] = _3899
                                    mem[_3844 + 64] = stor552[stor151[address(arg2)][idx]].field_512
                                    mem[_3844 + 96] = stor552[stor151[address(arg2)][idx]].field_768
                                    mem[_3844 + 128] = stor552[stor151[address(arg2)][idx]].field_1024
                                    mem[_3844 + 160] = stor552[stor151[address(arg2)][idx]].field_1280
                                    mem[_3844 + 192] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1536))
                                    mem[_3844 + 224] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1544))
                                    if not uint8(stor552[stor151[address(arg2)][idx]].field_1536):
                                        revert with 0, 'Troops: This troop doesn't exist'
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg2)][idx]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[128 len 32 * balanceOf[address(arg2)]] = call.data[calldata.size len 32 * balanceOf[address(arg2)]]
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
                                    _3847 = mem[64]
                                    mem[64] = mem[64] + 256
                                    mem[_3847] = stor552[stor151[address(arg2)][idx]].field_0
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        _3880 = mem[64]
                                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) + 32
                                        mem[_3880] = uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_3880 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3880 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3880 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3880 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_3880 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3880 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3880 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3880 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_3847 + 32] = _3880
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        _3904 = mem[64]
                                        mem[64] = mem[64] + ceil32(stor552[stor151[address(arg2)][idx]].field_257 % 128) + 32
                                        mem[_3904] = stor552[stor151[address(arg2)][idx]].field_257 % 128
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_3904 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3904 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3904 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3904 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_3904 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3904 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3904 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3904 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_3847 + 32] = _3904
                                    mem[_3847 + 64] = stor552[stor151[address(arg2)][idx]].field_512
                                    mem[_3847 + 96] = stor552[stor151[address(arg2)][idx]].field_768
                                    mem[_3847 + 128] = stor552[stor151[address(arg2)][idx]].field_1024
                                    mem[_3847 + 160] = stor552[stor151[address(arg2)][idx]].field_1280
                                    mem[_3847 + 192] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1536))
                                    mem[_3847 + 224] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1544))
                                    if not uint8(stor552[stor151[address(arg2)][idx]].field_1536):
                                        revert with 0, 'Troops: This troop doesn't exist'
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg2)][idx]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            idx = 0
                            s = 0
                            while idx < mem[96]:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 552
                                if not uint8(stor552[mem[(32 * idx) + 128]].field_1544):
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
                                revert with 0, 'Each holder can not hold more than 2 Gladiators'
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
        else:
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
            if not arg2:
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
            else:
                if owner == arg2:
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
                else:
                    if bool(uint8(stor552[arg3].field_1536)) != 1:
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
                    else:
                        if bool(uint8(stor552[arg3].field_1544)) != 1:
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
                        else:
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                            if balanceOf[address(arg2)] > test266151307():
                                revert with 0, 65
                            mem[96] = balanceOf[address(arg2)]
                            mem[64] = (32 * balanceOf[address(arg2)]) + 128
                            if not balanceOf[address(arg2)]:
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
                                    _3850 = mem[64]
                                    mem[64] = mem[64] + 256
                                    mem[_3850] = stor552[stor151[address(arg2)][idx]].field_0
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        _3882 = mem[64]
                                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) + 32
                                        mem[_3882] = uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_3882 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3882 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3882 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3882 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_3882 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3882 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3882 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3882 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_3850 + 32] = _3882
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        _3909 = mem[64]
                                        mem[64] = mem[64] + ceil32(stor552[stor151[address(arg2)][idx]].field_257 % 128) + 32
                                        mem[_3909] = stor552[stor151[address(arg2)][idx]].field_257 % 128
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_3909 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3909 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3909 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3909 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_3909 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3909 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3909 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3909 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_3850 + 32] = _3909
                                    mem[_3850 + 64] = stor552[stor151[address(arg2)][idx]].field_512
                                    mem[_3850 + 96] = stor552[stor151[address(arg2)][idx]].field_768
                                    mem[_3850 + 128] = stor552[stor151[address(arg2)][idx]].field_1024
                                    mem[_3850 + 160] = stor552[stor151[address(arg2)][idx]].field_1280
                                    mem[_3850 + 192] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1536))
                                    mem[_3850 + 224] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1544))
                                    if not uint8(stor552[stor151[address(arg2)][idx]].field_1536):
                                        revert with 0, 'Troops: This troop doesn't exist'
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg2)][idx]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[128 len 32 * balanceOf[address(arg2)]] = call.data[calldata.size len 32 * balanceOf[address(arg2)]]
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
                                    _3853 = mem[64]
                                    mem[64] = mem[64] + 256
                                    mem[_3853] = stor552[stor151[address(arg2)][idx]].field_0
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        _3884 = mem[64]
                                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) + 32
                                        mem[_3884] = uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_3884 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3884 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3884 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3884 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_3884 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3884 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3884 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3884 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_3853 + 32] = _3884
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        _3914 = mem[64]
                                        mem[64] = mem[64] + ceil32(stor552[stor151[address(arg2)][idx]].field_257 % 128) + 32
                                        mem[_3914] = stor552[stor151[address(arg2)][idx]].field_257 % 128
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_3914 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3914 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3914 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3914 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_3914 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_3914 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _3914 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _3914 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_3853 + 32] = _3914
                                    mem[_3853 + 64] = stor552[stor151[address(arg2)][idx]].field_512
                                    mem[_3853 + 96] = stor552[stor151[address(arg2)][idx]].field_768
                                    mem[_3853 + 128] = stor552[stor151[address(arg2)][idx]].field_1024
                                    mem[_3853 + 160] = stor552[stor151[address(arg2)][idx]].field_1280
                                    mem[_3853 + 192] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1536))
                                    mem[_3853 + 224] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1544))
                                    if not uint8(stor552[stor151[address(arg2)][idx]].field_1536):
                                        revert with 0, 'Troops: This troop doesn't exist'
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg2)][idx]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            idx = 0
                            s = 0
                            while idx < mem[96]:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 552
                                if not uint8(stor552[mem[(32 * idx) + 128]].field_1544):
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
                                revert with 0, 'Each holder can not hold more than 2 Gladiators'
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
    ('bool', ('stor', ('map', ('param', 'arg3'), ('name', 'ownerOf', 103))))
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
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if msg.sender == ownerOf[arg3]:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0, 'ERC721: transfer from incorrect owner'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        if paused:
            revert with 0, 'Pausable: paused'
        if not arg2:
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
        else:
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
                    else:
                        if not arg2:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if balanceOf[address(arg2)] > test266151307():
                            revert with 0, 65
                        mem[ceil32(ceil32(arg4.length)) + 97] = balanceOf[address(arg2)]
                        mem[64] = ceil32(ceil32(arg4.length)) + (32 * balanceOf[address(arg2)]) + 129
                        if not balanceOf[address(arg2)]:
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
                                _12023 = mem[64]
                                mem[64] = mem[64] + 256
                                mem[_12023] = stor552[stor151[address(arg2)][idx]].field_0
                                if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    _14171 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) + 32
                                    mem[_14171] = uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                            if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                mem[_14171 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_14171 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _14171 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _14171 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                            if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                mem[_14171 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_14171 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _14171 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _14171 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    mem[_12023 + 32] = _14171
                                else:
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                        revert with 0, 34
                                    _14186 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor552[stor151[address(arg2)][idx]].field_257 % 128) + 32
                                    mem[_14186] = stor552[stor151[address(arg2)][idx]].field_257 % 128
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                            if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                mem[_14186 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_14186 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _14186 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _14186 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                            if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                mem[_14186 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_14186 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _14186 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _14186 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    mem[_12023 + 32] = _14186
                                mem[_12023 + 64] = stor552[stor151[address(arg2)][idx]].field_512
                                mem[_12023 + 96] = stor552[stor151[address(arg2)][idx]].field_768
                                mem[_12023 + 128] = stor552[stor151[address(arg2)][idx]].field_1024
                                mem[_12023 + 160] = stor552[stor151[address(arg2)][idx]].field_1280
                                mem[_12023 + 192] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1536))
                                mem[_12023 + 224] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1544))
                                if not uint8(stor552[stor151[address(arg2)][idx]].field_1536):
                                    revert with 0, 'Troops: This troop doesn't exist'
                                if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                    revert with 0, 50
                                mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129] = tokenOfOwnerByIndex[address(arg2)][idx]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            idx = 0
                            s = 0
                            while idx < mem[ceil32(ceil32(arg4.length)) + 97]:
                                if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
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
                                revert with 0, 'Each holder can not hold more than 2 Gladiators'
                            if not arg1:
                                stor154[arg3] = tokenByIndex.length
                                tokenByIndex.length++
                                stor72A1[stor153.length] = arg3
                                if arg2:
                                    if arg2 == arg1:
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
                                        mem[0] = arg3
                                        mem[32] = 103
                                        ownerOf[arg3] = arg2
                                        emit Transfer(arg1, arg2, arg3);
                                        if ext_code.size(arg2):
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = arg3
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = mem[96]
                                            mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                            if ceil32(mem[96]) <= mem[96]:
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22078 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22078] == Mask(32, 224, mem[_22078])
                                                if Mask(32, 224, mem[_22078]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                mem[mem[96] + mem[64] + 164] = 0
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22079 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22079] == Mask(32, 224, mem[_22079])
                                                if Mask(32, 224, mem[_22079]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        if not arg2:
                                            revert with 0, 'ERC721: balance query for the zero address'
                                        tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                        stor152[arg3] = balanceOf[address(arg2)]
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
                                        mem[0] = arg3
                                        mem[32] = 103
                                        ownerOf[arg3] = arg2
                                        emit Transfer(arg1, arg2, arg3);
                                        if ext_code.size(arg2):
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = arg3
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = mem[96]
                                            mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                            if ceil32(mem[96]) <= mem[96]:
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22080 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22080] == Mask(32, 224, mem[_22080])
                                                if Mask(32, 224, mem[_22080]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                mem[mem[96] + mem[64] + 164] = 0
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22081 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22081] == Mask(32, 224, mem[_22081])
                                                if Mask(32, 224, mem[_22081]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                    mem[0] = arg3
                                    mem[32] = 103
                                    ownerOf[arg3] = arg2
                                    emit Transfer(arg1, arg2, arg3);
                                    if ext_code.size(arg2):
                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = arg3
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[96]
                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) <= mem[96]:
                                            call arg2.0x150b7a02 with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                            _22082 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_22082] == Mask(32, 224, mem[_22082])
                                            if Mask(32, 224, mem[_22082]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            mem[mem[96] + mem[64] + 164] = 0
                                            call arg2.0x150b7a02 with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                            _22083 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_22083] == Mask(32, 224, mem[_22083])
                                            if Mask(32, 224, mem[_22083]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if arg1 == arg2:
                                    if arg2:
                                        if arg2 == arg1:
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22060 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22060] == Mask(32, 224, mem[_22060])
                                                    if Mask(32, 224, mem[_22060]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22061 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22061] == Mask(32, 224, mem[_22061])
                                                    if Mask(32, 224, mem[_22061]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            if not arg2:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                            stor152[arg3] = balanceOf[address(arg2)]
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22062 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22062] == Mask(32, 224, mem[_22062])
                                                    if Mask(32, 224, mem[_22062]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22063 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22063] == Mask(32, 224, mem[_22063])
                                                    if Mask(32, 224, mem[_22063]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                        mem[0] = arg3
                                        mem[32] = 103
                                        ownerOf[arg3] = arg2
                                        emit Transfer(arg1, arg2, arg3);
                                        if ext_code.size(arg2):
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = arg3
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = mem[96]
                                            mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                            if ceil32(mem[96]) <= mem[96]:
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22064 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22064] == Mask(32, 224, mem[_22064])
                                                if Mask(32, 224, mem[_22064]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                mem[mem[96] + mem[64] + 164] = 0
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22065 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22065] == Mask(32, 224, mem[_22065])
                                                if Mask(32, 224, mem[_22065]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    if not arg1:
                                        revert with 0, 'ERC721: balance query for the zero address'
                                    if balanceOf[address(arg1)] < 1:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] - 1 == stor152[arg3]:
                                        stor152[arg3] = 0
                                        tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                        if arg2:
                                            if arg2 == arg1:
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22066 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22066] == Mask(32, 224, mem[_22066])
                                                        if Mask(32, 224, mem[_22066]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22067 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22067] == Mask(32, 224, mem[_22067])
                                                        if Mask(32, 224, mem[_22067]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                if not arg2:
                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                stor152[arg3] = balanceOf[address(arg2)]
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22068 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22068] == Mask(32, 224, mem[_22068])
                                                        if Mask(32, 224, mem[_22068]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22069 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22069] == Mask(32, 224, mem[_22069])
                                                        if Mask(32, 224, mem[_22069]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22070 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22070] == Mask(32, 224, mem[_22070])
                                                    if Mask(32, 224, mem[_22070]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22071 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22071] == Mask(32, 224, mem[_22071])
                                                    if Mask(32, 224, mem[_22071]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                                        stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                                        stor152[arg3] = 0
                                        tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                        if arg2:
                                            if arg2 == arg1:
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22072 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22072] == Mask(32, 224, mem[_22072])
                                                        if Mask(32, 224, mem[_22072]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22073 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22073] == Mask(32, 224, mem[_22073])
                                                        if Mask(32, 224, mem[_22073]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                if not arg2:
                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                stor152[arg3] = balanceOf[address(arg2)]
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22074 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22074] == Mask(32, 224, mem[_22074])
                                                        if Mask(32, 224, mem[_22074]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22075 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22075] == Mask(32, 224, mem[_22075])
                                                        if Mask(32, 224, mem[_22075]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22076 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22076] == Mask(32, 224, mem[_22076])
                                                    if Mask(32, 224, mem[_22076]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22077 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22077] == Mask(32, 224, mem[_22077])
                                                    if Mask(32, 224, mem[_22077]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
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
                                _12026 = mem[64]
                                mem[64] = mem[64] + 256
                                mem[_12026] = stor552[stor151[address(arg2)][idx]].field_0
                                if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    _14173 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) + 32
                                    mem[_14173] = uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                            if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                mem[_14173 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_14173 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _14173 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _14173 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                            if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                mem[_14173 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_14173 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _14173 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _14173 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    mem[_12026 + 32] = _14173
                                else:
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                        revert with 0, 34
                                    _14191 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor552[stor151[address(arg2)][idx]].field_257 % 128) + 32
                                    mem[_14191] = stor552[stor151[address(arg2)][idx]].field_257 % 128
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                            if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                mem[_14191 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_14191 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _14191 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _14191 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                            if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                mem[_14191 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                            else:
                                                mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                mem[_14191 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                s = _14191 + 32
                                                t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                while _14191 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    mem[_12026 + 32] = _14191
                                mem[_12026 + 64] = stor552[stor151[address(arg2)][idx]].field_512
                                mem[_12026 + 96] = stor552[stor151[address(arg2)][idx]].field_768
                                mem[_12026 + 128] = stor552[stor151[address(arg2)][idx]].field_1024
                                mem[_12026 + 160] = stor552[stor151[address(arg2)][idx]].field_1280
                                mem[_12026 + 192] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1536))
                                mem[_12026 + 224] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1544))
                                if not uint8(stor552[stor151[address(arg2)][idx]].field_1536):
                                    revert with 0, 'Troops: This troop doesn't exist'
                                if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                    revert with 0, 50
                                mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129] = tokenOfOwnerByIndex[address(arg2)][idx]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            idx = 0
                            s = 0
                            while idx < mem[ceil32(ceil32(arg4.length)) + 97]:
                                if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
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
                                revert with 0, 'Each holder can not hold more than 2 Gladiators'
                            if not arg1:
                                stor154[arg3] = tokenByIndex.length
                                tokenByIndex.length++
                                stor72A1[stor153.length] = arg3
                                if arg2:
                                    if arg2 == arg1:
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
                                        mem[0] = arg3
                                        mem[32] = 103
                                        ownerOf[arg3] = arg2
                                        emit Transfer(arg1, arg2, arg3);
                                        if ext_code.size(arg2):
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = arg3
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = mem[96]
                                            mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                            if ceil32(mem[96]) <= mem[96]:
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22102 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22102] == Mask(32, 224, mem[_22102])
                                                if Mask(32, 224, mem[_22102]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                mem[mem[96] + mem[64] + 164] = 0
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22103 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22103] == Mask(32, 224, mem[_22103])
                                                if Mask(32, 224, mem[_22103]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        if not arg2:
                                            revert with 0, 'ERC721: balance query for the zero address'
                                        tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                        stor152[arg3] = balanceOf[address(arg2)]
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
                                        mem[0] = arg3
                                        mem[32] = 103
                                        ownerOf[arg3] = arg2
                                        emit Transfer(arg1, arg2, arg3);
                                        if ext_code.size(arg2):
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = arg3
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = mem[96]
                                            mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                            if ceil32(mem[96]) <= mem[96]:
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22104 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22104] == Mask(32, 224, mem[_22104])
                                                if Mask(32, 224, mem[_22104]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                mem[mem[96] + mem[64] + 164] = 0
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22105 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22105] == Mask(32, 224, mem[_22105])
                                                if Mask(32, 224, mem[_22105]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                    mem[0] = arg3
                                    mem[32] = 103
                                    ownerOf[arg3] = arg2
                                    emit Transfer(arg1, arg2, arg3);
                                    if ext_code.size(arg2):
                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = arg1
                                        mem[mem[64] + 68] = arg3
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = mem[96]
                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) <= mem[96]:
                                            call arg2.0x150b7a02 with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                            _22106 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_22106] == Mask(32, 224, mem[_22106])
                                            if Mask(32, 224, mem[_22106]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            mem[mem[96] + mem[64] + 164] = 0
                                            call arg2.0x150b7a02 with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                            _22107 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_22107] == Mask(32, 224, mem[_22107])
                                            if Mask(32, 224, mem[_22107]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if arg1 == arg2:
                                    if arg2:
                                        if arg2 == arg1:
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22084 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22084] == Mask(32, 224, mem[_22084])
                                                    if Mask(32, 224, mem[_22084]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22085 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22085] == Mask(32, 224, mem[_22085])
                                                    if Mask(32, 224, mem[_22085]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            if not arg2:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                            stor152[arg3] = balanceOf[address(arg2)]
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22086 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22086] == Mask(32, 224, mem[_22086])
                                                    if Mask(32, 224, mem[_22086]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22087 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22087] == Mask(32, 224, mem[_22087])
                                                    if Mask(32, 224, mem[_22087]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                        mem[0] = arg3
                                        mem[32] = 103
                                        ownerOf[arg3] = arg2
                                        emit Transfer(arg1, arg2, arg3);
                                        if ext_code.size(arg2):
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = arg3
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = mem[96]
                                            mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                            if ceil32(mem[96]) <= mem[96]:
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22088 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22088] == Mask(32, 224, mem[_22088])
                                                if Mask(32, 224, mem[_22088]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                mem[mem[96] + mem[64] + 164] = 0
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22089 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22089] == Mask(32, 224, mem[_22089])
                                                if Mask(32, 224, mem[_22089]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    if not arg1:
                                        revert with 0, 'ERC721: balance query for the zero address'
                                    if balanceOf[address(arg1)] < 1:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] - 1 == stor152[arg3]:
                                        stor152[arg3] = 0
                                        tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                        if arg2:
                                            if arg2 == arg1:
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22090 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22090] == Mask(32, 224, mem[_22090])
                                                        if Mask(32, 224, mem[_22090]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22091 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22091] == Mask(32, 224, mem[_22091])
                                                        if Mask(32, 224, mem[_22091]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                if not arg2:
                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                stor152[arg3] = balanceOf[address(arg2)]
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22092 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22092] == Mask(32, 224, mem[_22092])
                                                        if Mask(32, 224, mem[_22092]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22093 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22093] == Mask(32, 224, mem[_22093])
                                                        if Mask(32, 224, mem[_22093]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22094 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22094] == Mask(32, 224, mem[_22094])
                                                    if Mask(32, 224, mem[_22094]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22095 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22095] == Mask(32, 224, mem[_22095])
                                                    if Mask(32, 224, mem[_22095]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                                        stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                                        stor152[arg3] = 0
                                        tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                        if arg2:
                                            if arg2 == arg1:
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22096 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22096] == Mask(32, 224, mem[_22096])
                                                        if Mask(32, 224, mem[_22096]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22097 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22097] == Mask(32, 224, mem[_22097])
                                                        if Mask(32, 224, mem[_22097]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                if not arg2:
                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                stor152[arg3] = balanceOf[address(arg2)]
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22098 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22098] == Mask(32, 224, mem[_22098])
                                                        if Mask(32, 224, mem[_22098]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22099 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22099] == Mask(32, 224, mem[_22099])
                                                        if Mask(32, 224, mem[_22099]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22100 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22100] == Mask(32, 224, mem[_22100])
                                                    if Mask(32, 224, mem[_22100]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22101 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22101] == Mask(32, 224, mem[_22101])
                                                    if Mask(32, 224, mem[_22101]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] == msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg3] != arg1:
                revert with 0, 'ERC721: transfer from incorrect owner'
            if not arg2:
                revert with 0, 'ERC721: transfer to the zero address'
            if paused:
                revert with 0, 'Pausable: paused'
            if not arg2:
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
            else:
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
                        else:
                            if not arg2:
                                revert with 0, 'ERC721: balance query for the zero address'
                            if balanceOf[address(arg2)] > test266151307():
                                revert with 0, 65
                            mem[ceil32(ceil32(arg4.length)) + 97] = balanceOf[address(arg2)]
                            mem[64] = ceil32(ceil32(arg4.length)) + (32 * balanceOf[address(arg2)]) + 129
                            if not balanceOf[address(arg2)]:
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
                                    _12221 = mem[64]
                                    mem[64] = mem[64] + 256
                                    mem[_12221] = stor552[stor151[address(arg2)][idx]].field_0
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        _14175 = mem[64]
                                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) + 32
                                        mem[_14175] = uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_14175 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14175 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14175 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14175 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_14175 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14175 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14175 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14175 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_12221 + 32] = _14175
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        _14196 = mem[64]
                                        mem[64] = mem[64] + ceil32(stor552[stor151[address(arg2)][idx]].field_257 % 128) + 32
                                        mem[_14196] = stor552[stor151[address(arg2)][idx]].field_257 % 128
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_14196 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14196 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14196 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14196 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_14196 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14196 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14196 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14196 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_12221 + 32] = _14196
                                    mem[_12221 + 64] = stor552[stor151[address(arg2)][idx]].field_512
                                    mem[_12221 + 96] = stor552[stor151[address(arg2)][idx]].field_768
                                    mem[_12221 + 128] = stor552[stor151[address(arg2)][idx]].field_1024
                                    mem[_12221 + 160] = stor552[stor151[address(arg2)][idx]].field_1280
                                    mem[_12221 + 192] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1536))
                                    mem[_12221 + 224] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1544))
                                    if not uint8(stor552[stor151[address(arg2)][idx]].field_1536):
                                        revert with 0, 'Troops: This troop doesn't exist'
                                    if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                        revert with 0, 50
                                    mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129] = tokenOfOwnerByIndex[address(arg2)][idx]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                idx = 0
                                s = 0
                                while idx < mem[ceil32(ceil32(arg4.length)) + 97]:
                                    if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
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
                                    revert with 0, 'Each holder can not hold more than 2 Gladiators'
                                if not arg1:
                                    stor154[arg3] = tokenByIndex.length
                                    tokenByIndex.length++
                                    stor72A1[stor153.length] = arg3
                                    if arg2:
                                        if arg2 == arg1:
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22126 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22126] == Mask(32, 224, mem[_22126])
                                                    if Mask(32, 224, mem[_22126]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22127 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22127] == Mask(32, 224, mem[_22127])
                                                    if Mask(32, 224, mem[_22127]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            if not arg2:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                            stor152[arg3] = balanceOf[address(arg2)]
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22128 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22128] == Mask(32, 224, mem[_22128])
                                                    if Mask(32, 224, mem[_22128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22129 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22129] == Mask(32, 224, mem[_22129])
                                                    if Mask(32, 224, mem[_22129]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                        mem[0] = arg3
                                        mem[32] = 103
                                        ownerOf[arg3] = arg2
                                        emit Transfer(arg1, arg2, arg3);
                                        if ext_code.size(arg2):
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = arg3
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = mem[96]
                                            mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                            if ceil32(mem[96]) <= mem[96]:
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22130 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22130] == Mask(32, 224, mem[_22130])
                                                if Mask(32, 224, mem[_22130]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                mem[mem[96] + mem[64] + 164] = 0
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22131 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22131] == Mask(32, 224, mem[_22131])
                                                if Mask(32, 224, mem[_22131]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    if arg1 == arg2:
                                        if arg2:
                                            if arg2 == arg1:
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22108 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22108] == Mask(32, 224, mem[_22108])
                                                        if Mask(32, 224, mem[_22108]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22109 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22109] == Mask(32, 224, mem[_22109])
                                                        if Mask(32, 224, mem[_22109]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                if not arg2:
                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                stor152[arg3] = balanceOf[address(arg2)]
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22110 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22110] == Mask(32, 224, mem[_22110])
                                                        if Mask(32, 224, mem[_22110]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22111 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22111] == Mask(32, 224, mem[_22111])
                                                        if Mask(32, 224, mem[_22111]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22112 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22112] == Mask(32, 224, mem[_22112])
                                                    if Mask(32, 224, mem[_22112]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22113 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22113] == Mask(32, 224, mem[_22113])
                                                    if Mask(32, 224, mem[_22113]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        if not arg1:
                                            revert with 0, 'ERC721: balance query for the zero address'
                                        if balanceOf[address(arg1)] < 1:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] - 1 == stor152[arg3]:
                                            stor152[arg3] = 0
                                            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                            if arg2:
                                                if arg2 == arg1:
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22114 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22114] == Mask(32, 224, mem[_22114])
                                                            if Mask(32, 224, mem[_22114]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22115 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22115] == Mask(32, 224, mem[_22115])
                                                            if Mask(32, 224, mem[_22115]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    if not arg2:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                    stor152[arg3] = balanceOf[address(arg2)]
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22116 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22116] == Mask(32, 224, mem[_22116])
                                                            if Mask(32, 224, mem[_22116]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22117 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22117] == Mask(32, 224, mem[_22117])
                                                            if Mask(32, 224, mem[_22117]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22118 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22118] == Mask(32, 224, mem[_22118])
                                                        if Mask(32, 224, mem[_22118]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22119 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22119] == Mask(32, 224, mem[_22119])
                                                        if Mask(32, 224, mem[_22119]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                                            stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                                            stor152[arg3] = 0
                                            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                            if arg2:
                                                if arg2 == arg1:
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22120 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22120] == Mask(32, 224, mem[_22120])
                                                            if Mask(32, 224, mem[_22120]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22121 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22121] == Mask(32, 224, mem[_22121])
                                                            if Mask(32, 224, mem[_22121]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    if not arg2:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                    stor152[arg3] = balanceOf[address(arg2)]
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22122 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22122] == Mask(32, 224, mem[_22122])
                                                            if Mask(32, 224, mem[_22122]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22123 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22123] == Mask(32, 224, mem[_22123])
                                                            if Mask(32, 224, mem[_22123]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22124 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22124] == Mask(32, 224, mem[_22124])
                                                        if Mask(32, 224, mem[_22124]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22125 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22125] == Mask(32, 224, mem[_22125])
                                                        if Mask(32, 224, mem[_22125]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
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
                                    _12224 = mem[64]
                                    mem[64] = mem[64] + 256
                                    mem[_12224] = stor552[stor151[address(arg2)][idx]].field_0
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        _14177 = mem[64]
                                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) + 32
                                        mem[_14177] = uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_14177 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14177 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14177 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14177 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_14177 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14177 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14177 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14177 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_12224 + 32] = _14177
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        _14201 = mem[64]
                                        mem[64] = mem[64] + ceil32(stor552[stor151[address(arg2)][idx]].field_257 % 128) + 32
                                        mem[_14201] = stor552[stor151[address(arg2)][idx]].field_257 % 128
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_14201 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14201 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14201 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14201 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_14201 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14201 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14201 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14201 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_12224 + 32] = _14201
                                    mem[_12224 + 64] = stor552[stor151[address(arg2)][idx]].field_512
                                    mem[_12224 + 96] = stor552[stor151[address(arg2)][idx]].field_768
                                    mem[_12224 + 128] = stor552[stor151[address(arg2)][idx]].field_1024
                                    mem[_12224 + 160] = stor552[stor151[address(arg2)][idx]].field_1280
                                    mem[_12224 + 192] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1536))
                                    mem[_12224 + 224] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1544))
                                    if not uint8(stor552[stor151[address(arg2)][idx]].field_1536):
                                        revert with 0, 'Troops: This troop doesn't exist'
                                    if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                        revert with 0, 50
                                    mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129] = tokenOfOwnerByIndex[address(arg2)][idx]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                idx = 0
                                s = 0
                                while idx < mem[ceil32(ceil32(arg4.length)) + 97]:
                                    if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
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
                                    revert with 0, 'Each holder can not hold more than 2 Gladiators'
                                if not arg1:
                                    stor154[arg3] = tokenByIndex.length
                                    tokenByIndex.length++
                                    stor72A1[stor153.length] = arg3
                                    if arg2:
                                        if arg2 == arg1:
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22150 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22150] == Mask(32, 224, mem[_22150])
                                                    if Mask(32, 224, mem[_22150]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22151 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22151] == Mask(32, 224, mem[_22151])
                                                    if Mask(32, 224, mem[_22151]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            if not arg2:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                            stor152[arg3] = balanceOf[address(arg2)]
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22152 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22152] == Mask(32, 224, mem[_22152])
                                                    if Mask(32, 224, mem[_22152]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22153 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22153] == Mask(32, 224, mem[_22153])
                                                    if Mask(32, 224, mem[_22153]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                        mem[0] = arg3
                                        mem[32] = 103
                                        ownerOf[arg3] = arg2
                                        emit Transfer(arg1, arg2, arg3);
                                        if ext_code.size(arg2):
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = arg3
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = mem[96]
                                            mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                            if ceil32(mem[96]) <= mem[96]:
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22154 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22154] == Mask(32, 224, mem[_22154])
                                                if Mask(32, 224, mem[_22154]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                mem[mem[96] + mem[64] + 164] = 0
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22155 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22155] == Mask(32, 224, mem[_22155])
                                                if Mask(32, 224, mem[_22155]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    if arg1 == arg2:
                                        if arg2:
                                            if arg2 == arg1:
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22132 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22132] == Mask(32, 224, mem[_22132])
                                                        if Mask(32, 224, mem[_22132]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22133 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22133] == Mask(32, 224, mem[_22133])
                                                        if Mask(32, 224, mem[_22133]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                if not arg2:
                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                stor152[arg3] = balanceOf[address(arg2)]
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22134 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22134] == Mask(32, 224, mem[_22134])
                                                        if Mask(32, 224, mem[_22134]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22135 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22135] == Mask(32, 224, mem[_22135])
                                                        if Mask(32, 224, mem[_22135]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22136 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22136] == Mask(32, 224, mem[_22136])
                                                    if Mask(32, 224, mem[_22136]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22137 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22137] == Mask(32, 224, mem[_22137])
                                                    if Mask(32, 224, mem[_22137]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        if not arg1:
                                            revert with 0, 'ERC721: balance query for the zero address'
                                        if balanceOf[address(arg1)] < 1:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] - 1 == stor152[arg3]:
                                            stor152[arg3] = 0
                                            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                            if arg2:
                                                if arg2 == arg1:
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22138 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22138] == Mask(32, 224, mem[_22138])
                                                            if Mask(32, 224, mem[_22138]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22139 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22139] == Mask(32, 224, mem[_22139])
                                                            if Mask(32, 224, mem[_22139]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    if not arg2:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                    stor152[arg3] = balanceOf[address(arg2)]
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22140 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22140] == Mask(32, 224, mem[_22140])
                                                            if Mask(32, 224, mem[_22140]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22141 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22141] == Mask(32, 224, mem[_22141])
                                                            if Mask(32, 224, mem[_22141]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22142 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22142] == Mask(32, 224, mem[_22142])
                                                        if Mask(32, 224, mem[_22142]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22143 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22143] == Mask(32, 224, mem[_22143])
                                                        if Mask(32, 224, mem[_22143]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                                            stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                                            stor152[arg3] = 0
                                            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                            if arg2:
                                                if arg2 == arg1:
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22144 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22144] == Mask(32, 224, mem[_22144])
                                                            if Mask(32, 224, mem[_22144]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22145 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22145] == Mask(32, 224, mem[_22145])
                                                            if Mask(32, 224, mem[_22145]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    if not arg2:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                    stor152[arg3] = balanceOf[address(arg2)]
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22146 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22146] == Mask(32, 224, mem[_22146])
                                                            if Mask(32, 224, mem[_22146]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22147 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22147] == Mask(32, 224, mem[_22147])
                                                            if Mask(32, 224, mem[_22147]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22148 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22148] == Mask(32, 224, mem[_22148])
                                                        if Mask(32, 224, mem[_22148]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22149 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22149] == Mask(32, 224, mem[_22149])
                                                        if Mask(32, 224, mem[_22149]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
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
            if not arg2:
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
            else:
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
                        else:
                            if not arg2:
                                revert with 0, 'ERC721: balance query for the zero address'
                            if balanceOf[address(arg2)] > test266151307():
                                revert with 0, 65
                            mem[ceil32(ceil32(arg4.length)) + 97] = balanceOf[address(arg2)]
                            mem[64] = ceil32(ceil32(arg4.length)) + (32 * balanceOf[address(arg2)]) + 129
                            if not balanceOf[address(arg2)]:
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
                                    _12419 = mem[64]
                                    mem[64] = mem[64] + 256
                                    mem[_12419] = stor552[stor151[address(arg2)][idx]].field_0
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        _14179 = mem[64]
                                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) + 32
                                        mem[_14179] = uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_14179 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14179 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14179 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14179 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_14179 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14179 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14179 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14179 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_12419 + 32] = _14179
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        _14206 = mem[64]
                                        mem[64] = mem[64] + ceil32(stor552[stor151[address(arg2)][idx]].field_257 % 128) + 32
                                        mem[_14206] = stor552[stor151[address(arg2)][idx]].field_257 % 128
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_14206 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14206 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14206 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14206 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_14206 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14206 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14206 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14206 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_12419 + 32] = _14206
                                    mem[_12419 + 64] = stor552[stor151[address(arg2)][idx]].field_512
                                    mem[_12419 + 96] = stor552[stor151[address(arg2)][idx]].field_768
                                    mem[_12419 + 128] = stor552[stor151[address(arg2)][idx]].field_1024
                                    mem[_12419 + 160] = stor552[stor151[address(arg2)][idx]].field_1280
                                    mem[_12419 + 192] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1536))
                                    mem[_12419 + 224] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1544))
                                    if not uint8(stor552[stor151[address(arg2)][idx]].field_1536):
                                        revert with 0, 'Troops: This troop doesn't exist'
                                    if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                        revert with 0, 50
                                    mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129] = tokenOfOwnerByIndex[address(arg2)][idx]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                idx = 0
                                s = 0
                                while idx < mem[ceil32(ceil32(arg4.length)) + 97]:
                                    if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
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
                                    revert with 0, 'Each holder can not hold more than 2 Gladiators'
                                if not arg1:
                                    stor154[arg3] = tokenByIndex.length
                                    tokenByIndex.length++
                                    stor72A1[stor153.length] = arg3
                                    if arg2:
                                        if arg2 == arg1:
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22174 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22174] == Mask(32, 224, mem[_22174])
                                                    if Mask(32, 224, mem[_22174]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22175 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22175] == Mask(32, 224, mem[_22175])
                                                    if Mask(32, 224, mem[_22175]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            if not arg2:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                            stor152[arg3] = balanceOf[address(arg2)]
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22176 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22176] == Mask(32, 224, mem[_22176])
                                                    if Mask(32, 224, mem[_22176]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22177 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22177] == Mask(32, 224, mem[_22177])
                                                    if Mask(32, 224, mem[_22177]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                        mem[0] = arg3
                                        mem[32] = 103
                                        ownerOf[arg3] = arg2
                                        emit Transfer(arg1, arg2, arg3);
                                        if ext_code.size(arg2):
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = arg3
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = mem[96]
                                            mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                            if ceil32(mem[96]) <= mem[96]:
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22178 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22178] == Mask(32, 224, mem[_22178])
                                                if Mask(32, 224, mem[_22178]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                mem[mem[96] + mem[64] + 164] = 0
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22179 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22179] == Mask(32, 224, mem[_22179])
                                                if Mask(32, 224, mem[_22179]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    if arg1 == arg2:
                                        if arg2:
                                            if arg2 == arg1:
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22156 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22156] == Mask(32, 224, mem[_22156])
                                                        if Mask(32, 224, mem[_22156]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22157 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22157] == Mask(32, 224, mem[_22157])
                                                        if Mask(32, 224, mem[_22157]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                if not arg2:
                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                stor152[arg3] = balanceOf[address(arg2)]
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22158 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22158] == Mask(32, 224, mem[_22158])
                                                        if Mask(32, 224, mem[_22158]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22159 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22159] == Mask(32, 224, mem[_22159])
                                                        if Mask(32, 224, mem[_22159]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22160 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22160] == Mask(32, 224, mem[_22160])
                                                    if Mask(32, 224, mem[_22160]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22161 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22161] == Mask(32, 224, mem[_22161])
                                                    if Mask(32, 224, mem[_22161]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        if not arg1:
                                            revert with 0, 'ERC721: balance query for the zero address'
                                        if balanceOf[address(arg1)] < 1:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] - 1 == stor152[arg3]:
                                            stor152[arg3] = 0
                                            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                            if arg2:
                                                if arg2 == arg1:
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22162 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22162] == Mask(32, 224, mem[_22162])
                                                            if Mask(32, 224, mem[_22162]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22163 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22163] == Mask(32, 224, mem[_22163])
                                                            if Mask(32, 224, mem[_22163]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    if not arg2:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                    stor152[arg3] = balanceOf[address(arg2)]
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22164 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22164] == Mask(32, 224, mem[_22164])
                                                            if Mask(32, 224, mem[_22164]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22165 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22165] == Mask(32, 224, mem[_22165])
                                                            if Mask(32, 224, mem[_22165]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22166 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22166] == Mask(32, 224, mem[_22166])
                                                        if Mask(32, 224, mem[_22166]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22167 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22167] == Mask(32, 224, mem[_22167])
                                                        if Mask(32, 224, mem[_22167]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                                            stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                                            stor152[arg3] = 0
                                            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                            if arg2:
                                                if arg2 == arg1:
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22168 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22168] == Mask(32, 224, mem[_22168])
                                                            if Mask(32, 224, mem[_22168]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22169 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22169] == Mask(32, 224, mem[_22169])
                                                            if Mask(32, 224, mem[_22169]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    if not arg2:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                    stor152[arg3] = balanceOf[address(arg2)]
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22170 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22170] == Mask(32, 224, mem[_22170])
                                                            if Mask(32, 224, mem[_22170]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22171 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22171] == Mask(32, 224, mem[_22171])
                                                            if Mask(32, 224, mem[_22171]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22172 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22172] == Mask(32, 224, mem[_22172])
                                                        if Mask(32, 224, mem[_22172]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22173 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22173] == Mask(32, 224, mem[_22173])
                                                        if Mask(32, 224, mem[_22173]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
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
                                    _12422 = mem[64]
                                    mem[64] = mem[64] + 256
                                    mem[_12422] = stor552[stor151[address(arg2)][idx]].field_0
                                    if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        _14181 = mem[64]
                                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) + 32
                                        mem[_14181] = uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_14181 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14181 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14181 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14181 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_14181 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14181 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14181 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14181 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_12422 + 32] = _14181
                                    else:
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        _14211 = mem[64]
                                        mem[64] = mem[64] + ceil32(stor552[stor151[address(arg2)][idx]].field_257 % 128) + 32
                                        mem[_14211] = stor552[stor151[address(arg2)][idx]].field_257 % 128
                                        if bool(stor552[stor151[address(arg2)][idx]].field_256):
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5 < 32:
                                                revert with 0, 34
                                            if Mask(256, -1, stor552[stor151[address(arg2)][idx]].field_256):
                                                if 31 >= uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5:
                                                    mem[_14211 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14211 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14211 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14211 + (uint255(stor552[stor151[address(arg2)][idx]].field_256) * 0.5) > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        else:
                                            if bool(stor552[stor151[address(arg2)][idx]].field_256) == stor552[stor151[address(arg2)][idx]].field_257 % 128 < 32:
                                                revert with 0, 34
                                            if stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                if 31 >= stor552[stor151[address(arg2)][idx]].field_257 % 128:
                                                    mem[_14211 + 32] = 256 * Mask(248, 0, stor552[stor151[address(arg2)][idx]].field_264)
                                                else:
                                                    mem[0] = sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1
                                                    mem[_14211 + 32] = stor552[stor151[address(arg2)][idx]][1].field_0
                                                    s = _14211 + 32
                                                    t = sha3(sha3(tokenOfOwnerByIndex[address(arg2)][idx], 552) + 1)
                                                    while _14211 + stor552[stor151[address(arg2)][idx]].field_257 % 128 > s:
                                                        mem[s + 32] = stor1[t].field_0
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                        mem[_12422 + 32] = _14211
                                    mem[_12422 + 64] = stor552[stor151[address(arg2)][idx]].field_512
                                    mem[_12422 + 96] = stor552[stor151[address(arg2)][idx]].field_768
                                    mem[_12422 + 128] = stor552[stor151[address(arg2)][idx]].field_1024
                                    mem[_12422 + 160] = stor552[stor151[address(arg2)][idx]].field_1280
                                    mem[_12422 + 192] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1536))
                                    mem[_12422 + 224] = bool(uint8(stor552[stor151[address(arg2)][idx]].field_1544))
                                    if not uint8(stor552[stor151[address(arg2)][idx]].field_1536):
                                        revert with 0, 'Troops: This troop doesn't exist'
                                    if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                        revert with 0, 50
                                    mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129] = tokenOfOwnerByIndex[address(arg2)][idx]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                idx = 0
                                s = 0
                                while idx < mem[ceil32(ceil32(arg4.length)) + 97]:
                                    if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
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
                                    revert with 0, 'Each holder can not hold more than 2 Gladiators'
                                if not arg1:
                                    stor154[arg3] = tokenByIndex.length
                                    tokenByIndex.length++
                                    stor72A1[stor153.length] = arg3
                                    if arg2:
                                        if arg2 == arg1:
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22198 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22198] == Mask(32, 224, mem[_22198])
                                                    if Mask(32, 224, mem[_22198]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22199 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22199] == Mask(32, 224, mem[_22199])
                                                    if Mask(32, 224, mem[_22199]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            if not arg2:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                            stor152[arg3] = balanceOf[address(arg2)]
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22200 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22200] == Mask(32, 224, mem[_22200])
                                                    if Mask(32, 224, mem[_22200]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22201 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22201] == Mask(32, 224, mem[_22201])
                                                    if Mask(32, 224, mem[_22201]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                        mem[0] = arg3
                                        mem[32] = 103
                                        ownerOf[arg3] = arg2
                                        emit Transfer(arg1, arg2, arg3);
                                        if ext_code.size(arg2):
                                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = arg3
                                            mem[mem[64] + 100] = 128
                                            mem[mem[64] + 132] = mem[96]
                                            mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                            if ceil32(mem[96]) <= mem[96]:
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22202 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22202] == Mask(32, 224, mem[_22202])
                                                if Mask(32, 224, mem[_22202]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                mem[mem[96] + mem[64] + 164] = 0
                                                call arg2.0x150b7a02 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                _22203 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_22203] == Mask(32, 224, mem[_22203])
                                                if Mask(32, 224, mem[_22203]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                else:
                                    if arg1 == arg2:
                                        if arg2:
                                            if arg2 == arg1:
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22180 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22180] == Mask(32, 224, mem[_22180])
                                                        if Mask(32, 224, mem[_22180]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22181 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22181] == Mask(32, 224, mem[_22181])
                                                        if Mask(32, 224, mem[_22181]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            else:
                                                if not arg2:
                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                stor152[arg3] = balanceOf[address(arg2)]
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22182 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22182] == Mask(32, 224, mem[_22182])
                                                        if Mask(32, 224, mem[_22182]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22183 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22183] == Mask(32, 224, mem[_22183])
                                                        if Mask(32, 224, mem[_22183]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                            mem[0] = arg3
                                            mem[32] = 103
                                            ownerOf[arg3] = arg2
                                            emit Transfer(arg1, arg2, arg3);
                                            if ext_code.size(arg2):
                                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = arg1
                                                mem[mem[64] + 68] = arg3
                                                mem[mem[64] + 100] = 128
                                                mem[mem[64] + 132] = mem[96]
                                                mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                if ceil32(mem[96]) <= mem[96]:
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22184 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22184] == Mask(32, 224, mem[_22184])
                                                    if Mask(32, 224, mem[_22184]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    mem[mem[96] + mem[64] + 164] = 0
                                                    call arg2.0x150b7a02 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                    _22185 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_22185] == Mask(32, 224, mem[_22185])
                                                    if Mask(32, 224, mem[_22185]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    else:
                                        if not arg1:
                                            revert with 0, 'ERC721: balance query for the zero address'
                                        if balanceOf[address(arg1)] < 1:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] - 1 == stor152[arg3]:
                                            stor152[arg3] = 0
                                            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                            if arg2:
                                                if arg2 == arg1:
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22186 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22186] == Mask(32, 224, mem[_22186])
                                                            if Mask(32, 224, mem[_22186]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22187 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22187] == Mask(32, 224, mem[_22187])
                                                            if Mask(32, 224, mem[_22187]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    if not arg2:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                    stor152[arg3] = balanceOf[address(arg2)]
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22188 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22188] == Mask(32, 224, mem[_22188])
                                                            if Mask(32, 224, mem[_22188]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22189 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22189] == Mask(32, 224, mem[_22189])
                                                            if Mask(32, 224, mem[_22189]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22190 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22190] == Mask(32, 224, mem[_22190])
                                                        if Mask(32, 224, mem[_22190]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22191 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22191] == Mask(32, 224, mem[_22191])
                                                        if Mask(32, 224, mem[_22191]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        else:
                                            tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                                            stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                                            stor152[arg3] = 0
                                            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                            if arg2:
                                                if arg2 == arg1:
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22192 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22192] == Mask(32, 224, mem[_22192])
                                                            if Mask(32, 224, mem[_22192]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22193 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22193] == Mask(32, 224, mem[_22193])
                                                            if Mask(32, 224, mem[_22193]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                else:
                                                    if not arg2:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                    stor152[arg3] = balanceOf[address(arg2)]
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
                                                    mem[0] = arg3
                                                    mem[32] = 103
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if ext_code.size(arg2):
                                                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = arg1
                                                        mem[mem[64] + 68] = arg3
                                                        mem[mem[64] + 100] = 128
                                                        mem[mem[64] + 132] = mem[96]
                                                        mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                        if ceil32(mem[96]) <= mem[96]:
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22194 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22194] == Mask(32, 224, mem[_22194])
                                                            if Mask(32, 224, mem[_22194]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                        else:
                                                            mem[mem[96] + mem[64] + 164] = 0
                                                            call arg2.0x150b7a02 with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                            _22195 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_22195] == Mask(32, 224, mem[_22195])
                                                            if Mask(32, 224, mem[_22195]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
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
                                                mem[0] = arg3
                                                mem[32] = 103
                                                ownerOf[arg3] = arg2
                                                emit Transfer(arg1, arg2, arg3);
                                                if ext_code.size(arg2):
                                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = arg1
                                                    mem[mem[64] + 68] = arg3
                                                    mem[mem[64] + 100] = 128
                                                    mem[mem[64] + 132] = mem[96]
                                                    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                                    if ceil32(mem[96]) <= mem[96]:
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22196 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22196] == Mask(32, 224, mem[_22196])
                                                        if Mask(32, 224, mem[_22196]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                    else:
                                                        mem[mem[96] + mem[64] + 164] = 0
                                                        call arg2.0x150b7a02 with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(arg1), arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
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
                                                        _22197 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_22197] == Mask(32, 224, mem[_22197])
                                                        if Mask(32, 224, mem[_22197]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}



}

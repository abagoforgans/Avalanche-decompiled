contract main {




// =====================  Runtime code  =====================


#
#  - compoundReward(uint256 arg1)
#  - cashoutAll()
#  - cashoutReward(uint256 arg1)
#  - getPlanetsByIds(uint256[] arg1)
#  - compoundAll()
#  - sub_a74c0906(?)
#  - sub_f3c391d1(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of uint256 stor1;
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
address universeImplementationAddress;
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

function sub_d25e3369(?) payable {
    return sub_d25e3369
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

function sub_71acb350(?) payable {
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

function sub_6abec082(?) payable {
    require calldata.size - 4 >= 192
    require 35 < calldata.size
    require 196 <= calldata.size
    idx = 4
    s = 96
    while idx < 196:
        require cd[idx] == cd[idx] % 16777216
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    s = 0
    idx = 96
    while 288 > idx:
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
            if stor553[stor554[idx]].field_256 > 0x79968f6f9d35ab75504464b0aec86e3071fd2678a36250bdfb401e65a3dbe7:
                revert with 0, 17
            if s > !(539 * stor553[stor554[idx]].field_256 / 100000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (539 * stor553[stor554[idx]].field_256 / 100000)
            continue 
        if stor553[stor554[idx]].field_0 >= tierLevel.length.field_72 % 16777216:
            if stor553[stor554[idx]].field_256 > 0x7d1196792909c55fc17734c36b7b1d501f44659e4a427157f05dcd30dadec7:
                revert with 0, 17
            if s > !(524 * stor553[stor554[idx]].field_256 / 100000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (524 * stor553[stor554[idx]].field_256 / 100000)
            continue 
        if stor553[stor554[idx]].field_0 >= tierLevel.length.field_48 % 16777216:
            if stor553[stor554[idx]].field_256 > 0x80808080808080808080808080808080808080808080808080808080808080:
                revert with 0, 17
            if s > !(510 * stor553[stor554[idx]].field_256 / 100000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (510 * stor553[stor554[idx]].field_256 / 100000)
            continue 
        if stor553[stor554[idx]].field_0 >= tierLevel.length.field_24 % 16777216:
            if stor553[stor554[idx]].field_256 > 0x8c55841c815ed5ca47436d1679b22890b8303d6569cc78997d887f2d7fb9d5:
                revert with 0, 17
            if s > !(467 * stor553[stor554[idx]].field_256 / 100000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (467 * stor553[stor554[idx]].field_256 / 100000)
            continue 
        if stor553[stor554[idx]].field_0 <= tierLevel.length:
            if stor553[stor554[idx]].field_256 > 0xbb3ee721a54d880bb3ee721a54d880bb3ee721a54d880bb3ee721a54d880bb:
                revert with 0, 17
            if s > !(350 * stor553[stor554[idx]].field_256 / 100000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (350 * stor553[stor554[idx]].field_256 / 100000)
            continue 
        if stor553[stor554[idx]].field_256 > 0xaf3addc680af3addc680af3addc680af3addc680af3addc680af3addc680af:
            revert with 0, 17
        if s > !(374 * stor553[stor554[idx]].field_256 / 100000):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (374 * stor553[stor554[idx]].field_256 / 100000)
        continue 
    return s
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
        uint255(stor101.length.field_1) = 18
        Mask(144, 0, stor101.length.field_112) = Mask(144, 0, 'Universe Ecosystem')
        idx = 0
        while (uint255(stor101.length) * 0.5) + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        uint255(stor101.length.field_1) = 18
        Mask(144, 0, stor101.length.field_112) = Mask(144, 0, 'Universe Ecosystem')
        idx = 0
        while stor101.length.field_1 % 128 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        uint255(stor102.length.field_1) = 6
        stor102.length.field_208 % 281474976710656 = 88288443385172
        idx = 0
        while (uint255(stor102.length) * 0.5) + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        uint255(stor102.length.field_1) = 6
        stor102.length.field_208 % 281474976710656 = 88288443385172
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
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
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

function createPlanetWithTokens(string arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if stor401 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor401 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    stor551++
    if arg1.length <= 1:
        revert with 0, 'Planets: Incorrect name length, must be between 2 to 31'
    if arg1.length >= 32:
        revert with 0, 'Planets: Incorrect name length, must be between 2 to 31'
    if arg2 < creationMinPrice:
        revert with 0, 'Planets: Planet value set below minimum'
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < creationMinPrice:
        revert with 0, 'Planets: Balance too low for creation'
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalValueLocked > !arg2:
        revert with 0, 17
    totalValueLocked += arg2
    if uint8(stor553[stor559.length].field_512):
        if tierLevel.length != stor553[stor559.length].field_0:
            revert with 0, 'Planets: rewardMult does not match in TierStorage'
        if arg2 > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
            revert with 0, 17
        if stor553[stor559.length].field_256 < 0 and arg2 < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        stor553[stor559.length].field_256 += arg2
    else:
        if arg2 <= 0:
            revert with 0, 'Planets: Fatal error while creating new TierStorage. Amount cannot be below zero.'
        stor553[stor559.length].field_0 = tierLevel.length
        stor553[stor559.length].field_256 = arg2
        uint8(stor553[stor559.length].field_512) = 1
        stor554.length++
        storCCA5[stor554.length] = tierLevel.length
    stor552[stor551].field_0 = stor551
    if bool(stor552[stor551].field_256):
        if bool(stor552[stor551].field_256) == uint255(stor552[stor551].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor552[stor551][1][].field_0 = Array(len=arg1.length, data=arg1[all])
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
        if arg1.length:
            stor552[stor551][1][].field_0 = Array(len=arg1.length, data=arg1[all])
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
    stor401 = 1
    return stor551
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor401 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor401 = 2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Planets: Cannot be from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Planets: No Planet owned by this account'
    if paused:
        revert with 0, 'Pausable: paused'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Planets: Id must be higher than zero'
    if bool(stor552[arg1].field_256):
        if bool(stor552[arg1].field_256) == uint255(stor552[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
    else:
        if bool(stor552[arg1].field_256) == stor552[arg1].field_257 % 128 < 32:
            revert with 0, 34
    if bool(stor552[arg1].field_256):
        if bool(stor552[arg1].field_256) == uint255(stor552[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor552[arg1].field_256):
            if 31 < uint255(stor552[arg1].field_256) * 0.5:
                idx = 416
                s = 0
                while (uint255(stor552[arg1].field_256) * 0.5) + 384 > idx:
                    mem[idx + 32] = stor552[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor552[arg1].field_256) == stor552[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor552[arg1].field_257 % 128:
            if 31 < stor552[arg1].field_257 % 128:
                idx = 416
                s = 0
                while stor552[arg1].field_257 % 128 + 384 > idx:
                    mem[idx + 32] = stor552[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if not uint8(stor552[arg1].field_1792):
        revert with 0, 'Planets: This planet doesn't exist'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor106[stor103[arg1]][address(msg.sender)]:
                revert with 0, 'Planets: You do not have control over this Planet'
    uint8(stor552[arg1].field_1792) = 0
    if stor552[arg1].field_1280 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if uint8(stor553[stor552[arg1].field_1024].field_512):
        if stor552[arg1].field_1024 != stor553[stor552[arg1].field_1024].field_0:
            revert with 0, 'Planets: rewardMult does not match in TierStorage'
        if -stor552[arg1].field_1280 > -stor553[stor552[arg1].field_1024].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor552[arg1].field_1024].field_256 >= 0:
            revert with 0, 17
        if stor553[stor552[arg1].field_1024].field_256 < 0 and -stor552[arg1].field_1280 < -stor553[stor552[arg1].field_1024].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        stor553[stor552[arg1].field_1024].field_256 -= stor552[arg1].field_1280
    else:
        if -stor552[arg1].field_1280 <= 0:
            revert with 0, 'Planets: Fatal error while creating new TierStorage. Amount cannot be below zero.'
        stor553[stor552[arg1].field_1024].field_0 = stor552[arg1].field_1024
        stor553[stor552[arg1].field_1024].field_256 = -stor552[arg1].field_1280
        uint8(stor553[stor552[arg1].field_1024].field_512) = 1
        stor554.length++
        storCCA5[stor554.length] = stor552[arg1].field_1024
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if paused:
        revert with 0, 'Pausable: paused'
    if not ownerOf[arg1]:
        stor154[arg1] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg1
    else:
        if ownerOf[arg1]:
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: balance query for the zero address'
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
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor103[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor103[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    stor401 = 1
}

function sub_75ffdce4(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0x17a3695c2e4f182e8e42c0be8387e367d603b3be
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x17a3695c2e4f182e8e42c0be8387e367d603b3be, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0xb7e6228d8c37626c6acf8410248e1559819aa092
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xb7e6228d8c37626c6acf8410248e1559819aa092, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0xabdafad5df04c728fff5f58589079b0d1b49f200
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xabdafad5df04c728fff5f58589079b0d1b49f200, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0xe366cbab8026e60bceb77a670b6110c599c57719
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe366cbab8026e60bceb77a670b6110c599c57719, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0x275bab159e26871e143e9c7813fe7be409c15177
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x275bab159e26871e143e9c7813fe7be409c15177, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0xabf89da69b86d261755a2629967ef71da53b20d2
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xabf89da69b86d261755a2629967ef71da53b20d2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0x7ef506214e327e41060b3f01d0ffb90288372ce7
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x7ef506214e327e41060b3f01d0ffb90288372ce7, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0xad808e43e9df338b8af0b5cf72732783c26778a8
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xad808e43e9df338b8af0b5cf72732783c26778a8, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0xa14d614677992dbffa064b7e0bb2ea19d76aed7e
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xa14d614677992dbffa064b7e0bb2ea19d76aed7e, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0x6dd0a50316e382ddd1baedf20c151396615306bd
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x6dd0a50316e382ddd1baedf20c151396615306bd, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0xe023f1f55db3d48970073c18f830cd61e6b4371d
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe023f1f55db3d48970073c18f830cd61e6b4371d, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0xe366cbab8026e60bceb77a670b6110c599c57719
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe366cbab8026e60bceb77a670b6110c599c57719, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0x7448db1e46e33f41568886fa9a44fe01d39de4c7
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x7448db1e46e33f41568886fa9a44fe01d39de4c7, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0x39057f6a5c8ca56734f23e040696d233e308bb1
    require return_data.size >= 32
    require ext_code.size(universeImplementationAddress)
    call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x39057f6a5c8ca56734f23e040696d233e308bb1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
                                mem[s + 32] = stor1[t]
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
                                mem[s + 32] = stor1[t]
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
                                mem[s + 32] = stor1[t]
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
                                mem[s + 32] = stor1[t]
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
                                mem[s + 32] = stor1[t]
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
                                mem[s + 32] = stor1[t]
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
                                mem[s + 32] = stor1[t]
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
                                mem[s + 32] = stor1[t]
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



}

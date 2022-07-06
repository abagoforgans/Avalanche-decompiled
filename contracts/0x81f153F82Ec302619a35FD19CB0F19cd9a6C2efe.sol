contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - compoundReward(uint256 arg1)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - cashoutAll()
#  - cashoutReward(uint256 arg1)
#  - compoundAll()
#  - sub_a99cd934(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - sub_d6758b09(?)
#  - createPlanetWithTokens(string arg1, uint256 arg2)
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
array of uint256 tokenByIndex;
mapping of struct stor201;
uint8 paused;
address owner;
uint256 stor401;
address universeImplementationAddress;
address liquidityPoolManagerImplementationAddress;
mapping of struct stor552;
mapping of struct stor553;
array of uint256 stor554;
uint256 rewardPerDay;
uint256 creationMinPrice;
uint256 compoundDelay;
uint256 processingFee;
array of uint16 tierSlope;
array of uint16 sub_5599a48e;
array of uint16 sub_58afc45a;
uint256 totalValueLocked;
uint256 sub_dfe59ed4;
mapping of uint256 presales;
uint256 sub_4e047c19;
array of uint256 sub_4064a346;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function creationMinPrice() {
    return creationMinPrice
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

function sub_4064a346(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return sub_4064a346[arg1]
}

function sub_4e047c19(?) {
    return sub_4e047c19
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_5599a48e(?) {
    require calldata.size - 4 >= 32
    require arg1 < 6
    return sub_5599a48e[uint8(arg1)]
}

function sub_58afc45a(?) {
    require calldata.size - 4 >= 32
    require arg1 < 6
    return sub_58afc45a[uint8(arg1)]
}

function paused() {
    return bool(paused)
}

function getUniverseImplementation() {
    return universeImplementationAddress
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

function compoundDelay() {
    return compoundDelay
}

function tierLevel(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 6
    return tierLevel[arg1 / 10]
}

function rewardPerDay() {
    return rewardPerDay
}

function getLiquidityPoolManagerImplementation() {
    return liquidityPoolManagerImplementationAddress
}

function tierSlope(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 6
    return tierSlope[uint8(arg1)]
}

function processingFee() {
    return processingFee
}

function sub_dfe59ed4(?) {
    return sub_dfe59ed4
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function totalValueLocked() {
    return totalValueLocked
}

function presales(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return presales[arg1]
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
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function isOwnerOfPlanets(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return (balanceOf[address(arg1)] > 0)
}

function recoverLostAVAX() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function changeRewardPerDay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dealers: rewardPerDay must be greater than 0'
    rewardPerDay = arg1
}

function changeCompoundDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dealers: compoundDelay must be greater than 0'
    compoundDelay = arg1
}

function changeNodeMinPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Dealers: Minimum price to create a Dealer must be above 0'
    creationMinPrice = arg1
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

function recoverLostTokens(address arg1, address arg2, uint256 arg3) {
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

function changeUniverseImplementation(address arg1) {
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

function changeLiquidityPoolManagerImplementation(address arg1) {
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

function approve(address arg1, uint256 arg2) {
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

function migrateToV2(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor401 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor401 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not universeImplementationAddress:
        revert with 0, 'Dealers: MedellinCity is not set'
    staticcall 0x68d19e3ff9319470575b9ca78fa39538a3c1245d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Dealers: not enough $PABLO V1 to migrate'
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Dealers: not enough $PABLO V2 to migrate'
    call 0x68d19e3ff9319470575b9ca78fa39538a3c1245d.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 > 0x1745d1745d1745d1745d1745d1745d1745d1745d1745d1745d1745d1745d1745:
        revert with 0, 17
    call universeImplementationAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, 11 * arg1 / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor401 = 1
}

function calculateTotalDailyEmission() payable {
    mem[64] = 96
    require not msg.value
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

function name() {
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

function symbol() {
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

function tokenURI(uint256 arg1) {
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

function initialize() {
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
        uint255(stor101.length.field_1) = 5
        stor101.length.field_216 % 1099511627776 = 311107613541
        idx = 0
        while (uint255(stor101.length) * 0.5) + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        uint255(stor101.length.field_1) = 5
        stor101.length.field_216 % 1099511627776 = 311107613541
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
        stor102.length.field_216 % 1099511627776 = 310568637253
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
        stor102.length.field_216 % 1099511627776 = 310568637253
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
    rewardPerDay = 11574
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    creationMinPrice = 150000 * 10^18
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    compoundDelay = 8 * 3600
    mem[224] = 100000
    mem[256] = 105000
    mem[288] = 110000
    mem[320] = 120000
    mem[352] = 130000
    mem[384] = 140000
    mem[416] = 1000
    mem[448] = 750
    mem[480] = 500
    mem[512] = 750
    mem[544] = 1000
    mem[576] = 0
    mem[608] = 100
    mem[640] = 100
    mem[672] = 75
    mem[704] = 50
    mem[736] = 10
    mem[768] = 5
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
    s = 0
    idx = 608
    while 800 > idx:
        sub_5599a48e.length = mem[idx + 31 len 1] * 256^s or !(65535 * 256^s) and sub_5599a48e.length
        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
        idx = idx + 32
        continue 
    idx = 12
    s = 561
    while idx:
        stor[s] = !(65535 * 256^idx) and stor[s]
        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
        s = (idx + 3 / 32) + s
        continue 
    idx = (Mask(254, 1, None - 9) + 15 / 32 * uint255(None - 9) >> 1) + 561
    while 562 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function getPlanetIdsOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = arg1
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
                revert with 0, 'Dealers: Id must be higher than zero'
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
                revert with 0, 'Dealers: This dealer doesn't exist'
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
                revert with 0, 'Dealers: Id must be higher than zero'
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
                revert with 0, 'Dealers: This dealer doesn't exist'
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

function isOwnerOfPlanet(address arg1, uint256 arg2) {
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
                revert with 0, 'Dealers: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            _177 = mem[64]
            mem[64] = mem[64] + 288
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
            mem[_177 + 256] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1800))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1792):
                revert with 0, 'Dealers: This dealer doesn't exist'
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
                revert with 0, 'Dealers: Id must be higher than zero'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 552
            _181 = mem[64]
            mem[64] = mem[64] + 288
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
            mem[_181 + 256] = bool(uint8(stor552[stor151[address(arg1)][idx]].field_1800))
            if not uint8(stor552[stor151[address(arg1)][idx]].field_1792):
                revert with 0, 'Dealers: This dealer doesn't exist'
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

function isNameAvailable(address arg1, string arg2) {
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
                revert with 0, 'Dealers: Id must be higher than zero'
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
                revert with 0, 'Dealers: This dealer doesn't exist'
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
                revert with 0, 'Dealers: Id must be higher than zero'
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
                revert with 0, 'Dealers: This dealer doesn't exist'
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

function getPlanetsByIds(uint256[] arg1) {
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
            _535 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 552
            _536 = sha3(mem[(32 * idx) + 128], 552)
            _537 = mem[64]
            mem[64] = mem[64] + 288
            mem[_537] = stor552[mem[(32 * idx) + 128]].field_0
            if bool(stor1[_536].field_0):
                if bool(stor1[_536].field_0) == uint255(stor1[_536].field_0) * 0.5 < 32:
                    revert with 0, 34
                _545 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_536].field_0) * 0.5) + 32
                mem[_545] = uint255(stor1[_536].field_0) * 0.5
                if bool(stor1[_536].field_0):
                    if bool(stor1[_536].field_0) == uint255(stor1[_536].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_536].field_0):
                        mem[_537 + 32] = _545
                        mem[_537 + 64] = stor2[_536]
                        mem[_537 + 96] = stor3[_536]
                        mem[_537 + 128] = stor4[_536]
                        mem[_537 + 160] = stor5[_536]
                        mem[_537 + 192] = stor6[_536]
                        mem[_537 + 224] = bool(uint8(stor7[_536].field_0))
                        mem[_537 + 256] = bool(uint8(stor7[_536].field_8))
                        if block.timestamp < stor3[_536]:
                            revert with 0, 17
                        if block.timestamp - stor3[_536] and rewardPerDay > -1 / block.timestamp - stor3[_536]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 and stor4[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                            revert with 0, 17
                        _744 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_744] = _537
                        mem[_744 + 32] = _535
                        mem[_744 + 64] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        mem[_744 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        mem[_744 + 128] = compoundDelay
                        mem[_744 + 160] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        mem[_744 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _744
                    else:
                        if 31 >= uint255(stor1[_536].field_0) * 0.5:
                            mem[_545 + 32] = 256 * Mask(248, 0, stor1[_536].field_8)
                            mem[_537 + 32] = _545
                            mem[_537 + 64] = stor2[_536]
                            mem[_537 + 96] = stor3[_536]
                            mem[_537 + 128] = stor4[_536]
                            mem[_537 + 160] = stor5[_536]
                            mem[_537 + 192] = stor6[_536]
                            mem[_537 + 224] = bool(uint8(stor7[_536].field_0))
                            mem[_537 + 256] = bool(uint8(stor7[_536].field_8))
                            if block.timestamp < stor3[_536]:
                                revert with 0, 17
                            if block.timestamp - stor3[_536] and rewardPerDay > -1 / block.timestamp - stor3[_536]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 and stor4[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            _750 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_750] = _537
                            mem[_750 + 32] = _535
                            mem[_750 + 64] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_750 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_750 + 128] = compoundDelay
                            mem[_750 + 160] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_750 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _750
                        else:
                            mem[0] = _536 + 1
                            mem[_545 + 32] = stor[sha3(_536 + 1)]
                            s = _545 + 32
                            t = sha3(_536 + 1)
                            while _545 + (uint255(stor1[_536].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_537 + 32] = _545
                            mem[_537 + 64] = stor2[_536]
                            mem[_537 + 96] = stor3[_536]
                            mem[_537 + 128] = stor4[_536]
                            mem[_537 + 160] = stor5[_536]
                            mem[_537 + 192] = stor6[_536]
                            mem[_537 + 224] = bool(uint8(stor7[_536].field_0))
                            mem[_537 + 256] = bool(uint8(stor7[_536].field_8))
                            if block.timestamp < stor3[_536]:
                                revert with 0, 17
                            if block.timestamp - stor3[_536] and rewardPerDay > -1 / block.timestamp - stor3[_536]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 and stor4[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            _955 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_955] = _537
                            mem[_955 + 32] = _535
                            mem[_955 + 64] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_955 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_955 + 128] = compoundDelay
                            mem[_955 + 160] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_955 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _955
                else:
                    if bool(stor1[_536].field_0) == stor1[_536].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_536].field_1 % 128:
                        mem[_537 + 32] = _545
                        mem[_537 + 64] = stor2[_536]
                        mem[_537 + 96] = stor3[_536]
                        mem[_537 + 128] = stor4[_536]
                        mem[_537 + 160] = stor5[_536]
                        mem[_537 + 192] = stor6[_536]
                        mem[_537 + 224] = bool(uint8(stor7[_536].field_0))
                        mem[_537 + 256] = bool(uint8(stor7[_536].field_8))
                        if block.timestamp < stor3[_536]:
                            revert with 0, 17
                        if block.timestamp - stor3[_536] and rewardPerDay > -1 / block.timestamp - stor3[_536]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 and stor4[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                            revert with 0, 17
                        _746 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_746] = _537
                        mem[_746 + 32] = _535
                        mem[_746 + 64] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        mem[_746 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        mem[_746 + 128] = compoundDelay
                        mem[_746 + 160] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        mem[_746 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _746
                    else:
                        if 31 >= stor1[_536].field_1 % 128:
                            mem[_545 + 32] = 256 * Mask(248, 0, stor1[_536].field_8)
                            mem[_537 + 32] = _545
                            mem[_537 + 64] = stor2[_536]
                            mem[_537 + 96] = stor3[_536]
                            mem[_537 + 128] = stor4[_536]
                            mem[_537 + 160] = stor5[_536]
                            mem[_537 + 192] = stor6[_536]
                            mem[_537 + 224] = bool(uint8(stor7[_536].field_0))
                            mem[_537 + 256] = bool(uint8(stor7[_536].field_8))
                            if block.timestamp < stor3[_536]:
                                revert with 0, 17
                            if block.timestamp - stor3[_536] and rewardPerDay > -1 / block.timestamp - stor3[_536]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 and stor4[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            _754 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_754] = _537
                            mem[_754 + 32] = _535
                            mem[_754 + 64] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_754 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_754 + 128] = compoundDelay
                            mem[_754 + 160] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_754 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _754
                        else:
                            mem[0] = _536 + 1
                            mem[_545 + 32] = stor[sha3(_536 + 1)]
                            s = _545 + 32
                            t = sha3(_536 + 1)
                            while _545 + stor1[_536].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_537 + 32] = _545
                            mem[_537 + 64] = stor2[_536]
                            mem[_537 + 96] = stor3[_536]
                            mem[_537 + 128] = stor4[_536]
                            mem[_537 + 160] = stor5[_536]
                            mem[_537 + 192] = stor6[_536]
                            mem[_537 + 224] = bool(uint8(stor7[_536].field_0))
                            mem[_537 + 256] = bool(uint8(stor7[_536].field_8))
                            if block.timestamp < stor3[_536]:
                                revert with 0, 17
                            if block.timestamp - stor3[_536] and rewardPerDay > -1 / block.timestamp - stor3[_536]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 and stor4[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            _957 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_957] = _537
                            mem[_957 + 32] = _535
                            mem[_957 + 64] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_957 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_957 + 128] = compoundDelay
                            mem[_957 + 160] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_957 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _957
            else:
                if bool(stor1[_536].field_0) == stor1[_536].field_1 % 128 < 32:
                    revert with 0, 34
                _547 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_536].field_1 % 128) + 32
                mem[_547] = stor1[_536].field_1 % 128
                if bool(stor1[_536].field_0):
                    if bool(stor1[_536].field_0) == uint255(stor1[_536].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_536].field_0):
                        mem[_537 + 32] = _547
                        mem[_537 + 64] = stor2[_536]
                        mem[_537 + 96] = stor3[_536]
                        mem[_537 + 128] = stor4[_536]
                        mem[_537 + 160] = stor5[_536]
                        mem[_537 + 192] = stor6[_536]
                        mem[_537 + 224] = bool(uint8(stor7[_536].field_0))
                        mem[_537 + 256] = bool(uint8(stor7[_536].field_8))
                        if block.timestamp < stor3[_536]:
                            revert with 0, 17
                        if block.timestamp - stor3[_536] and rewardPerDay > -1 / block.timestamp - stor3[_536]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 and stor4[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                            revert with 0, 17
                        _748 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_748] = _537
                        mem[_748 + 32] = _535
                        mem[_748 + 64] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        mem[_748 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        mem[_748 + 128] = compoundDelay
                        mem[_748 + 160] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        mem[_748 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _748
                    else:
                        if 31 >= uint255(stor1[_536].field_0) * 0.5:
                            mem[_547 + 32] = 256 * Mask(248, 0, stor1[_536].field_8)
                            mem[_537 + 32] = _547
                            mem[_537 + 64] = stor2[_536]
                            mem[_537 + 96] = stor3[_536]
                            mem[_537 + 128] = stor4[_536]
                            mem[_537 + 160] = stor5[_536]
                            mem[_537 + 192] = stor6[_536]
                            mem[_537 + 224] = bool(uint8(stor7[_536].field_0))
                            mem[_537 + 256] = bool(uint8(stor7[_536].field_8))
                            if block.timestamp < stor3[_536]:
                                revert with 0, 17
                            if block.timestamp - stor3[_536] and rewardPerDay > -1 / block.timestamp - stor3[_536]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 and stor4[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            _756 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_756] = _537
                            mem[_756 + 32] = _535
                            mem[_756 + 64] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_756 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_756 + 128] = compoundDelay
                            mem[_756 + 160] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_756 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _756
                        else:
                            mem[0] = _536 + 1
                            mem[_547 + 32] = stor[sha3(_536 + 1)]
                            s = _547 + 32
                            t = sha3(_536 + 1)
                            while _547 + (uint255(stor1[_536].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_537 + 32] = _547
                            mem[_537 + 64] = stor2[_536]
                            mem[_537 + 96] = stor3[_536]
                            mem[_537 + 128] = stor4[_536]
                            mem[_537 + 160] = stor5[_536]
                            mem[_537 + 192] = stor6[_536]
                            mem[_537 + 224] = bool(uint8(stor7[_536].field_0))
                            mem[_537 + 256] = bool(uint8(stor7[_536].field_8))
                            if block.timestamp < stor3[_536]:
                                revert with 0, 17
                            if block.timestamp - stor3[_536] and rewardPerDay > -1 / block.timestamp - stor3[_536]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 and stor4[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            _959 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_959] = _537
                            mem[_959 + 32] = _535
                            mem[_959 + 64] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_959 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_959 + 128] = compoundDelay
                            mem[_959 + 160] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_959 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _959
                else:
                    if bool(stor1[_536].field_0) == stor1[_536].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_536].field_1 % 128:
                        mem[_537 + 32] = _547
                        mem[_537 + 64] = stor2[_536]
                        mem[_537 + 96] = stor3[_536]
                        mem[_537 + 128] = stor4[_536]
                        mem[_537 + 160] = stor5[_536]
                        mem[_537 + 192] = stor6[_536]
                        mem[_537 + 224] = bool(uint8(stor7[_536].field_0))
                        mem[_537 + 256] = bool(uint8(stor7[_536].field_8))
                        if block.timestamp < stor3[_536]:
                            revert with 0, 17
                        if block.timestamp - stor3[_536] and rewardPerDay > -1 / block.timestamp - stor3[_536]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 and stor4[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                            revert with 0, 17
                        _752 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_752] = _537
                        mem[_752 + 32] = _535
                        mem[_752 + 64] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        mem[_752 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        mem[_752 + 128] = compoundDelay
                        mem[_752 + 160] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        mem[_752 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _752
                    else:
                        if 31 >= stor1[_536].field_1 % 128:
                            mem[_547 + 32] = 256 * Mask(248, 0, stor1[_536].field_8)
                            mem[_537 + 32] = _547
                            mem[_537 + 64] = stor2[_536]
                            mem[_537 + 96] = stor3[_536]
                            mem[_537 + 128] = stor4[_536]
                            mem[_537 + 160] = stor5[_536]
                            mem[_537 + 192] = stor6[_536]
                            mem[_537 + 224] = bool(uint8(stor7[_536].field_0))
                            mem[_537 + 256] = bool(uint8(stor7[_536].field_8))
                            if block.timestamp < stor3[_536]:
                                revert with 0, 17
                            if block.timestamp - stor3[_536] and rewardPerDay > -1 / block.timestamp - stor3[_536]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 and stor4[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            _760 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_760] = _537
                            mem[_760 + 32] = _535
                            mem[_760 + 64] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_760 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_760 + 128] = compoundDelay
                            mem[_760 + 160] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_760 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _760
                        else:
                            mem[0] = _536 + 1
                            mem[_547 + 32] = stor[sha3(_536 + 1)]
                            s = _547 + 32
                            t = sha3(_536 + 1)
                            while _547 + stor1[_536].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_537 + 32] = _547
                            mem[_537 + 64] = stor2[_536]
                            mem[_537 + 96] = stor3[_536]
                            mem[_537 + 128] = stor4[_536]
                            mem[_537 + 160] = stor5[_536]
                            mem[_537 + 192] = stor6[_536]
                            mem[_537 + 224] = bool(uint8(stor7[_536].field_0))
                            mem[_537 + 256] = bool(uint8(stor7[_536].field_8))
                            if block.timestamp < stor3[_536]:
                                revert with 0, 17
                            if block.timestamp - stor3[_536] and rewardPerDay > -1 / block.timestamp - stor3[_536]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 and stor4[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 and stor5[_536] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000 < 0:
                                revert with 0, 17
                            _961 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_961] = _537
                            mem[_961 + 32] = _535
                            mem[_961 + 64] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_961 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_961 + 128] = compoundDelay
                            mem[_961 + 160] = (block.timestamp * rewardPerDay) - (stor3[_536] * rewardPerDay) / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            mem[_961 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_536] / 100000 * stor5[_536] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _961
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _534 = mem[64]
        mem[mem[64]] = 32
        _538 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + 97]
        idx = 0
        s = ceil32(32 * arg1.length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _538) + 64
        while idx < _538:
            mem[t] = u + -_534 - 64
            _794 = mem[s]
            _795 = mem[mem[s]]
            mem[u] = 224
            mem[u + 224] = mem[_795]
            _797 = mem[_795 + 32]
            mem[u + 256] = 288
            _799 = mem[_797]
            mem[u + 512] = mem[_797]
            v = 0
            while v < _799:
                mem[v + u + 544] = mem[v + _797 + 32]
                v = v + 32
                continue 
            if ceil32(_799) > _799:
                mem[_799 + u + 544] = 0
            mem[u + 288] = mem[_795 + 64]
            mem[u + 320] = mem[_795 + 96]
            mem[u + 352] = mem[_795 + 128]
            mem[u + 384] = mem[_795 + 160]
            mem[u + 416] = mem[_795 + 192]
            mem[u + 448] = bool(mem[_795 + 224])
            mem[u + 480] = bool(mem[_795 + 256])
            mem[u + 32] = mem[_794 + 32]
            mem[u + 64] = mem[_794 + 64]
            mem[u + 96] = mem[_794 + 96]
            mem[u + 128] = mem[_794 + 128]
            mem[u + 160] = mem[_794 + 160]
            mem[u + 192] = mem[_794 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_799) + u + 544
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * arg1.length) + (32 * arg1.length) + 641
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 353] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 385] = 96
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 417] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 449] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 481] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 513] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 545] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 577] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 609] = 0
    mem[var27002] = var27001
    mem[var27002 + 32] = 0
    mem[var27002 + 64] = 0
    mem[var27002 + 96] = 0
    mem[var27002 + 128] = 0
    mem[var27002 + 160] = 0
    mem[var27002 + 192] = 0
    mem[var29002] = var29001
    if not var29003 - 1:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _1413 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 552
            _1414 = sha3(mem[(32 * idx) + 128], 552)
            _1415 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1415] = stor552[mem[(32 * idx) + 128]].field_0
            if bool(stor1[_1414].field_0):
                if bool(stor1[_1414].field_0) == uint255(stor1[_1414].field_0) * 0.5 < 32:
                    revert with 0, 34
                _1424 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_1414].field_0) * 0.5) + 32
                mem[_1424] = uint255(stor1[_1414].field_0) * 0.5
                if bool(stor1[_1414].field_0):
                    if bool(stor1[_1414].field_0) == uint255(stor1[_1414].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_1414].field_0):
                        mem[_1415 + 32] = _1424
                        mem[_1415 + 64] = stor2[_1414]
                        mem[_1415 + 96] = stor3[_1414]
                        mem[_1415 + 128] = stor4[_1414]
                        mem[_1415 + 160] = stor5[_1414]
                        mem[_1415 + 192] = stor6[_1414]
                        mem[_1415 + 224] = bool(uint8(stor7[_1414].field_0))
                        mem[_1415 + 256] = bool(uint8(stor7[_1414].field_8))
                        if block.timestamp < stor3[_1414]:
                            revert with 0, 17
                        if block.timestamp - stor3[_1414] and rewardPerDay > -1 / block.timestamp - stor3[_1414]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 and stor4[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                            revert with 0, 17
                        _1622 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1622] = _1415
                        mem[_1622 + 32] = _1413
                        mem[_1622 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        mem[_1622 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        mem[_1622 + 128] = compoundDelay
                        mem[_1622 + 160] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        mem[_1622 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1622
                    else:
                        if 31 >= uint255(stor1[_1414].field_0) * 0.5:
                            mem[_1424 + 32] = 256 * Mask(248, 0, stor1[_1414].field_8)
                            mem[_1415 + 32] = _1424
                            mem[_1415 + 64] = stor2[_1414]
                            mem[_1415 + 96] = stor3[_1414]
                            mem[_1415 + 128] = stor4[_1414]
                            mem[_1415 + 160] = stor5[_1414]
                            mem[_1415 + 192] = stor6[_1414]
                            mem[_1415 + 224] = bool(uint8(stor7[_1414].field_0))
                            mem[_1415 + 256] = bool(uint8(stor7[_1414].field_8))
                            if block.timestamp < stor3[_1414]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1414] and rewardPerDay > -1 / block.timestamp - stor3[_1414]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 and stor4[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            _1628 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1628] = _1415
                            mem[_1628 + 32] = _1413
                            mem[_1628 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1628 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1628 + 128] = compoundDelay
                            mem[_1628 + 160] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1628 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1628
                        else:
                            mem[0] = _1414 + 1
                            mem[_1424 + 32] = stor[sha3(_1414 + 1)]
                            s = _1424 + 32
                            t = sha3(_1414 + 1)
                            while _1424 + (uint255(stor1[_1414].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1415 + 32] = _1424
                            mem[_1415 + 64] = stor2[_1414]
                            mem[_1415 + 96] = stor3[_1414]
                            mem[_1415 + 128] = stor4[_1414]
                            mem[_1415 + 160] = stor5[_1414]
                            mem[_1415 + 192] = stor6[_1414]
                            mem[_1415 + 224] = bool(uint8(stor7[_1414].field_0))
                            mem[_1415 + 256] = bool(uint8(stor7[_1414].field_8))
                            if block.timestamp < stor3[_1414]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1414] and rewardPerDay > -1 / block.timestamp - stor3[_1414]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 and stor4[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            _1833 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1833] = _1415
                            mem[_1833 + 32] = _1413
                            mem[_1833 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1833 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1833 + 128] = compoundDelay
                            mem[_1833 + 160] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1833 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1833
                else:
                    if bool(stor1[_1414].field_0) == stor1[_1414].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_1414].field_1 % 128:
                        mem[_1415 + 32] = _1424
                        mem[_1415 + 64] = stor2[_1414]
                        mem[_1415 + 96] = stor3[_1414]
                        mem[_1415 + 128] = stor4[_1414]
                        mem[_1415 + 160] = stor5[_1414]
                        mem[_1415 + 192] = stor6[_1414]
                        mem[_1415 + 224] = bool(uint8(stor7[_1414].field_0))
                        mem[_1415 + 256] = bool(uint8(stor7[_1414].field_8))
                        if block.timestamp < stor3[_1414]:
                            revert with 0, 17
                        if block.timestamp - stor3[_1414] and rewardPerDay > -1 / block.timestamp - stor3[_1414]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 and stor4[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                            revert with 0, 17
                        _1624 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1624] = _1415
                        mem[_1624 + 32] = _1413
                        mem[_1624 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        mem[_1624 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        mem[_1624 + 128] = compoundDelay
                        mem[_1624 + 160] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        mem[_1624 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1624
                    else:
                        if 31 >= stor1[_1414].field_1 % 128:
                            mem[_1424 + 32] = 256 * Mask(248, 0, stor1[_1414].field_8)
                            mem[_1415 + 32] = _1424
                            mem[_1415 + 64] = stor2[_1414]
                            mem[_1415 + 96] = stor3[_1414]
                            mem[_1415 + 128] = stor4[_1414]
                            mem[_1415 + 160] = stor5[_1414]
                            mem[_1415 + 192] = stor6[_1414]
                            mem[_1415 + 224] = bool(uint8(stor7[_1414].field_0))
                            mem[_1415 + 256] = bool(uint8(stor7[_1414].field_8))
                            if block.timestamp < stor3[_1414]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1414] and rewardPerDay > -1 / block.timestamp - stor3[_1414]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 and stor4[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            _1632 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1632] = _1415
                            mem[_1632 + 32] = _1413
                            mem[_1632 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1632 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1632 + 128] = compoundDelay
                            mem[_1632 + 160] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1632 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1632
                        else:
                            mem[0] = _1414 + 1
                            mem[_1424 + 32] = stor[sha3(_1414 + 1)]
                            s = _1424 + 32
                            t = sha3(_1414 + 1)
                            while _1424 + stor1[_1414].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1415 + 32] = _1424
                            mem[_1415 + 64] = stor2[_1414]
                            mem[_1415 + 96] = stor3[_1414]
                            mem[_1415 + 128] = stor4[_1414]
                            mem[_1415 + 160] = stor5[_1414]
                            mem[_1415 + 192] = stor6[_1414]
                            mem[_1415 + 224] = bool(uint8(stor7[_1414].field_0))
                            mem[_1415 + 256] = bool(uint8(stor7[_1414].field_8))
                            if block.timestamp < stor3[_1414]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1414] and rewardPerDay > -1 / block.timestamp - stor3[_1414]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 and stor4[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            _1835 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1835] = _1415
                            mem[_1835 + 32] = _1413
                            mem[_1835 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1835 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1835 + 128] = compoundDelay
                            mem[_1835 + 160] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1835 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1835
            else:
                if bool(stor1[_1414].field_0) == stor1[_1414].field_1 % 128 < 32:
                    revert with 0, 34
                _1426 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_1414].field_1 % 128) + 32
                mem[_1426] = stor1[_1414].field_1 % 128
                if bool(stor1[_1414].field_0):
                    if bool(stor1[_1414].field_0) == uint255(stor1[_1414].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_1414].field_0):
                        mem[_1415 + 32] = _1426
                        mem[_1415 + 64] = stor2[_1414]
                        mem[_1415 + 96] = stor3[_1414]
                        mem[_1415 + 128] = stor4[_1414]
                        mem[_1415 + 160] = stor5[_1414]
                        mem[_1415 + 192] = stor6[_1414]
                        mem[_1415 + 224] = bool(uint8(stor7[_1414].field_0))
                        mem[_1415 + 256] = bool(uint8(stor7[_1414].field_8))
                        if block.timestamp < stor3[_1414]:
                            revert with 0, 17
                        if block.timestamp - stor3[_1414] and rewardPerDay > -1 / block.timestamp - stor3[_1414]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 and stor4[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                            revert with 0, 17
                        _1626 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1626] = _1415
                        mem[_1626 + 32] = _1413
                        mem[_1626 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        mem[_1626 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        mem[_1626 + 128] = compoundDelay
                        mem[_1626 + 160] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        mem[_1626 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1626
                    else:
                        if 31 >= uint255(stor1[_1414].field_0) * 0.5:
                            mem[_1426 + 32] = 256 * Mask(248, 0, stor1[_1414].field_8)
                            mem[_1415 + 32] = _1426
                            mem[_1415 + 64] = stor2[_1414]
                            mem[_1415 + 96] = stor3[_1414]
                            mem[_1415 + 128] = stor4[_1414]
                            mem[_1415 + 160] = stor5[_1414]
                            mem[_1415 + 192] = stor6[_1414]
                            mem[_1415 + 224] = bool(uint8(stor7[_1414].field_0))
                            mem[_1415 + 256] = bool(uint8(stor7[_1414].field_8))
                            if block.timestamp < stor3[_1414]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1414] and rewardPerDay > -1 / block.timestamp - stor3[_1414]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 and stor4[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            _1634 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1634] = _1415
                            mem[_1634 + 32] = _1413
                            mem[_1634 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1634 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1634 + 128] = compoundDelay
                            mem[_1634 + 160] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1634 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1634
                        else:
                            mem[0] = _1414 + 1
                            mem[_1426 + 32] = stor[sha3(_1414 + 1)]
                            s = _1426 + 32
                            t = sha3(_1414 + 1)
                            while _1426 + (uint255(stor1[_1414].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1415 + 32] = _1426
                            mem[_1415 + 64] = stor2[_1414]
                            mem[_1415 + 96] = stor3[_1414]
                            mem[_1415 + 128] = stor4[_1414]
                            mem[_1415 + 160] = stor5[_1414]
                            mem[_1415 + 192] = stor6[_1414]
                            mem[_1415 + 224] = bool(uint8(stor7[_1414].field_0))
                            mem[_1415 + 256] = bool(uint8(stor7[_1414].field_8))
                            if block.timestamp < stor3[_1414]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1414] and rewardPerDay > -1 / block.timestamp - stor3[_1414]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 and stor4[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            _1837 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1837] = _1415
                            mem[_1837 + 32] = _1413
                            mem[_1837 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1837 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1837 + 128] = compoundDelay
                            mem[_1837 + 160] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1837 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1837
                else:
                    if bool(stor1[_1414].field_0) == stor1[_1414].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_1414].field_1 % 128:
                        mem[_1415 + 32] = _1426
                        mem[_1415 + 64] = stor2[_1414]
                        mem[_1415 + 96] = stor3[_1414]
                        mem[_1415 + 128] = stor4[_1414]
                        mem[_1415 + 160] = stor5[_1414]
                        mem[_1415 + 192] = stor6[_1414]
                        mem[_1415 + 224] = bool(uint8(stor7[_1414].field_0))
                        mem[_1415 + 256] = bool(uint8(stor7[_1414].field_8))
                        if block.timestamp < stor3[_1414]:
                            revert with 0, 17
                        if block.timestamp - stor3[_1414] and rewardPerDay > -1 / block.timestamp - stor3[_1414]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 and stor4[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                            revert with 0, 17
                        _1630 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1630] = _1415
                        mem[_1630 + 32] = _1413
                        mem[_1630 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        mem[_1630 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        mem[_1630 + 128] = compoundDelay
                        mem[_1630 + 160] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        mem[_1630 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1630
                    else:
                        if 31 >= stor1[_1414].field_1 % 128:
                            mem[_1426 + 32] = 256 * Mask(248, 0, stor1[_1414].field_8)
                            mem[_1415 + 32] = _1426
                            mem[_1415 + 64] = stor2[_1414]
                            mem[_1415 + 96] = stor3[_1414]
                            mem[_1415 + 128] = stor4[_1414]
                            mem[_1415 + 160] = stor5[_1414]
                            mem[_1415 + 192] = stor6[_1414]
                            mem[_1415 + 224] = bool(uint8(stor7[_1414].field_0))
                            mem[_1415 + 256] = bool(uint8(stor7[_1414].field_8))
                            if block.timestamp < stor3[_1414]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1414] and rewardPerDay > -1 / block.timestamp - stor3[_1414]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 and stor4[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            _1638 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1638] = _1415
                            mem[_1638 + 32] = _1413
                            mem[_1638 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1638 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1638 + 128] = compoundDelay
                            mem[_1638 + 160] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1638 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1638
                        else:
                            mem[0] = _1414 + 1
                            mem[_1426 + 32] = stor[sha3(_1414 + 1)]
                            s = _1426 + 32
                            t = sha3(_1414 + 1)
                            while _1426 + stor1[_1414].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1415 + 32] = _1426
                            mem[_1415 + 64] = stor2[_1414]
                            mem[_1415 + 96] = stor3[_1414]
                            mem[_1415 + 128] = stor4[_1414]
                            mem[_1415 + 160] = stor5[_1414]
                            mem[_1415 + 192] = stor6[_1414]
                            mem[_1415 + 224] = bool(uint8(stor7[_1414].field_0))
                            mem[_1415 + 256] = bool(uint8(stor7[_1414].field_8))
                            if block.timestamp < stor3[_1414]:
                                revert with 0, 17
                            if block.timestamp - stor3[_1414] and rewardPerDay > -1 / block.timestamp - stor3[_1414]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 and stor4[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 and stor5[_1414] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000 < 0:
                                revert with 0, 17
                            _1839 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1839] = _1415
                            mem[_1839 + 32] = _1413
                            mem[_1839 + 64] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1839 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1839 + 128] = compoundDelay
                            mem[_1839 + 160] = (block.timestamp * rewardPerDay) - (stor3[_1414] * rewardPerDay) / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            mem[_1839 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_1414] / 100000 * stor5[_1414] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1839
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1412 = mem[64]
        mem[mem[64]] = 32
        _1416 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + 97]
        idx = 0
        s = ceil32(32 * arg1.length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _1416) + 64
        while idx < _1416:
            mem[t] = u + -_1412 - 64
            _1672 = mem[s]
            _1673 = mem[mem[s]]
            mem[u] = 224
            mem[u + 224] = mem[_1673]
            _1675 = mem[_1673 + 32]
            mem[u + 256] = 288
            _1677 = mem[_1675]
            mem[u + 512] = mem[_1675]
            v = 0
            while v < _1677:
                mem[v + u + 544] = mem[v + _1675 + 32]
                v = v + 32
                continue 
            if ceil32(_1677) > _1677:
                mem[_1677 + u + 544] = 0
            mem[u + 288] = mem[_1673 + 64]
            mem[u + 320] = mem[_1673 + 96]
            mem[u + 352] = mem[_1673 + 128]
            mem[u + 384] = mem[_1673 + 160]
            mem[u + 416] = mem[_1673 + 192]
            mem[u + 448] = bool(mem[_1673 + 224])
            mem[u + 480] = bool(mem[_1673 + 256])
            mem[u + 32] = mem[_1672 + 32]
            mem[u + 64] = mem[_1672 + 64]
            mem[u + 96] = mem[_1672 + 96]
            mem[u + 128] = mem[_1672 + 128]
            mem[u + 160] = mem[_1672 + 160]
            mem[u + 192] = mem[_1672 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_1677) + u + 544
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * arg1.length) + (32 * arg1.length) + 1153
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 865] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 897] = 96
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 929] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 961] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 993] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1025] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1057] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1089] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1121] = 0
    mem[var35002] = var35001
    mem[var35002 + 32] = 0
    mem[var35002 + 64] = 0
    mem[var35002 + 96] = 0
    mem[var35002 + 128] = 0
    mem[var35002 + 160] = 0
    mem[var35002 + 192] = 0
    mem[var37002] = var37001
    if not var37003 - 1:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _2291 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 552
            _2292 = sha3(mem[(32 * idx) + 128], 552)
            _2293 = mem[64]
            mem[64] = mem[64] + 288
            mem[_2293] = stor552[mem[(32 * idx) + 128]].field_0
            if bool(stor1[_2292].field_0):
                if bool(stor1[_2292].field_0) == uint255(stor1[_2292].field_0) * 0.5 < 32:
                    revert with 0, 34
                _2302 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_2292].field_0) * 0.5) + 32
                mem[_2302] = uint255(stor1[_2292].field_0) * 0.5
                if bool(stor1[_2292].field_0):
                    if bool(stor1[_2292].field_0) == uint255(stor1[_2292].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_2292].field_0):
                        mem[_2293 + 32] = _2302
                        mem[_2293 + 64] = stor2[_2292]
                        mem[_2293 + 96] = stor3[_2292]
                        mem[_2293 + 128] = stor4[_2292]
                        mem[_2293 + 160] = stor5[_2292]
                        mem[_2293 + 192] = stor6[_2292]
                        mem[_2293 + 224] = bool(uint8(stor7[_2292].field_0))
                        mem[_2293 + 256] = bool(uint8(stor7[_2292].field_8))
                        if block.timestamp < stor3[_2292]:
                            revert with 0, 17
                        if block.timestamp - stor3[_2292] and rewardPerDay > -1 / block.timestamp - stor3[_2292]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 and stor4[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                            revert with 0, 17
                        _2500 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2500] = _2293
                        mem[_2500 + 32] = _2291
                        mem[_2500 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        mem[_2500 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        mem[_2500 + 128] = compoundDelay
                        mem[_2500 + 160] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        mem[_2500 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2500
                    else:
                        if 31 >= uint255(stor1[_2292].field_0) * 0.5:
                            mem[_2302 + 32] = 256 * Mask(248, 0, stor1[_2292].field_8)
                            mem[_2293 + 32] = _2302
                            mem[_2293 + 64] = stor2[_2292]
                            mem[_2293 + 96] = stor3[_2292]
                            mem[_2293 + 128] = stor4[_2292]
                            mem[_2293 + 160] = stor5[_2292]
                            mem[_2293 + 192] = stor6[_2292]
                            mem[_2293 + 224] = bool(uint8(stor7[_2292].field_0))
                            mem[_2293 + 256] = bool(uint8(stor7[_2292].field_8))
                            if block.timestamp < stor3[_2292]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2292] and rewardPerDay > -1 / block.timestamp - stor3[_2292]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 and stor4[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            _2506 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2506] = _2293
                            mem[_2506 + 32] = _2291
                            mem[_2506 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2506 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2506 + 128] = compoundDelay
                            mem[_2506 + 160] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2506 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2506
                        else:
                            mem[0] = _2292 + 1
                            mem[_2302 + 32] = stor[sha3(_2292 + 1)]
                            s = _2302 + 32
                            t = sha3(_2292 + 1)
                            while _2302 + (uint255(stor1[_2292].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_2293 + 32] = _2302
                            mem[_2293 + 64] = stor2[_2292]
                            mem[_2293 + 96] = stor3[_2292]
                            mem[_2293 + 128] = stor4[_2292]
                            mem[_2293 + 160] = stor5[_2292]
                            mem[_2293 + 192] = stor6[_2292]
                            mem[_2293 + 224] = bool(uint8(stor7[_2292].field_0))
                            mem[_2293 + 256] = bool(uint8(stor7[_2292].field_8))
                            if block.timestamp < stor3[_2292]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2292] and rewardPerDay > -1 / block.timestamp - stor3[_2292]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 and stor4[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            _2711 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2711] = _2293
                            mem[_2711 + 32] = _2291
                            mem[_2711 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2711 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2711 + 128] = compoundDelay
                            mem[_2711 + 160] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2711 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2711
                else:
                    if bool(stor1[_2292].field_0) == stor1[_2292].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_2292].field_1 % 128:
                        mem[_2293 + 32] = _2302
                        mem[_2293 + 64] = stor2[_2292]
                        mem[_2293 + 96] = stor3[_2292]
                        mem[_2293 + 128] = stor4[_2292]
                        mem[_2293 + 160] = stor5[_2292]
                        mem[_2293 + 192] = stor6[_2292]
                        mem[_2293 + 224] = bool(uint8(stor7[_2292].field_0))
                        mem[_2293 + 256] = bool(uint8(stor7[_2292].field_8))
                        if block.timestamp < stor3[_2292]:
                            revert with 0, 17
                        if block.timestamp - stor3[_2292] and rewardPerDay > -1 / block.timestamp - stor3[_2292]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 and stor4[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                            revert with 0, 17
                        _2502 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2502] = _2293
                        mem[_2502 + 32] = _2291
                        mem[_2502 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        mem[_2502 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        mem[_2502 + 128] = compoundDelay
                        mem[_2502 + 160] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        mem[_2502 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2502
                    else:
                        if 31 >= stor1[_2292].field_1 % 128:
                            mem[_2302 + 32] = 256 * Mask(248, 0, stor1[_2292].field_8)
                            mem[_2293 + 32] = _2302
                            mem[_2293 + 64] = stor2[_2292]
                            mem[_2293 + 96] = stor3[_2292]
                            mem[_2293 + 128] = stor4[_2292]
                            mem[_2293 + 160] = stor5[_2292]
                            mem[_2293 + 192] = stor6[_2292]
                            mem[_2293 + 224] = bool(uint8(stor7[_2292].field_0))
                            mem[_2293 + 256] = bool(uint8(stor7[_2292].field_8))
                            if block.timestamp < stor3[_2292]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2292] and rewardPerDay > -1 / block.timestamp - stor3[_2292]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 and stor4[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            _2510 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2510] = _2293
                            mem[_2510 + 32] = _2291
                            mem[_2510 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2510 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2510 + 128] = compoundDelay
                            mem[_2510 + 160] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2510 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2510
                        else:
                            mem[0] = _2292 + 1
                            mem[_2302 + 32] = stor[sha3(_2292 + 1)]
                            s = _2302 + 32
                            t = sha3(_2292 + 1)
                            while _2302 + stor1[_2292].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_2293 + 32] = _2302
                            mem[_2293 + 64] = stor2[_2292]
                            mem[_2293 + 96] = stor3[_2292]
                            mem[_2293 + 128] = stor4[_2292]
                            mem[_2293 + 160] = stor5[_2292]
                            mem[_2293 + 192] = stor6[_2292]
                            mem[_2293 + 224] = bool(uint8(stor7[_2292].field_0))
                            mem[_2293 + 256] = bool(uint8(stor7[_2292].field_8))
                            if block.timestamp < stor3[_2292]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2292] and rewardPerDay > -1 / block.timestamp - stor3[_2292]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 and stor4[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            _2713 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2713] = _2293
                            mem[_2713 + 32] = _2291
                            mem[_2713 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2713 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2713 + 128] = compoundDelay
                            mem[_2713 + 160] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2713 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2713
            else:
                if bool(stor1[_2292].field_0) == stor1[_2292].field_1 % 128 < 32:
                    revert with 0, 34
                _2304 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_2292].field_1 % 128) + 32
                mem[_2304] = stor1[_2292].field_1 % 128
                if bool(stor1[_2292].field_0):
                    if bool(stor1[_2292].field_0) == uint255(stor1[_2292].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_2292].field_0):
                        mem[_2293 + 32] = _2304
                        mem[_2293 + 64] = stor2[_2292]
                        mem[_2293 + 96] = stor3[_2292]
                        mem[_2293 + 128] = stor4[_2292]
                        mem[_2293 + 160] = stor5[_2292]
                        mem[_2293 + 192] = stor6[_2292]
                        mem[_2293 + 224] = bool(uint8(stor7[_2292].field_0))
                        mem[_2293 + 256] = bool(uint8(stor7[_2292].field_8))
                        if block.timestamp < stor3[_2292]:
                            revert with 0, 17
                        if block.timestamp - stor3[_2292] and rewardPerDay > -1 / block.timestamp - stor3[_2292]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 and stor4[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                            revert with 0, 17
                        _2504 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2504] = _2293
                        mem[_2504 + 32] = _2291
                        mem[_2504 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        mem[_2504 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        mem[_2504 + 128] = compoundDelay
                        mem[_2504 + 160] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        mem[_2504 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2504
                    else:
                        if 31 >= uint255(stor1[_2292].field_0) * 0.5:
                            mem[_2304 + 32] = 256 * Mask(248, 0, stor1[_2292].field_8)
                            mem[_2293 + 32] = _2304
                            mem[_2293 + 64] = stor2[_2292]
                            mem[_2293 + 96] = stor3[_2292]
                            mem[_2293 + 128] = stor4[_2292]
                            mem[_2293 + 160] = stor5[_2292]
                            mem[_2293 + 192] = stor6[_2292]
                            mem[_2293 + 224] = bool(uint8(stor7[_2292].field_0))
                            mem[_2293 + 256] = bool(uint8(stor7[_2292].field_8))
                            if block.timestamp < stor3[_2292]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2292] and rewardPerDay > -1 / block.timestamp - stor3[_2292]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 and stor4[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            _2512 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2512] = _2293
                            mem[_2512 + 32] = _2291
                            mem[_2512 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2512 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2512 + 128] = compoundDelay
                            mem[_2512 + 160] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2512 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2512
                        else:
                            mem[0] = _2292 + 1
                            mem[_2304 + 32] = stor[sha3(_2292 + 1)]
                            s = _2304 + 32
                            t = sha3(_2292 + 1)
                            while _2304 + (uint255(stor1[_2292].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_2293 + 32] = _2304
                            mem[_2293 + 64] = stor2[_2292]
                            mem[_2293 + 96] = stor3[_2292]
                            mem[_2293 + 128] = stor4[_2292]
                            mem[_2293 + 160] = stor5[_2292]
                            mem[_2293 + 192] = stor6[_2292]
                            mem[_2293 + 224] = bool(uint8(stor7[_2292].field_0))
                            mem[_2293 + 256] = bool(uint8(stor7[_2292].field_8))
                            if block.timestamp < stor3[_2292]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2292] and rewardPerDay > -1 / block.timestamp - stor3[_2292]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 and stor4[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            _2715 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2715] = _2293
                            mem[_2715 + 32] = _2291
                            mem[_2715 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2715 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2715 + 128] = compoundDelay
                            mem[_2715 + 160] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2715 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2715
                else:
                    if bool(stor1[_2292].field_0) == stor1[_2292].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_2292].field_1 % 128:
                        mem[_2293 + 32] = _2304
                        mem[_2293 + 64] = stor2[_2292]
                        mem[_2293 + 96] = stor3[_2292]
                        mem[_2293 + 128] = stor4[_2292]
                        mem[_2293 + 160] = stor5[_2292]
                        mem[_2293 + 192] = stor6[_2292]
                        mem[_2293 + 224] = bool(uint8(stor7[_2292].field_0))
                        mem[_2293 + 256] = bool(uint8(stor7[_2292].field_8))
                        if block.timestamp < stor3[_2292]:
                            revert with 0, 17
                        if block.timestamp - stor3[_2292] and rewardPerDay > -1 / block.timestamp - stor3[_2292]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 and stor4[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                            revert with 0, 17
                        _2508 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2508] = _2293
                        mem[_2508 + 32] = _2291
                        mem[_2508 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        mem[_2508 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        mem[_2508 + 128] = compoundDelay
                        mem[_2508 + 160] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        mem[_2508 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2508
                    else:
                        if 31 >= stor1[_2292].field_1 % 128:
                            mem[_2304 + 32] = 256 * Mask(248, 0, stor1[_2292].field_8)
                            mem[_2293 + 32] = _2304
                            mem[_2293 + 64] = stor2[_2292]
                            mem[_2293 + 96] = stor3[_2292]
                            mem[_2293 + 128] = stor4[_2292]
                            mem[_2293 + 160] = stor5[_2292]
                            mem[_2293 + 192] = stor6[_2292]
                            mem[_2293 + 224] = bool(uint8(stor7[_2292].field_0))
                            mem[_2293 + 256] = bool(uint8(stor7[_2292].field_8))
                            if block.timestamp < stor3[_2292]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2292] and rewardPerDay > -1 / block.timestamp - stor3[_2292]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 and stor4[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            _2516 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2516] = _2293
                            mem[_2516 + 32] = _2291
                            mem[_2516 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2516 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2516 + 128] = compoundDelay
                            mem[_2516 + 160] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2516 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2516
                        else:
                            mem[0] = _2292 + 1
                            mem[_2304 + 32] = stor[sha3(_2292 + 1)]
                            s = _2304 + 32
                            t = sha3(_2292 + 1)
                            while _2304 + stor1[_2292].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_2293 + 32] = _2304
                            mem[_2293 + 64] = stor2[_2292]
                            mem[_2293 + 96] = stor3[_2292]
                            mem[_2293 + 128] = stor4[_2292]
                            mem[_2293 + 160] = stor5[_2292]
                            mem[_2293 + 192] = stor6[_2292]
                            mem[_2293 + 224] = bool(uint8(stor7[_2292].field_0))
                            mem[_2293 + 256] = bool(uint8(stor7[_2292].field_8))
                            if block.timestamp < stor3[_2292]:
                                revert with 0, 17
                            if block.timestamp - stor3[_2292] and rewardPerDay > -1 / block.timestamp - stor3[_2292]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 and stor4[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 and stor5[_2292] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000 < 0:
                                revert with 0, 17
                            _2717 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2717] = _2293
                            mem[_2717 + 32] = _2291
                            mem[_2717 + 64] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2717 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2717 + 128] = compoundDelay
                            mem[_2717 + 160] = (block.timestamp * rewardPerDay) - (stor3[_2292] * rewardPerDay) / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            mem[_2717 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_2292] / 100000 * stor5[_2292] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _2717
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2290 = mem[64]
        mem[mem[64]] = 32
        _2294 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + 97]
        idx = 0
        s = ceil32(32 * arg1.length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _2294) + 64
        while idx < _2294:
            mem[t] = u + -_2290 - 64
            _2550 = mem[s]
            _2551 = mem[mem[s]]
            mem[u] = 224
            mem[u + 224] = mem[_2551]
            _2553 = mem[_2551 + 32]
            mem[u + 256] = 288
            _2555 = mem[_2553]
            mem[u + 512] = mem[_2553]
            v = 0
            while v < _2555:
                mem[v + u + 544] = mem[v + _2553 + 32]
                v = v + 32
                continue 
            if ceil32(_2555) > _2555:
                mem[_2555 + u + 544] = 0
            mem[u + 288] = mem[_2551 + 64]
            mem[u + 320] = mem[_2551 + 96]
            mem[u + 352] = mem[_2551 + 128]
            mem[u + 384] = mem[_2551 + 160]
            mem[u + 416] = mem[_2551 + 192]
            mem[u + 448] = bool(mem[_2551 + 224])
            mem[u + 480] = bool(mem[_2551 + 256])
            mem[u + 32] = mem[_2550 + 32]
            mem[u + 64] = mem[_2550 + 64]
            mem[u + 96] = mem[_2550 + 96]
            mem[u + 128] = mem[_2550 + 128]
            mem[u + 160] = mem[_2550 + 160]
            mem[u + 192] = mem[_2550 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_2555) + u + 544
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * arg1.length) + (32 * arg1.length) + 1665
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1377] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1409] = 96
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1441] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1473] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1505] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1537] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1569] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1601] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1633] = 0
    mem[var43002] = var43001
    mem[var43002 + 32] = 0
    mem[var43002 + 64] = 0
    mem[var43002 + 96] = 0
    mem[var43002 + 128] = 0
    mem[var43002 + 160] = 0
    mem[var43002 + 192] = 0
    mem[var45002] = var45001
    if not var45003 - 1:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _3169 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 552
            _3170 = sha3(mem[(32 * idx) + 128], 552)
            _3171 = mem[64]
            mem[64] = mem[64] + 288
            mem[_3171] = stor552[mem[(32 * idx) + 128]].field_0
            if bool(stor1[_3170].field_0):
                if bool(stor1[_3170].field_0) == uint255(stor1[_3170].field_0) * 0.5 < 32:
                    revert with 0, 34
                _3180 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_3170].field_0) * 0.5) + 32
                mem[_3180] = uint255(stor1[_3170].field_0) * 0.5
                if bool(stor1[_3170].field_0):
                    if bool(stor1[_3170].field_0) == uint255(stor1[_3170].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_3170].field_0):
                        mem[_3171 + 32] = _3180
                        mem[_3171 + 64] = stor2[_3170]
                        mem[_3171 + 96] = stor3[_3170]
                        mem[_3171 + 128] = stor4[_3170]
                        mem[_3171 + 160] = stor5[_3170]
                        mem[_3171 + 192] = stor6[_3170]
                        mem[_3171 + 224] = bool(uint8(stor7[_3170].field_0))
                        mem[_3171 + 256] = bool(uint8(stor7[_3170].field_8))
                        if block.timestamp < stor3[_3170]:
                            revert with 0, 17
                        if block.timestamp - stor3[_3170] and rewardPerDay > -1 / block.timestamp - stor3[_3170]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 and stor4[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                            revert with 0, 17
                        _3378 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_3378] = _3171
                        mem[_3378 + 32] = _3169
                        mem[_3378 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        mem[_3378 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        mem[_3378 + 128] = compoundDelay
                        mem[_3378 + 160] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        mem[_3378 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3378
                    else:
                        if 31 >= uint255(stor1[_3170].field_0) * 0.5:
                            mem[_3180 + 32] = 256 * Mask(248, 0, stor1[_3170].field_8)
                            mem[_3171 + 32] = _3180
                            mem[_3171 + 64] = stor2[_3170]
                            mem[_3171 + 96] = stor3[_3170]
                            mem[_3171 + 128] = stor4[_3170]
                            mem[_3171 + 160] = stor5[_3170]
                            mem[_3171 + 192] = stor6[_3170]
                            mem[_3171 + 224] = bool(uint8(stor7[_3170].field_0))
                            mem[_3171 + 256] = bool(uint8(stor7[_3170].field_8))
                            if block.timestamp < stor3[_3170]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3170] and rewardPerDay > -1 / block.timestamp - stor3[_3170]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 and stor4[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            _3384 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_3384] = _3171
                            mem[_3384 + 32] = _3169
                            mem[_3384 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3384 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3384 + 128] = compoundDelay
                            mem[_3384 + 160] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3384 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3384
                        else:
                            mem[0] = _3170 + 1
                            mem[_3180 + 32] = stor[sha3(_3170 + 1)]
                            s = _3180 + 32
                            t = sha3(_3170 + 1)
                            while _3180 + (uint255(stor1[_3170].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_3171 + 32] = _3180
                            mem[_3171 + 64] = stor2[_3170]
                            mem[_3171 + 96] = stor3[_3170]
                            mem[_3171 + 128] = stor4[_3170]
                            mem[_3171 + 160] = stor5[_3170]
                            mem[_3171 + 192] = stor6[_3170]
                            mem[_3171 + 224] = bool(uint8(stor7[_3170].field_0))
                            mem[_3171 + 256] = bool(uint8(stor7[_3170].field_8))
                            if block.timestamp < stor3[_3170]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3170] and rewardPerDay > -1 / block.timestamp - stor3[_3170]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 and stor4[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            _3589 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_3589] = _3171
                            mem[_3589 + 32] = _3169
                            mem[_3589 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3589 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3589 + 128] = compoundDelay
                            mem[_3589 + 160] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3589 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3589
                else:
                    if bool(stor1[_3170].field_0) == stor1[_3170].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_3170].field_1 % 128:
                        mem[_3171 + 32] = _3180
                        mem[_3171 + 64] = stor2[_3170]
                        mem[_3171 + 96] = stor3[_3170]
                        mem[_3171 + 128] = stor4[_3170]
                        mem[_3171 + 160] = stor5[_3170]
                        mem[_3171 + 192] = stor6[_3170]
                        mem[_3171 + 224] = bool(uint8(stor7[_3170].field_0))
                        mem[_3171 + 256] = bool(uint8(stor7[_3170].field_8))
                        if block.timestamp < stor3[_3170]:
                            revert with 0, 17
                        if block.timestamp - stor3[_3170] and rewardPerDay > -1 / block.timestamp - stor3[_3170]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 and stor4[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                            revert with 0, 17
                        _3380 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_3380] = _3171
                        mem[_3380 + 32] = _3169
                        mem[_3380 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        mem[_3380 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        mem[_3380 + 128] = compoundDelay
                        mem[_3380 + 160] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        mem[_3380 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3380
                    else:
                        if 31 >= stor1[_3170].field_1 % 128:
                            mem[_3180 + 32] = 256 * Mask(248, 0, stor1[_3170].field_8)
                            mem[_3171 + 32] = _3180
                            mem[_3171 + 64] = stor2[_3170]
                            mem[_3171 + 96] = stor3[_3170]
                            mem[_3171 + 128] = stor4[_3170]
                            mem[_3171 + 160] = stor5[_3170]
                            mem[_3171 + 192] = stor6[_3170]
                            mem[_3171 + 224] = bool(uint8(stor7[_3170].field_0))
                            mem[_3171 + 256] = bool(uint8(stor7[_3170].field_8))
                            if block.timestamp < stor3[_3170]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3170] and rewardPerDay > -1 / block.timestamp - stor3[_3170]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 and stor4[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            _3388 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_3388] = _3171
                            mem[_3388 + 32] = _3169
                            mem[_3388 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3388 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3388 + 128] = compoundDelay
                            mem[_3388 + 160] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3388 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3388
                        else:
                            mem[0] = _3170 + 1
                            mem[_3180 + 32] = stor[sha3(_3170 + 1)]
                            s = _3180 + 32
                            t = sha3(_3170 + 1)
                            while _3180 + stor1[_3170].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_3171 + 32] = _3180
                            mem[_3171 + 64] = stor2[_3170]
                            mem[_3171 + 96] = stor3[_3170]
                            mem[_3171 + 128] = stor4[_3170]
                            mem[_3171 + 160] = stor5[_3170]
                            mem[_3171 + 192] = stor6[_3170]
                            mem[_3171 + 224] = bool(uint8(stor7[_3170].field_0))
                            mem[_3171 + 256] = bool(uint8(stor7[_3170].field_8))
                            if block.timestamp < stor3[_3170]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3170] and rewardPerDay > -1 / block.timestamp - stor3[_3170]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 and stor4[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            _3591 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_3591] = _3171
                            mem[_3591 + 32] = _3169
                            mem[_3591 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3591 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3591 + 128] = compoundDelay
                            mem[_3591 + 160] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3591 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3591
            else:
                if bool(stor1[_3170].field_0) == stor1[_3170].field_1 % 128 < 32:
                    revert with 0, 34
                _3182 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_3170].field_1 % 128) + 32
                mem[_3182] = stor1[_3170].field_1 % 128
                if bool(stor1[_3170].field_0):
                    if bool(stor1[_3170].field_0) == uint255(stor1[_3170].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_3170].field_0):
                        mem[_3171 + 32] = _3182
                        mem[_3171 + 64] = stor2[_3170]
                        mem[_3171 + 96] = stor3[_3170]
                        mem[_3171 + 128] = stor4[_3170]
                        mem[_3171 + 160] = stor5[_3170]
                        mem[_3171 + 192] = stor6[_3170]
                        mem[_3171 + 224] = bool(uint8(stor7[_3170].field_0))
                        mem[_3171 + 256] = bool(uint8(stor7[_3170].field_8))
                        if block.timestamp < stor3[_3170]:
                            revert with 0, 17
                        if block.timestamp - stor3[_3170] and rewardPerDay > -1 / block.timestamp - stor3[_3170]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 and stor4[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                            revert with 0, 17
                        _3382 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_3382] = _3171
                        mem[_3382 + 32] = _3169
                        mem[_3382 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        mem[_3382 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        mem[_3382 + 128] = compoundDelay
                        mem[_3382 + 160] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        mem[_3382 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3382
                    else:
                        if 31 >= uint255(stor1[_3170].field_0) * 0.5:
                            mem[_3182 + 32] = 256 * Mask(248, 0, stor1[_3170].field_8)
                            mem[_3171 + 32] = _3182
                            mem[_3171 + 64] = stor2[_3170]
                            mem[_3171 + 96] = stor3[_3170]
                            mem[_3171 + 128] = stor4[_3170]
                            mem[_3171 + 160] = stor5[_3170]
                            mem[_3171 + 192] = stor6[_3170]
                            mem[_3171 + 224] = bool(uint8(stor7[_3170].field_0))
                            mem[_3171 + 256] = bool(uint8(stor7[_3170].field_8))
                            if block.timestamp < stor3[_3170]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3170] and rewardPerDay > -1 / block.timestamp - stor3[_3170]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 and stor4[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            _3390 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_3390] = _3171
                            mem[_3390 + 32] = _3169
                            mem[_3390 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3390 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3390 + 128] = compoundDelay
                            mem[_3390 + 160] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3390 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3390
                        else:
                            mem[0] = _3170 + 1
                            mem[_3182 + 32] = stor[sha3(_3170 + 1)]
                            s = _3182 + 32
                            t = sha3(_3170 + 1)
                            while _3182 + (uint255(stor1[_3170].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_3171 + 32] = _3182
                            mem[_3171 + 64] = stor2[_3170]
                            mem[_3171 + 96] = stor3[_3170]
                            mem[_3171 + 128] = stor4[_3170]
                            mem[_3171 + 160] = stor5[_3170]
                            mem[_3171 + 192] = stor6[_3170]
                            mem[_3171 + 224] = bool(uint8(stor7[_3170].field_0))
                            mem[_3171 + 256] = bool(uint8(stor7[_3170].field_8))
                            if block.timestamp < stor3[_3170]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3170] and rewardPerDay > -1 / block.timestamp - stor3[_3170]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 and stor4[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            _3593 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_3593] = _3171
                            mem[_3593 + 32] = _3169
                            mem[_3593 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3593 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3593 + 128] = compoundDelay
                            mem[_3593 + 160] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3593 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3593
                else:
                    if bool(stor1[_3170].field_0) == stor1[_3170].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_3170].field_1 % 128:
                        mem[_3171 + 32] = _3182
                        mem[_3171 + 64] = stor2[_3170]
                        mem[_3171 + 96] = stor3[_3170]
                        mem[_3171 + 128] = stor4[_3170]
                        mem[_3171 + 160] = stor5[_3170]
                        mem[_3171 + 192] = stor6[_3170]
                        mem[_3171 + 224] = bool(uint8(stor7[_3170].field_0))
                        mem[_3171 + 256] = bool(uint8(stor7[_3170].field_8))
                        if block.timestamp < stor3[_3170]:
                            revert with 0, 17
                        if block.timestamp - stor3[_3170] and rewardPerDay > -1 / block.timestamp - stor3[_3170]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 and stor4[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                            revert with 0, 17
                        _3386 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_3386] = _3171
                        mem[_3386 + 32] = _3169
                        mem[_3386 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        mem[_3386 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        mem[_3386 + 128] = compoundDelay
                        mem[_3386 + 160] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        mem[_3386 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3386
                    else:
                        if 31 >= stor1[_3170].field_1 % 128:
                            mem[_3182 + 32] = 256 * Mask(248, 0, stor1[_3170].field_8)
                            mem[_3171 + 32] = _3182
                            mem[_3171 + 64] = stor2[_3170]
                            mem[_3171 + 96] = stor3[_3170]
                            mem[_3171 + 128] = stor4[_3170]
                            mem[_3171 + 160] = stor5[_3170]
                            mem[_3171 + 192] = stor6[_3170]
                            mem[_3171 + 224] = bool(uint8(stor7[_3170].field_0))
                            mem[_3171 + 256] = bool(uint8(stor7[_3170].field_8))
                            if block.timestamp < stor3[_3170]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3170] and rewardPerDay > -1 / block.timestamp - stor3[_3170]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 and stor4[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            _3394 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_3394] = _3171
                            mem[_3394 + 32] = _3169
                            mem[_3394 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3394 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3394 + 128] = compoundDelay
                            mem[_3394 + 160] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3394 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3394
                        else:
                            mem[0] = _3170 + 1
                            mem[_3182 + 32] = stor[sha3(_3170 + 1)]
                            s = _3182 + 32
                            t = sha3(_3170 + 1)
                            while _3182 + stor1[_3170].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_3171 + 32] = _3182
                            mem[_3171 + 64] = stor2[_3170]
                            mem[_3171 + 96] = stor3[_3170]
                            mem[_3171 + 128] = stor4[_3170]
                            mem[_3171 + 160] = stor5[_3170]
                            mem[_3171 + 192] = stor6[_3170]
                            mem[_3171 + 224] = bool(uint8(stor7[_3170].field_0))
                            mem[_3171 + 256] = bool(uint8(stor7[_3170].field_8))
                            if block.timestamp < stor3[_3170]:
                                revert with 0, 17
                            if block.timestamp - stor3[_3170] and rewardPerDay > -1 / block.timestamp - stor3[_3170]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 and stor4[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 and stor5[_3170] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000 < 0:
                                revert with 0, 17
                            _3595 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_3595] = _3171
                            mem[_3595 + 32] = _3169
                            mem[_3595 + 64] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3595 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3595 + 128] = compoundDelay
                            mem[_3595 + 160] = (block.timestamp * rewardPerDay) - (stor3[_3170] * rewardPerDay) / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            mem[_3595 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_3170] / 100000 * stor5[_3170] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _3595
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3168 = mem[64]
        mem[mem[64]] = 32
        _3172 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + 97]
        idx = 0
        s = ceil32(32 * arg1.length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _3172) + 64
        while idx < _3172:
            mem[t] = u + -_3168 - 64
            _3428 = mem[s]
            _3429 = mem[mem[s]]
            mem[u] = 224
            mem[u + 224] = mem[_3429]
            _3431 = mem[_3429 + 32]
            mem[u + 256] = 288
            _3433 = mem[_3431]
            mem[u + 512] = mem[_3431]
            v = 0
            while v < _3433:
                mem[v + u + 544] = mem[v + _3431 + 32]
                v = v + 32
                continue 
            if ceil32(_3433) > _3433:
                mem[_3433 + u + 544] = 0
            mem[u + 288] = mem[_3429 + 64]
            mem[u + 320] = mem[_3429 + 96]
            mem[u + 352] = mem[_3429 + 128]
            mem[u + 384] = mem[_3429 + 160]
            mem[u + 416] = mem[_3429 + 192]
            mem[u + 448] = bool(mem[_3429 + 224])
            mem[u + 480] = bool(mem[_3429 + 256])
            mem[u + 32] = mem[_3428 + 32]
            mem[u + 64] = mem[_3428 + 64]
            mem[u + 96] = mem[_3428 + 96]
            mem[u + 128] = mem[_3428 + 128]
            mem[u + 160] = mem[_3428 + 160]
            mem[u + 192] = mem[_3428 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_3433) + u + 544
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * arg1.length) + (32 * arg1.length) + 2177
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1889] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1921] = 96
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1953] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 1985] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 2017] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 2049] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 2081] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 2113] = 0
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 2145] = 0
    mem[var51002] = var51001
    mem[var51002 + 32] = 0
    mem[var51002 + 64] = 0
    mem[var51002 + 96] = 0
    mem[var51002 + 128] = 0
    mem[var51002 + 160] = 0
    mem[var51002 + 192] = 0
    mem[var53002] = var53001
    if var53003 - 1:
        # nil
    else:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _4047 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 552
            _4048 = sha3(mem[(32 * idx) + 128], 552)
            _4049 = mem[64]
            mem[64] = mem[64] + 288
            mem[_4049] = stor552[mem[(32 * idx) + 128]].field_0
            if bool(stor1[_4048].field_0):
                if bool(stor1[_4048].field_0) == uint255(stor1[_4048].field_0) * 0.5 < 32:
                    revert with 0, 34
                _4058 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor1[_4048].field_0) * 0.5) + 32
                mem[_4058] = uint255(stor1[_4048].field_0) * 0.5
                if bool(stor1[_4048].field_0):
                    if bool(stor1[_4048].field_0) == uint255(stor1[_4048].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_4048].field_0):
                        mem[_4049 + 32] = _4058
                        mem[_4049 + 64] = stor2[_4048]
                        mem[_4049 + 96] = stor3[_4048]
                        mem[_4049 + 128] = stor4[_4048]
                        mem[_4049 + 160] = stor5[_4048]
                        mem[_4049 + 192] = stor6[_4048]
                        mem[_4049 + 224] = bool(uint8(stor7[_4048].field_0))
                        mem[_4049 + 256] = bool(uint8(stor7[_4048].field_8))
                        if block.timestamp < stor3[_4048]:
                            revert with 0, 17
                        if block.timestamp - stor3[_4048] and rewardPerDay > -1 / block.timestamp - stor3[_4048]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 and stor4[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                            revert with 0, 17
                        _4256 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_4256] = _4049
                        mem[_4256 + 32] = _4047
                        mem[_4256 + 64] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        mem[_4256 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        mem[_4256 + 128] = compoundDelay
                        mem[_4256 + 160] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        mem[_4256 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4256
                    else:
                        if 31 >= uint255(stor1[_4048].field_0) * 0.5:
                            mem[_4058 + 32] = 256 * Mask(248, 0, stor1[_4048].field_8)
                            mem[_4049 + 32] = _4058
                            mem[_4049 + 64] = stor2[_4048]
                            mem[_4049 + 96] = stor3[_4048]
                            mem[_4049 + 128] = stor4[_4048]
                            mem[_4049 + 160] = stor5[_4048]
                            mem[_4049 + 192] = stor6[_4048]
                            mem[_4049 + 224] = bool(uint8(stor7[_4048].field_0))
                            mem[_4049 + 256] = bool(uint8(stor7[_4048].field_8))
                            if block.timestamp < stor3[_4048]:
                                revert with 0, 17
                            if block.timestamp - stor3[_4048] and rewardPerDay > -1 / block.timestamp - stor3[_4048]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 and stor4[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            _4262 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_4262] = _4049
                            mem[_4262 + 32] = _4047
                            mem[_4262 + 64] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4262 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4262 + 128] = compoundDelay
                            mem[_4262 + 160] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4262 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4262
                        else:
                            mem[0] = _4048 + 1
                            mem[_4058 + 32] = stor[sha3(_4048 + 1)]
                            s = _4058 + 32
                            t = sha3(_4048 + 1)
                            while _4058 + (uint255(stor1[_4048].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_4049 + 32] = _4058
                            mem[_4049 + 64] = stor2[_4048]
                            mem[_4049 + 96] = stor3[_4048]
                            mem[_4049 + 128] = stor4[_4048]
                            mem[_4049 + 160] = stor5[_4048]
                            mem[_4049 + 192] = stor6[_4048]
                            mem[_4049 + 224] = bool(uint8(stor7[_4048].field_0))
                            mem[_4049 + 256] = bool(uint8(stor7[_4048].field_8))
                            if block.timestamp < stor3[_4048]:
                                revert with 0, 17
                            if block.timestamp - stor3[_4048] and rewardPerDay > -1 / block.timestamp - stor3[_4048]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 and stor4[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            _4467 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_4467] = _4049
                            mem[_4467 + 32] = _4047
                            mem[_4467 + 64] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4467 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4467 + 128] = compoundDelay
                            mem[_4467 + 160] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4467 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4467
                else:
                    if bool(stor1[_4048].field_0) == stor1[_4048].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_4048].field_1 % 128:
                        mem[_4049 + 32] = _4058
                        mem[_4049 + 64] = stor2[_4048]
                        mem[_4049 + 96] = stor3[_4048]
                        mem[_4049 + 128] = stor4[_4048]
                        mem[_4049 + 160] = stor5[_4048]
                        mem[_4049 + 192] = stor6[_4048]
                        mem[_4049 + 224] = bool(uint8(stor7[_4048].field_0))
                        mem[_4049 + 256] = bool(uint8(stor7[_4048].field_8))
                        if block.timestamp < stor3[_4048]:
                            revert with 0, 17
                        if block.timestamp - stor3[_4048] and rewardPerDay > -1 / block.timestamp - stor3[_4048]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 and stor4[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                            revert with 0, 17
                        _4258 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_4258] = _4049
                        mem[_4258 + 32] = _4047
                        mem[_4258 + 64] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        mem[_4258 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        mem[_4258 + 128] = compoundDelay
                        mem[_4258 + 160] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        mem[_4258 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4258
                    else:
                        if 31 >= stor1[_4048].field_1 % 128:
                            mem[_4058 + 32] = 256 * Mask(248, 0, stor1[_4048].field_8)
                            mem[_4049 + 32] = _4058
                            mem[_4049 + 64] = stor2[_4048]
                            mem[_4049 + 96] = stor3[_4048]
                            mem[_4049 + 128] = stor4[_4048]
                            mem[_4049 + 160] = stor5[_4048]
                            mem[_4049 + 192] = stor6[_4048]
                            mem[_4049 + 224] = bool(uint8(stor7[_4048].field_0))
                            mem[_4049 + 256] = bool(uint8(stor7[_4048].field_8))
                            if block.timestamp < stor3[_4048]:
                                revert with 0, 17
                            if block.timestamp - stor3[_4048] and rewardPerDay > -1 / block.timestamp - stor3[_4048]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 and stor4[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            _4266 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_4266] = _4049
                            mem[_4266 + 32] = _4047
                            mem[_4266 + 64] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4266 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4266 + 128] = compoundDelay
                            mem[_4266 + 160] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4266 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4266
                        else:
                            mem[0] = _4048 + 1
                            mem[_4058 + 32] = stor[sha3(_4048 + 1)]
                            s = _4058 + 32
                            t = sha3(_4048 + 1)
                            while _4058 + stor1[_4048].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_4049 + 32] = _4058
                            mem[_4049 + 64] = stor2[_4048]
                            mem[_4049 + 96] = stor3[_4048]
                            mem[_4049 + 128] = stor4[_4048]
                            mem[_4049 + 160] = stor5[_4048]
                            mem[_4049 + 192] = stor6[_4048]
                            mem[_4049 + 224] = bool(uint8(stor7[_4048].field_0))
                            mem[_4049 + 256] = bool(uint8(stor7[_4048].field_8))
                            if block.timestamp < stor3[_4048]:
                                revert with 0, 17
                            if block.timestamp - stor3[_4048] and rewardPerDay > -1 / block.timestamp - stor3[_4048]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 and stor4[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            _4469 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_4469] = _4049
                            mem[_4469 + 32] = _4047
                            mem[_4469 + 64] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4469 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4469 + 128] = compoundDelay
                            mem[_4469 + 160] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4469 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4469
            else:
                if bool(stor1[_4048].field_0) == stor1[_4048].field_1 % 128 < 32:
                    revert with 0, 34
                _4060 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[_4048].field_1 % 128) + 32
                mem[_4060] = stor1[_4048].field_1 % 128
                if bool(stor1[_4048].field_0):
                    if bool(stor1[_4048].field_0) == uint255(stor1[_4048].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor1[_4048].field_0):
                        mem[_4049 + 32] = _4060
                        mem[_4049 + 64] = stor2[_4048]
                        mem[_4049 + 96] = stor3[_4048]
                        mem[_4049 + 128] = stor4[_4048]
                        mem[_4049 + 160] = stor5[_4048]
                        mem[_4049 + 192] = stor6[_4048]
                        mem[_4049 + 224] = bool(uint8(stor7[_4048].field_0))
                        mem[_4049 + 256] = bool(uint8(stor7[_4048].field_8))
                        if block.timestamp < stor3[_4048]:
                            revert with 0, 17
                        if block.timestamp - stor3[_4048] and rewardPerDay > -1 / block.timestamp - stor3[_4048]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 and stor4[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                            revert with 0, 17
                        _4260 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_4260] = _4049
                        mem[_4260 + 32] = _4047
                        mem[_4260 + 64] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        mem[_4260 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        mem[_4260 + 128] = compoundDelay
                        mem[_4260 + 160] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        mem[_4260 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4260
                    else:
                        if 31 >= uint255(stor1[_4048].field_0) * 0.5:
                            mem[_4060 + 32] = 256 * Mask(248, 0, stor1[_4048].field_8)
                            mem[_4049 + 32] = _4060
                            mem[_4049 + 64] = stor2[_4048]
                            mem[_4049 + 96] = stor3[_4048]
                            mem[_4049 + 128] = stor4[_4048]
                            mem[_4049 + 160] = stor5[_4048]
                            mem[_4049 + 192] = stor6[_4048]
                            mem[_4049 + 224] = bool(uint8(stor7[_4048].field_0))
                            mem[_4049 + 256] = bool(uint8(stor7[_4048].field_8))
                            if block.timestamp < stor3[_4048]:
                                revert with 0, 17
                            if block.timestamp - stor3[_4048] and rewardPerDay > -1 / block.timestamp - stor3[_4048]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 and stor4[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            _4268 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_4268] = _4049
                            mem[_4268 + 32] = _4047
                            mem[_4268 + 64] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4268 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4268 + 128] = compoundDelay
                            mem[_4268 + 160] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4268 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4268
                        else:
                            mem[0] = _4048 + 1
                            mem[_4060 + 32] = stor[sha3(_4048 + 1)]
                            s = _4060 + 32
                            t = sha3(_4048 + 1)
                            while _4060 + (uint255(stor1[_4048].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_4049 + 32] = _4060
                            mem[_4049 + 64] = stor2[_4048]
                            mem[_4049 + 96] = stor3[_4048]
                            mem[_4049 + 128] = stor4[_4048]
                            mem[_4049 + 160] = stor5[_4048]
                            mem[_4049 + 192] = stor6[_4048]
                            mem[_4049 + 224] = bool(uint8(stor7[_4048].field_0))
                            mem[_4049 + 256] = bool(uint8(stor7[_4048].field_8))
                            if block.timestamp < stor3[_4048]:
                                revert with 0, 17
                            if block.timestamp - stor3[_4048] and rewardPerDay > -1 / block.timestamp - stor3[_4048]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 and stor4[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            _4471 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_4471] = _4049
                            mem[_4471 + 32] = _4047
                            mem[_4471 + 64] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4471 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4471 + 128] = compoundDelay
                            mem[_4471 + 160] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4471 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4471
                else:
                    if bool(stor1[_4048].field_0) == stor1[_4048].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor1[_4048].field_1 % 128:
                        mem[_4049 + 32] = _4060
                        mem[_4049 + 64] = stor2[_4048]
                        mem[_4049 + 96] = stor3[_4048]
                        mem[_4049 + 128] = stor4[_4048]
                        mem[_4049 + 160] = stor5[_4048]
                        mem[_4049 + 192] = stor6[_4048]
                        mem[_4049 + 224] = bool(uint8(stor7[_4048].field_0))
                        mem[_4049 + 256] = bool(uint8(stor7[_4048].field_8))
                        if block.timestamp < stor3[_4048]:
                            revert with 0, 17
                        if block.timestamp - stor3[_4048] and rewardPerDay > -1 / block.timestamp - stor3[_4048]:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 and stor4[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000:
                            revert with 0, 17
                        if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 and stor4[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000:
                            revert with 0, 17
                        if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                            revert with 0, 17
                        if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                            revert with 0, 17
                        _4264 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_4264] = _4049
                        mem[_4264 + 32] = _4047
                        mem[_4264 + 64] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        mem[_4264 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        mem[_4264 + 128] = compoundDelay
                        mem[_4264 + 160] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        mem[_4264 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4264
                    else:
                        if 31 >= stor1[_4048].field_1 % 128:
                            mem[_4060 + 32] = 256 * Mask(248, 0, stor1[_4048].field_8)
                            mem[_4049 + 32] = _4060
                            mem[_4049 + 64] = stor2[_4048]
                            mem[_4049 + 96] = stor3[_4048]
                            mem[_4049 + 128] = stor4[_4048]
                            mem[_4049 + 160] = stor5[_4048]
                            mem[_4049 + 192] = stor6[_4048]
                            mem[_4049 + 224] = bool(uint8(stor7[_4048].field_0))
                            mem[_4049 + 256] = bool(uint8(stor7[_4048].field_8))
                            if block.timestamp < stor3[_4048]:
                                revert with 0, 17
                            if block.timestamp - stor3[_4048] and rewardPerDay > -1 / block.timestamp - stor3[_4048]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 and stor4[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            _4272 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_4272] = _4049
                            mem[_4272 + 32] = _4047
                            mem[_4272 + 64] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4272 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4272 + 128] = compoundDelay
                            mem[_4272 + 160] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4272 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4272
                        else:
                            mem[0] = _4048 + 1
                            mem[_4060 + 32] = stor[sha3(_4048 + 1)]
                            s = _4060 + 32
                            t = sha3(_4048 + 1)
                            while _4060 + stor1[_4048].field_1 % 128 > s:
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_4049 + 32] = _4060
                            mem[_4049 + 64] = stor2[_4048]
                            mem[_4049 + 96] = stor3[_4048]
                            mem[_4049 + 128] = stor4[_4048]
                            mem[_4049 + 160] = stor5[_4048]
                            mem[_4049 + 192] = stor6[_4048]
                            mem[_4049 + 224] = bool(uint8(stor7[_4048].field_0))
                            mem[_4049 + 256] = bool(uint8(stor7[_4048].field_8))
                            if block.timestamp < stor3[_4048]:
                                revert with 0, 17
                            if block.timestamp - stor3[_4048] and rewardPerDay > -1 / block.timestamp - stor3[_4048]:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 and stor4[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if rewardPerDay > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 and stor4[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 and stor5[_4048] > -1 / 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000:
                                revert with 0, 17
                            if (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            if 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000 < 0:
                                revert with 0, 17
                            _4473 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_4473] = _4049
                            mem[_4473 + 32] = _4047
                            mem[_4473 + 64] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4473 + 96] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4473 + 128] = compoundDelay
                            mem[_4473 + 160] = (block.timestamp * rewardPerDay) - (stor3[_4048] * rewardPerDay) / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            mem[_4473 + 192] = 24 * 3600 * rewardPerDay / 10^6 * stor4[_4048] / 100000 * stor5[_4048] / 100000
                            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _4473
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _4050 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * arg1.length) + 97]
        if var69001 >= _4050:
            return memory
              from mem[64]
               len var69005 - mem[64]
        # nil
}



}

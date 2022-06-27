contract main {




// =====================  Runtime code  =====================


#
#  - compoundReward(uint256 arg1)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - cashoutAll()
#  - cashoutReward(uint256 arg1)
#  - getPlanetsByIds(uint256[] arg1)
#  - compoundAll()
#  - sub_d6758b09(?)
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
uint256 processingFee;
array of uint16 tierSlope;
array of uint16 sub_5599a48e;
array of uint16 sub_58afc45a;
uint256 totalValueLocked;
uint256 sub_dfe59ed4;
mapping of uint256 presales;
uint256 sub_4e047c19;
array of uint256 sub_4064a346;
uint256 stor568;
uint256 stor569;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136640;
array of uint256 stor92563391796531448025736367971217786061797538077753646771409532489194446654766;

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
    return tierLevel[arg1 / 10].field_8 * 3 * arg1 % 10 % 16777216
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

function sub_a0790be5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Dealers: changeMintPerAvax must be greater than or equal to 1'
    sub_4e047c19 = arg1
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
        uint255(stor101.length.field_1) = 20
        address(stor101.length.field_96) = 0x4d6564656c6c696e2043697479204465616c6572
        idx = 0
        while (uint255(stor101.length) * 0.5) + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        uint255(stor101.length.field_1) = 20
        address(stor101.length.field_96) = 0x4d6564656c6c696e2043697479204465616c6572
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
        stor102.length.field_208 % 281474976710656 = 75064238949714
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
        stor102.length.field_208 % 281474976710656 = 75064238949714
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
    rewardPerDay = 46299
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

function createPlanetWithTokens(string arg1, uint256 arg2) {
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
        revert with 0, 'Dealers: MedellinCity is not set'
    if arg1.length <= 1:
        revert with 0, 'Dealers: Incorrect name length, must be between 2 to 31'
    if arg1.length >= 32:
        revert with 0, 'Dealers: Incorrect name length, must be between 2 to 31'
    if arg2:
        if arg2 < creationMinPrice:
            revert with 0, 'Dealers: Dealer value set below minimum'
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
                    revert with 0, 'Dealers: Id must be higher than zero'
                mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                mem[32] = 552
                _5914 = mem[64]
                mem[64] = mem[64] + 288
                mem[_5914] = stor552[stor151[address(msg.sender)][idx]].field_0
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _5962 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                    mem[_5962] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                            if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                mem[_5962 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5962 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5962 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5962 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                mem[_5962 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5962 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5962 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5962 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_5914 + 32] = _5962
                else:
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    _5976 = mem[64]
                    mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                    mem[_5976] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                            if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                mem[_5976 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5976 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5976 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5976 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                mem[_5976 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5976 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5976 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5976 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_5914 + 32] = _5976
                mem[_5914 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
                mem[_5914 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
                mem[_5914 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
                mem[_5914 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
                mem[_5914 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
                mem[_5914 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
                mem[_5914 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
                if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                    revert with 0, 'Dealers: This dealer doesn't exist'
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _11642 = mem[ceil32(ceil32(arg1.length)) + 97]
            idx = 0
            while idx < _11642:
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]
                mem[32] = 552
                _11655 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552)
                _11656 = mem[64]
                mem[64] = mem[64] + 288
                mem[_11656] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_0
                if bool(stor1[_11655].field_0):
                    if bool(stor1[_11655].field_0) == uint255(stor1[_11655].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _11746 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor1[_11655].field_0) * 0.5) + 32
                    mem[_11746] = uint255(stor1[_11655].field_0) * 0.5
                    if bool(stor1[_11655].field_0):
                        if bool(stor1[_11655].field_0) == uint255(stor1[_11655].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1[_11655].field_0):
                            if 31 >= uint255(stor1[_11655].field_0) * 0.5:
                                mem[_11746 + 32] = 256 * Mask(248, 0, stor1[_11655].field_8)
                            else:
                                mem[0] = _11655 + 1
                                mem[_11746 + 32] = stor[sha3(_11655 + 1)]
                                s = _11746 + 32
                                t = sha3(_11655 + 1)
                                while _11746 + (uint255(stor1[_11655].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor1[_11655].field_0) == stor1[_11655].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor1[_11655].field_1 % 128:
                            if 31 >= stor1[_11655].field_1 % 128:
                                mem[_11746 + 32] = 256 * Mask(248, 0, stor1[_11655].field_8)
                            else:
                                mem[0] = _11655 + 1
                                mem[_11746 + 32] = stor[sha3(_11655 + 1)]
                                s = _11746 + 32
                                t = sha3(_11655 + 1)
                                while _11746 + stor1[_11655].field_1 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_11656 + 32] = _11746
                    mem[_11656 + 64] = stor2[_11655]
                    mem[_11656 + 96] = stor3[_11655]
                    mem[_11656 + 128] = stor4[_11655]
                    mem[_11656 + 160] = stor5[_11655]
                    mem[_11656 + 192] = stor6[_11655]
                    mem[_11656 + 224] = bool(uint8(stor7[_11655].field_0))
                    mem[_11656 + 256] = bool(uint8(stor7[_11655].field_8))
                    if sha3(mem[128 len mem[96]]) == sha3(mem[_11746 + 32 len uint255(stor1[_11655].field_0) * 0.5]):
                        revert with 0, 'Dealers: Name not available'
                else:
                    if bool(stor1[_11655].field_0) == stor1[_11655].field_1 % 128 < 32:
                        revert with 0, 34
                    _11759 = mem[64]
                    mem[64] = mem[64] + ceil32(stor1[_11655].field_1 % 128) + 32
                    mem[_11759] = stor1[_11655].field_1 % 128
                    if bool(stor1[_11655].field_0):
                        if bool(stor1[_11655].field_0) == uint255(stor1[_11655].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1[_11655].field_0):
                            if 31 >= uint255(stor1[_11655].field_0) * 0.5:
                                mem[_11759 + 32] = 256 * Mask(248, 0, stor1[_11655].field_8)
                            else:
                                mem[0] = _11655 + 1
                                mem[_11759 + 32] = stor[sha3(_11655 + 1)]
                                s = _11759 + 32
                                t = sha3(_11655 + 1)
                                while _11759 + (uint255(stor1[_11655].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor1[_11655].field_0) == stor1[_11655].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor1[_11655].field_1 % 128:
                            if 31 >= stor1[_11655].field_1 % 128:
                                mem[_11759 + 32] = 256 * Mask(248, 0, stor1[_11655].field_8)
                            else:
                                mem[0] = _11655 + 1
                                mem[_11759 + 32] = stor[sha3(_11655 + 1)]
                                s = _11759 + 32
                                t = sha3(_11655 + 1)
                                while _11759 + stor1[_11655].field_1 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_11656 + 32] = _11759
                    mem[_11656 + 64] = stor2[_11655]
                    mem[_11656 + 96] = stor3[_11655]
                    mem[_11656 + 128] = stor4[_11655]
                    mem[_11656 + 160] = stor5[_11655]
                    mem[_11656 + 192] = stor6[_11655]
                    mem[_11656 + 224] = bool(uint8(stor7[_11655].field_0))
                    mem[_11656 + 256] = bool(uint8(stor7[_11655].field_8))
                    if sha3(mem[128 len mem[96]]) == sha3(mem[_11759 + 32 len stor1[_11655].field_1 % 128]):
                        revert with 0, 'Dealers: Name not available'
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
            _11758 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_11758] < creationMinPrice:
                revert with 0, 'Dealers: Balance too low for creation'
            mem[mem[64] + 36] = arg2
            require ext_code.size(universeImplementationAddress)
            call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg2 and 28 > -1 / arg2:
                revert with 0, 17
            if arg2 < 28 * arg2 / 100:
                revert with 0, 17
            mem[mem[64]] = 0xd02dd2b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 28 * arg2 / 100
            require ext_code.size(universeImplementationAddress)
            call universeImplementationAddress.liquidityReward(uint256 arg1) with:
                 gas gas_remaining wei
                args (28 * arg2 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor551++
            if totalValueLocked > !(arg2 - (28 * arg2 / 100)):
                revert with 0, 17
            totalValueLocked = totalValueLocked + arg2 - (28 * arg2 / 100)
            mem[0] = tierLevel.length
            mem[32] = 553
            if uint8(stor553[stor559.length].field_512):
                if tierLevel.length != stor553[stor559.length].field_0:
                    revert with 0, 'Dealers: rewardMult does not match in TierStorage'
                if arg2 - (28 * arg2 / 100) > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                    revert with 0, 17
                if stor553[stor559.length].field_256 < 0 and arg2 - (28 * arg2 / 100) < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor553[stor559.length].field_256 = stor553[stor559.length].field_256 + arg2 - (28 * arg2 / 100)
                _12462 = mem[64]
                mem[64] = mem[64] + 288
                mem[_12462] = stor551
                mem[_12462 + 32] = 96
                mem[_12462 + 64] = block.timestamp
                mem[_12462 + 96] = block.timestamp
                mem[_12462 + 128] = tierLevel.length
                mem[_12462 + 160] = arg2 - (28 * arg2 / 100)
                mem[_12462 + 192] = 0
                mem[_12462 + 224] = 1
                mem[_12462 + 256] = 0
            else:
                if arg2 - (28 * arg2 / 100) <= 0:
                    revert with 0, 'Dealers: Fatal error while creating new TierStorage. Amount cannot be below zero.'
                _12396 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12396] = tierLevel.length
                mem[_12396 + 32] = arg2 - (28 * arg2 / 100)
                mem[_12396 + 64] = 1
                mem[32] = 553
                stor553[stor559.length].field_0 = tierLevel.length
                stor553[stor559.length].field_256 = arg2 - (28 * arg2 / 100)
                uint8(stor553[stor559.length].field_512) = 1
                stor554.length++
                mem[0] = 554
                storCCA5[stor554.length] = tierLevel.length
                _12426 = mem[64]
                mem[64] = mem[64] + 288
                mem[_12426] = stor551
                mem[_12426 + 32] = 96
                mem[_12426 + 64] = block.timestamp
                mem[_12426 + 96] = block.timestamp
                mem[_12426 + 128] = tierLevel.length
                mem[_12426 + 160] = arg2 - (28 * arg2 / 100)
                mem[_12426 + 192] = 0
                mem[_12426 + 224] = 1
                mem[_12426 + 256] = 0
        else:
            mem[ceil32(ceil32(arg1.length)) + 129 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
            idx = 0
            while idx < balanceOf[address(msg.sender)]:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                if idx >= balanceOf[address(msg.sender)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if tokenOfOwnerByIndex[address(msg.sender)][idx] <= 0:
                    revert with 0, 'Dealers: Id must be higher than zero'
                mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                mem[32] = 552
                _5920 = mem[64]
                mem[64] = mem[64] + 288
                mem[_5920] = stor552[stor151[address(msg.sender)][idx]].field_0
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _5963 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                    mem[_5963] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                            if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                mem[_5963 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5963 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5963 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5963 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                mem[_5963 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5963 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5963 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5963 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_5920 + 32] = _5963
                else:
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    _5985 = mem[64]
                    mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                    mem[_5985] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                            if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                mem[_5985 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5985 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5985 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5985 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                mem[_5985 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5985 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5985 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5985 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_5920 + 32] = _5985
                mem[_5920 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
                mem[_5920 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
                mem[_5920 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
                mem[_5920 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
                mem[_5920 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
                mem[_5920 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
                mem[_5920 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
                if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                    revert with 0, 'Dealers: This dealer doesn't exist'
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _11643 = mem[ceil32(ceil32(arg1.length)) + 97]
            idx = 0
            while idx < _11643:
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]
                mem[32] = 552
                _11662 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552)
                _11663 = mem[64]
                mem[64] = mem[64] + 288
                mem[_11663] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_0
                if bool(stor1[_11662].field_0):
                    if bool(stor1[_11662].field_0) == uint255(stor1[_11662].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _11749 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor1[_11662].field_0) * 0.5) + 32
                    mem[_11749] = uint255(stor1[_11662].field_0) * 0.5
                    if bool(stor1[_11662].field_0):
                        if bool(stor1[_11662].field_0) == uint255(stor1[_11662].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1[_11662].field_0):
                            if 31 >= uint255(stor1[_11662].field_0) * 0.5:
                                mem[_11749 + 32] = 256 * Mask(248, 0, stor1[_11662].field_8)
                            else:
                                mem[0] = _11662 + 1
                                mem[_11749 + 32] = stor[sha3(_11662 + 1)]
                                s = _11749 + 32
                                t = sha3(_11662 + 1)
                                while _11749 + (uint255(stor1[_11662].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor1[_11662].field_0) == stor1[_11662].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor1[_11662].field_1 % 128:
                            if 31 >= stor1[_11662].field_1 % 128:
                                mem[_11749 + 32] = 256 * Mask(248, 0, stor1[_11662].field_8)
                            else:
                                mem[0] = _11662 + 1
                                mem[_11749 + 32] = stor[sha3(_11662 + 1)]
                                s = _11749 + 32
                                t = sha3(_11662 + 1)
                                while _11749 + stor1[_11662].field_1 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_11663 + 32] = _11749
                    mem[_11663 + 64] = stor2[_11662]
                    mem[_11663 + 96] = stor3[_11662]
                    mem[_11663 + 128] = stor4[_11662]
                    mem[_11663 + 160] = stor5[_11662]
                    mem[_11663 + 192] = stor6[_11662]
                    mem[_11663 + 224] = bool(uint8(stor7[_11662].field_0))
                    mem[_11663 + 256] = bool(uint8(stor7[_11662].field_8))
                    if sha3(mem[128 len mem[96]]) == sha3(mem[_11749 + 32 len uint255(stor1[_11662].field_0) * 0.5]):
                        revert with 0, 'Dealers: Name not available'
                else:
                    if bool(stor1[_11662].field_0) == stor1[_11662].field_1 % 128 < 32:
                        revert with 0, 34
                    _11765 = mem[64]
                    mem[64] = mem[64] + ceil32(stor1[_11662].field_1 % 128) + 32
                    mem[_11765] = stor1[_11662].field_1 % 128
                    if bool(stor1[_11662].field_0):
                        if bool(stor1[_11662].field_0) == uint255(stor1[_11662].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1[_11662].field_0):
                            if 31 >= uint255(stor1[_11662].field_0) * 0.5:
                                mem[_11765 + 32] = 256 * Mask(248, 0, stor1[_11662].field_8)
                            else:
                                mem[0] = _11662 + 1
                                mem[_11765 + 32] = stor[sha3(_11662 + 1)]
                                s = _11765 + 32
                                t = sha3(_11662 + 1)
                                while _11765 + (uint255(stor1[_11662].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor1[_11662].field_0) == stor1[_11662].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor1[_11662].field_1 % 128:
                            if 31 >= stor1[_11662].field_1 % 128:
                                mem[_11765 + 32] = 256 * Mask(248, 0, stor1[_11662].field_8)
                            else:
                                mem[0] = _11662 + 1
                                mem[_11765 + 32] = stor[sha3(_11662 + 1)]
                                s = _11765 + 32
                                t = sha3(_11662 + 1)
                                while _11765 + stor1[_11662].field_1 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_11663 + 32] = _11765
                    mem[_11663 + 64] = stor2[_11662]
                    mem[_11663 + 96] = stor3[_11662]
                    mem[_11663 + 128] = stor4[_11662]
                    mem[_11663 + 160] = stor5[_11662]
                    mem[_11663 + 192] = stor6[_11662]
                    mem[_11663 + 224] = bool(uint8(stor7[_11662].field_0))
                    mem[_11663 + 256] = bool(uint8(stor7[_11662].field_8))
                    if sha3(mem[128 len mem[96]]) == sha3(mem[_11765 + 32 len stor1[_11662].field_1 % 128]):
                        revert with 0, 'Dealers: Name not available'
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
            _11764 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_11764] < creationMinPrice:
                revert with 0, 'Dealers: Balance too low for creation'
            mem[mem[64] + 36] = arg2
            require ext_code.size(universeImplementationAddress)
            call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg2 and 28 > -1 / arg2:
                revert with 0, 17
            if arg2 < 28 * arg2 / 100:
                revert with 0, 17
            mem[mem[64]] = 0xd02dd2b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 28 * arg2 / 100
            require ext_code.size(universeImplementationAddress)
            call universeImplementationAddress.liquidityReward(uint256 arg1) with:
                 gas gas_remaining wei
                args (28 * arg2 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor551++
            if totalValueLocked > !(arg2 - (28 * arg2 / 100)):
                revert with 0, 17
            totalValueLocked = totalValueLocked + arg2 - (28 * arg2 / 100)
            mem[0] = tierLevel.length
            mem[32] = 553
            if uint8(stor553[stor559.length].field_512):
                if tierLevel.length != stor553[stor559.length].field_0:
                    revert with 0, 'Dealers: rewardMult does not match in TierStorage'
                if arg2 - (28 * arg2 / 100) > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                    revert with 0, 17
                if stor553[stor559.length].field_256 < 0 and arg2 - (28 * arg2 / 100) < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor553[stor559.length].field_256 = stor553[stor559.length].field_256 + arg2 - (28 * arg2 / 100)
                _12463 = mem[64]
                mem[64] = mem[64] + 288
                mem[_12463] = stor551
                mem[_12463 + 32] = 96
                mem[_12463 + 64] = block.timestamp
                mem[_12463 + 96] = block.timestamp
                mem[_12463 + 128] = tierLevel.length
                mem[_12463 + 160] = arg2 - (28 * arg2 / 100)
                mem[_12463 + 192] = 0
                mem[_12463 + 224] = 1
                mem[_12463 + 256] = 0
            else:
                if arg2 - (28 * arg2 / 100) <= 0:
                    revert with 0, 'Dealers: Fatal error while creating new TierStorage. Amount cannot be below zero.'
                _12403 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12403] = tierLevel.length
                mem[_12403 + 32] = arg2 - (28 * arg2 / 100)
                mem[_12403 + 64] = 1
                mem[32] = 553
                stor553[stor559.length].field_0 = tierLevel.length
                stor553[stor559.length].field_256 = arg2 - (28 * arg2 / 100)
                uint8(stor553[stor559.length].field_512) = 1
                stor554.length++
                mem[0] = 554
                storCCA5[stor554.length] = tierLevel.length
                _12429 = mem[64]
                mem[64] = mem[64] + 288
                mem[_12429] = stor551
                mem[_12429 + 32] = 96
                mem[_12429 + 64] = block.timestamp
                mem[_12429 + 96] = block.timestamp
                mem[_12429 + 128] = tierLevel.length
                mem[_12429 + 160] = arg2 - (28 * arg2 / 100)
                mem[_12429 + 192] = 0
                mem[_12429 + 224] = 1
                mem[_12429 + 256] = 0
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
        stor552[stor551].field_1280 = arg2 - (28 * arg2 / 100)
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
        emit Create((arg2 - (28 * arg2 / 100)), msg.sender, stor551);
    else:
        if presales[address(msg.sender)]:
            presales[address(msg.sender)] = 0
            if presales[address(msg.sender)] < creationMinPrice:
                revert with 0, 'Dealers: Dealer value set below minimum'
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
                        revert with 0, 'Dealers: Id must be higher than zero'
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    mem[32] = 552
                    _5936 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_5936] = stor552[stor151[address(msg.sender)][idx]].field_0
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _5966 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                        mem[_5966] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_5966 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5966 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5966 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5966 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_5966 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5966 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5966 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5966 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5936 + 32] = _5966
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        _6009 = mem[64]
                        mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                        mem[_6009] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_6009 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_6009 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _6009 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _6009 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_6009 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_6009 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _6009 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _6009 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5936 + 32] = _6009
                    mem[_5936 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
                    mem[_5936 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
                    mem[_5936 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
                    mem[_5936 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
                    mem[_5936 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
                    mem[_5936 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
                    mem[_5936 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
                    if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                        revert with 0, 'Dealers: This dealer doesn't exist'
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _11646 = mem[ceil32(ceil32(arg1.length)) + 97]
                idx = 0
                while idx < _11646:
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]
                    mem[32] = 552
                    _11683 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552)
                    _11684 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_11684] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_0
                    if bool(stor1[_11683].field_0):
                        if bool(stor1[_11683].field_0) == uint255(stor1[_11683].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _11756 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[_11683].field_0) * 0.5) + 32
                        mem[_11756] = uint255(stor1[_11683].field_0) * 0.5
                        if bool(stor1[_11683].field_0):
                            if bool(stor1[_11683].field_0) == uint255(stor1[_11683].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11683].field_0):
                                if 31 >= uint255(stor1[_11683].field_0) * 0.5:
                                    mem[_11756 + 32] = 256 * Mask(248, 0, stor1[_11683].field_8)
                                else:
                                    mem[0] = _11683 + 1
                                    mem[_11756 + 32] = stor[sha3(_11683 + 1)]
                                    s = _11756 + 32
                                    t = sha3(_11683 + 1)
                                    while _11756 + (uint255(stor1[_11683].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11683].field_0) == stor1[_11683].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11683].field_1 % 128:
                                if 31 >= stor1[_11683].field_1 % 128:
                                    mem[_11756 + 32] = 256 * Mask(248, 0, stor1[_11683].field_8)
                                else:
                                    mem[0] = _11683 + 1
                                    mem[_11756 + 32] = stor[sha3(_11683 + 1)]
                                    s = _11756 + 32
                                    t = sha3(_11683 + 1)
                                    while _11756 + stor1[_11683].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11684 + 32] = _11756
                        mem[_11684 + 64] = stor2[_11683]
                        mem[_11684 + 96] = stor3[_11683]
                        mem[_11684 + 128] = stor4[_11683]
                        mem[_11684 + 160] = stor5[_11683]
                        mem[_11684 + 192] = stor6[_11683]
                        mem[_11684 + 224] = bool(uint8(stor7[_11683].field_0))
                        mem[_11684 + 256] = bool(uint8(stor7[_11683].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11756 + 32 len uint255(stor1[_11683].field_0) * 0.5]):
                            revert with 0, 'Dealers: Name not available'
                    else:
                        if bool(stor1[_11683].field_0) == stor1[_11683].field_1 % 128 < 32:
                            revert with 0, 34
                        _11782 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[_11683].field_1 % 128) + 32
                        mem[_11782] = stor1[_11683].field_1 % 128
                        if bool(stor1[_11683].field_0):
                            if bool(stor1[_11683].field_0) == uint255(stor1[_11683].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11683].field_0):
                                if 31 >= uint255(stor1[_11683].field_0) * 0.5:
                                    mem[_11782 + 32] = 256 * Mask(248, 0, stor1[_11683].field_8)
                                else:
                                    mem[0] = _11683 + 1
                                    mem[_11782 + 32] = stor[sha3(_11683 + 1)]
                                    s = _11782 + 32
                                    t = sha3(_11683 + 1)
                                    while _11782 + (uint255(stor1[_11683].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11683].field_0) == stor1[_11683].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11683].field_1 % 128:
                                if 31 >= stor1[_11683].field_1 % 128:
                                    mem[_11782 + 32] = 256 * Mask(248, 0, stor1[_11683].field_8)
                                else:
                                    mem[0] = _11683 + 1
                                    mem[_11782 + 32] = stor[sha3(_11683 + 1)]
                                    s = _11782 + 32
                                    t = sha3(_11683 + 1)
                                    while _11782 + stor1[_11683].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11684 + 32] = _11782
                        mem[_11684 + 64] = stor2[_11683]
                        mem[_11684 + 96] = stor3[_11683]
                        mem[_11684 + 128] = stor4[_11683]
                        mem[_11684 + 160] = stor5[_11683]
                        mem[_11684 + 192] = stor6[_11683]
                        mem[_11684 + 224] = bool(uint8(stor7[_11683].field_0))
                        mem[_11684 + 256] = bool(uint8(stor7[_11683].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11782 + 32 len stor1[_11683].field_1 % 128]):
                            revert with 0, 'Dealers: Name not available'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if presales[address(msg.sender)] and 28 > -1 / presales[address(msg.sender)]:
                    revert with 0, 17
                if presales[address(msg.sender)] < 28 * presales[address(msg.sender)] / 100:
                    revert with 0, 17
                mem[mem[64]] = 0xd02dd2b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 28 * presales[address(msg.sender)] / 100
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.liquidityReward(uint256 arg1) with:
                     gas gas_remaining wei
                    args (28 * presales[address(msg.sender)] / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor551++
                if totalValueLocked > !(presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)):
                    revert with 0, 17
                totalValueLocked = totalValueLocked + presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                mem[0] = tierLevel.length
                mem[32] = 553
                if uint8(stor553[stor559.length].field_512):
                    if tierLevel.length != stor553[stor559.length].field_0:
                        revert with 0, 'Dealers: rewardMult does not match in TierStorage'
                    if presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100) > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                        revert with 0, 17
                    if stor553[stor559.length].field_256 < 0 and presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100) < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor553[stor559.length].field_256 = stor553[stor559.length].field_256 + presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    _12386 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12386] = stor551
                    mem[_12386 + 32] = 96
                    mem[_12386 + 64] = block.timestamp
                    mem[_12386 + 96] = block.timestamp
                    mem[_12386 + 128] = tierLevel.length
                    mem[_12386 + 160] = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    mem[_12386 + 192] = 0
                    mem[_12386 + 224] = 1
                    mem[_12386 + 256] = 0
                else:
                    if presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100) <= 0:
                        revert with 0, 'Dealers: Fatal error while creating new TierStorage. Amount cannot be below zero.'
                    _12354 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_12354] = tierLevel.length
                    mem[_12354 + 32] = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    mem[_12354 + 64] = 1
                    mem[32] = 553
                    stor553[stor559.length].field_0 = tierLevel.length
                    stor553[stor559.length].field_256 = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    uint8(stor553[stor559.length].field_512) = 1
                    stor554.length++
                    mem[0] = 554
                    storCCA5[stor554.length] = tierLevel.length
                    _12368 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12368] = stor551
                    mem[_12368 + 32] = 96
                    mem[_12368 + 64] = block.timestamp
                    mem[_12368 + 96] = block.timestamp
                    mem[_12368 + 128] = tierLevel.length
                    mem[_12368 + 160] = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    mem[_12368 + 192] = 0
                    mem[_12368 + 224] = 1
                    mem[_12368 + 256] = 0
            else:
                mem[ceil32(ceil32(arg1.length)) + 129 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
                idx = 0
                while idx < balanceOf[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if idx >= balanceOf[address(msg.sender)]:
                        revert with 0, 'ERC721Enumerable: owner index out of bounds'
                    if tokenOfOwnerByIndex[address(msg.sender)][idx] <= 0:
                        revert with 0, 'Dealers: Id must be higher than zero'
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    mem[32] = 552
                    _5940 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_5940] = stor552[stor151[address(msg.sender)][idx]].field_0
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _5967 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                        mem[_5967] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_5967 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5967 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5967 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5967 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_5967 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5967 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5967 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5967 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5940 + 32] = _5967
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        _6015 = mem[64]
                        mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                        mem[_6015] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_6015 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_6015 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _6015 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _6015 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_6015 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_6015 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _6015 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _6015 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5940 + 32] = _6015
                    mem[_5940 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
                    mem[_5940 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
                    mem[_5940 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
                    mem[_5940 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
                    mem[_5940 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
                    mem[_5940 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
                    mem[_5940 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
                    if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                        revert with 0, 'Dealers: This dealer doesn't exist'
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _11647 = mem[ceil32(ceil32(arg1.length)) + 97]
                idx = 0
                while idx < _11647:
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]
                    mem[32] = 552
                    _11690 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552)
                    _11691 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_11691] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_0
                    if bool(stor1[_11690].field_0):
                        if bool(stor1[_11690].field_0) == uint255(stor1[_11690].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _11757 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[_11690].field_0) * 0.5) + 32
                        mem[_11757] = uint255(stor1[_11690].field_0) * 0.5
                        if bool(stor1[_11690].field_0):
                            if bool(stor1[_11690].field_0) == uint255(stor1[_11690].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11690].field_0):
                                if 31 >= uint255(stor1[_11690].field_0) * 0.5:
                                    mem[_11757 + 32] = 256 * Mask(248, 0, stor1[_11690].field_8)
                                else:
                                    mem[0] = _11690 + 1
                                    mem[_11757 + 32] = stor[sha3(_11690 + 1)]
                                    s = _11757 + 32
                                    t = sha3(_11690 + 1)
                                    while _11757 + (uint255(stor1[_11690].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11690].field_0) == stor1[_11690].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11690].field_1 % 128:
                                if 31 >= stor1[_11690].field_1 % 128:
                                    mem[_11757 + 32] = 256 * Mask(248, 0, stor1[_11690].field_8)
                                else:
                                    mem[0] = _11690 + 1
                                    mem[_11757 + 32] = stor[sha3(_11690 + 1)]
                                    s = _11757 + 32
                                    t = sha3(_11690 + 1)
                                    while _11757 + stor1[_11690].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11691 + 32] = _11757
                        mem[_11691 + 64] = stor2[_11690]
                        mem[_11691 + 96] = stor3[_11690]
                        mem[_11691 + 128] = stor4[_11690]
                        mem[_11691 + 160] = stor5[_11690]
                        mem[_11691 + 192] = stor6[_11690]
                        mem[_11691 + 224] = bool(uint8(stor7[_11690].field_0))
                        mem[_11691 + 256] = bool(uint8(stor7[_11690].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11757 + 32 len uint255(stor1[_11690].field_0) * 0.5]):
                            revert with 0, 'Dealers: Name not available'
                    else:
                        if bool(stor1[_11690].field_0) == stor1[_11690].field_1 % 128 < 32:
                            revert with 0, 34
                        _11787 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[_11690].field_1 % 128) + 32
                        mem[_11787] = stor1[_11690].field_1 % 128
                        if bool(stor1[_11690].field_0):
                            if bool(stor1[_11690].field_0) == uint255(stor1[_11690].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11690].field_0):
                                if 31 >= uint255(stor1[_11690].field_0) * 0.5:
                                    mem[_11787 + 32] = 256 * Mask(248, 0, stor1[_11690].field_8)
                                else:
                                    mem[0] = _11690 + 1
                                    mem[_11787 + 32] = stor[sha3(_11690 + 1)]
                                    s = _11787 + 32
                                    t = sha3(_11690 + 1)
                                    while _11787 + (uint255(stor1[_11690].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11690].field_0) == stor1[_11690].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11690].field_1 % 128:
                                if 31 >= stor1[_11690].field_1 % 128:
                                    mem[_11787 + 32] = 256 * Mask(248, 0, stor1[_11690].field_8)
                                else:
                                    mem[0] = _11690 + 1
                                    mem[_11787 + 32] = stor[sha3(_11690 + 1)]
                                    s = _11787 + 32
                                    t = sha3(_11690 + 1)
                                    while _11787 + stor1[_11690].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11691 + 32] = _11787
                        mem[_11691 + 64] = stor2[_11690]
                        mem[_11691 + 96] = stor3[_11690]
                        mem[_11691 + 128] = stor4[_11690]
                        mem[_11691 + 160] = stor5[_11690]
                        mem[_11691 + 192] = stor6[_11690]
                        mem[_11691 + 224] = bool(uint8(stor7[_11690].field_0))
                        mem[_11691 + 256] = bool(uint8(stor7[_11690].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11787 + 32 len stor1[_11690].field_1 % 128]):
                            revert with 0, 'Dealers: Name not available'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if presales[address(msg.sender)] and 28 > -1 / presales[address(msg.sender)]:
                    revert with 0, 17
                if presales[address(msg.sender)] < 28 * presales[address(msg.sender)] / 100:
                    revert with 0, 17
                mem[mem[64]] = 0xd02dd2b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 28 * presales[address(msg.sender)] / 100
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.liquidityReward(uint256 arg1) with:
                     gas gas_remaining wei
                    args (28 * presales[address(msg.sender)] / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor551++
                if totalValueLocked > !(presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)):
                    revert with 0, 17
                totalValueLocked = totalValueLocked + presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                mem[0] = tierLevel.length
                mem[32] = 553
                if uint8(stor553[stor559.length].field_512):
                    if tierLevel.length != stor553[stor559.length].field_0:
                        revert with 0, 'Dealers: rewardMult does not match in TierStorage'
                    if presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100) > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                        revert with 0, 17
                    if stor553[stor559.length].field_256 < 0 and presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100) < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor553[stor559.length].field_256 = stor553[stor559.length].field_256 + presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    _12387 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12387] = stor551
                    mem[_12387 + 32] = 96
                    mem[_12387 + 64] = block.timestamp
                    mem[_12387 + 96] = block.timestamp
                    mem[_12387 + 128] = tierLevel.length
                    mem[_12387 + 160] = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    mem[_12387 + 192] = 0
                    mem[_12387 + 224] = 1
                    mem[_12387 + 256] = 0
                else:
                    if presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100) <= 0:
                        revert with 0, 'Dealers: Fatal error while creating new TierStorage. Amount cannot be below zero.'
                    _12361 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_12361] = tierLevel.length
                    mem[_12361 + 32] = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    mem[_12361 + 64] = 1
                    mem[32] = 553
                    stor553[stor559.length].field_0 = tierLevel.length
                    stor553[stor559.length].field_256 = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    uint8(stor553[stor559.length].field_512) = 1
                    stor554.length++
                    mem[0] = 554
                    storCCA5[stor554.length] = tierLevel.length
                    _12371 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12371] = stor551
                    mem[_12371 + 32] = 96
                    mem[_12371 + 64] = block.timestamp
                    mem[_12371 + 96] = block.timestamp
                    mem[_12371 + 128] = tierLevel.length
                    mem[_12371 + 160] = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    mem[_12371 + 192] = 0
                    mem[_12371 + 224] = 1
                    mem[_12371 + 256] = 0
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
            stor552[stor551].field_1280 = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
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
            emit Create((presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)), msg.sender, stor551);
        else:
            if arg2 < creationMinPrice:
                revert with 0, 'Dealers: Dealer value set below minimum'
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
                        revert with 0, 'Dealers: Id must be higher than zero'
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    mem[32] = 552
                    _5926 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_5926] = stor552[stor151[address(msg.sender)][idx]].field_0
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _5964 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                        mem[_5964] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_5964 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5964 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5964 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5964 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_5964 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5964 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5964 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5964 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5926 + 32] = _5964
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        _5994 = mem[64]
                        mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                        mem[_5994] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_5994 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5994 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5994 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5994 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_5994 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5994 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5994 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5994 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5926 + 32] = _5994
                    mem[_5926 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
                    mem[_5926 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
                    mem[_5926 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
                    mem[_5926 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
                    mem[_5926 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
                    mem[_5926 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
                    mem[_5926 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
                    if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                        revert with 0, 'Dealers: This dealer doesn't exist'
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _11644 = mem[ceil32(ceil32(arg1.length)) + 97]
                idx = 0
                while idx < _11644:
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]
                    mem[32] = 552
                    _11669 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552)
                    _11670 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_11670] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_0
                    if bool(stor1[_11669].field_0):
                        if bool(stor1[_11669].field_0) == uint255(stor1[_11669].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _11752 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[_11669].field_0) * 0.5) + 32
                        mem[_11752] = uint255(stor1[_11669].field_0) * 0.5
                        if bool(stor1[_11669].field_0):
                            if bool(stor1[_11669].field_0) == uint255(stor1[_11669].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11669].field_0):
                                if 31 >= uint255(stor1[_11669].field_0) * 0.5:
                                    mem[_11752 + 32] = 256 * Mask(248, 0, stor1[_11669].field_8)
                                else:
                                    mem[0] = _11669 + 1
                                    mem[_11752 + 32] = stor[sha3(_11669 + 1)]
                                    s = _11752 + 32
                                    t = sha3(_11669 + 1)
                                    while _11752 + (uint255(stor1[_11669].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11669].field_0) == stor1[_11669].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11669].field_1 % 128:
                                if 31 >= stor1[_11669].field_1 % 128:
                                    mem[_11752 + 32] = 256 * Mask(248, 0, stor1[_11669].field_8)
                                else:
                                    mem[0] = _11669 + 1
                                    mem[_11752 + 32] = stor[sha3(_11669 + 1)]
                                    s = _11752 + 32
                                    t = sha3(_11669 + 1)
                                    while _11752 + stor1[_11669].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11670 + 32] = _11752
                        mem[_11670 + 64] = stor2[_11669]
                        mem[_11670 + 96] = stor3[_11669]
                        mem[_11670 + 128] = stor4[_11669]
                        mem[_11670 + 160] = stor5[_11669]
                        mem[_11670 + 192] = stor6[_11669]
                        mem[_11670 + 224] = bool(uint8(stor7[_11669].field_0))
                        mem[_11670 + 256] = bool(uint8(stor7[_11669].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11752 + 32 len uint255(stor1[_11669].field_0) * 0.5]):
                            revert with 0, 'Dealers: Name not available'
                    else:
                        if bool(stor1[_11669].field_0) == stor1[_11669].field_1 % 128 < 32:
                            revert with 0, 34
                        _11771 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[_11669].field_1 % 128) + 32
                        mem[_11771] = stor1[_11669].field_1 % 128
                        if bool(stor1[_11669].field_0):
                            if bool(stor1[_11669].field_0) == uint255(stor1[_11669].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11669].field_0):
                                if 31 >= uint255(stor1[_11669].field_0) * 0.5:
                                    mem[_11771 + 32] = 256 * Mask(248, 0, stor1[_11669].field_8)
                                else:
                                    mem[0] = _11669 + 1
                                    mem[_11771 + 32] = stor[sha3(_11669 + 1)]
                                    s = _11771 + 32
                                    t = sha3(_11669 + 1)
                                    while _11771 + (uint255(stor1[_11669].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11669].field_0) == stor1[_11669].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11669].field_1 % 128:
                                if 31 >= stor1[_11669].field_1 % 128:
                                    mem[_11771 + 32] = 256 * Mask(248, 0, stor1[_11669].field_8)
                                else:
                                    mem[0] = _11669 + 1
                                    mem[_11771 + 32] = stor[sha3(_11669 + 1)]
                                    s = _11771 + 32
                                    t = sha3(_11669 + 1)
                                    while _11771 + stor1[_11669].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11670 + 32] = _11771
                        mem[_11670 + 64] = stor2[_11669]
                        mem[_11670 + 96] = stor3[_11669]
                        mem[_11670 + 128] = stor4[_11669]
                        mem[_11670 + 160] = stor5[_11669]
                        mem[_11670 + 192] = stor6[_11669]
                        mem[_11670 + 224] = bool(uint8(stor7[_11669].field_0))
                        mem[_11670 + 256] = bool(uint8(stor7[_11669].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11771 + 32 len stor1[_11669].field_1 % 128]):
                            revert with 0, 'Dealers: Name not available'
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
                _11770 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_11770] < creationMinPrice:
                    revert with 0, 'Dealers: Balance too low for creation'
                mem[mem[64] + 36] = arg2
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 and 28 > -1 / arg2:
                    revert with 0, 17
                if arg2 < 28 * arg2 / 100:
                    revert with 0, 17
                mem[mem[64]] = 0xd02dd2b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 28 * arg2 / 100
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.liquidityReward(uint256 arg1) with:
                     gas gas_remaining wei
                    args (28 * arg2 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor551++
                if totalValueLocked > !(arg2 - (28 * arg2 / 100)):
                    revert with 0, 17
                totalValueLocked = totalValueLocked + arg2 - (28 * arg2 / 100)
                mem[0] = tierLevel.length
                mem[32] = 553
                if uint8(stor553[stor559.length].field_512):
                    if tierLevel.length != stor553[stor559.length].field_0:
                        revert with 0, 'Dealers: rewardMult does not match in TierStorage'
                    if arg2 - (28 * arg2 / 100) > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                        revert with 0, 17
                    if stor553[stor559.length].field_256 < 0 and arg2 - (28 * arg2 / 100) < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor553[stor559.length].field_256 = stor553[stor559.length].field_256 + arg2 - (28 * arg2 / 100)
                    _12464 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12464] = stor551
                    mem[_12464 + 32] = 96
                    mem[_12464 + 64] = block.timestamp
                    mem[_12464 + 96] = block.timestamp
                    mem[_12464 + 128] = tierLevel.length
                    mem[_12464 + 160] = arg2 - (28 * arg2 / 100)
                    mem[_12464 + 192] = 0
                    mem[_12464 + 224] = 1
                    mem[_12464 + 256] = 0
                else:
                    if arg2 - (28 * arg2 / 100) <= 0:
                        revert with 0, 'Dealers: Fatal error while creating new TierStorage. Amount cannot be below zero.'
                    _12410 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_12410] = tierLevel.length
                    mem[_12410 + 32] = arg2 - (28 * arg2 / 100)
                    mem[_12410 + 64] = 1
                    mem[32] = 553
                    stor553[stor559.length].field_0 = tierLevel.length
                    stor553[stor559.length].field_256 = arg2 - (28 * arg2 / 100)
                    uint8(stor553[stor559.length].field_512) = 1
                    stor554.length++
                    mem[0] = 554
                    storCCA5[stor554.length] = tierLevel.length
                    _12432 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12432] = stor551
                    mem[_12432 + 32] = 96
                    mem[_12432 + 64] = block.timestamp
                    mem[_12432 + 96] = block.timestamp
                    mem[_12432 + 128] = tierLevel.length
                    mem[_12432 + 160] = arg2 - (28 * arg2 / 100)
                    mem[_12432 + 192] = 0
                    mem[_12432 + 224] = 1
                    mem[_12432 + 256] = 0
            else:
                mem[ceil32(ceil32(arg1.length)) + 129 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
                idx = 0
                while idx < balanceOf[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if idx >= balanceOf[address(msg.sender)]:
                        revert with 0, 'ERC721Enumerable: owner index out of bounds'
                    if tokenOfOwnerByIndex[address(msg.sender)][idx] <= 0:
                        revert with 0, 'Dealers: Id must be higher than zero'
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    mem[32] = 552
                    _5932 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_5932] = stor552[stor151[address(msg.sender)][idx]].field_0
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _5965 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                        mem[_5965] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_5965 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5965 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5965 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5965 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_5965 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5965 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5965 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5965 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5932 + 32] = _5965
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        _6003 = mem[64]
                        mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                        mem[_6003] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_6003 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_6003 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _6003 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _6003 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_6003 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_6003 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _6003 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _6003 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5932 + 32] = _6003
                    mem[_5932 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
                    mem[_5932 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
                    mem[_5932 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
                    mem[_5932 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
                    mem[_5932 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
                    mem[_5932 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
                    mem[_5932 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
                    if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                        revert with 0, 'Dealers: This dealer doesn't exist'
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _11645 = mem[ceil32(ceil32(arg1.length)) + 97]
                idx = 0
                while idx < _11645:
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]
                    mem[32] = 552
                    _11676 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129], 552)
                    _11677 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_11677] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129]].field_0
                    if bool(stor1[_11676].field_0):
                        if bool(stor1[_11676].field_0) == uint255(stor1[_11676].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _11755 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[_11676].field_0) * 0.5) + 32
                        mem[_11755] = uint255(stor1[_11676].field_0) * 0.5
                        if bool(stor1[_11676].field_0):
                            if bool(stor1[_11676].field_0) == uint255(stor1[_11676].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11676].field_0):
                                if 31 >= uint255(stor1[_11676].field_0) * 0.5:
                                    mem[_11755 + 32] = 256 * Mask(248, 0, stor1[_11676].field_8)
                                else:
                                    mem[0] = _11676 + 1
                                    mem[_11755 + 32] = stor[sha3(_11676 + 1)]
                                    s = _11755 + 32
                                    t = sha3(_11676 + 1)
                                    while _11755 + (uint255(stor1[_11676].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11676].field_0) == stor1[_11676].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11676].field_1 % 128:
                                if 31 >= stor1[_11676].field_1 % 128:
                                    mem[_11755 + 32] = 256 * Mask(248, 0, stor1[_11676].field_8)
                                else:
                                    mem[0] = _11676 + 1
                                    mem[_11755 + 32] = stor[sha3(_11676 + 1)]
                                    s = _11755 + 32
                                    t = sha3(_11676 + 1)
                                    while _11755 + stor1[_11676].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11677 + 32] = _11755
                        mem[_11677 + 64] = stor2[_11676]
                        mem[_11677 + 96] = stor3[_11676]
                        mem[_11677 + 128] = stor4[_11676]
                        mem[_11677 + 160] = stor5[_11676]
                        mem[_11677 + 192] = stor6[_11676]
                        mem[_11677 + 224] = bool(uint8(stor7[_11676].field_0))
                        mem[_11677 + 256] = bool(uint8(stor7[_11676].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11755 + 32 len uint255(stor1[_11676].field_0) * 0.5]):
                            revert with 0, 'Dealers: Name not available'
                    else:
                        if bool(stor1[_11676].field_0) == stor1[_11676].field_1 % 128 < 32:
                            revert with 0, 34
                        _11777 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[_11676].field_1 % 128) + 32
                        mem[_11777] = stor1[_11676].field_1 % 128
                        if bool(stor1[_11676].field_0):
                            if bool(stor1[_11676].field_0) == uint255(stor1[_11676].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11676].field_0):
                                if 31 >= uint255(stor1[_11676].field_0) * 0.5:
                                    mem[_11777 + 32] = 256 * Mask(248, 0, stor1[_11676].field_8)
                                else:
                                    mem[0] = _11676 + 1
                                    mem[_11777 + 32] = stor[sha3(_11676 + 1)]
                                    s = _11777 + 32
                                    t = sha3(_11676 + 1)
                                    while _11777 + (uint255(stor1[_11676].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11676].field_0) == stor1[_11676].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11676].field_1 % 128:
                                if 31 >= stor1[_11676].field_1 % 128:
                                    mem[_11777 + 32] = 256 * Mask(248, 0, stor1[_11676].field_8)
                                else:
                                    mem[0] = _11676 + 1
                                    mem[_11777 + 32] = stor[sha3(_11676 + 1)]
                                    s = _11777 + 32
                                    t = sha3(_11676 + 1)
                                    while _11777 + stor1[_11676].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11677 + 32] = _11777
                        mem[_11677 + 64] = stor2[_11676]
                        mem[_11677 + 96] = stor3[_11676]
                        mem[_11677 + 128] = stor4[_11676]
                        mem[_11677 + 160] = stor5[_11676]
                        mem[_11677 + 192] = stor6[_11676]
                        mem[_11677 + 224] = bool(uint8(stor7[_11676].field_0))
                        mem[_11677 + 256] = bool(uint8(stor7[_11676].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11777 + 32 len stor1[_11676].field_1 % 128]):
                            revert with 0, 'Dealers: Name not available'
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
                _11776 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_11776] < creationMinPrice:
                    revert with 0, 'Dealers: Balance too low for creation'
                mem[mem[64] + 36] = arg2
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 and 28 > -1 / arg2:
                    revert with 0, 17
                if arg2 < 28 * arg2 / 100:
                    revert with 0, 17
                mem[mem[64]] = 0xd02dd2b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 28 * arg2 / 100
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.liquidityReward(uint256 arg1) with:
                     gas gas_remaining wei
                    args (28 * arg2 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor551++
                if totalValueLocked > !(arg2 - (28 * arg2 / 100)):
                    revert with 0, 17
                totalValueLocked = totalValueLocked + arg2 - (28 * arg2 / 100)
                mem[0] = tierLevel.length
                mem[32] = 553
                if uint8(stor553[stor559.length].field_512):
                    if tierLevel.length != stor553[stor559.length].field_0:
                        revert with 0, 'Dealers: rewardMult does not match in TierStorage'
                    if arg2 - (28 * arg2 / 100) > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                        revert with 0, 17
                    if stor553[stor559.length].field_256 < 0 and arg2 - (28 * arg2 / 100) < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor553[stor559.length].field_256 = stor553[stor559.length].field_256 + arg2 - (28 * arg2 / 100)
                    _12465 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12465] = stor551
                    mem[_12465 + 32] = 96
                    mem[_12465 + 64] = block.timestamp
                    mem[_12465 + 96] = block.timestamp
                    mem[_12465 + 128] = tierLevel.length
                    mem[_12465 + 160] = arg2 - (28 * arg2 / 100)
                    mem[_12465 + 192] = 0
                    mem[_12465 + 224] = 1
                    mem[_12465 + 256] = 0
                else:
                    if arg2 - (28 * arg2 / 100) <= 0:
                        revert with 0, 'Dealers: Fatal error while creating new TierStorage. Amount cannot be below zero.'
                    _12417 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_12417] = tierLevel.length
                    mem[_12417 + 32] = arg2 - (28 * arg2 / 100)
                    mem[_12417 + 64] = 1
                    mem[32] = 553
                    stor553[stor559.length].field_0 = tierLevel.length
                    stor553[stor559.length].field_256 = arg2 - (28 * arg2 / 100)
                    uint8(stor553[stor559.length].field_512) = 1
                    stor554.length++
                    mem[0] = 554
                    storCCA5[stor554.length] = tierLevel.length
                    _12435 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12435] = stor551
                    mem[_12435 + 32] = 96
                    mem[_12435 + 64] = block.timestamp
                    mem[_12435 + 96] = block.timestamp
                    mem[_12435 + 128] = tierLevel.length
                    mem[_12435 + 160] = arg2 - (28 * arg2 / 100)
                    mem[_12435 + 192] = 0
                    mem[_12435 + 224] = 1
                    mem[_12435 + 256] = 0
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
            stor552[stor551].field_1280 = arg2 - (28 * arg2 / 100)
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
            emit Create((arg2 - (28 * arg2 / 100)), msg.sender, stor551);
    stor401 = 1
    return stor551
}

function sub_a99cd934(?) payable {
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
        revert with 0, 'Dealers: MedellinCity is not set'
    if sub_4e047c19 <= 0:
        revert with 0, 'Dealers: not ready'
    mem[ceil32(ceil32(arg1.length)) + 101] = this.address
    staticcall universeImplementationAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg1.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Dealers: not enough $PABLO to mint'
    if not sub_4e047c19:
        revert with 0, 18
    if msg.value / 10^18 != arg2 / sub_4e047c19:
        revert with 0, 'Dealers: must send correct price'
    if sub_4064a346.length > !arg2:
        revert with 0, 17
    sub_4064a346.length += arg2
    if stor568 > !msg.value:
        revert with 0, 17
    stor568 += msg.value
    if stor569 > -2:
        revert with 0, 17
    stor569++
    if arg1.length <= 1:
        revert with 0, 'Dealers: Incorrect name length, must be between 2 to 31'
    if arg1.length >= 32:
        revert with 0, 'Dealers: Incorrect name length, must be between 2 to 31'
    if arg2:
        if arg2 < creationMinPrice:
            revert with 0, 'Dealers: Dealer value set below minimum'
        if not msg.sender:
            revert with 0, 'ERC721: balance query for the zero address'
        mem[0] = msg.sender
        mem[32] = 104
        if balanceOf[address(msg.sender)] > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = balanceOf[address(msg.sender)]
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (32 * balanceOf[address(msg.sender)]) + 129
        if not balanceOf[address(msg.sender)]:
            idx = 0
            while idx < balanceOf[address(msg.sender)]:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                if idx >= balanceOf[address(msg.sender)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if tokenOfOwnerByIndex[address(msg.sender)][idx] <= 0:
                    revert with 0, 'Dealers: Id must be higher than zero'
                mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                mem[32] = 552
                _5904 = mem[64]
                mem[64] = mem[64] + 288
                mem[_5904] = stor552[stor151[address(msg.sender)][idx]].field_0
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _5948 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                    mem[_5948] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                            if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                mem[_5948 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5948 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5948 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5948 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                mem[_5948 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5948 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5948 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5948 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_5904 + 32] = _5948
                else:
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    _5959 = mem[64]
                    mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                    mem[_5959] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                            if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                mem[_5959 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5959 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5959 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5959 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                mem[_5959 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5959 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5959 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5959 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_5904 + 32] = _5959
                mem[_5904 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
                mem[_5904 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
                mem[_5904 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
                mem[_5904 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
                mem[_5904 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
                mem[_5904 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
                mem[_5904 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
                if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                    revert with 0, 'Dealers: This dealer doesn't exist'
                if idx >= mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _11612 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]
            idx = 0
            while idx < _11612:
                if idx >= mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]
                mem[32] = 552
                _11625 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129], 552)
                _11626 = mem[64]
                mem[64] = mem[64] + 288
                mem[_11626] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]].field_0
                if bool(stor1[_11625].field_0):
                    if bool(stor1[_11625].field_0) == uint255(stor1[_11625].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _11716 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor1[_11625].field_0) * 0.5) + 32
                    mem[_11716] = uint255(stor1[_11625].field_0) * 0.5
                    if bool(stor1[_11625].field_0):
                        if bool(stor1[_11625].field_0) == uint255(stor1[_11625].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1[_11625].field_0):
                            if 31 >= uint255(stor1[_11625].field_0) * 0.5:
                                mem[_11716 + 32] = 256 * Mask(248, 0, stor1[_11625].field_8)
                            else:
                                mem[0] = _11625 + 1
                                mem[_11716 + 32] = stor[sha3(_11625 + 1)]
                                s = _11716 + 32
                                t = sha3(_11625 + 1)
                                while _11716 + (uint255(stor1[_11625].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor1[_11625].field_0) == stor1[_11625].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor1[_11625].field_1 % 128:
                            if 31 >= stor1[_11625].field_1 % 128:
                                mem[_11716 + 32] = 256 * Mask(248, 0, stor1[_11625].field_8)
                            else:
                                mem[0] = _11625 + 1
                                mem[_11716 + 32] = stor[sha3(_11625 + 1)]
                                s = _11716 + 32
                                t = sha3(_11625 + 1)
                                while _11716 + stor1[_11625].field_1 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_11626 + 32] = _11716
                    mem[_11626 + 64] = stor2[_11625]
                    mem[_11626 + 96] = stor3[_11625]
                    mem[_11626 + 128] = stor4[_11625]
                    mem[_11626 + 160] = stor5[_11625]
                    mem[_11626 + 192] = stor6[_11625]
                    mem[_11626 + 224] = bool(uint8(stor7[_11625].field_0))
                    mem[_11626 + 256] = bool(uint8(stor7[_11625].field_8))
                    if sha3(mem[128 len mem[96]]) == sha3(mem[_11716 + 32 len uint255(stor1[_11625].field_0) * 0.5]):
                        revert with 0, 'Dealers: Name not available'
                else:
                    if bool(stor1[_11625].field_0) == stor1[_11625].field_1 % 128 < 32:
                        revert with 0, 34
                    _11732 = mem[64]
                    mem[64] = mem[64] + ceil32(stor1[_11625].field_1 % 128) + 32
                    mem[_11732] = stor1[_11625].field_1 % 128
                    if bool(stor1[_11625].field_0):
                        if bool(stor1[_11625].field_0) == uint255(stor1[_11625].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1[_11625].field_0):
                            if 31 >= uint255(stor1[_11625].field_0) * 0.5:
                                mem[_11732 + 32] = 256 * Mask(248, 0, stor1[_11625].field_8)
                            else:
                                mem[0] = _11625 + 1
                                mem[_11732 + 32] = stor[sha3(_11625 + 1)]
                                s = _11732 + 32
                                t = sha3(_11625 + 1)
                                while _11732 + (uint255(stor1[_11625].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor1[_11625].field_0) == stor1[_11625].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor1[_11625].field_1 % 128:
                            if 31 >= stor1[_11625].field_1 % 128:
                                mem[_11732 + 32] = 256 * Mask(248, 0, stor1[_11625].field_8)
                            else:
                                mem[0] = _11625 + 1
                                mem[_11732 + 32] = stor[sha3(_11625 + 1)]
                                s = _11732 + 32
                                t = sha3(_11625 + 1)
                                while _11732 + stor1[_11625].field_1 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_11626 + 32] = _11732
                    mem[_11626 + 64] = stor2[_11625]
                    mem[_11626 + 96] = stor3[_11625]
                    mem[_11626 + 128] = stor4[_11625]
                    mem[_11626 + 160] = stor5[_11625]
                    mem[_11626 + 192] = stor6[_11625]
                    mem[_11626 + 224] = bool(uint8(stor7[_11625].field_0))
                    mem[_11626 + 256] = bool(uint8(stor7[_11625].field_8))
                    if sha3(mem[128 len mem[96]]) == sha3(mem[_11732 + 32 len stor1[_11625].field_1 % 128]):
                        revert with 0, 'Dealers: Name not available'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64] + 36] = arg2
            require ext_code.size(universeImplementationAddress)
            call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg2 and 28 > -1 / arg2:
                revert with 0, 17
            if arg2 < 28 * arg2 / 100:
                revert with 0, 17
            mem[mem[64]] = 0xd02dd2b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 28 * arg2 / 100
            require ext_code.size(universeImplementationAddress)
            call universeImplementationAddress.liquidityReward(uint256 arg1) with:
                 gas gas_remaining wei
                args (28 * arg2 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor551++
            if totalValueLocked > !(arg2 - (28 * arg2 / 100)):
                revert with 0, 17
            totalValueLocked = totalValueLocked + arg2 - (28 * arg2 / 100)
            mem[0] = tierLevel.length
            mem[32] = 553
            if uint8(stor553[stor559.length].field_512):
                if tierLevel.length != stor553[stor559.length].field_0:
                    revert with 0, 'Dealers: rewardMult does not match in TierStorage'
                if arg2 - (28 * arg2 / 100) > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                    revert with 0, 17
                if stor553[stor559.length].field_256 < 0 and arg2 - (28 * arg2 / 100) < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor553[stor559.length].field_256 = stor553[stor559.length].field_256 + arg2 - (28 * arg2 / 100)
                _12392 = mem[64]
                mem[64] = mem[64] + 288
                mem[_12392] = stor551
                mem[_12392 + 32] = 96
                mem[_12392 + 64] = block.timestamp
                mem[_12392 + 96] = block.timestamp
                mem[_12392 + 128] = tierLevel.length
                mem[_12392 + 160] = arg2 - (28 * arg2 / 100)
                mem[_12392 + 192] = 0
                mem[_12392 + 224] = 1
                mem[_12392 + 256] = 1
            else:
                if arg2 - (28 * arg2 / 100) <= 0:
                    revert with 0, 'Dealers: Fatal error while creating new TierStorage. Amount cannot be below zero.'
                _12308 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12308] = tierLevel.length
                mem[_12308 + 32] = arg2 - (28 * arg2 / 100)
                mem[_12308 + 64] = 1
                mem[32] = 553
                stor553[stor559.length].field_0 = tierLevel.length
                stor553[stor559.length].field_256 = arg2 - (28 * arg2 / 100)
                uint8(stor553[stor559.length].field_512) = 1
                stor554.length++
                mem[0] = 554
                storCCA5[stor554.length] = tierLevel.length
                _12350 = mem[64]
                mem[64] = mem[64] + 288
                mem[_12350] = stor551
                mem[_12350 + 32] = 96
                mem[_12350 + 64] = block.timestamp
                mem[_12350 + 96] = block.timestamp
                mem[_12350 + 128] = tierLevel.length
                mem[_12350 + 160] = arg2 - (28 * arg2 / 100)
                mem[_12350 + 192] = 0
                mem[_12350 + 224] = 1
                mem[_12350 + 256] = 1
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
            idx = 0
            while idx < balanceOf[address(msg.sender)]:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                if idx >= balanceOf[address(msg.sender)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                if tokenOfOwnerByIndex[address(msg.sender)][idx] <= 0:
                    revert with 0, 'Dealers: Id must be higher than zero'
                mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                mem[32] = 552
                _5910 = mem[64]
                mem[64] = mem[64] + 288
                mem[_5910] = stor552[stor151[address(msg.sender)][idx]].field_0
                if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _5949 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                    mem[_5949] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                            if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                mem[_5949 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5949 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5949 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5949 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                mem[_5949 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5949 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5949 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5949 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_5910 + 32] = _5949
                else:
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                        revert with 0, 34
                    _5965 = mem[64]
                    mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                    mem[_5965] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                            if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                mem[_5965 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5965 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5965 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5965 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                            if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                mem[_5965 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                            else:
                                mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                mem[_5965 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                s = _5965 + 32
                                t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                while _5965 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_5910 + 32] = _5965
                mem[_5910 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
                mem[_5910 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
                mem[_5910 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
                mem[_5910 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
                mem[_5910 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
                mem[_5910 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
                mem[_5910 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
                if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                    revert with 0, 'Dealers: This dealer doesn't exist'
                if idx >= mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _11613 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]
            idx = 0
            while idx < _11613:
                if idx >= mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]
                mem[32] = 552
                _11632 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129], 552)
                _11633 = mem[64]
                mem[64] = mem[64] + 288
                mem[_11633] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]].field_0
                if bool(stor1[_11632].field_0):
                    if bool(stor1[_11632].field_0) == uint255(stor1[_11632].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _11719 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor1[_11632].field_0) * 0.5) + 32
                    mem[_11719] = uint255(stor1[_11632].field_0) * 0.5
                    if bool(stor1[_11632].field_0):
                        if bool(stor1[_11632].field_0) == uint255(stor1[_11632].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1[_11632].field_0):
                            if 31 >= uint255(stor1[_11632].field_0) * 0.5:
                                mem[_11719 + 32] = 256 * Mask(248, 0, stor1[_11632].field_8)
                            else:
                                mem[0] = _11632 + 1
                                mem[_11719 + 32] = stor[sha3(_11632 + 1)]
                                s = _11719 + 32
                                t = sha3(_11632 + 1)
                                while _11719 + (uint255(stor1[_11632].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor1[_11632].field_0) == stor1[_11632].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor1[_11632].field_1 % 128:
                            if 31 >= stor1[_11632].field_1 % 128:
                                mem[_11719 + 32] = 256 * Mask(248, 0, stor1[_11632].field_8)
                            else:
                                mem[0] = _11632 + 1
                                mem[_11719 + 32] = stor[sha3(_11632 + 1)]
                                s = _11719 + 32
                                t = sha3(_11632 + 1)
                                while _11719 + stor1[_11632].field_1 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_11633 + 32] = _11719
                    mem[_11633 + 64] = stor2[_11632]
                    mem[_11633 + 96] = stor3[_11632]
                    mem[_11633 + 128] = stor4[_11632]
                    mem[_11633 + 160] = stor5[_11632]
                    mem[_11633 + 192] = stor6[_11632]
                    mem[_11633 + 224] = bool(uint8(stor7[_11632].field_0))
                    mem[_11633 + 256] = bool(uint8(stor7[_11632].field_8))
                    if sha3(mem[128 len mem[96]]) == sha3(mem[_11719 + 32 len uint255(stor1[_11632].field_0) * 0.5]):
                        revert with 0, 'Dealers: Name not available'
                else:
                    if bool(stor1[_11632].field_0) == stor1[_11632].field_1 % 128 < 32:
                        revert with 0, 34
                    _11737 = mem[64]
                    mem[64] = mem[64] + ceil32(stor1[_11632].field_1 % 128) + 32
                    mem[_11737] = stor1[_11632].field_1 % 128
                    if bool(stor1[_11632].field_0):
                        if bool(stor1[_11632].field_0) == uint255(stor1[_11632].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1[_11632].field_0):
                            if 31 >= uint255(stor1[_11632].field_0) * 0.5:
                                mem[_11737 + 32] = 256 * Mask(248, 0, stor1[_11632].field_8)
                            else:
                                mem[0] = _11632 + 1
                                mem[_11737 + 32] = stor[sha3(_11632 + 1)]
                                s = _11737 + 32
                                t = sha3(_11632 + 1)
                                while _11737 + (uint255(stor1[_11632].field_0) * 0.5) > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor1[_11632].field_0) == stor1[_11632].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor1[_11632].field_1 % 128:
                            if 31 >= stor1[_11632].field_1 % 128:
                                mem[_11737 + 32] = 256 * Mask(248, 0, stor1[_11632].field_8)
                            else:
                                mem[0] = _11632 + 1
                                mem[_11737 + 32] = stor[sha3(_11632 + 1)]
                                s = _11737 + 32
                                t = sha3(_11632 + 1)
                                while _11737 + stor1[_11632].field_1 % 128 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_11633 + 32] = _11737
                    mem[_11633 + 64] = stor2[_11632]
                    mem[_11633 + 96] = stor3[_11632]
                    mem[_11633 + 128] = stor4[_11632]
                    mem[_11633 + 160] = stor5[_11632]
                    mem[_11633 + 192] = stor6[_11632]
                    mem[_11633 + 224] = bool(uint8(stor7[_11632].field_0))
                    mem[_11633 + 256] = bool(uint8(stor7[_11632].field_8))
                    if sha3(mem[128 len mem[96]]) == sha3(mem[_11737 + 32 len stor1[_11632].field_1 % 128]):
                        revert with 0, 'Dealers: Name not available'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64] + 36] = arg2
            require ext_code.size(universeImplementationAddress)
            call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg2 and 28 > -1 / arg2:
                revert with 0, 17
            if arg2 < 28 * arg2 / 100:
                revert with 0, 17
            mem[mem[64]] = 0xd02dd2b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 28 * arg2 / 100
            require ext_code.size(universeImplementationAddress)
            call universeImplementationAddress.liquidityReward(uint256 arg1) with:
                 gas gas_remaining wei
                args (28 * arg2 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor551++
            if totalValueLocked > !(arg2 - (28 * arg2 / 100)):
                revert with 0, 17
            totalValueLocked = totalValueLocked + arg2 - (28 * arg2 / 100)
            mem[0] = tierLevel.length
            mem[32] = 553
            if uint8(stor553[stor559.length].field_512):
                if tierLevel.length != stor553[stor559.length].field_0:
                    revert with 0, 'Dealers: rewardMult does not match in TierStorage'
                if arg2 - (28 * arg2 / 100) > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                    revert with 0, 17
                if stor553[stor559.length].field_256 < 0 and arg2 - (28 * arg2 / 100) < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor553[stor559.length].field_256 = stor553[stor559.length].field_256 + arg2 - (28 * arg2 / 100)
                _12393 = mem[64]
                mem[64] = mem[64] + 288
                mem[_12393] = stor551
                mem[_12393 + 32] = 96
                mem[_12393 + 64] = block.timestamp
                mem[_12393 + 96] = block.timestamp
                mem[_12393 + 128] = tierLevel.length
                mem[_12393 + 160] = arg2 - (28 * arg2 / 100)
                mem[_12393 + 192] = 0
                mem[_12393 + 224] = 1
                mem[_12393 + 256] = 1
            else:
                if arg2 - (28 * arg2 / 100) <= 0:
                    revert with 0, 'Dealers: Fatal error while creating new TierStorage. Amount cannot be below zero.'
                _12315 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12315] = tierLevel.length
                mem[_12315 + 32] = arg2 - (28 * arg2 / 100)
                mem[_12315 + 64] = 1
                mem[32] = 553
                stor553[stor559.length].field_0 = tierLevel.length
                stor553[stor559.length].field_256 = arg2 - (28 * arg2 / 100)
                uint8(stor553[stor559.length].field_512) = 1
                stor554.length++
                mem[0] = 554
                storCCA5[stor554.length] = tierLevel.length
                _12353 = mem[64]
                mem[64] = mem[64] + 288
                mem[_12353] = stor551
                mem[_12353 + 32] = 96
                mem[_12353 + 64] = block.timestamp
                mem[_12353 + 96] = block.timestamp
                mem[_12353 + 128] = tierLevel.length
                mem[_12353 + 160] = arg2 - (28 * arg2 / 100)
                mem[_12353 + 192] = 0
                mem[_12353 + 224] = 1
                mem[_12353 + 256] = 1
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
        stor552[stor551].field_1280 = arg2 - (28 * arg2 / 100)
        stor552[stor551].field_1536 = 0
        uint8(stor552[stor551].field_1792) = 1
        Mask(248, 0, stor552[stor551].field_1800) = 1
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
        emit Create((arg2 - (28 * arg2 / 100)), msg.sender, stor551);
    else:
        if not presales[address(msg.sender)]:
            if arg2 < creationMinPrice:
                revert with 0, 'Dealers: Dealer value set below minimum'
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            mem[0] = msg.sender
            mem[32] = 104
            if balanceOf[address(msg.sender)] > test266151307():
                revert with 0, 65
            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = balanceOf[address(msg.sender)]
            mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (32 * balanceOf[address(msg.sender)]) + 129
            if not balanceOf[address(msg.sender)]:
                idx = 0
                while idx < balanceOf[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if idx >= balanceOf[address(msg.sender)]:
                        revert with 0, 'ERC721Enumerable: owner index out of bounds'
                    if tokenOfOwnerByIndex[address(msg.sender)][idx] <= 0:
                        revert with 0, 'Dealers: Id must be higher than zero'
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    mem[32] = 552
                    _5916 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_5916] = stor552[stor151[address(msg.sender)][idx]].field_0
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _5950 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                        mem[_5950] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_5950 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5950 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5950 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5950 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_5950 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5950 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5950 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5950 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5916 + 32] = _5950
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        _5971 = mem[64]
                        mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                        mem[_5971] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_5971 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5971 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5971 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5971 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_5971 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5971 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5971 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5971 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5916 + 32] = _5971
                    mem[_5916 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
                    mem[_5916 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
                    mem[_5916 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
                    mem[_5916 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
                    mem[_5916 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
                    mem[_5916 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
                    mem[_5916 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
                    if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                        revert with 0, 'Dealers: This dealer doesn't exist'
                    if idx >= mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _11614 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]
                idx = 0
                while idx < _11614:
                    if idx >= mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]
                    mem[32] = 552
                    _11639 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129], 552)
                    _11640 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_11640] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]].field_0
                    if bool(stor1[_11639].field_0):
                        if bool(stor1[_11639].field_0) == uint255(stor1[_11639].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _11722 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[_11639].field_0) * 0.5) + 32
                        mem[_11722] = uint255(stor1[_11639].field_0) * 0.5
                        if bool(stor1[_11639].field_0):
                            if bool(stor1[_11639].field_0) == uint255(stor1[_11639].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11639].field_0):
                                if 31 >= uint255(stor1[_11639].field_0) * 0.5:
                                    mem[_11722 + 32] = 256 * Mask(248, 0, stor1[_11639].field_8)
                                else:
                                    mem[0] = _11639 + 1
                                    mem[_11722 + 32] = stor[sha3(_11639 + 1)]
                                    s = _11722 + 32
                                    t = sha3(_11639 + 1)
                                    while _11722 + (uint255(stor1[_11639].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11639].field_0) == stor1[_11639].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11639].field_1 % 128:
                                if 31 >= stor1[_11639].field_1 % 128:
                                    mem[_11722 + 32] = 256 * Mask(248, 0, stor1[_11639].field_8)
                                else:
                                    mem[0] = _11639 + 1
                                    mem[_11722 + 32] = stor[sha3(_11639 + 1)]
                                    s = _11722 + 32
                                    t = sha3(_11639 + 1)
                                    while _11722 + stor1[_11639].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11640 + 32] = _11722
                        mem[_11640 + 64] = stor2[_11639]
                        mem[_11640 + 96] = stor3[_11639]
                        mem[_11640 + 128] = stor4[_11639]
                        mem[_11640 + 160] = stor5[_11639]
                        mem[_11640 + 192] = stor6[_11639]
                        mem[_11640 + 224] = bool(uint8(stor7[_11639].field_0))
                        mem[_11640 + 256] = bool(uint8(stor7[_11639].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11722 + 32 len uint255(stor1[_11639].field_0) * 0.5]):
                            revert with 0, 'Dealers: Name not available'
                    else:
                        if bool(stor1[_11639].field_0) == stor1[_11639].field_1 % 128 < 32:
                            revert with 0, 34
                        _11742 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[_11639].field_1 % 128) + 32
                        mem[_11742] = stor1[_11639].field_1 % 128
                        if bool(stor1[_11639].field_0):
                            if bool(stor1[_11639].field_0) == uint255(stor1[_11639].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11639].field_0):
                                if 31 >= uint255(stor1[_11639].field_0) * 0.5:
                                    mem[_11742 + 32] = 256 * Mask(248, 0, stor1[_11639].field_8)
                                else:
                                    mem[0] = _11639 + 1
                                    mem[_11742 + 32] = stor[sha3(_11639 + 1)]
                                    s = _11742 + 32
                                    t = sha3(_11639 + 1)
                                    while _11742 + (uint255(stor1[_11639].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11639].field_0) == stor1[_11639].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11639].field_1 % 128:
                                if 31 >= stor1[_11639].field_1 % 128:
                                    mem[_11742 + 32] = 256 * Mask(248, 0, stor1[_11639].field_8)
                                else:
                                    mem[0] = _11639 + 1
                                    mem[_11742 + 32] = stor[sha3(_11639 + 1)]
                                    s = _11742 + 32
                                    t = sha3(_11639 + 1)
                                    while _11742 + stor1[_11639].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11640 + 32] = _11742
                        mem[_11640 + 64] = stor2[_11639]
                        mem[_11640 + 96] = stor3[_11639]
                        mem[_11640 + 128] = stor4[_11639]
                        mem[_11640 + 160] = stor5[_11639]
                        mem[_11640 + 192] = stor6[_11639]
                        mem[_11640 + 224] = bool(uint8(stor7[_11639].field_0))
                        mem[_11640 + 256] = bool(uint8(stor7[_11639].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11742 + 32 len stor1[_11639].field_1 % 128]):
                            revert with 0, 'Dealers: Name not available'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 36] = arg2
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 and 28 > -1 / arg2:
                    revert with 0, 17
                if arg2 < 28 * arg2 / 100:
                    revert with 0, 17
                mem[mem[64]] = 0xd02dd2b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 28 * arg2 / 100
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.liquidityReward(uint256 arg1) with:
                     gas gas_remaining wei
                    args (28 * arg2 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor551++
                if totalValueLocked > !(arg2 - (28 * arg2 / 100)):
                    revert with 0, 17
                totalValueLocked = totalValueLocked + arg2 - (28 * arg2 / 100)
                mem[0] = tierLevel.length
                mem[32] = 553
                if uint8(stor553[stor559.length].field_512):
                    if tierLevel.length != stor553[stor559.length].field_0:
                        revert with 0, 'Dealers: rewardMult does not match in TierStorage'
                    if arg2 - (28 * arg2 / 100) > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                        revert with 0, 17
                    if stor553[stor559.length].field_256 < 0 and arg2 - (28 * arg2 / 100) < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor553[stor559.length].field_256 = stor553[stor559.length].field_256 + arg2 - (28 * arg2 / 100)
                    _12394 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12394] = stor551
                    mem[_12394 + 32] = 96
                    mem[_12394 + 64] = block.timestamp
                    mem[_12394 + 96] = block.timestamp
                    mem[_12394 + 128] = tierLevel.length
                    mem[_12394 + 160] = arg2 - (28 * arg2 / 100)
                    mem[_12394 + 192] = 0
                    mem[_12394 + 224] = 1
                    mem[_12394 + 256] = 1
                else:
                    if arg2 - (28 * arg2 / 100) <= 0:
                        revert with 0, 'Dealers: Fatal error while creating new TierStorage. Amount cannot be below zero.'
                    _12322 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_12322] = tierLevel.length
                    mem[_12322 + 32] = arg2 - (28 * arg2 / 100)
                    mem[_12322 + 64] = 1
                    mem[32] = 553
                    stor553[stor559.length].field_0 = tierLevel.length
                    stor553[stor559.length].field_256 = arg2 - (28 * arg2 / 100)
                    uint8(stor553[stor559.length].field_512) = 1
                    stor554.length++
                    mem[0] = 554
                    storCCA5[stor554.length] = tierLevel.length
                    _12356 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12356] = stor551
                    mem[_12356 + 32] = 96
                    mem[_12356 + 64] = block.timestamp
                    mem[_12356 + 96] = block.timestamp
                    mem[_12356 + 128] = tierLevel.length
                    mem[_12356 + 160] = arg2 - (28 * arg2 / 100)
                    mem[_12356 + 192] = 0
                    mem[_12356 + 224] = 1
                    mem[_12356 + 256] = 1
            else:
                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
                idx = 0
                while idx < balanceOf[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if idx >= balanceOf[address(msg.sender)]:
                        revert with 0, 'ERC721Enumerable: owner index out of bounds'
                    if tokenOfOwnerByIndex[address(msg.sender)][idx] <= 0:
                        revert with 0, 'Dealers: Id must be higher than zero'
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    mem[32] = 552
                    _5922 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_5922] = stor552[stor151[address(msg.sender)][idx]].field_0
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _5951 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                        mem[_5951] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_5951 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5951 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5951 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5951 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_5951 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5951 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5951 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5951 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5922 + 32] = _5951
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        _5977 = mem[64]
                        mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                        mem[_5977] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_5977 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5977 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5977 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5977 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_5977 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5977 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5977 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5977 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5922 + 32] = _5977
                    mem[_5922 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
                    mem[_5922 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
                    mem[_5922 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
                    mem[_5922 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
                    mem[_5922 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
                    mem[_5922 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
                    mem[_5922 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
                    if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                        revert with 0, 'Dealers: This dealer doesn't exist'
                    if idx >= mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _11615 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]
                idx = 0
                while idx < _11615:
                    if idx >= mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]
                    mem[32] = 552
                    _11646 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129], 552)
                    _11647 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_11647] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]].field_0
                    if bool(stor1[_11646].field_0):
                        if bool(stor1[_11646].field_0) == uint255(stor1[_11646].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _11725 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[_11646].field_0) * 0.5) + 32
                        mem[_11725] = uint255(stor1[_11646].field_0) * 0.5
                        if bool(stor1[_11646].field_0):
                            if bool(stor1[_11646].field_0) == uint255(stor1[_11646].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11646].field_0):
                                if 31 >= uint255(stor1[_11646].field_0) * 0.5:
                                    mem[_11725 + 32] = 256 * Mask(248, 0, stor1[_11646].field_8)
                                else:
                                    mem[0] = _11646 + 1
                                    mem[_11725 + 32] = stor[sha3(_11646 + 1)]
                                    s = _11725 + 32
                                    t = sha3(_11646 + 1)
                                    while _11725 + (uint255(stor1[_11646].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11646].field_0) == stor1[_11646].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11646].field_1 % 128:
                                if 31 >= stor1[_11646].field_1 % 128:
                                    mem[_11725 + 32] = 256 * Mask(248, 0, stor1[_11646].field_8)
                                else:
                                    mem[0] = _11646 + 1
                                    mem[_11725 + 32] = stor[sha3(_11646 + 1)]
                                    s = _11725 + 32
                                    t = sha3(_11646 + 1)
                                    while _11725 + stor1[_11646].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11647 + 32] = _11725
                        mem[_11647 + 64] = stor2[_11646]
                        mem[_11647 + 96] = stor3[_11646]
                        mem[_11647 + 128] = stor4[_11646]
                        mem[_11647 + 160] = stor5[_11646]
                        mem[_11647 + 192] = stor6[_11646]
                        mem[_11647 + 224] = bool(uint8(stor7[_11646].field_0))
                        mem[_11647 + 256] = bool(uint8(stor7[_11646].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11725 + 32 len uint255(stor1[_11646].field_0) * 0.5]):
                            revert with 0, 'Dealers: Name not available'
                    else:
                        if bool(stor1[_11646].field_0) == stor1[_11646].field_1 % 128 < 32:
                            revert with 0, 34
                        _11747 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[_11646].field_1 % 128) + 32
                        mem[_11747] = stor1[_11646].field_1 % 128
                        if bool(stor1[_11646].field_0):
                            if bool(stor1[_11646].field_0) == uint255(stor1[_11646].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11646].field_0):
                                if 31 >= uint255(stor1[_11646].field_0) * 0.5:
                                    mem[_11747 + 32] = 256 * Mask(248, 0, stor1[_11646].field_8)
                                else:
                                    mem[0] = _11646 + 1
                                    mem[_11747 + 32] = stor[sha3(_11646 + 1)]
                                    s = _11747 + 32
                                    t = sha3(_11646 + 1)
                                    while _11747 + (uint255(stor1[_11646].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11646].field_0) == stor1[_11646].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11646].field_1 % 128:
                                if 31 >= stor1[_11646].field_1 % 128:
                                    mem[_11747 + 32] = 256 * Mask(248, 0, stor1[_11646].field_8)
                                else:
                                    mem[0] = _11646 + 1
                                    mem[_11747 + 32] = stor[sha3(_11646 + 1)]
                                    s = _11747 + 32
                                    t = sha3(_11646 + 1)
                                    while _11747 + stor1[_11646].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11647 + 32] = _11747
                        mem[_11647 + 64] = stor2[_11646]
                        mem[_11647 + 96] = stor3[_11646]
                        mem[_11647 + 128] = stor4[_11646]
                        mem[_11647 + 160] = stor5[_11646]
                        mem[_11647 + 192] = stor6[_11646]
                        mem[_11647 + 224] = bool(uint8(stor7[_11646].field_0))
                        mem[_11647 + 256] = bool(uint8(stor7[_11646].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11747 + 32 len stor1[_11646].field_1 % 128]):
                            revert with 0, 'Dealers: Name not available'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 36] = arg2
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 and 28 > -1 / arg2:
                    revert with 0, 17
                if arg2 < 28 * arg2 / 100:
                    revert with 0, 17
                mem[mem[64]] = 0xd02dd2b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 28 * arg2 / 100
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.liquidityReward(uint256 arg1) with:
                     gas gas_remaining wei
                    args (28 * arg2 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor551++
                if totalValueLocked > !(arg2 - (28 * arg2 / 100)):
                    revert with 0, 17
                totalValueLocked = totalValueLocked + arg2 - (28 * arg2 / 100)
                mem[0] = tierLevel.length
                mem[32] = 553
                if uint8(stor553[stor559.length].field_512):
                    if tierLevel.length != stor553[stor559.length].field_0:
                        revert with 0, 'Dealers: rewardMult does not match in TierStorage'
                    if arg2 - (28 * arg2 / 100) > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                        revert with 0, 17
                    if stor553[stor559.length].field_256 < 0 and arg2 - (28 * arg2 / 100) < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor553[stor559.length].field_256 = stor553[stor559.length].field_256 + arg2 - (28 * arg2 / 100)
                    _12395 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12395] = stor551
                    mem[_12395 + 32] = 96
                    mem[_12395 + 64] = block.timestamp
                    mem[_12395 + 96] = block.timestamp
                    mem[_12395 + 128] = tierLevel.length
                    mem[_12395 + 160] = arg2 - (28 * arg2 / 100)
                    mem[_12395 + 192] = 0
                    mem[_12395 + 224] = 1
                    mem[_12395 + 256] = 1
                else:
                    if arg2 - (28 * arg2 / 100) <= 0:
                        revert with 0, 'Dealers: Fatal error while creating new TierStorage. Amount cannot be below zero.'
                    _12329 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_12329] = tierLevel.length
                    mem[_12329 + 32] = arg2 - (28 * arg2 / 100)
                    mem[_12329 + 64] = 1
                    mem[32] = 553
                    stor553[stor559.length].field_0 = tierLevel.length
                    stor553[stor559.length].field_256 = arg2 - (28 * arg2 / 100)
                    uint8(stor553[stor559.length].field_512) = 1
                    stor554.length++
                    mem[0] = 554
                    storCCA5[stor554.length] = tierLevel.length
                    _12359 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12359] = stor551
                    mem[_12359 + 32] = 96
                    mem[_12359 + 64] = block.timestamp
                    mem[_12359 + 96] = block.timestamp
                    mem[_12359 + 128] = tierLevel.length
                    mem[_12359 + 160] = arg2 - (28 * arg2 / 100)
                    mem[_12359 + 192] = 0
                    mem[_12359 + 224] = 1
                    mem[_12359 + 256] = 1
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
            stor552[stor551].field_1280 = arg2 - (28 * arg2 / 100)
            stor552[stor551].field_1536 = 0
            uint8(stor552[stor551].field_1792) = 1
            Mask(248, 0, stor552[stor551].field_1800) = 1
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
            emit Create((arg2 - (28 * arg2 / 100)), msg.sender, stor551);
        else:
            presales[address(msg.sender)] = 0
            if presales[address(msg.sender)] < creationMinPrice:
                revert with 0, 'Dealers: Dealer value set below minimum'
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            mem[0] = msg.sender
            mem[32] = 104
            if balanceOf[address(msg.sender)] > test266151307():
                revert with 0, 65
            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = balanceOf[address(msg.sender)]
            mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (32 * balanceOf[address(msg.sender)]) + 129
            if not balanceOf[address(msg.sender)]:
                idx = 0
                while idx < balanceOf[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if idx >= balanceOf[address(msg.sender)]:
                        revert with 0, 'ERC721Enumerable: owner index out of bounds'
                    if tokenOfOwnerByIndex[address(msg.sender)][idx] <= 0:
                        revert with 0, 'Dealers: Id must be higher than zero'
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    mem[32] = 552
                    _5928 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_5928] = stor552[stor151[address(msg.sender)][idx]].field_0
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _5952 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                        mem[_5952] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_5952 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5952 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5952 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5952 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_5952 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5952 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5952 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5952 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5928 + 32] = _5952
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        _5983 = mem[64]
                        mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                        mem[_5983] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_5983 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5983 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5983 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5983 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_5983 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5983 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5983 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5983 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5928 + 32] = _5983
                    mem[_5928 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
                    mem[_5928 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
                    mem[_5928 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
                    mem[_5928 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
                    mem[_5928 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
                    mem[_5928 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
                    mem[_5928 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
                    if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                        revert with 0, 'Dealers: This dealer doesn't exist'
                    if idx >= mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _11616 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]
                idx = 0
                while idx < _11616:
                    if idx >= mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]
                    mem[32] = 552
                    _11653 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129], 552)
                    _11654 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_11654] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]].field_0
                    if bool(stor1[_11653].field_0):
                        if bool(stor1[_11653].field_0) == uint255(stor1[_11653].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _11728 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[_11653].field_0) * 0.5) + 32
                        mem[_11728] = uint255(stor1[_11653].field_0) * 0.5
                        if bool(stor1[_11653].field_0):
                            if bool(stor1[_11653].field_0) == uint255(stor1[_11653].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11653].field_0):
                                if 31 >= uint255(stor1[_11653].field_0) * 0.5:
                                    mem[_11728 + 32] = 256 * Mask(248, 0, stor1[_11653].field_8)
                                else:
                                    mem[0] = _11653 + 1
                                    mem[_11728 + 32] = stor[sha3(_11653 + 1)]
                                    s = _11728 + 32
                                    t = sha3(_11653 + 1)
                                    while _11728 + (uint255(stor1[_11653].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11653].field_0) == stor1[_11653].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11653].field_1 % 128:
                                if 31 >= stor1[_11653].field_1 % 128:
                                    mem[_11728 + 32] = 256 * Mask(248, 0, stor1[_11653].field_8)
                                else:
                                    mem[0] = _11653 + 1
                                    mem[_11728 + 32] = stor[sha3(_11653 + 1)]
                                    s = _11728 + 32
                                    t = sha3(_11653 + 1)
                                    while _11728 + stor1[_11653].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11654 + 32] = _11728
                        mem[_11654 + 64] = stor2[_11653]
                        mem[_11654 + 96] = stor3[_11653]
                        mem[_11654 + 128] = stor4[_11653]
                        mem[_11654 + 160] = stor5[_11653]
                        mem[_11654 + 192] = stor6[_11653]
                        mem[_11654 + 224] = bool(uint8(stor7[_11653].field_0))
                        mem[_11654 + 256] = bool(uint8(stor7[_11653].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11728 + 32 len uint255(stor1[_11653].field_0) * 0.5]):
                            revert with 0, 'Dealers: Name not available'
                    else:
                        if bool(stor1[_11653].field_0) == stor1[_11653].field_1 % 128 < 32:
                            revert with 0, 34
                        _11752 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[_11653].field_1 % 128) + 32
                        mem[_11752] = stor1[_11653].field_1 % 128
                        if bool(stor1[_11653].field_0):
                            if bool(stor1[_11653].field_0) == uint255(stor1[_11653].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11653].field_0):
                                if 31 >= uint255(stor1[_11653].field_0) * 0.5:
                                    mem[_11752 + 32] = 256 * Mask(248, 0, stor1[_11653].field_8)
                                else:
                                    mem[0] = _11653 + 1
                                    mem[_11752 + 32] = stor[sha3(_11653 + 1)]
                                    s = _11752 + 32
                                    t = sha3(_11653 + 1)
                                    while _11752 + (uint255(stor1[_11653].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11653].field_0) == stor1[_11653].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11653].field_1 % 128:
                                if 31 >= stor1[_11653].field_1 % 128:
                                    mem[_11752 + 32] = 256 * Mask(248, 0, stor1[_11653].field_8)
                                else:
                                    mem[0] = _11653 + 1
                                    mem[_11752 + 32] = stor[sha3(_11653 + 1)]
                                    s = _11752 + 32
                                    t = sha3(_11653 + 1)
                                    while _11752 + stor1[_11653].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11654 + 32] = _11752
                        mem[_11654 + 64] = stor2[_11653]
                        mem[_11654 + 96] = stor3[_11653]
                        mem[_11654 + 128] = stor4[_11653]
                        mem[_11654 + 160] = stor5[_11653]
                        mem[_11654 + 192] = stor6[_11653]
                        mem[_11654 + 224] = bool(uint8(stor7[_11653].field_0))
                        mem[_11654 + 256] = bool(uint8(stor7[_11653].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11752 + 32 len stor1[_11653].field_1 % 128]):
                            revert with 0, 'Dealers: Name not available'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 36] = presales[address(msg.sender)]
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, presales[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if presales[address(msg.sender)] and 28 > -1 / presales[address(msg.sender)]:
                    revert with 0, 17
                if presales[address(msg.sender)] < 28 * presales[address(msg.sender)] / 100:
                    revert with 0, 17
                mem[mem[64]] = 0xd02dd2b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 28 * presales[address(msg.sender)] / 100
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.liquidityReward(uint256 arg1) with:
                     gas gas_remaining wei
                    args (28 * presales[address(msg.sender)] / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor551++
                if totalValueLocked > !(presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)):
                    revert with 0, 17
                totalValueLocked = totalValueLocked + presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                mem[0] = tierLevel.length
                mem[32] = 553
                if uint8(stor553[stor559.length].field_512):
                    if tierLevel.length != stor553[stor559.length].field_0:
                        revert with 0, 'Dealers: rewardMult does not match in TierStorage'
                    if presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100) > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                        revert with 0, 17
                    if stor553[stor559.length].field_256 < 0 and presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100) < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor553[stor559.length].field_256 = stor553[stor559.length].field_256 + presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    _12396 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12396] = stor551
                    mem[_12396 + 32] = 96
                    mem[_12396 + 64] = block.timestamp
                    mem[_12396 + 96] = block.timestamp
                    mem[_12396 + 128] = tierLevel.length
                    mem[_12396 + 160] = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    mem[_12396 + 192] = 0
                    mem[_12396 + 224] = 1
                    mem[_12396 + 256] = 1
                else:
                    if presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100) <= 0:
                        revert with 0, 'Dealers: Fatal error while creating new TierStorage. Amount cannot be below zero.'
                    _12336 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_12336] = tierLevel.length
                    mem[_12336 + 32] = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    mem[_12336 + 64] = 1
                    mem[32] = 553
                    stor553[stor559.length].field_0 = tierLevel.length
                    stor553[stor559.length].field_256 = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    uint8(stor553[stor559.length].field_512) = 1
                    stor554.length++
                    mem[0] = 554
                    storCCA5[stor554.length] = tierLevel.length
                    _12362 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12362] = stor551
                    mem[_12362 + 32] = 96
                    mem[_12362 + 64] = block.timestamp
                    mem[_12362 + 96] = block.timestamp
                    mem[_12362 + 128] = tierLevel.length
                    mem[_12362 + 160] = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    mem[_12362 + 192] = 0
                    mem[_12362 + 224] = 1
                    mem[_12362 + 256] = 1
            else:
                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
                idx = 0
                while idx < balanceOf[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if idx >= balanceOf[address(msg.sender)]:
                        revert with 0, 'ERC721Enumerable: owner index out of bounds'
                    if tokenOfOwnerByIndex[address(msg.sender)][idx] <= 0:
                        revert with 0, 'Dealers: Id must be higher than zero'
                    mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    mem[32] = 552
                    _5934 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_5934] = stor552[stor151[address(msg.sender)][idx]].field_0
                    if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _5953 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) + 32
                        mem[_5953] = uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_5953 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5953 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5953 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5953 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_5953 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5953 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5953 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5953 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5934 + 32] = _5953
                    else:
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                            revert with 0, 34
                        _5989 = mem[64]
                        mem[64] = mem[64] + ceil32(stor552[stor151[address(msg.sender)][idx]].field_257 % 128) + 32
                        mem[_5989] = stor552[stor151[address(msg.sender)][idx]].field_257 % 128
                        if bool(stor552[stor151[address(msg.sender)][idx]].field_256):
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor552[stor151[address(msg.sender)][idx]].field_256):
                                if 31 >= uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5:
                                    mem[_5989 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5989 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5989 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5989 + (uint255(stor552[stor151[address(msg.sender)][idx]].field_256) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor552[stor151[address(msg.sender)][idx]].field_256) == stor552[stor151[address(msg.sender)][idx]].field_257 % 128 < 32:
                                revert with 0, 34
                            if stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                if 31 >= stor552[stor151[address(msg.sender)][idx]].field_257 % 128:
                                    mem[_5989 + 32] = 256 * Mask(248, 0, stor552[stor151[address(msg.sender)][idx]].field_264)
                                else:
                                    mem[0] = sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1
                                    mem[_5989 + 32] = stor552[stor151[address(msg.sender)][idx]][1].field_0
                                    s = _5989 + 32
                                    t = sha3(sha3(tokenOfOwnerByIndex[address(msg.sender)][idx], 552) + 1)
                                    while _5989 + stor552[stor151[address(msg.sender)][idx]].field_257 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_5934 + 32] = _5989
                    mem[_5934 + 64] = stor552[stor151[address(msg.sender)][idx]].field_512
                    mem[_5934 + 96] = stor552[stor151[address(msg.sender)][idx]].field_768
                    mem[_5934 + 128] = stor552[stor151[address(msg.sender)][idx]].field_1024
                    mem[_5934 + 160] = stor552[stor151[address(msg.sender)][idx]].field_1280
                    mem[_5934 + 192] = stor552[stor151[address(msg.sender)][idx]].field_1536
                    mem[_5934 + 224] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1792))
                    mem[_5934 + 256] = bool(uint8(stor552[stor151[address(msg.sender)][idx]].field_1800))
                    if not uint8(stor552[stor151[address(msg.sender)][idx]].field_1792):
                        revert with 0, 'Dealers: This dealer doesn't exist'
                    if idx >= mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _11617 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]
                idx = 0
                while idx < _11617:
                    if idx >= mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]
                    mem[32] = 552
                    _11660 = sha3(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129], 552)
                    _11661 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_11661] = stor552[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]].field_0
                    if bool(stor1[_11660].field_0):
                        if bool(stor1[_11660].field_0) == uint255(stor1[_11660].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _11731 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor1[_11660].field_0) * 0.5) + 32
                        mem[_11731] = uint255(stor1[_11660].field_0) * 0.5
                        if bool(stor1[_11660].field_0):
                            if bool(stor1[_11660].field_0) == uint255(stor1[_11660].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11660].field_0):
                                if 31 >= uint255(stor1[_11660].field_0) * 0.5:
                                    mem[_11731 + 32] = 256 * Mask(248, 0, stor1[_11660].field_8)
                                else:
                                    mem[0] = _11660 + 1
                                    mem[_11731 + 32] = stor[sha3(_11660 + 1)]
                                    s = _11731 + 32
                                    t = sha3(_11660 + 1)
                                    while _11731 + (uint255(stor1[_11660].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11660].field_0) == stor1[_11660].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11660].field_1 % 128:
                                if 31 >= stor1[_11660].field_1 % 128:
                                    mem[_11731 + 32] = 256 * Mask(248, 0, stor1[_11660].field_8)
                                else:
                                    mem[0] = _11660 + 1
                                    mem[_11731 + 32] = stor[sha3(_11660 + 1)]
                                    s = _11731 + 32
                                    t = sha3(_11660 + 1)
                                    while _11731 + stor1[_11660].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11661 + 32] = _11731
                        mem[_11661 + 64] = stor2[_11660]
                        mem[_11661 + 96] = stor3[_11660]
                        mem[_11661 + 128] = stor4[_11660]
                        mem[_11661 + 160] = stor5[_11660]
                        mem[_11661 + 192] = stor6[_11660]
                        mem[_11661 + 224] = bool(uint8(stor7[_11660].field_0))
                        mem[_11661 + 256] = bool(uint8(stor7[_11660].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11731 + 32 len uint255(stor1[_11660].field_0) * 0.5]):
                            revert with 0, 'Dealers: Name not available'
                    else:
                        if bool(stor1[_11660].field_0) == stor1[_11660].field_1 % 128 < 32:
                            revert with 0, 34
                        _11757 = mem[64]
                        mem[64] = mem[64] + ceil32(stor1[_11660].field_1 % 128) + 32
                        mem[_11757] = stor1[_11660].field_1 % 128
                        if bool(stor1[_11660].field_0):
                            if bool(stor1[_11660].field_0) == uint255(stor1[_11660].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1[_11660].field_0):
                                if 31 >= uint255(stor1[_11660].field_0) * 0.5:
                                    mem[_11757 + 32] = 256 * Mask(248, 0, stor1[_11660].field_8)
                                else:
                                    mem[0] = _11660 + 1
                                    mem[_11757 + 32] = stor[sha3(_11660 + 1)]
                                    s = _11757 + 32
                                    t = sha3(_11660 + 1)
                                    while _11757 + (uint255(stor1[_11660].field_0) * 0.5) > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor1[_11660].field_0) == stor1[_11660].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1[_11660].field_1 % 128:
                                if 31 >= stor1[_11660].field_1 % 128:
                                    mem[_11757 + 32] = 256 * Mask(248, 0, stor1[_11660].field_8)
                                else:
                                    mem[0] = _11660 + 1
                                    mem[_11757 + 32] = stor[sha3(_11660 + 1)]
                                    s = _11757 + 32
                                    t = sha3(_11660 + 1)
                                    while _11757 + stor1[_11660].field_1 % 128 > s:
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_11661 + 32] = _11757
                        mem[_11661 + 64] = stor2[_11660]
                        mem[_11661 + 96] = stor3[_11660]
                        mem[_11661 + 128] = stor4[_11660]
                        mem[_11661 + 160] = stor5[_11660]
                        mem[_11661 + 192] = stor6[_11660]
                        mem[_11661 + 224] = bool(uint8(stor7[_11660].field_0))
                        mem[_11661 + 256] = bool(uint8(stor7[_11660].field_8))
                        if sha3(mem[128 len mem[96]]) == sha3(mem[_11757 + 32 len stor1[_11660].field_1 % 128]):
                            revert with 0, 'Dealers: Name not available'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 36] = presales[address(msg.sender)]
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.accountBurn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, presales[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if presales[address(msg.sender)] and 28 > -1 / presales[address(msg.sender)]:
                    revert with 0, 17
                if presales[address(msg.sender)] < 28 * presales[address(msg.sender)] / 100:
                    revert with 0, 17
                mem[mem[64]] = 0xd02dd2b300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 28 * presales[address(msg.sender)] / 100
                require ext_code.size(universeImplementationAddress)
                call universeImplementationAddress.liquidityReward(uint256 arg1) with:
                     gas gas_remaining wei
                    args (28 * presales[address(msg.sender)] / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor551++
                if totalValueLocked > !(presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)):
                    revert with 0, 17
                totalValueLocked = totalValueLocked + presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                mem[0] = tierLevel.length
                mem[32] = 553
                if uint8(stor553[stor559.length].field_512):
                    if tierLevel.length != stor553[stor559.length].field_0:
                        revert with 0, 'Dealers: rewardMult does not match in TierStorage'
                    if presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100) > -stor553[stor559.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor553[stor559.length].field_256 >= 0:
                        revert with 0, 17
                    if stor553[stor559.length].field_256 < 0 and presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100) < -stor553[stor559.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    stor553[stor559.length].field_256 = stor553[stor559.length].field_256 + presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    _12397 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12397] = stor551
                    mem[_12397 + 32] = 96
                    mem[_12397 + 64] = block.timestamp
                    mem[_12397 + 96] = block.timestamp
                    mem[_12397 + 128] = tierLevel.length
                    mem[_12397 + 160] = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    mem[_12397 + 192] = 0
                    mem[_12397 + 224] = 1
                    mem[_12397 + 256] = 1
                else:
                    if presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100) <= 0:
                        revert with 0, 'Dealers: Fatal error while creating new TierStorage. Amount cannot be below zero.'
                    _12343 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_12343] = tierLevel.length
                    mem[_12343 + 32] = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    mem[_12343 + 64] = 1
                    mem[32] = 553
                    stor553[stor559.length].field_0 = tierLevel.length
                    stor553[stor559.length].field_256 = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    uint8(stor553[stor559.length].field_512) = 1
                    stor554.length++
                    mem[0] = 554
                    storCCA5[stor554.length] = tierLevel.length
                    _12365 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_12365] = stor551
                    mem[_12365 + 32] = 96
                    mem[_12365 + 64] = block.timestamp
                    mem[_12365 + 96] = block.timestamp
                    mem[_12365 + 128] = tierLevel.length
                    mem[_12365 + 160] = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
                    mem[_12365 + 192] = 0
                    mem[_12365 + 224] = 1
                    mem[_12365 + 256] = 1
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
            stor552[stor551].field_1280 = presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)
            stor552[stor551].field_1536 = 0
            uint8(stor552[stor551].field_1792) = 1
            Mask(248, 0, stor552[stor551].field_1800) = 1
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
            emit Create((presales[address(msg.sender)] - (28 * presales[address(msg.sender)] / 100)), msg.sender, stor551);
    stor401 = 1
    return stor551
}



}

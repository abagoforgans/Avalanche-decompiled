contract main {




// =====================  Runtime code  =====================


address tokenAddress;
uint256 totalSupply;
mapping of struct balanceOf;
address owner;
mapping of uint8 stor4;
uint8 stor5;
mapping of uint8 stor6;
address nifAddress;
address feeAddress;
uint256 farmFee;
uint256 farmFeeMinimumNif;
array of uint256 wildcards;
uint8 stor12; offset 160
address wildcardErc1155Address;
array of address farmsLength;
uint8 constructed;
uint256 periodStart;
uint256 minStake;
uint256 maxStake;
uint256 rewardRate;
uint256 totalFeesCollected;
uint256 spentScore;
address rescuerAddress;
address controllerAddress;
mapping of uint256 pendingWithdrawals;
mapping of uint256 lastUpdateTime;
mapping of uint256 points;
mapping of struct cardReleaseTime;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function isCloned() {
    return bool(stor12)
}

function cardReleaseTime(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return cardReleaseTime[address(arg1)][arg2].field_256
}

function getFarmsLength(address arg1) {
    require calldata.size - 4 >= 32
    return uint256(farmsLength[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function nifAddress() {
    return nifAddress
}

function cardPoints(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return cardReleaseTime[address(arg1)][arg2].field_0
}

function constructed() {
    return bool(constructed)
}

function lastUpdateTime(address arg1) {
    require calldata.size - 4 >= 32
    return lastUpdateTime[arg1]
}

function points(address arg1) {
    require calldata.size - 4 >= 32
    return points[arg1]
}

function minStake() {
    return minStake
}

function rescuer() {
    return rescuerAddress
}

function farmFee() {
    return farmFee
}

function feeAddress() {
    return feeAddress
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor4[address(arg1)])
}

function paused() {
    return bool(stor5)
}

function totalFeesCollected() {
    return totalFeesCollected
}

function farmFeeMinimumNif() {
    return farmFeeMinimumNif
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_0
}

function rewardRate() {
    return rewardRate
}

function spentScore() {
    return spentScore
}

function owner() {
    return owner
}

function farms(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(farmsLength[arg1])
    return address(farmsLength[arg1][arg2])
}

function cards(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return cardReleaseTime[arg1][arg2].field_0, 
           cardReleaseTime[arg1][arg2].field_256,
           cardReleaseTime[arg1][arg2].field_512,
           cardReleaseTime[arg1][arg2].field_768,
           address(cardReleaseTime[arg1][arg2].field_1024),
           address(cardReleaseTime[arg1][arg2].field_1280),
           bool(uint8(cardReleaseTime[arg1][arg2].field_1440)),
           bool(uint8(cardReleaseTime[arg1][arg2].field_1448)),
           cardReleaseTime[arg1][arg2].field_1536
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor6[address(arg1)])
}

function wildcardErc1155Address() {
    return wildcardErc1155Address
}

function wildcards(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < wildcards.length
    return wildcards[arg1]
}

function maxStake() {
    return maxStake
}

function periodStart() {
    return periodStart
}

function supply(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return cardReleaseTime[address(arg1)][arg2].field_1536
}

function pendingWithdrawals(address arg1) {
    require calldata.size - 4 >= 32
    return pendingWithdrawals[arg1]
}

function controller() {
    return controllerAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawFee() {
    if not pendingWithdrawals[msg.sender]:
        revert with 0, 'nothing to withdraw'
    pendingWithdrawals[msg.sender] = 0
    call msg.sender with:
       value pendingWithdrawals[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cardMintFee(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if cardReleaseTime[address(arg1)][arg2].field_768 + cardReleaseTime[address(arg1)][arg2].field_512 < cardReleaseTime[address(arg1)][arg2].field_512:
        revert with 0, 'SafeMath#add: OVERFLOW'
    return (cardReleaseTime[address(arg1)][arg2].field_768 + cardReleaseTime[address(arg1)][arg2].field_512)
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if arg1 != this.address:
        return 0
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function iHaveAnyWildcard() {
    idx = 0
    while idx < wildcards.length:
        mem[0] = 11
        mem[100] = msg.sender
        mem[132] = wildcards[idx]
        require ext_code.size(wildcardErc1155Address)
        staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, wildcards[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function renouncePauser() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor4[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceWhitelistAdmin() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor6[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function setRescuer(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    rescuerAddress = arg1
}

function setCloned() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor12:
        revert with 0, 'eNot callable from clone'
    stor12 = 1
}

function pause() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe506175736572526f6c653a2063616c6c657220646f6573206e6f742068617665207468652050617573657220726f6c,
                    mem[212 len 16]
    if stor5:
        revert with 0, 'Pausable: paused'
    stor5 = 1
    emit Paused(msg.sender);
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if arg1 != this.address:
        return 0
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function unpause() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe506175736572526f6c653a2063616c6c657220646f6573206e6f742068617665207468652050617573657220726f6c,
                    mem[212 len 16]
    if not stor5:
        revert with 0, 'Pausable: not paused'
    stor5 = 0
    emit Unpaused(msg.sender);
}

function setFarmFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor12:
        revert with 0, 'eNot callable from clone'
    farmFee = arg1
}

function setRewardRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if arg1 <= 0:
        revert with 0, 'Reward rate too low'
    rewardRate = arg1
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor12:
        revert with 0, 'eNot callable from clone'
    feeAddress = arg1
}

function setNifAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor12:
        revert with 0, 'eNot callable from clone'
    nifAddress = arg1
}

function setControllerFee(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    cardReleaseTime[address(arg1)][arg2].field_768 = arg3
}

function setFarmFeeMinimumNif(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor12:
        revert with 0, 'eNot callable from clone'
    farmFeeMinimumNif = arg1
}

function setWildcardErc1155Address(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor12:
        revert with 0, 'eNot callable from clone'
    wildcardErc1155Address = arg1
}

function setWildcard(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor12:
        revert with 0, 'eNot callable from clone'
    wildcards.length++
    stor175B[stor11.length] = arg1
}

function setShadowed(address arg1, uint256 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    Mask(88, 0, cardReleaseTime[address(arg1)][arg2].field_1448) = Mask(88, 0, arg3)
    emit CardShadowed(arg1, arg2, arg3);
}

function emitFarmUri(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    emit FarmUri(Array(len=arg1.length, data=arg1[all]), this.address);
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    pendingWithdrawals[stor22] = 0
    if pendingWithdrawals[stor22] + pendingWithdrawals[arg1] < pendingWithdrawals[arg1]:
        revert with 0, 'SafeMath#add: OVERFLOW'
    pendingWithdrawals[address(arg1)] = pendingWithdrawals[stor22] + pendingWithdrawals[arg1]
    controllerAddress = arg1
}

function removeNfts(address arg1, uint256 arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg4), arg2, arg3, 160, 0, mem[292]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Removed(arg3, arg1, arg2, arg4);
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe506175736572526f6c653a2063616c6c657220646f6573206e6f742068617665207468652050617573657220726f6c,
                    mem[212 len 16]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor4[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor4[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor6[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor6[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function setMinMaxStake(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x50726f626c656d2077697468206d696e20616e64206d6178207374616b65207365747500,
                    mem[200 len 28]
    if arg2 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x50726f626c656d2077697468206d696e20616e64206d6178207374616b65207365747500,
                    mem[200 len 28]
    minStake = arg1
    maxStake = arg2
}

function removeWildcard(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor12:
        revert with 0, 'eNot callable from clone'
    require wildcards.length - 1 < wildcards.length
    idx = 0
    while idx < wildcards.length:
        mem[0] = 11
        if wildcards[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < wildcards.length
        wildcards[idx] = wildcards[wildcards.length]
        require wildcards.length - 1 < wildcards.length
        wildcards[wildcards.length] = 0
        wildcards.length--
        if wildcards.length > wildcards.length - 1:
            idx = wildcards.length + sha3(11) - 1
            while sha3(11) + wildcards.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}

function updateNftData(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7, bool arg8, bool arg9, string arg10) {
    require calldata.size - 4 >= 320
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if arg2 <= 0:
        revert with 0, 'Invalid token id'
    cardReleaseTime[address(arg1)][arg2].field_0 = arg3
    cardReleaseTime[address(arg1)][arg2].field_256 = arg7
    cardReleaseTime[address(arg1)][arg2].field_512 = arg4
    cardReleaseTime[address(arg1)][arg2].field_768 = arg5
    address(cardReleaseTime[address(arg1)][arg2].field_1024) = arg6
    uint8(cardReleaseTime[address(arg1)][arg2].field_1440) = uint8(arg8)
    Mask(88, 0, cardReleaseTime[address(arg1)][arg2].field_1448) = Mask(88, 0, arg9)
    Mask(80, 0, cardReleaseTime[address(arg1)][arg2].field_1456) = Mask(80, 16, arg8) >> 16
    Mask(80, 0, cardReleaseTime[address(arg1)][arg2].field_1456) = 0
    emit CardType(arg1, arg2, sha3(arg10[all]));
}

function init(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, address arg5, string arg6, address arg7) {
    require calldata.size - 4 >= 224
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    if constructed:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x73556e696674794661726d206d757374206e6f7420626520636f6e737472756374656420796574206f7220636c6f6e6564,
                    mem[213 len 15]
    if stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x73556e696674794661726d206d757374206e6f7420626520636f6e737472756374656420796574206f7220636c6f6e6564,
                    mem[213 len 15]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x50726f626c656d2077697468206d696e20616e64206d6178207374616b65207365747500,
                    mem[200 len 28]
    if arg3 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x50726f626c656d2077697468206d696e20616e64206d6178207374616b65207365747500,
                    mem[200 len 28]
    rewardRate = 24 * 3600
    periodStart = arg1
    minStake = arg2
    maxStake = arg3
    controllerAddress = arg4
    tokenAddress = arg5
    owner = msg.sender
    emit OwnershipTransferred(0, msg.sender);
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor6[address(msg.sender)]:
        revert with 0, 'Roles: account already has role'
    stor6[address(msg.sender)] = 1
    emit WhitelistAdminAdded(msg.sender);
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor4[address(msg.sender)]:
        revert with 0, 'Roles: account already has role'
    stor4[address(msg.sender)] = 1
    emit PauserAdded(msg.sender);
    mem[192 len arg6.length] = arg6[all]
    mem[arg6.length + 192] = 0
    emit FarmCreated(address rg1, address rg2, uint256 rg3, string rg4):
                     0,
                     64,
                     arg6.length,
                     arg6[all],
                     mem[arg6.length + 192 len ceil32(arg6.length) - arg6.length],
                     arg7,
                     this.address,
    emit FarmUri(Array(len=arg6.length, data=arg6[all]), this.address);
}

function earned(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 1
    while idx < ext_call.return_data[31 len 1]:
        if not s:
            idx = idx + 1
            s = 0
            continue 
        if 10 * s / s != 10:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        idx = idx + 1
        s = 10 * s
        continue 
    if lastUpdateTime[address(arg1)] > block.timestamp:
        revert with 0, 'SafeMath#sub: UNDERFLOW'
    if not block.timestamp - lastUpdateTime[address(arg1)]:
        if rewardRate <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require rewardRate
        if not 0 / rewardRate:
            if s <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require s
            if (0 / s) + points[address(arg1)] < points[address(arg1)]:
                revert with 0, 'SafeMath#add: OVERFLOW'
            return ((0 / s) + points[address(arg1)])
        if balanceOf[address(arg1)].field_0 * 0 / rewardRate / 0 / rewardRate != balanceOf[address(arg1)].field_0:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if s <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require s
        if (balanceOf[address(arg1)].field_0 * 0 / rewardRate / s) + points[address(arg1)] < points[address(arg1)]:
            revert with 0, 'SafeMath#add: OVERFLOW'
        return ((balanceOf[address(arg1)].field_0 * 0 / rewardRate / s) + points[address(arg1)])
    if (block.timestamp * s) - (lastUpdateTime[address(arg1)] * s) / block.timestamp - lastUpdateTime[address(arg1)] != s:
        revert with 0, 'SafeMath#mul: OVERFLOW'
    if rewardRate <= 0:
        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
    require rewardRate
    if not (block.timestamp * s) - (lastUpdateTime[address(arg1)] * s) / rewardRate:
        if s <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require s
        if (0 / s) + points[address(arg1)] < points[address(arg1)]:
            revert with 0, 'SafeMath#add: OVERFLOW'
        return ((0 / s) + points[address(arg1)])
    if balanceOf[address(arg1)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(arg1)] * s) / rewardRate / (block.timestamp * s) - (lastUpdateTime[address(arg1)] * s) / rewardRate != balanceOf[address(arg1)].field_0:
        revert with 0, 'SafeMath#mul: OVERFLOW'
    if s <= 0:
        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
    require s
    if (balanceOf[address(arg1)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(arg1)] * s) / rewardRate / s) + points[address(arg1)] < points[address(arg1)]:
        revert with 0, 'SafeMath#add: OVERFLOW'
    return ((balanceOf[address(arg1)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(arg1)] * s) / rewardRate / s) + points[address(arg1)])
}

function addNfts(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, address arg6, uint256 arg7, string arg8, uint256 arg9) {
    require calldata.size - 4 >= 288
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if arg7 <= 0:
        revert with 0, 'Invalid token id'
    if arg9 <= 0:
        revert with 0, 'Invalid card amount'
    cardReleaseTime[address(arg6)][arg7].field_0 = arg1
    cardReleaseTime[address(arg6)][arg7].field_256 = arg5
    cardReleaseTime[address(arg6)][arg7].field_512 = arg2
    cardReleaseTime[address(arg6)][arg7].field_768 = arg3
    address(cardReleaseTime[address(arg6)][arg7].field_1024) = arg4
    address(cardReleaseTime[address(arg6)][arg7].field_1280) = arg6
    if arg9 + cardReleaseTime[address(arg6)][arg7].field_1536 < cardReleaseTime[address(arg6)][arg7].field_1536:
        revert with 0, 'SafeMath#add: OVERFLOW'
    cardReleaseTime[address(arg6)][arg7].field_1536 += arg9
    mem[132] = this.address
    mem[164] = arg7
    mem[196] = arg9
    mem[228] = 160
    mem[260] = 0
    require ext_code.size(arg6)
    call arg6.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), this.address, arg7, arg9, 160, 0, mem[292]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128 len arg8.length] = arg8[all]
    mem[arg8.length + 128] = 0
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg8.length) + 230 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if arg3 + arg2 < arg2:
        revert with 0, 'SafeMath#add: OVERFLOW'
    mem[ceil32(arg8.length) + 128] = arg1
    mem[ceil32(arg8.length) + 160] = arg3 + arg2
    mem[ceil32(arg8.length) + 192] = arg5
    emit CardAdded(Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[arg8.length + 160 len ceil32(arg8.length) + -arg8.length + 32], arg5, arg6, arg7, arg4);
    mem[ceil32(arg8.length) + 128 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
    mem[ceil32(arg8.length) + floor32(arg8.length) + 128] = mem[ceil32(arg8.length) + floor32(arg8.length) + 128] and 256^(-(arg8.length % 32) + 32) - 1 or call.data[arg8 + floor32(arg8.length) + 36 len arg8.length % 32], Mask(8 * -(arg8.length % 32) + 32, -(8 * -(arg8.length % 32) + 32) + 256, 0) << (8 * -(arg8.length % 32) + 32) - 256 and !(256^(-(arg8.length % 32) + 32) - 1)
    emit CardType(arg6, arg7, sha3(call.data[arg8 + 36 len floor32(arg8.length)], mem[ceil32(arg8.length) + floor32(arg8.length) + 128 len arg8.length % 32]));
    mem[ceil32(arg8.length) + 128] = arg7
    return Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[arg8.length + 160 len -arg8.length + ceil32(arg8.length)]
}

function createNft(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, address arg7, string arg8, string arg9) {
    require calldata.size - 4 >= 288
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    require arg9 <= 4294967296
    require arg9 + 36 <= calldata.size
    require arg9.length <= 4294967296 and arg9 + arg9.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    mem[132] = arg1
    mem[164] = 128
    mem[228] = arg8.length
    mem[260 len arg8.length] = arg8[all]
    mem[arg8.length + 260] = 0
    mem[196] = ceil32(arg8.length) + 160
    mem[ceil32(arg8.length) + 260] = 0
    require ext_code.size(arg7)
    call arg7.create(uint256 rg1, uint256 rg2, string rg3, bytes rg4) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg1, 128, ceil32(arg8.length) + 160, arg8.length, arg8[all], 0, mem[arg8.length + 292 len ceil32(arg8.length) + -arg8.length + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERC1155 create did not succeed'
    cardReleaseTime[address(arg7)][ext_call.return_data[0]].field_0 = arg2
    cardReleaseTime[address(arg7)][ext_call.return_data[0]].field_256 = arg6
    cardReleaseTime[address(arg7)][ext_call.return_data[0]].field_512 = arg3
    cardReleaseTime[address(arg7)][ext_call.return_data[0]].field_768 = arg4
    address(cardReleaseTime[address(arg7)][ext_call.return_data[0]].field_1024) = arg5
    address(cardReleaseTime[address(arg7)][ext_call.return_data[0]].field_1280) = arg7
    cardReleaseTime[address(arg7)][ext_call.return_data[0]].field_1536 = arg1
    mem[128 len arg9.length] = arg9[all]
    mem[arg9.length + 128] = 0
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x70526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg9.length) + 230 len 30]
    if not stor6[address(msg.sender)]:
        revert with 0, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if arg4 + arg3 < arg3:
        revert with 0, 'SafeMath#add: OVERFLOW'
    mem[ceil32(arg9.length) + 128] = arg2
    mem[ceil32(arg9.length) + 160] = arg4 + arg3
    mem[ceil32(arg9.length) + 192] = arg6
    emit CardAdded(Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len ceil32(arg9.length) + -arg9.length + 32], arg6, arg7, ext_call.return_data[0], arg5);
    mem[ceil32(arg9.length) + 128 len floor32(arg9.length)] = call.data[arg9 + 36 len floor32(arg9.length)]
    mem[ceil32(arg9.length) + floor32(arg9.length) + 128] = mem[ceil32(arg9.length) + floor32(arg9.length) + 128] and 256^(-(arg9.length % 32) + 32) - 1 or call.data[arg9 + floor32(arg9.length) + 36 len arg9.length % 32], Mask(8 * -(arg9.length % 32) + 32, -(8 * -(arg9.length % 32) + 32) + 256, 0) << (8 * -(arg9.length % 32) + 32) - 256 and !(256^(-(arg9.length % 32) + 32) - 1)
    emit CardType(arg7, ext_call.return_data[0], sha3(call.data[arg9 + 36 len floor32(arg9.length)], mem[ceil32(arg9.length) + floor32(arg9.length) + 128 len arg9.length % 32]));
    mem[ceil32(arg9.length) + 128] = ext_call.return_data[0]
    return Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len -arg9.length + ceil32(arg9.length)]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        if arg1 <= 0:
            revert with 0, 'Cannot withdraw 0'
        if arg1 > totalSupply:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        totalSupply -= arg1
        if arg1 > balanceOf[msg.sender].field_0:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        balanceOf[msg.sender].field_0 -= arg1
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    else:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 1
        while idx < ext_call.return_data[31 len 1]:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            if 10 * s / s != 10:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            idx = idx + 1
            s = 10 * s
            continue 
        if lastUpdateTime[address(msg.sender)] > block.timestamp:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if not block.timestamp - lastUpdateTime[address(msg.sender)]:
            if rewardRate <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require rewardRate
            if not 0 / rewardRate:
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (0 / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += 0 / s
            else:
                if balanceOf[address(msg.sender)].field_0 * 0 / rewardRate / 0 / rewardRate != balanceOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (balanceOf[address(msg.sender)].field_0 * 0 / rewardRate / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += balanceOf[address(msg.sender)].field_0 * 0 / rewardRate / s
            lastUpdateTime[address(msg.sender)] = block.timestamp
            if arg1 <= 0:
                revert with 0, 'Cannot withdraw 0'
            if arg1 > totalSupply:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            totalSupply -= arg1
            if arg1 > balanceOf[msg.sender].field_0:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            balanceOf[msg.sender].field_0 -= arg1
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        else:
            if (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / block.timestamp - lastUpdateTime[address(msg.sender)] != s:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if rewardRate <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require rewardRate
            if not (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate:
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (0 / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += 0 / s
                lastUpdateTime[address(msg.sender)] = block.timestamp
                if arg1 <= 0:
                    revert with 0, 'Cannot withdraw 0'
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                totalSupply -= arg1
                if arg1 > balanceOf[msg.sender].field_0:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                balanceOf[msg.sender].field_0 -= arg1
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            else:
                if balanceOf[address(msg.sender)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate / (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate != balanceOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (balanceOf[address(msg.sender)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += balanceOf[address(msg.sender)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate / s
                lastUpdateTime[address(msg.sender)] = block.timestamp
                if arg1 <= 0:
                    revert with 0, 'Cannot withdraw 0'
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                totalSupply -= arg1
                if arg1 > balanceOf[msg.sender].field_0:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                balanceOf[msg.sender].field_0 -= arg1
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                mem[324 len 0] = 0
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Withdrawn(arg1, msg.sender);
}

function exit() {
    if not msg.sender:
        if balanceOf[address(msg.sender)].field_0 <= 0:
            revert with 0, 'Cannot withdraw 0'
        if balanceOf[address(msg.sender)].field_0 > totalSupply:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        totalSupply -= balanceOf[address(msg.sender)].field_0
        if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, balanceOf[address(msg.sender)].field_32)
        mem[324 len 0] = 0
    else:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 1
        while idx < ext_call.return_data[31 len 1]:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            if 10 * s / s != 10:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            idx = idx + 1
            s = 10 * s
            continue 
        if lastUpdateTime[address(msg.sender)] > block.timestamp:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if not block.timestamp - lastUpdateTime[address(msg.sender)]:
            if rewardRate <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require rewardRate
            if 0 / rewardRate:
                if balanceOf[address(msg.sender)].field_0 * 0 / rewardRate / 0 / rewardRate != balanceOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (balanceOf[address(msg.sender)].field_0 * 0 / rewardRate / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += balanceOf[address(msg.sender)].field_0 * 0 / rewardRate / s
                lastUpdateTime[address(msg.sender)] = block.timestamp
                if balanceOf[address(msg.sender)].field_0 <= 0:
                    revert with 0, 'Cannot withdraw 0'
                if balanceOf[address(msg.sender)].field_0 > totalSupply:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                totalSupply -= balanceOf[address(msg.sender)].field_0
                if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, balanceOf[address(msg.sender)].field_32)
            else:
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (0 / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += 0 / s
                lastUpdateTime[address(msg.sender)] = block.timestamp
                if balanceOf[address(msg.sender)].field_0 <= 0:
                    revert with 0, 'Cannot withdraw 0'
                if balanceOf[address(msg.sender)].field_0 > totalSupply:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                totalSupply -= balanceOf[address(msg.sender)].field_0
                if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, balanceOf[address(msg.sender)].field_32)
                mem[324 len 0] = 0
        else:
            if (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / block.timestamp - lastUpdateTime[address(msg.sender)] != s:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if rewardRate <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require rewardRate
            if not (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate:
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (0 / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += 0 / s
                lastUpdateTime[address(msg.sender)] = block.timestamp
                if balanceOf[address(msg.sender)].field_0 <= 0:
                    revert with 0, 'Cannot withdraw 0'
                if balanceOf[address(msg.sender)].field_0 > totalSupply:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                totalSupply -= balanceOf[address(msg.sender)].field_0
                if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, balanceOf[address(msg.sender)].field_32)
            else:
                if balanceOf[address(msg.sender)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate / (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate != balanceOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (balanceOf[address(msg.sender)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += balanceOf[address(msg.sender)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate / s
                lastUpdateTime[address(msg.sender)] = block.timestamp
                if balanceOf[address(msg.sender)].field_0 <= 0:
                    revert with 0, 'Cannot withdraw 0'
                if balanceOf[address(msg.sender)].field_0 > totalSupply:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                totalSupply -= balanceOf[address(msg.sender)].field_0
                if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, balanceOf[address(msg.sender)].field_32)
                mem[324 len 0] = 0
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, 0, balanceOf[address(msg.sender)].field_0), mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        if stor5:
            revert with 0, 'Pausable: paused'
        if block.timestamp < periodStart:
            revert with 0, 'Pool not open'
        if balanceOf[address(msg.sender)].field_0 + arg1 < arg1:
            revert with 0, 'SafeMath#add: OVERFLOW'
        if balanceOf[address(msg.sender)].field_0 + arg1 < minStake:
            revert with 0, 'Too few deposit'
        if balanceOf[address(msg.sender)].field_0 + arg1 < arg1:
            revert with 0, 'SafeMath#add: OVERFLOW'
        if balanceOf[address(msg.sender)].field_0 + arg1 <= 0:
            revert with 0, 'Too few deposit'
        if balanceOf[address(msg.sender)].field_0 + arg1 < arg1:
            revert with 0, 'SafeMath#add: OVERFLOW'
        if balanceOf[address(msg.sender)].field_0 + arg1 > maxStake:
            revert with 0, 'Deposit limit reached'
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'SafeMath#add: OVERFLOW'
        totalSupply += arg1
        if arg1 + balanceOf[msg.sender].field_0 < balanceOf[msg.sender].field_0:
            revert with 0, 'SafeMath#add: OVERFLOW'
        balanceOf[msg.sender].field_0 += arg1
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
    else:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 1
        while idx < ext_call.return_data[31 len 1]:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            if 10 * s / s != 10:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            idx = idx + 1
            s = 10 * s
            continue 
        if lastUpdateTime[address(msg.sender)] > block.timestamp:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if block.timestamp - lastUpdateTime[address(msg.sender)]:
            if (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / block.timestamp - lastUpdateTime[address(msg.sender)] != s:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if rewardRate <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require rewardRate
            if (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate:
                if balanceOf[address(msg.sender)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate / (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate != balanceOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (balanceOf[address(msg.sender)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += balanceOf[address(msg.sender)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate / s
                lastUpdateTime[address(msg.sender)] = block.timestamp
                if stor5:
                    revert with 0, 'Pausable: paused'
                if block.timestamp < periodStart:
                    revert with 0, 'Pool not open'
                if balanceOf[address(msg.sender)].field_0 + arg1 < arg1:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if balanceOf[address(msg.sender)].field_0 + arg1 < minStake:
                    revert with 0, 'Too few deposit'
                if balanceOf[address(msg.sender)].field_0 + arg1 < arg1:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if balanceOf[address(msg.sender)].field_0 + arg1 <= 0:
                    revert with 0, 'Too few deposit'
                if balanceOf[address(msg.sender)].field_0 + arg1 < arg1:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if balanceOf[address(msg.sender)].field_0 + arg1 > maxStake:
                    revert with 0, 'Deposit limit reached'
                if arg1 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                totalSupply += arg1
                if arg1 + balanceOf[msg.sender].field_0 < balanceOf[msg.sender].field_0:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                balanceOf[msg.sender].field_0 += arg1
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
            else:
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (0 / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += 0 / s
                lastUpdateTime[address(msg.sender)] = block.timestamp
                if stor5:
                    revert with 0, 'Pausable: paused'
                if block.timestamp < periodStart:
                    revert with 0, 'Pool not open'
                if balanceOf[address(msg.sender)].field_0 + arg1 < arg1:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if balanceOf[address(msg.sender)].field_0 + arg1 < minStake:
                    revert with 0, 'Too few deposit'
                if balanceOf[address(msg.sender)].field_0 + arg1 < arg1:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if balanceOf[address(msg.sender)].field_0 + arg1 <= 0:
                    revert with 0, 'Too few deposit'
                if balanceOf[address(msg.sender)].field_0 + arg1 < arg1:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if balanceOf[address(msg.sender)].field_0 + arg1 > maxStake:
                    revert with 0, 'Deposit limit reached'
                if arg1 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                totalSupply += arg1
                if arg1 + balanceOf[msg.sender].field_0 < balanceOf[msg.sender].field_0:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                balanceOf[msg.sender].field_0 += arg1
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
        else:
            if rewardRate <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require rewardRate
            if not 0 / rewardRate:
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (0 / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += 0 / s
            else:
                if balanceOf[address(msg.sender)].field_0 * 0 / rewardRate / 0 / rewardRate != balanceOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (balanceOf[address(msg.sender)].field_0 * 0 / rewardRate / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += balanceOf[address(msg.sender)].field_0 * 0 / rewardRate / s
            lastUpdateTime[address(msg.sender)] = block.timestamp
            if stor5:
                revert with 0, 'Pausable: paused'
            if block.timestamp < periodStart:
                revert with 0, 'Pool not open'
            if balanceOf[address(msg.sender)].field_0 + arg1 < arg1:
                revert with 0, 'SafeMath#add: OVERFLOW'
            if balanceOf[address(msg.sender)].field_0 + arg1 < minStake:
                revert with 0, 'Too few deposit'
            if balanceOf[address(msg.sender)].field_0 + arg1 < arg1:
                revert with 0, 'SafeMath#add: OVERFLOW'
            if balanceOf[address(msg.sender)].field_0 + arg1 <= 0:
                revert with 0, 'Too few deposit'
            if balanceOf[address(msg.sender)].field_0 + arg1 < arg1:
                revert with 0, 'SafeMath#add: OVERFLOW'
            if balanceOf[address(msg.sender)].field_0 + arg1 > maxStake:
                revert with 0, 'Deposit limit reached'
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath#add: OVERFLOW'
            totalSupply += arg1
            if arg1 + balanceOf[msg.sender].field_0 < balanceOf[msg.sender].field_0:
                revert with 0, 'SafeMath#add: OVERFLOW'
            balanceOf[msg.sender].field_0 += arg1
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    emit Staked(arg1, msg.sender);
}

function redeem(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 1
        while idx < ext_call.return_data[31 len 1]:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            if 10 * s / s != 10:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            idx = idx + 1
            s = 10 * s
            continue 
        if lastUpdateTime[address(msg.sender)] > block.timestamp:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if not block.timestamp - lastUpdateTime[address(msg.sender)]:
            if rewardRate <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require rewardRate
            if not 0 / rewardRate:
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (0 / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += 0 / s
            else:
                if balanceOf[address(msg.sender)].field_0 * 0 / rewardRate / 0 / rewardRate != balanceOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (balanceOf[address(msg.sender)].field_0 * 0 / rewardRate / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += balanceOf[address(msg.sender)].field_0 * 0 / rewardRate / s
        else:
            if (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / block.timestamp - lastUpdateTime[address(msg.sender)] != s:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if rewardRate <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require rewardRate
            if not (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate:
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (0 / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += 0 / s
            else:
                if balanceOf[address(msg.sender)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate / (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate != balanceOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (balanceOf[address(msg.sender)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate / s) + points[address(msg.sender)] < points[address(msg.sender)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(msg.sender)] += balanceOf[address(msg.sender)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(msg.sender)] * s) / rewardRate / s
        lastUpdateTime[address(msg.sender)] = block.timestamp
    if not cardReleaseTime[address(arg1)][arg2].field_0:
        revert with 0, 'Card not found'
    if block.timestamp < cardReleaseTime[address(arg1)][arg2].field_256:
        revert with 0, 'Card not released'
    if points[msg.sender] < cardReleaseTime[address(arg1)][arg2].field_0:
        revert with 0, 'Redemption exceeds point balance'
    if cardReleaseTime[address(arg1)][arg2].field_768 + cardReleaseTime[address(arg1)][arg2].field_512 < cardReleaseTime[address(arg1)][arg2].field_512:
        revert with 0, 'SafeMath#add: OVERFLOW'
    if stor12:
        if cardReleaseTime[address(arg1)][arg2].field_768 + cardReleaseTime[address(arg1)][arg2].field_512 != msg.value:
            revert with 0, 'Send the proper ETH for the fees'
        if cardReleaseTime[address(arg1)][arg2].field_768 + cardReleaseTime[address(arg1)][arg2].field_512:
            if cardReleaseTime[address(arg1)][arg2].field_768 + cardReleaseTime[address(arg1)][arg2].field_512 + totalFeesCollected < totalFeesCollected:
                revert with 0, 'SafeMath#add: OVERFLOW'
            totalFeesCollected = cardReleaseTime[address(arg1)][arg2].field_768 + cardReleaseTime[address(arg1)][arg2].field_512 + totalFeesCollected
            if cardReleaseTime[address(arg1)][arg2].field_768 + pendingWithdrawals[stor22] < pendingWithdrawals[stor22]:
                revert with 0, 'SafeMath#add: OVERFLOW'
            pendingWithdrawals[stor22] += cardReleaseTime[address(arg1)][arg2].field_768
            if cardReleaseTime[address(arg1)][arg2].field_512 + pendingWithdrawals[address(stor26[address(arg1)][arg2].field_1024)] < pendingWithdrawals[address(stor26[address(arg1)][arg2].field_1024)]:
                revert with 0, 'SafeMath#add: OVERFLOW'
            pendingWithdrawals[address(stor26[address(arg1)][arg2].field_1024)] += cardReleaseTime[address(arg1)][arg2].field_512
        if cardReleaseTime[address(arg1)][arg2].field_0 > points[msg.sender]:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        points[msg.sender] -= cardReleaseTime[address(arg1)][arg2].field_0
        if cardReleaseTime[address(arg1)][arg2].field_0 + spentScore < spentScore:
            revert with 0, 'SafeMath#add: OVERFLOW'
        spentScore += cardReleaseTime[address(arg1)][arg2].field_0
        require ext_code.size(address(cardReleaseTime[address(arg1)][arg2].field_1280))
        call address(cardReleaseTime[address(arg1)][arg2].field_1280).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
             gas gas_remaining wei
            args 0, uint32(this.address), msg.sender, arg2, 1, 160, 0, mem[292]
    else:
        require ext_code.size(nifAddress)
        staticcall nifAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= farmFeeMinimumNif:
            if msg.value:
                revert with 0, 'Send the proper ETH for the fees'
            if cardReleaseTime[address(arg1)][arg2].field_0 > points[msg.sender]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            points[msg.sender] -= cardReleaseTime[address(arg1)][arg2].field_0
            if cardReleaseTime[address(arg1)][arg2].field_0 + spentScore < spentScore:
                revert with 0, 'SafeMath#add: OVERFLOW'
            spentScore += cardReleaseTime[address(arg1)][arg2].field_0
            require ext_code.size(address(cardReleaseTime[address(arg1)][arg2].field_1280))
            call address(cardReleaseTime[address(arg1)][arg2].field_1280).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args 0, uint32(this.address), msg.sender, arg2, 1, 160, 0, mem[292]
        else:
            idx = 0
            while idx < wildcards.length:
                mem[0] = 11
                mem[100] = msg.sender
                mem[132] = wildcards[idx]
                require ext_code.size(wildcardErc1155Address)
                staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args msg.sender, wildcards[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    idx = idx + 1
                    continue 
                if msg.value:
                    revert with 0, 'Send the proper ETH for the fees'
                if cardReleaseTime[address(arg1)][arg2].field_0 > points[msg.sender]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                points[msg.sender] -= cardReleaseTime[address(arg1)][arg2].field_0
                if cardReleaseTime[address(arg1)][arg2].field_0 + spentScore < spentScore:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                spentScore += cardReleaseTime[address(arg1)][arg2].field_0
                require ext_code.size(address(cardReleaseTime[address(arg1)][arg2].field_1280))
                call address(cardReleaseTime[address(arg1)][arg2].field_1280).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args this.address, msg.sender, arg2, 1, 160, 0, mem[292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Redeemed(cardReleaseTime[address(arg1)][arg2].field_0, msg.sender, address(cardReleaseTime[address(arg1)][arg2].field_1280), arg2);
            if cardReleaseTime[address(arg1)][arg2].field_768 + cardReleaseTime[address(arg1)][arg2].field_512 != msg.value:
                revert with 0, 'Send the proper ETH for the fees'
            if cardReleaseTime[address(arg1)][arg2].field_768 + cardReleaseTime[address(arg1)][arg2].field_512:
                if cardReleaseTime[address(arg1)][arg2].field_768 + cardReleaseTime[address(arg1)][arg2].field_512 + totalFeesCollected < totalFeesCollected:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                totalFeesCollected = cardReleaseTime[address(arg1)][arg2].field_768 + cardReleaseTime[address(arg1)][arg2].field_512 + totalFeesCollected
                if cardReleaseTime[address(arg1)][arg2].field_768 + pendingWithdrawals[stor22] < pendingWithdrawals[stor22]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                pendingWithdrawals[stor22] += cardReleaseTime[address(arg1)][arg2].field_768
                if cardReleaseTime[address(arg1)][arg2].field_512 + pendingWithdrawals[address(stor26[address(arg1)][arg2].field_1024)] < pendingWithdrawals[address(stor26[address(arg1)][arg2].field_1024)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                pendingWithdrawals[address(stor26[address(arg1)][arg2].field_1024)] += cardReleaseTime[address(arg1)][arg2].field_512
            if cardReleaseTime[address(arg1)][arg2].field_0 > points[msg.sender]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            points[msg.sender] -= cardReleaseTime[address(arg1)][arg2].field_0
            if cardReleaseTime[address(arg1)][arg2].field_0 + spentScore < spentScore:
                revert with 0, 'SafeMath#add: OVERFLOW'
            spentScore += cardReleaseTime[address(arg1)][arg2].field_0
            require ext_code.size(address(cardReleaseTime[address(arg1)][arg2].field_1280))
            call address(cardReleaseTime[address(arg1)][arg2].field_1280).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args this.address, msg.sender, arg2, 1, 160, 0, mem[292]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Redeemed(cardReleaseTime[address(arg1)][arg2].field_0, msg.sender, address(cardReleaseTime[address(arg1)][arg2].field_1280), arg2);
}

function rescueScore(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        if rescuerAddress != msg.sender:
            revert with 0, '!rescuer'
        if points[address(arg1)] + spentScore < spentScore:
            revert with 0, 'SafeMath#add: OVERFLOW'
        spentScore += points[address(arg1)]
        points[address(arg1)] = 0
        if balanceOf[address(arg1)].field_0 > 0:
            if balanceOf[address(arg1)].field_0 > totalSupply:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            totalSupply -= balanceOf[address(arg1)].field_0
            if balanceOf[address(arg1)].field_0 > balanceOf[address(arg1)].field_0:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            balanceOf[address(arg1)].field_0 = 0
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 0, balanceOf[address(arg1)].field_32)
            mem[324 len 0] = 0
            call tokenAddress with:
                 gas gas_remaining wei
                args Mask(480, 0, balanceOf[address(arg1)].field_0), mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, balanceOf[address(arg1)].field_0
                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
    else:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 1
        while idx < ext_call.return_data[31 len 1]:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            if 10 * s / s != 10:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            idx = idx + 1
            s = 10 * s
            continue 
        if lastUpdateTime[address(arg1)] > block.timestamp:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if block.timestamp - lastUpdateTime[address(arg1)]:
            if (block.timestamp * s) - (lastUpdateTime[address(arg1)] * s) / block.timestamp - lastUpdateTime[address(arg1)] != s:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if rewardRate <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require rewardRate
            if (block.timestamp * s) - (lastUpdateTime[address(arg1)] * s) / rewardRate:
                if balanceOf[address(arg1)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(arg1)] * s) / rewardRate / (block.timestamp * s) - (lastUpdateTime[address(arg1)] * s) / rewardRate != balanceOf[address(arg1)].field_0:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (balanceOf[address(arg1)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(arg1)] * s) / rewardRate / s) + points[address(arg1)] < points[address(arg1)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(arg1)] += balanceOf[address(arg1)].field_0 * (block.timestamp * s) - (lastUpdateTime[address(arg1)] * s) / rewardRate / s
                lastUpdateTime[address(arg1)] = block.timestamp
                if rescuerAddress != msg.sender:
                    revert with 0, '!rescuer'
                if points[address(arg1)] + spentScore < spentScore:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                spentScore += points[address(arg1)]
                points[address(arg1)] = 0
                if balanceOf[address(arg1)].field_0 > 0:
                    if balanceOf[address(arg1)].field_0 > totalSupply:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    totalSupply -= balanceOf[address(arg1)].field_0
                    if balanceOf[address(arg1)].field_0 > balanceOf[address(arg1)].field_0:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    balanceOf[address(arg1)].field_0 = 0
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 0, balanceOf[address(arg1)].field_32)
                    call tokenAddress with:
                         gas gas_remaining wei
                        args Mask(480, 0, balanceOf[address(arg1)].field_0), mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, balanceOf[address(arg1)].field_0
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
            else:
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (0 / s) + points[address(arg1)] < points[address(arg1)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(arg1)] += 0 / s
                lastUpdateTime[address(arg1)] = block.timestamp
                if rescuerAddress != msg.sender:
                    revert with 0, '!rescuer'
                if points[address(arg1)] + spentScore < spentScore:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                spentScore += points[address(arg1)]
                points[address(arg1)] = 0
                if balanceOf[address(arg1)].field_0 > 0:
                    if balanceOf[address(arg1)].field_0 > totalSupply:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    totalSupply -= balanceOf[address(arg1)].field_0
                    if balanceOf[address(arg1)].field_0 > balanceOf[address(arg1)].field_0:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    balanceOf[address(arg1)].field_0 = 0
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 0, balanceOf[address(arg1)].field_32)
                    mem[324 len 0] = 0
                    call tokenAddress with:
                         gas gas_remaining wei
                        args Mask(480, 0, balanceOf[address(arg1)].field_0), mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, balanceOf[address(arg1)].field_0
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
        else:
            if rewardRate <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require rewardRate
            if not 0 / rewardRate:
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (0 / s) + points[address(arg1)] < points[address(arg1)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(arg1)] += 0 / s
            else:
                if balanceOf[address(arg1)].field_0 * 0 / rewardRate / 0 / rewardRate != balanceOf[address(arg1)].field_0:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if s <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require s
                if (balanceOf[address(arg1)].field_0 * 0 / rewardRate / s) + points[address(arg1)] < points[address(arg1)]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                points[address(arg1)] += balanceOf[address(arg1)].field_0 * 0 / rewardRate / s
            lastUpdateTime[address(arg1)] = block.timestamp
            if rescuerAddress != msg.sender:
                revert with 0, '!rescuer'
            if points[address(arg1)] + spentScore < spentScore:
                revert with 0, 'SafeMath#add: OVERFLOW'
            spentScore += points[address(arg1)]
            points[address(arg1)] = 0
            if balanceOf[address(arg1)].field_0 > 0:
                if balanceOf[address(arg1)].field_0 > totalSupply:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                totalSupply -= balanceOf[address(arg1)].field_0
                if balanceOf[address(arg1)].field_0 > balanceOf[address(arg1)].field_0:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                balanceOf[address(arg1)].field_0 = 0
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 0, balanceOf[address(arg1)].field_32)
                mem[324 len 0] = 0
                call tokenAddress with:
                     gas gas_remaining wei
                    args Mask(480, 0, balanceOf[address(arg1)].field_0), mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, balanceOf[address(arg1)].field_0
                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
    emit RescueRedeemed(points[address(arg1)], arg1);
    return points[address(arg1)]
}

function newFarm(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, address arg5, string arg6) payable {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    if stor12:
        revert with 0, 'eNot callable from clone'
    require ext_code.size(nifAddress)
    staticcall nifAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= farmFeeMinimumNif:
        create contract with 0 wei
                        code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
        mem[164] = arg3
        mem[196] = arg4
        mem[228] = arg5
        mem[292] = msg.sender
        mem[260] = 224
        mem[324] = arg6.length
        mem[356 len arg6.length] = arg6[all]
        mem[arg6.length + 356] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x7bd722b3 with:
             gas gas_remaining wei
            args 0, uint32(arg1), arg2, arg3, arg4, address(arg5), 224, address(msg.sender), arg6.length, arg6[all], mem[arg6.length + 356 len ceil32(arg6.length) - arg6.length]
    else:
        idx = 0
        while idx < wildcards.length:
            mem[0] = 11
            mem[100] = msg.sender
            mem[132] = wildcards[idx]
            require ext_code.size(wildcardErc1155Address)
            staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args msg.sender, wildcards[idx]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                idx = idx + 1
                continue 
            create contract with 0 wei
                            code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
            mem[164] = arg3
            mem[196] = arg4
            mem[228] = arg5
            mem[292] = msg.sender
            mem[260] = 224
            mem[324] = arg6.length
            mem[356 len arg6.length] = arg6[all]
            mem[arg6.length + 356] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x7bd722b3 with:
                 gas gas_remaining wei
                args arg1, arg2, 0, Mask(224, 0, arg3), address(arg4), address(arg5), 224, msg.sender, arg6.length, arg6[all], mem[arg6.length + 356 len ceil32(arg6.length) - arg6.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setCloned() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x7362d9c8 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x82dc1ec4 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x4c5a628c with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x6ef8d66d with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xf2fde38b with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint256(farmsLength[msg.sender])++
            address(farmsLength[msg.sender][uint256(farmsLength[msg.sender])]) = address(create.new_address)
            if ext_call.return_data[0] >= farmFeeMinimumNif:
                mem[192 len arg6.length] = arg6[all]
                mem[arg6.length + 192] = 0
                emit FarmCreated(address rg1, address rg2, uint256 rg3, string rg4):
                                 0,
                                 64,
                                 arg6.length,
                                 arg6[all],
                                 mem[arg6.length + 192 len ceil32(arg6.length) - arg6.length],
                                 msg.sender,
                                 address(create.new_address),
            else:
                idx = 0
                while idx < wildcards.length:
                    mem[0] = 11
                    mem[100] = msg.sender
                    mem[132] = wildcards[idx]
                    require ext_code.size(wildcardErc1155Address)
                    staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args msg.sender, wildcards[idx]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        idx = idx + 1
                        continue 
                    if ext_call.return_data[0] < farmFeeMinimumNif:
                        idx = 0
                        while idx < wildcards.length:
                            mem[0] = 11
                            mem[100] = msg.sender
                            mem[132] = wildcards[idx]
                            require ext_code.size(wildcardErc1155Address)
                            staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, wildcards[idx]
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                idx = idx + 1
                                continue 
                            mem[192 len arg6.length] = arg6[all]
                            mem[arg6.length + 192] = 0
                            emit FarmCreated(address rg1, address rg2, uint256 rg3, string rg4):
                                             0,
                                             64,
                                             arg6.length,
                                             arg6[all],
                                             mem[arg6.length + 192 len ceil32(arg6.length) - arg6.length],
                                             msg.sender,
                                             address(create.new_address),
                            emit FarmUri(Array(len=arg6.length, data=arg6[all]), address(create.new_address));
                        emit FarmCreated(farmFee, Array(len=arg6.length, data=arg6[all]), msg.sender, address(create.new_address));
                    else:
                        mem[192 len arg6.length] = arg6[all]
                        mem[arg6.length + 192] = 0
                        emit FarmCreated(address rg1, address rg2, uint256 rg3, string rg4):
                                         0,
                                         64,
                                         arg6.length,
                                         arg6[all],
                                         mem[arg6.length + 192 len ceil32(arg6.length) - arg6.length],
                                         msg.sender,
                                         address(create.new_address),
                    emit FarmUri(Array(len=arg6.length, data=arg6[all]), address(create.new_address));
                call feeAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < farmFeeMinimumNif:
                    idx = 0
                    while idx < wildcards.length:
                        mem[0] = 11
                        mem[100] = msg.sender
                        mem[132] = wildcards[idx]
                        require ext_code.size(wildcardErc1155Address)
                        staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args msg.sender, wildcards[idx]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            idx = idx + 1
                            continue 
                        mem[192 len arg6.length] = arg6[all]
                        mem[arg6.length + 192] = 0
                        emit FarmCreated(address rg1, address rg2, uint256 rg3, string rg4):
                                         0,
                                         64,
                                         arg6.length,
                                         arg6[all],
                                         mem[arg6.length + 192 len ceil32(arg6.length) - arg6.length],
                                         msg.sender,
                                         address(create.new_address),
                        emit FarmUri(Array(len=arg6.length, data=arg6[all]), address(create.new_address));
                    emit FarmCreated(farmFee, Array(len=arg6.length, data=arg6[all]), msg.sender, address(create.new_address));
                else:
                    mem[192 len arg6.length] = arg6[all]
                    mem[arg6.length + 192] = 0
                    emit FarmCreated(address rg1, address rg2, uint256 rg3, string rg4):
                                     0,
                                     64,
                                     arg6.length,
                                     arg6[all],
                                     mem[arg6.length + 192 len ceil32(arg6.length) - arg6.length],
                                     msg.sender,
                                     address(create.new_address),
            emit FarmUri(Array(len=arg6.length, data=arg6[all]), address(create.new_address));
        if farmFee != msg.value:
            revert with 0, 'Invalid farm fee'
        create contract with 0 wei
                        code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
        mem[164] = arg3
        mem[196] = arg4
        mem[228] = arg5
        mem[292] = msg.sender
        mem[260] = 224
        mem[324] = arg6.length
        mem[356 len arg6.length] = arg6[all]
        mem[arg6.length + 356] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x7bd722b3 with:
             gas gas_remaining wei
            args arg1, arg2, 0, Mask(224, 0, arg3), address(arg4), address(arg5), 224, msg.sender, arg6.length, arg6[all], mem[arg6.length + 356 len ceil32(arg6.length) - arg6.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setCloned() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x7362d9c8 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x82dc1ec4 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x4c5a628c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x6ef8d66d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(farmsLength[msg.sender])++
    address(farmsLength[msg.sender][uint256(farmsLength[msg.sender])]) = address(create.new_address)
    if ext_call.return_data[0] >= farmFeeMinimumNif:
        mem[192 len arg6.length] = arg6[all]
        mem[arg6.length + 192] = 0
        emit FarmCreated(address rg1, address rg2, uint256 rg3, string rg4):
                         0,
                         64,
                         arg6.length,
                         arg6[all],
                         mem[arg6.length + 192 len ceil32(arg6.length) - arg6.length],
                         msg.sender,
                         address(create.new_address),
    else:
        idx = 0
        while idx < wildcards.length:
            mem[0] = 11
            mem[100] = msg.sender
            mem[132] = wildcards[idx]
            require ext_code.size(wildcardErc1155Address)
            staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args msg.sender, wildcards[idx]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                idx = idx + 1
                continue 
            if ext_call.return_data[0] < farmFeeMinimumNif:
                idx = 0
                while idx < wildcards.length:
                    mem[0] = 11
                    mem[100] = msg.sender
                    mem[132] = wildcards[idx]
                    require ext_code.size(wildcardErc1155Address)
                    staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args msg.sender, wildcards[idx]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        idx = idx + 1
                        continue 
                    mem[192 len arg6.length] = arg6[all]
                    mem[arg6.length + 192] = 0
                    emit FarmCreated(address rg1, address rg2, uint256 rg3, string rg4):
                                     0,
                                     64,
                                     arg6.length,
                                     arg6[all],
                                     mem[arg6.length + 192 len ceil32(arg6.length) - arg6.length],
                                     msg.sender,
                                     address(create.new_address),
                    emit FarmUri(Array(len=arg6.length, data=arg6[all]), address(create.new_address));
                emit FarmCreated(farmFee, Array(len=arg6.length, data=arg6[all]), msg.sender, address(create.new_address));
            else:
                mem[192 len arg6.length] = arg6[all]
                mem[arg6.length + 192] = 0
                emit FarmCreated(address rg1, address rg2, uint256 rg3, string rg4):
                                 0,
                                 64,
                                 arg6.length,
                                 arg6[all],
                                 mem[arg6.length + 192 len ceil32(arg6.length) - arg6.length],
                                 msg.sender,
                                 address(create.new_address),
            emit FarmUri(Array(len=arg6.length, data=arg6[all]), address(create.new_address));
        call feeAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] < farmFeeMinimumNif:
            idx = 0
            while idx < wildcards.length:
                mem[0] = 11
                mem[100] = msg.sender
                mem[132] = wildcards[idx]
                require ext_code.size(wildcardErc1155Address)
                staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args msg.sender, wildcards[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    idx = idx + 1
                    continue 
                mem[192 len arg6.length] = arg6[all]
                mem[arg6.length + 192] = 0
                emit FarmCreated(address rg1, address rg2, uint256 rg3, string rg4):
                                 0,
                                 64,
                                 arg6.length,
                                 arg6[all],
                                 mem[arg6.length + 192 len ceil32(arg6.length) - arg6.length],
                                 msg.sender,
                                 address(create.new_address),
                emit FarmUri(Array(len=arg6.length, data=arg6[all]), address(create.new_address));
            emit FarmCreated(farmFee, Array(len=arg6.length, data=arg6[all]), msg.sender, address(create.new_address));
        else:
            mem[192 len arg6.length] = arg6[all]
            mem[arg6.length + 192] = 0
            emit FarmCreated(address rg1, address rg2, uint256 rg3, string rg4):
                             0,
                             64,
                             arg6.length,
                             arg6[all],
                             mem[arg6.length + 192 len ceil32(arg6.length) - arg6.length],
                             msg.sender,
                             address(create.new_address),
    emit FarmUri(Array(len=arg6.length, data=arg6[all]), address(create.new_address));
}



}

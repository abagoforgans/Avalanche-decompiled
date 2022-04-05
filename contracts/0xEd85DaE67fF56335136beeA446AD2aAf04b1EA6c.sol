contract main {




// =====================  Runtime code  =====================


#
#  - callFinalizeDG()
#  - platformCallsFinalizeRefundAnytime(address arg1)
#  - checkTotalEthraisedOfPresale(address arg1)
#  - CreatePresaleDep(string[10] arg1, address arg2, uint256[4] arg3, uint256[6] arg4, uint256[3] arg5, address arg6)
#  - platformCallsFinalizeRefund(address arg1)
#  - voterCallsFinalizeRefund(address arg1)
#  - voterCallsFinalizeRefundAnytime(address arg1)
#
address sub_06e29712Address;
uint256 stor1;
address owner;
address voterAddress;
uint256 presaleFees;
uint256 whitelistFees;
uint256 minUniPercentage;
address presaleDappAddr;
address routerDappAddr;
address filterAddress;
uint256 totalRaisedOnPlatform;
uint256 totalRefundedFromPlatform;
uint256 deltaStartEndTime;
uint256 tokenFee;
mapping of struct presales;
mapping of address presaleOwners;
mapping of address tokenAddrToOwnerAddr;
mapping of address presaleAddrToOwnerAddr;
mapping of uint256 presaleOwnerToIndex;
mapping of uint256 tokenAddrToIndex;
mapping of uint8 stor20;
mapping of address routerRecord;
mapping of uint256 routerNumber;
uint256 totalRouters;
uint256 ownerIndex;
uint256 extraAmountPer;
uint256 extraAmountPerVal;
uint256 hundred;
mapping of uint8 stor28;
uint8 creationEnabled;

function getNumberOfPresaleOwners() {
    return ownerIndex
}

function sub_06e29712(?) {
    return sub_06e29712Address
}

function finalizeBlocked(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor28[arg1])
}

function extraAmountPerVal() {
    return extraAmountPerVal
}

function creationEnabled() {
    return bool(creationEnabled)
}

function minUniPercentage() {
    return minUniPercentage
}

function deltaStartEndTime() {
    return deltaStartEndTime
}

function tokenAddrToIndex(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenAddrToIndex[arg1]
}

function totalRouters() {
    return totalRouters
}

function sub_3db03e86(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return presales[address(arg1)].field_1536, presales[address(arg1)].field_1792, presales[address(arg1)].field_3072
}

function tokenFee() {
    return tokenFee
}

function voter() {
    return voterAddress
}

function presaleFees() {
    return presaleFees
}

function presaleOwnerToIndex(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return presaleOwnerToIndex[arg1]
}

function FilterAddress() {
    return filterAddress
}

function whitelistFees() {
    return whitelistFees
}

function extraAmountPer() {
    return extraAmountPer
}

function hundred() {
    return hundred
}

function presaleOwners(uint256 arg1) {
    require calldata.size - 4 >= 32
    return presaleOwners[arg1]
}

function presaleDappAddr() {
    return presaleDappAddr
}

function owner() {
    return owner
}

function presaleAddrToOwnerAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return presaleAddrToOwnerAddr[arg1]
}

function totalRaisedOnPlatform() {
    return totalRaisedOnPlatform
}

function tokenAddrToOwnerAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenAddrToOwnerAddr[arg1]
}

function routerRecord(uint256 arg1) {
    require calldata.size - 4 >= 32
    return routerRecord[arg1]
}

function totalRefundedFromPlatform() {
    return totalRefundedFromPlatform
}

function routerNumber(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return routerNumber[arg1]
}

function RouterValid(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[arg1])
}

function presales(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(presales[arg1].field_0), 
           presales[arg1].field_256,
           presales[arg1].field_512,
           presales[arg1].field_768,
           presales[arg1].field_1024,
           presales[arg1].field_1280,
           bool(presales[arg1].field_1440),
           presales[arg1].field_1536,
           presales[arg1].field_1792,
           presales[arg1].field_2048,
           presales[arg1].field_2304,
           presales[arg1].field_2560,
           presales[arg1].field_2816,
           presales[arg1].field_3072
}

function OwnerIndex() {
    return ownerIndex
}

function routerDappAddr() {
    return routerDappAddr
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function changePresaleFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    presaleFees = arg1
}

function changeWhitelistFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    whitelistFees = arg1
}

function changeDeltaStartEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    deltaStartEndTime = arg1
}

function creationEnable(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    creationEnabled = uint8(arg1)
}

function changeFeeContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    sub_06e29712Address = arg1
}

function changeExtraTokenPer(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0, 'Invalid percentage value'
    extraAmountPer = arg1
}

function changeUniPercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 > 100:
        revert with 0, 'uniPer value outside range'
    minUniPercentage = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ChangeVoterAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not arg1:
        revert with 0, 'New Addr cant be zero addr'
    voterAddress = arg1
}

function updateRouterDapp(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not arg1:
        revert with 0, 'router dapp cant be 0x0'
    routerDappAddr = arg1
}

function ChangeFilterAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not arg1:
        revert with 0, 'New Addr cant be zero addr'
    filterAddress = arg1
}

function updatePresaleDapp(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not arg1:
        revert with 0, 'presale dapp cant be 0x0'
    presaleDappAddr = arg1
}

function removeRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not stor20[address(arg1)]:
        revert with 0, 'not in added list'
    stor20[address(arg1)] = 0
}

function ChangeAirdropFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 > 100:
        revert with 0, 'out of range fee value'
    if arg1 == stor1:
        revert with 0, 'New fee is same as Old fee'
    stor1 = arg1
}

function addRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if stor20[address(arg1)]:
        revert with 0, 'already added!'
    stor20[address(arg1)] = 1
    routerNumber[address(arg1)] = totalRouters
    routerRecord[stor23] = arg1
    totalRouters++
}

function disableWhitelist() {
    if not presales[msg.sender].field_0:
        revert with 0, 'user has no presale!'
    mem[132] = 0, mem[132 len 28]
    call presales[msg.sender].field_1024.mem[132 len 4] with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Whitelist disablement failed'
}

function PlatformUnlockLP(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    require ext_code.size(presales[address(arg1)].field_2304)
    call presales[address(arg1)].field_2304.refundUniLPbyPlatform(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_290dad11(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96 len 96] = call.data[calldata.size len 96]
    mem[64] = 288
    mem[192] = presales[address(arg1)].field_768
    mem[224] = presales[address(arg1)].field_1024
    mem[256] = presales[address(arg1)].field_2304
    idx = 0
    s = 192
    t = mem[64]
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len -mem[64] + 384
}

function enableWhitelist() payable {
    if msg.value < whitelistFees:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.value must be >= whitelist fees!'
    call sub_06e29712Address with:
       value whitelistFees wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not presales[msg.sender].field_0:
        revert with 0, 'user has no presale!'
    mem[132] = 0, mem[132 len 28]
    call presales[msg.sender].field_1024.mem[132 len 4] with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Whitelist enablement failed'
}

function AddToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 14
    if not presales[msg.sender].field_0:
        revert with 0, 'user has no presale!'
    idx = 0
    while idx < arg1.length:
        mem[0] = msg.sender
        mem[32] = 14
        require idx < mem[96]
        _56 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        _57 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_57 + 32] = 0xe43252d700000000000000000000000000000000000000000000000000000000 or mem[_57 + 36 len 28]
        _60 = mem[_57]
        s = 0
        while s < _60:
            mem[s + _56 + 68] = mem[s + _57 + 32]
            s = s + 32
            continue 
        if ceil32(_60) <= _60:
            call presales[msg.sender].field_1024.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _60 + _56 + -mem[64] + 64]
            if return_data.size:
                _77 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_77] = return_data.size
                mem[_77 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_60 + _56 + 68] = 0
            call presales[msg.sender].field_1024.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _60 + _56 + -mem[64] + 64]
            if return_data.size:
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_78] = return_data.size
                mem[_78 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Whitelist addition failed'
        idx = idx + 1
        continue 
}

function RemoveFromWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 14
    if not presales[msg.sender].field_0:
        revert with 0, 'user has no presale!'
    idx = 0
    while idx < arg1.length:
        mem[0] = msg.sender
        mem[32] = 14
        require idx < mem[96]
        _56 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        _57 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_57 + 32] = 0x8ab1d68100000000000000000000000000000000000000000000000000000000 or mem[_57 + 36 len 28]
        _60 = mem[_57]
        s = 0
        while s < _60:
            mem[s + _56 + 68] = mem[s + _57 + 32]
            s = s + 32
            continue 
        if ceil32(_60) <= _60:
            call presales[msg.sender].field_1024.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _60 + _56 + -mem[64] + 64]
            if return_data.size:
                _77 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_77] = return_data.size
                mem[_77 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_60 + _56 + 68] = 0
            call presales[msg.sender].field_1024.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _60 + _56 + -mem[64] + 64]
            if return_data.size:
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_78] = return_data.size
                mem[_78 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Whitelist removal failed'
        idx = idx + 1
        continue 
}



}

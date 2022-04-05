contract main {




// =====================  Runtime code  =====================


const hundred = 100


address owner;
address voterAddress;
address filterAddress;
mapping of struct fairPresales;
uint256 ownerIndex;
uint256 minLockTime;
uint256 fairLaunchFees;
address nativeWalletAddress;
address tokenFeeWalletAddress;
uint256 _deltaMax;
uint256 tokenFeePer;
mapping of address presaleOwners;
mapping of address tokenAddrToOwnerAddr;
mapping of address presaleAddrToOwnerAddr;
mapping of uint256 presaleOwnerToIndex;
mapping of uint256 tokenAddrToIndex;
mapping of uint8 stor16;
mapping of uint8 stor17;
mapping of address rotuerAddrTrackViaTokenAddr;

function RotuerAddrTrackViaTokenAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rotuerAddrTrackViaTokenAddr[arg1]
}

function nativeWallet() {
    return nativeWalletAddress
}

function tokenAddrToIndex(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenAddrToIndex[arg1]
}

function voter() {
    return voterAddress
}

function ownerToAddRecord(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
}

function presaleOwnerToIndex(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return presaleOwnerToIndex[arg1]
}

function FilterAddress() {
    return filterAddress
}

function presaleOwners(uint256 arg1) {
    require calldata.size - 4 >= 32
    return presaleOwners[arg1]
}

function ownerToCancelRecord(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor17[arg1])
}

function _deltaMax() {
    return _deltaMax
}

function owner() {
    return owner
}

function presaleAddrToOwnerAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return presaleAddrToOwnerAddr[arg1]
}

function tokenAddrToOwnerAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenAddrToOwnerAddr[arg1]
}

function minLockTime() {
    return minLockTime
}

function tokenFeeWallet() {
    return tokenFeeWalletAddress
}

function FairPresales(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(fairPresales[arg1].field_0), 
           fairPresales[arg1].field_256,
           fairPresales[arg1].field_512,
           fairPresales[arg1].field_768,
           fairPresales[arg1].field_1024,
           bool(fairPresales[arg1].field_1184),
           fairPresales[arg1].field_1280,
           fairPresales[arg1].field_1536,
           fairPresales[arg1].field_1792,
           fairPresales[arg1].field_2048
}

function tokenFeePer() {
    return tokenFeePer
}

function fairLaunchFees() {
    return fairLaunchFees
}

function OwnerIndex() {
    return ownerIndex
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function changeDeltaMax(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    _deltaMax = arg1
}

function updateFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    fairLaunchFees = arg1
}

function updateTokenFeePer(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    tokenFeePer = arg1
}

function updateNativeWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    nativeWalletAddress = arg1
}

function updateTeamAccToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    tokenFeeWalletAddress = arg1
}

function changeLockMinTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0, 'min lock must be > 0'
    minLockTime = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function cancelFairLaunch() {
    if stor16[msg.sender]:
        revert with 0, 'already launched!'
    if stor17[msg.sender]:
        revert with 0, 'launch already cancelled'
    if not fairPresales[msg.sender].field_0:
        revert with 0, 'no fairlaunch contract detected'
    require ext_code.size(fairPresales[msg.sender].field_1024)
    call fairPresales[msg.sender].field_1024.0xe33d206f with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(fairPresales[msg.sender].field_1024)
    call fairPresales[msg.sender].field_1024.0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor17[msg.sender] = 1
    mem[228 len 128] = unknown_0xed6548fb(?????), msg.sender, fairPresales[msg.sender].field_1024, fairPresales[msg.sender].field_768, mem[228 len 28]
    call filterAddress.mem[228 len 4] with:
         gas gas_remaining wei
        args mem[232 len 96]
    if not ext_call.success:
        revert with 0, 'adding to Fail Filter failed'
}

function addLiqCall() {
    if not fairPresales[msg.sender].field_0:
        revert with 0, 'no fairlaunch contract detected'
    if stor16[msg.sender]:
        revert with 0, 'already launched!'
    if stor17[msg.sender]:
        revert with 0, 'launch already cancelled'
    if block.timestamp < fairPresales[msg.sender].field_1280:
        revert with 0, 'start time not yet'
    if _deltaMax + fairPresales[msg.sender].field_1280 < fairPresales[msg.sender].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= _deltaMax + fairPresales[msg.sender].field_1280:
        revert with 0, 'window to fairlaunch closed!'
    require ext_code.size(fairPresales[msg.sender].field_1024)
    call fairPresales[msg.sender].field_1024.0xb0ddcb5e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(fairPresales[msg.sender].field_1024)
    call fairPresales[msg.sender].field_1024.0xbc488c5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(fairPresales[msg.sender].field_1024)
    call fairPresales[msg.sender].field_1024.0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor16[msg.sender] = 1
    mem[228 len 128] = unknown_0xc2f70d80(?????), msg.sender, fairPresales[msg.sender].field_1024, fairPresales[msg.sender].field_768, mem[228 len 28]
    call filterAddress.mem[228 len 4] with:
         gas gas_remaining wei
        args mem[232 len 96]
    if not ext_call.success:
        revert with 0, 'adding to Success Filter failed'
}

function createFairlaunch(string[10] arg1, address arg2, uint256 arg3, address[] arg4, uint256[] arg5, uint256 arg6, uint256 arg7, uint256 arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    mem[64] = 416
    idx = 0
    s = arg1 + 4
    t = 96
    while idx < 10:
        require arg1 + cd[s] + 35 < calldata.size
        require cd[(arg1 + cd[s] + 4)] <= test266151307()
        _3 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + 4)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + 4)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + 4)]) + 32
        mem[_3] = cd[(arg1 + cd[s] + 4)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 4)] + 36 <= calldata.size
        mem[_3 + 32 len cd[(arg1 + cd[s] + 4)]] = call.data[arg1 + cd[s] + 36 len cd[(arg1 + cd[s] + 4)]]
        mem[_3 + cd[(arg1 + cd[s] + 4)] + 32] = 0
        mem[t] = _3
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    _4 = mem[64]
    require mem[64] + (32 * arg4.length) + 32 >= mem[64] and mem[64] + (32 * arg4.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg4.length) + 32
    mem[_4] = arg4.length
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = _4 + 32
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    _26 = mem[64]
    require mem[64] + (32 * arg5.length) + 32 >= mem[64] and mem[64] + (32 * arg5.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg5.length) + 32
    mem[_26] = arg5.length
    require calldata.size >= arg5 + (32 * arg5.length) + 36
    idx = 0
    s = arg5 + 36
    t = _26 + 32
    while idx < arg5.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 3
    if fairPresales[msg.sender].field_0:
        revert with 0, 'only one launch allowed per wallet!'
    if mem[_4] != arg5.length:
        revert with 0, 'router and percentages not equal'
    if arg6 <= block.timestamp:
        revert with 0, 'start must be greater than now!'
    idx = 0
    s = 0
    while idx < arg5.length:
        require idx < arg5.length
        if mem[(32 * idx) + _26 + 32] > 100:
            revert with 0, 'liq cant be greater than 100'
        require idx < arg5.length
        _75 = mem[(32 * idx) + _26 + 32]
        if mem[(32 * idx) + _26 + 32] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[(32 * idx) + _26 + 32] + s
        continue 
    if _75 * arg5.length != 100:
        revert with 0, 'total must add to 100'
    if fairLaunchFees + arg8 < arg8:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value < fairLaunchFees + arg8:
        revert with 0, 'msg.value must be >= listing amount PLUS fairLaunchFees!'
    call nativeWalletAddress with:
       value fairLaunchFees wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if minLockTime + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 <= minLockTime + block.timestamp:
        revert with 0, 'locktime not long enough'
    mem[mem[64] len 7841] = code.data[8665 len 7841]
    mem[mem[64] + 7841] = arg2
    mem[mem[64] + 7873] = arg3
    mem[mem[64] + 7905] = 288
    _88 = mem[_4]
    mem[mem[64] + 8129] = mem[_4]
    idx = 0
    s = _4 + 32
    t = mem[64] + 8161
    while idx < _88:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 7937] = (32 * _88) + 320
    _99 = mem[_26]
    mem[mem[64] + (32 * _88) + 8161] = mem[_26]
    mem[mem[64] + (32 * _88) + 8193 len 32 * _99] = mem[_26 + 32 len 32 * _99]
    mem[mem[64] + 7969] = arg8
    mem[mem[64] + 8001] = arg6
    mem[mem[64] + 8033] = _deltaMax
    mem[mem[64] + 8065] = tokenFeeWalletAddress
    mem[mem[64] + 8097] = tokenFeePer
    create contract with 0 wei
                    code: code.data[8665 len 7841], address(arg2), arg3, Array(len=tokenFeePer, data=mem[mem[64] + 8129 len (32 * _88) + (32 * _99) + 64]), (32 * _88) + 320, arg8, arg6, _deltaMax, tokenFeeWalletAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0] = arg2
    mem[32] = 18
    rotuerAddrTrackViaTokenAddr[address(arg2)] = address(create.new_address)
    _110 = mem[64]
    mem[mem[64] len 5229] = code.data[16506 len 5229]
    mem[mem[64] + 5229] = 64
    idx = 0
    s = 96
    t = mem[64] + 5293
    u = mem[64] + 5613
    while idx < 10:
        mem[t] = u + -_110 - 5293
        _114 = mem[s]
        _115 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _115:
            mem[v + u + 32] = mem[v + _114 + 32]
            v = v + 32
            continue 
        if ceil32(_115) > _115:
            mem[u + _115 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_115) + u + 32
        continue 
    mem[_110 + 5261] = msg.sender
    create contract with 0 wei
                    code: mem[mem[64] len u - mem[64]]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _120 = mem[64]
    mem[64] = mem[64] + 320
    mem[_120] = 0
    mem[_120 + 32] = 0
    mem[_120 + 64] = 0
    mem[_120 + 96] = 0
    mem[_120 + 128] = 0
    mem[_120 + 160] = 0
    mem[_120 + 192] = 0
    mem[_120 + 224] = 0
    mem[_120 + 256] = 0
    mem[_120 + 288] = 0
    _121 = mem[64]
    mem[64] = mem[64] + 320
    mem[_121] = 1
    mem[_121 + 32] = block.timestamp
    mem[_121 + 64] = address(create.new_address)
    mem[_121 + 96] = arg2
    mem[_121 + 128] = address(create.new_address)
    mem[_121 + 160] = 1
    mem[_121 + 192] = arg6
    mem[_121 + 224] = arg3
    mem[_121 + 256] = arg7
    mem[_121 + 288] = arg8
    fairPresales[address(msg.sender)].field_0 = 1
    fairPresales[address(msg.sender)].field_256 = block.timestamp
    fairPresales[address(msg.sender)].field_512 = address(create.new_address)
    fairPresales[address(msg.sender)].field_768 = arg2
    fairPresales[address(msg.sender)].field_1024 = address(create.new_address)
    fairPresales[address(msg.sender)].field_1184 = 1
    fairPresales[address(msg.sender)].field_1280 = arg6
    fairPresales[address(msg.sender)].field_1536 = arg3
    fairPresales[address(msg.sender)].field_1792 = arg7
    fairPresales[address(msg.sender)].field_2048 = arg8
    presaleOwners[stor4] = msg.sender
    presaleOwnerToIndex[address(msg.sender)] = ownerIndex
    tokenAddrToIndex[stor3[address(msg.sender)].field_768] = ownerIndex
    tokenAddrToOwnerAddr[stor3[address(msg.sender)].field_768] = msg.sender
    mem[0] = fairPresales[address(msg.sender)].field_1024
    mem[32] = 13
    presaleAddrToOwnerAddr[stor3[address(msg.sender)].field_1024] = msg.sender
    ownerIndex++
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = address(create.new_address)
    mem[mem[64] + 68] = arg7
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), arg7
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _143 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_143] == bool(mem[_143])
    call address(create.new_address) with:
       value arg8 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0] = msg.sender
    mem[32] = 3
    _147 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = fairPresales[msg.sender].field_1024
    mem[mem[64] + 100] = fairPresales[msg.sender].field_768
    _148 = mem[64]
    mem[mem[64]] = 100
    mem[64] = mem[64] + 132
    mem[_148 + 32 len 4] = unknown_0xbd1b7e1d(?????)
    _151 = mem[_148]
    mem[_147 + 132 len ceil32(mem[_148])] = mem[_148 + 32 len ceil32(mem[_148])]
    if ceil32(_151) > _151:
        mem[_147 + _151 + 132] = 0
    call filterAddress with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _151 + _147 + -mem[64] + 128]
    if not ext_call.success:
        revert with 0, 'adding to Live Filter failed'
}



}

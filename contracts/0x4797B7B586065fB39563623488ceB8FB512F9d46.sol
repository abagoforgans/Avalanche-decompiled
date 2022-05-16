contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(address arg1, uint256 arg2)
#
address owner;
array of struct sub_26142335;
mapping of uint256 stor2;
uint256 stor3;
mapping of struct campaigns;
array of uint256 sub_7dbb4612;
array of uint256 sub_ece59939;

function campaigns(uint256 arg1) {
    require calldata.size - 4 >= 32
    return campaigns[arg1].field_0, 
           campaigns[arg1].field_256,
           campaigns[arg1].field_256,
           campaigns[arg1].field_256,
           campaigns[arg1].field_448,
           campaigns[arg1].field_512,
           campaigns[arg1].field_768,
           campaigns[arg1].field_1024,
           campaigns[arg1].field_1280,
           bool(campaigns[arg1].field_1536),
           campaigns[arg1].field_1536,
           campaigns[arg1].field_1792
}

function sub_26142335(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_26142335.length:
        revert with 0, 50
    return sub_26142335[arg1].field_0
}

function isOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function sub_7dbb4612(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_7dbb4612.length
    return sub_7dbb4612[arg1]
}

function owner() {
    return owner
}

function sub_ecb9e11a(?) {
    return sub_26142335.length
}

function sub_ece59939(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_ece59939.length
    return sub_ece59939[arg1]
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

function sub_18b998df(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    campaigns[arg1].field_1544 = address(arg2)
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

function getUserInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor5[arg1][arg2].field_512:
        mem[212] = stor5[arg1][arg2][2].field_0
        idx = 212
        s = 0
        while (32 * stor5[arg1][arg2].field_512) + 180 > idx:
            mem[idx + 32] = stor5[arg1][arg2][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return stor5[arg1][arg2].field_0, 
           stor5[arg1][arg2].field_256,
           Array(len=stor5[arg1][arg2].field_512, data=mem[212 len 32 * stor5[arg1][arg2].field_512])
}

function getAllOperators() {
    if sub_26142335.length > test266151307():
        revert with 0, 65
    mem[96] = sub_26142335.length
    mem[64] = (32 * sub_26142335.length) + 128
    if sub_26142335.length:
        mem[128 len 32 * sub_26142335.length] = call.data[calldata.size len 32 * sub_26142335.length]
    idx = 0
    while idx < mem[96]:
        if idx >= sub_26142335.length:
            revert with 0, 50
        mem[0] = 1
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = sub_26142335[idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * sub_26142335.length) + 128] = 32
    mem[(32 * sub_26142335.length) + 160] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * sub_26142335.length) + (32 * mem[96]) + -mem[64] + 192
}

function sub_efc69d43(?) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 4
    mem[64] = (32 * campaigns[arg1].field_2048) + 128
    mem[96] = campaigns[arg1].field_2048
    s = 128
    idx = 0
    while idx < campaigns[arg1].field_2048:
        mem[0] = sha3(arg1, 4) + 8
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor[(2 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'campaigns', 4)))].field_0
        mem[_12 + 32] = stor[(2 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'campaigns', 4)))].field_256
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}

function sub_700e95d8(?) {
    require calldata.size - 4 >= 320
    require arg3 == uint64(arg3)
    require arg4 == uint64(arg4)
    require arg5 == uint64(arg5)
    require arg6 == uint64(arg6)
    require arg9 == address(arg9)
    require arg10 == address(arg10)
    if not stor2[address(msg.sender)]:
        revert with 0, 'caller is not operator'
    if campaigns[arg1].field_256:
        if block.timestamp >= campaigns[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'could not change started campaign'
    campaigns[arg1].field_0 = arg2
    campaigns[arg1].field_256 = uint64(arg3)
    campaigns[arg1].field_320 = uint64(arg4)
    campaigns[arg1].field_384 = uint64(arg5)
    campaigns[arg1].field_448 = uint64(arg6)
    campaigns[arg1].field_512 = arg7
    if arg8 and 10^18 > -1 / arg8:
        revert with 0, 17
    if not arg7:
        revert with 0, 18
    campaigns[arg1].field_768 = 10^18 * arg8 / arg7
    campaigns[arg1].field_1792 = address(arg9)
    campaigns[arg1].field_1544 = address(arg10)
}

function sub_e82a32cc(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ece59939.length = 0
    idx = 0
    while sub_ece59939.length > idx:
        sub_ece59939[idx] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        sub_ece59939.length++
        mem[0] = 7
        sub_ece59939[sub_ece59939.length] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_efc09c67(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7dbb4612.length = 0
    idx = 0
    while sub_7dbb4612.length > idx:
        sub_7dbb4612[idx] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        sub_7dbb4612.length++
        mem[0] = 6
        sub_7dbb4612[sub_7dbb4612.length] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function addOperators(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        if not stor2[address(cd[((32 * idx) + arg1 + 36)])]:
            sub_26142335.length++
            sub_26142335[sub_26142335.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
            sub_26142335[sub_26142335.length].field_160 = 0
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            stor2[address(cd[((32 * idx) + arg1 + 36)])] = sub_26142335.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 160
    t = arg1 + 36
    while idx < arg1.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x4c022f03: Array(len=arg1.length, data=mem[160 len 32 * arg1.length])
}

function removeOperators(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        if stor2[address(cd[((32 * idx) + arg1 + 36)])]:
            if stor2[address(cd[((32 * idx) + arg1 + 36)])] < 1:
                revert with 0, 17
            if sub_26142335.length < 1:
                revert with 0, 17
            if sub_26142335.length - 1 != stor2[address(cd[((32 * idx) + arg1 + 36)])] - 1:
                if sub_26142335.length - 1 >= sub_26142335.length:
                    revert with 0, 50
                if stor2[address(cd[((32 * idx) + arg1 + 36)])] - 1 >= sub_26142335.length:
                    revert with 0, 50
                sub_26142335[stor2[address(cd[((32 * idx) + arg1 + 36)])]].field_0 = sub_26142335[sub_26142335.length].field_0
                stor2[stor1[stor1.length].field_0] = stor2[address(cd[((32 * idx) + arg1 + 36)])]
            if not sub_26142335.length:
                revert with 0, 49
            sub_26142335[sub_26142335.length].field_0 = 0
            sub_26142335.length--
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            stor2[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 160
    t = arg1 + 36
    while idx < arg1.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xd0459267: Array(len=arg1.length, data=mem[160 len 32 * arg1.length])
}

function sub_7684fc86(?) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, 'caller is not operator'
    mem[0] = arg1
    mem[32] = 4
    mem[96] = campaigns[arg1].field_0
    mem[128] = campaigns[arg1].field_256
    mem[160] = campaigns[arg1].field_320
    mem[192] = campaigns[arg1].field_384
    mem[224] = campaigns[arg1].field_448
    mem[256] = campaigns[arg1].field_512
    mem[288] = campaigns[arg1].field_768
    mem[320] = campaigns[arg1].field_1024
    mem[352] = campaigns[arg1].field_1280
    mem[384] = bool(campaigns[arg1].field_1536)
    mem[416] = campaigns[arg1].field_1544
    mem[448] = campaigns[arg1].field_1792
    mem[64] = (32 * campaigns[arg1].field_2048) + 544
    mem[512] = campaigns[arg1].field_2048
    s = 544
    idx = 0
    while idx < campaigns[arg1].field_2048:
        mem[0] = sha3(arg1, 4) + 8
        _89 = mem[64]
        mem[64] = mem[64] + 64
        mem[_89] = stor[(2 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'campaigns', 4)))].field_0
        mem[_89 + 32] = stor[(2 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'campaigns', 4)))].field_256
        mem[s] = _89
        s = s + 32
        idx = idx + 1
        continue 
    mem[480] = 512
    if mem[384]:
        revert with 0, 'already withdraw'
    if block.timestamp <= mem[184 len 8]:
        revert with 0, 'not end'
    mem[384] = 1
    _92 = mem[448]
    _95 = mem[320]
    if not mem[460 len 20]:
        call owner with:
           value mem[320] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'transfer failed'
    else:
        _99 = mem[64]
        mem[mem[64] + 36] = owner
        mem[mem[64] + 68] = _95
        _101 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_99 + 100] = 32
        mem[_99 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_92)):
            revert with 0, 'Address: call to non-contract'
        _112 = mem[_101]
        mem[_99 + 164 len ceil32(mem[_101])] = mem[_101 + 32 len ceil32(mem[_101])]
        if ceil32(_112) > _112:
            mem[_112 + _99 + 164] = 0
        call address(_92) with:
             gas gas_remaining wei
            args mem[_99 + 168 len _112 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_99 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_99 + 196] == bool(mem[_99 + 196])
                if not mem[_99 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_cbdcbaa5(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < cd[36] + (64 * ('cd', 36).length) + 36:
        require calldata.size - idx >= 64
        _33 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        mem[_33] = cd[idx]
        mem[_33 + 32] = cd[(idx + 32)]
        mem[s] = _33
        s = s + 32
        idx = idx + 64
        continue 
    if not stor2[address(msg.sender)]:
        revert with 0, 'caller is not operator'
    mem[0] = cd[4]
    mem[32] = 4
    if not campaigns[cd[4]].field_2048:
        idx = 0
        s = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 0, 50
            _70 = mem[mem[(32 * idx) + 128] + 32]
            if s > !mem[mem[(32 * idx) + 128] + 32]:
                revert with 0, 17
            if idx:
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[96]:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[mem[(32 * idx) + 128]] <= mem[mem[(32 * idx - 1) + 128]]:
                    revert with 0, 'time is not on asc order'
            if idx >= mem[96]:
                revert with 0, 50
            campaigns[cd[4]].field_2048++
            mem[0] = sha3(cd[4], 4) + 8
            stor[(2 * campaigns[cd[4]].field_2048) + ('array', 8, ('map', ('cd', 4), ('name', 'campaigns', 4)))].field_0 = mem[mem[(32 * idx) + 128]]
            stor[(2 * campaigns[cd[4]].field_2048) + ('array', 8, ('map', ('cd', 4), ('name', 'campaigns', 4)))].field_256 = mem[mem[(32 * idx) + 128] + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + _70
            continue 
    else:
        if 0 >= campaigns[cd[4]].field_2048:
            revert with 0, 50
        if campaigns[cd[4]][8].field_0 >= block.timestamp:
            revert with 0, 'could not change released project'
        campaigns[cd[4]].field_2048 = 0
        mem[0] = sha3(cd[4], 4) + 8
        idx = 0
        while 2 * campaigns[cd[4]].field_2048 > idx:
            campaigns[cd[4]][idx + 8].field_0 = 0
            campaigns[cd[4]][idx + 8].field_256 = 0
            idx = idx + 2
            continue 
        idx = 0
        s = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 0, 50
            _107 = mem[mem[(32 * idx) + 128] + 32]
            if s > !mem[mem[(32 * idx) + 128] + 32]:
                revert with 0, 17
            if idx:
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[96]:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[mem[(32 * idx) + 128]] <= mem[mem[(32 * idx - 1) + 128]]:
                    revert with 0, 'time is not on asc order'
            if idx >= mem[96]:
                revert with 0, 50
            campaigns[cd[4]].field_2048++
            mem[0] = sha3(cd[4], 4) + 8
            stor[(2 * campaigns[cd[4]].field_2048) + ('array', 8, ('map', ('cd', 4), ('name', 'campaigns', 4)))].field_0 = mem[mem[(32 * idx) + 128]]
            stor[(2 * campaigns[cd[4]].field_2048) + ('array', 8, ('map', ('cd', 4), ('name', 'campaigns', 4)))].field_256 = mem[mem[(32 * idx) + 128] + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + _107
            continue 
    if s != 10000:
        revert with 0, 'need to add full released schedule'
    emit 0x522d6d74: cd[4]
}

function claim(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    mem[128] = arg1
    mem[160] = address(msg.sender)
    mem[96] = 52
    mem[180] = campaigns[arg1].field_0
    mem[212] = campaigns[arg1].field_256
    mem[244] = campaigns[arg1].field_320
    mem[276] = campaigns[arg1].field_384
    mem[308] = campaigns[arg1].field_448
    mem[340] = campaigns[arg1].field_512
    mem[372] = campaigns[arg1].field_768
    mem[404] = campaigns[arg1].field_1024
    mem[436] = campaigns[arg1].field_1280
    mem[468] = bool(campaigns[arg1].field_1536)
    mem[500] = campaigns[arg1].field_1544
    mem[532] = campaigns[arg1].field_1792
    mem[64] = (32 * campaigns[arg1].field_2048) + 628
    mem[596] = campaigns[arg1].field_2048
    s = 628
    idx = 0
    while idx < campaigns[arg1].field_2048:
        mem[0] = sha3(arg1, 4) + 8
        _99 = mem[64]
        mem[64] = mem[64] + 64
        mem[_99] = stor[(2 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'campaigns', 4)))].field_0
        mem[_99 + 32] = stor[(2 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'campaigns', 4)))].field_256
        mem[s] = _99
        s = s + 32
        idx = idx + 1
        continue 
    mem[564] = 596
    mem[0] = sha3(arg1, msg.sender)
    mem[32] = 5
    idx = arg2
    s = 0
    while idx <= arg3:
        if idx >= mem[596]:
            revert with 0, 50
        if block.timestamp < mem[mem[(32 * idx) + 628]]:
            revert with 0, 'not relased yet'
        mem[0] = idx
        mem[32] = sha3(sha3(arg1, msg.sender), 5) + 3
        if stor5[arg1][msg.sender][3][idx].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        stor5[arg1][msg.sender].field_512++
        stor[stor5[arg1][msg.sender].field_512 + ('array', 2, ('map', ('data', ('param', 'arg1'), 'msg.sender'), ('name', 'stor5', 5)))].field_0 = idx
        mem[0] = idx
        mem[32] = sha3(sha3(arg1, msg.sender), 5) + 3
        stor5[arg1][msg.sender][3][idx].field_0 = stor5[arg1][msg.sender].field_512
        if idx >= mem[596]:
            revert with 0, 50
        if s > !mem[mem[(32 * idx) + 628] + 32]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[mem[(32 * idx) + 628] + 32]
        continue 
    if s and stor5[arg1][msg.sender].field_0 > -1 / s:
        revert with 0, 17
    _193 = mem[500]
    if not mem[512 len 20]:
        call msg.sender with:
           value s * stor5[arg1][msg.sender].field_0 / 10000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'transfer failed'
    else:
        _196 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = s * stor5[arg1][msg.sender].field_0 / 10000
        _200 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_196 + 100] = 32
        mem[_196 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_193)):
            revert with 0, 'Address: call to non-contract'
        _213 = mem[_200]
        mem[_196 + 164 len ceil32(mem[_200])] = mem[_200 + 32 len ceil32(mem[_200])]
        if ceil32(_213) > _213:
            mem[_213 + _196 + 164] = 0
        call address(_193) with:
             gas gas_remaining wei
            args mem[_196 + 168 len _213 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_196 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_196 + 196] == bool(mem[_196 + 196])
                if not mem[_196 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor3 = 1
}

function sub_e1e31393(?) payable {
    require calldata.size - 4 >= 192
    require arg2 == uint128(arg2)
    require arg3 == uint128(arg3)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + (32 * arg6.length) + 36 <= calldata.size
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    mem[0] = arg1
    mem[32] = 4
    if block.timestamp < campaigns[arg1].field_256:
        revert with 0, 'not start'
    if block.timestamp >= campaigns[arg1].field_320:
        revert with 0, 'already end'
    mem[128] = arg1
    mem[160] = arg2 << 128
    mem[176] = address(msg.sender)
    mem[196] = arg4
    mem[228] = arg3 << 128
    mem[96] = 116
    mem[64] = (32 * arg6.length) + 276
    mem[244] = arg6.length
    mem[276 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 276] = 0
    idx = 0
    s = 0
    while idx < arg6.length:
        if idx >= mem[244]:
            revert with 0, 50
        _207 = mem[(32 * idx) + 276]
        if s + sha3(mem[128 len 116]) > mem[(32 * idx) + 276]:
            mem[mem[64] + 32] = mem[(32 * idx) + 276]
            mem[mem[64] + 64] = s + sha3(mem[128 len 116])
            _210 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[_210 + 32 len mem[_210]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[128 len 116])
        mem[mem[64] + 64] = _207
        _214 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(mem[_214 + 32 len mem[_214]])
        continue 
    if campaigns[arg1].field_0 != s:
        revert with 0, 'Invalid whitelist proof'
    if campaigns[arg1].field_1024 > !arg5:
        revert with 0, 17
    campaigns[arg1].field_1024 += arg5
    if campaigns[arg1].field_1024 > campaigns[arg1].field_512:
        revert with 0, 'exceed total cap'
    _219 = mem[64]
    mem[mem[64] + 32] = arg1
    mem[mem[64] + 64] = address(msg.sender)
    _221 = mem[64]
    mem[mem[64]] = 52
    mem[64] = mem[64] + 84
    mem[0] = sha3(mem[_221 + 32 len mem[_221]])
    if stor5[mem[0]].field_256 > !arg5:
        revert with 0, 17
    stor5[mem[0]].field_256 += arg5
    if arg4 < stor5[mem[0]].field_256:
        if block.timestamp < campaigns[arg1].field_384:
            revert with 0, 'exceed individual cap'
        if campaigns[arg1].field_448 > uint128(arg3):
            revert with 0, 'not in tier to buy exceed cap'
        if uint128(arg3) >= sub_ece59939.length:
            revert with 0, 50
        if arg4 > !sub_ece59939[uint128(arg3)]:
            revert with 0, 17
        if stor5[mem[0]].field_256 > arg4 + sub_ece59939[uint128(arg3)]:
            revert with 0, 'exceed extra cap'
    if arg5 and campaigns[arg1].field_768 > -1 / arg5:
        revert with 0, 17
    if stor5[mem[0]].field_0 > !(arg5 * campaigns[arg1].field_768 / 10^18):
        revert with 0, 17
    stor5[mem[0]].field_0 += arg5 * campaigns[arg1].field_768 / 10^18
    if campaigns[arg1].field_1280 > !(arg5 * campaigns[arg1].field_768 / 10^18):
        revert with 0, 17
    campaigns[arg1].field_1280 += arg5 * campaigns[arg1].field_768 / 10^18
    if not campaigns[arg1].field_1792:
        if arg5 != msg.value:
            revert with 0, 'amount not enough'
    else:
        mem[_219 + 120] = msg.sender
        mem[_219 + 152] = this.address
        mem[_219 + 184] = arg5
        mem[_219 + 84] = 100
        mem[_219 + 120 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[_219 + 116 len 4] = unknown_0x23b872dd(?????)
        mem[_219 + 216] = 32
        mem[_219 + 248] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(campaigns[arg1].field_1792):
            revert with 0, 'Address: call to non-contract'
        mem[_219 + 280 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg5, 0
        mem[_219 + 380] = 0
        call campaigns[arg1].field_1792 with:
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg5, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_219 + 312 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_219 + 312] == bool(mem[_219 + 312])
                if not mem[_219 + 312]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x7267fee3: arg1, campaigns[arg1].field_1792, campaigns[arg1].field_1536, arg5, arg5 * campaigns[arg1].field_768 / 10^18, msg.sender
    stor3 = 1
}



}

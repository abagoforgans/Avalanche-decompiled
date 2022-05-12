contract main {




// =====================  Runtime code  =====================


#
#  - sub_4624b191(?)
#  - stake(uint256 arg1, address arg2)
#
const sub_46420c5a(?) = 10^18

const sub_700eace3(?) = 1

const UNSTAKE_LOCK_TIME = (336 * 24 * 3600)


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 stor1;
address sub_ef10df3cAddress;
address stakingTokenAddress;
mapping of uint256 stakeOf;
uint256 sub_4f49a78a;
mapping of address sub_d8e39bfc;
mapping of address sub_72390ef3;
mapping of uint256 sub_5dc167a6;
mapping of uint256 sub_4b3b0d10;
uint32 stor59;
address sub_09a8475aAddress;
uint256 stor59;
uint8 stor33A2;
address stor33A2; offset 8
uint8 stor8E0C;
address stor8E0C; offset 8
address stor8E0C;

function sub_09a8475a(?) payable {
    return address(sub_09a8475aAddress)
}

function stakeOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeOf[arg1]
}

function sub_4b3b0d10(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b3b0d10[arg1]
}

function sub_4f49a78a(?) payable {
    return sub_4f49a78a
}

function sub_5dc167a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5dc167a6[arg1]
}

function sub_72390ef3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_72390ef3[arg1]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function sub_d8e39bfc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d8e39bfc[arg1]
}

function isStakeholder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stakeOf[address(arg1)])
}

function sub_ef10df3c(?) payable {
    return sub_ef10df3cAddress
}

function _fallback() payable {
    revert
}

function sub_727b4f32(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(sub_09a8475aAddress):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TalecraftStaking: staking contract already changed'
    address(sub_09a8475aAddress) = address(arg1)
}

function sub_2181165d(?) payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(sub_ef10df3cAddress)
    staticcall sub_ef10df3cAddress.checkAccess(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NeedAccess: access is denied'
    if sub_5dc167a6[msg.sender]:
        revert with 0, 'TalecraftStaking: the sender is already in the unlocking phase'
    if not stakeOf[msg.sender]:
        revert with 0, 'TalecraftStaking: zero stake error'
    if not msg.sender:
        revert with 0, 'Stakeholder: zero target error'
    if not sub_d8e39bfc[address(msg.sender)]:
        revert with 0, 'Stakeholder: the sender must be on the list'
    if not stakeOf[address(msg.sender)]:
        revert with 0, 'Stakeholder: the sender must be a stakeholder'
    if not sub_d8e39bfc[address(msg.sender)]:
        revert with 0, 'Stakeholder: the list is broken'
    if not sub_72390ef3[address(msg.sender)]:
        revert with 0, 'Stakeholder: the list is broken'
    stakeOf[address(msg.sender)] = 0
    if 1 > sub_4f49a78a:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_4f49a78a--
    sub_d8e39bfc[stor56[address(msg.sender)]] = sub_d8e39bfc[address(msg.sender)]
    sub_72390ef3[stor55[address(msg.sender)]] = sub_72390ef3[address(msg.sender)]
    sub_d8e39bfc[address(msg.sender)] = 0
    sub_72390ef3[address(msg.sender)] = 0
    sub_5dc167a6[msg.sender] = block.timestamp
    if stakeOf[msg.sender] + sub_4b3b0d10[msg.sender] < sub_4b3b0d10[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    sub_4b3b0d10[msg.sender] += stakeOf[msg.sender]
    emit 0xfa035ec6: stakeOf[msg.sender], block.timestamp, msg.sender
    stor1 = 1
    return 1
}

function sub_eeafa758(?) payable {
    require sub_4f49a78a <= test266151307()
    mem[96] = sub_4f49a78a
    mem[64] = (32 * sub_4f49a78a) + 128
    if not sub_4f49a78a:
        mem[0] = 1
        mem[32] = 55
        s = 0
        idx = address(stor8E0C.field_0)
        while address(idx) != 1:
            require s < mem[96]
            mem[mem[(32 * s) + 128]] = address(idx)
            mem[0] = address(idx)
            require s < mem[96]
            mem[mem[(32 * s) + 128] + 32] = stakeOf[address(idx)]
            mem[0] = address(idx)
            mem[32] = 55
            if s + 1 < s:
                revert with 0, 'SafeMath: addition overflow'
            s = s + 1
            idx = sub_d8e39bfc[address(idx)]
            continue 
        _32 = mem[64]
        mem[mem[64]] = 32
        _35 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _35:
            _55 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_55 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _32 + (64 * _35) + -mem[64] + 64
    mem[64] = (32 * sub_4f49a78a) + 192
    mem[(32 * sub_4f49a78a) + 128] = 0
    mem[(32 * sub_4f49a78a) + 160] = 0
    mem[var9001] = (32 * sub_4f49a78a) + 128
    s = var9001
    idx = var9002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * sub_4f49a78a) + 128] = 0
        mem[(32 * sub_4f49a78a) + 160] = 0
        mem[s + 32] = (32 * sub_4f49a78a) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = 1
    mem[32] = 55
    s = 0
    idx = address(stor8E0C.field_0)
    while address(idx) != 1:
        require s < mem[96]
        mem[mem[(32 * s) + 128]] = address(idx)
        mem[0] = address(idx)
        require s < mem[96]
        mem[mem[(32 * s) + 128] + 32] = stakeOf[address(idx)]
        mem[0] = address(idx)
        mem[32] = 55
        if s + 1 < s:
            revert with 0, 'SafeMath: addition overflow'
        s = s + 1
        idx = sub_d8e39bfc[address(idx)]
        continue 
    _75 = mem[64]
    mem[mem[64]] = 32
    _78 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _78:
        _85 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_85 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _75 + (64 * _78) + -mem[64] + 64
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TalecraftStaking: zero access list address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TalecraftStaking: zero token address'
    if uint8(stor0.field_8):
        stor1 = 1
        sub_ef10df3cAddress = arg1
        stakingTokenAddress = arg2
        uint8(stor8E0C.field_0) = 1
        Mask(152, 0, stor8E0C.field_8) = 0
        uint8(stor33A2.field_0) = 1
        Mask(152, 0, stor33A2.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor1 = 1
            sub_ef10df3cAddress = arg1
            stakingTokenAddress = arg2
            uint8(stor8E0C.field_0) = 1
            Mask(152, 0, stor8E0C.field_8) = 0
            uint8(stor33A2.field_0) = 1
            Mask(152, 0, stor33A2.field_8) = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                stor1 = 1
                sub_ef10df3cAddress = arg1
                stakingTokenAddress = arg2
                uint8(stor8E0C.field_0) = 1
                Mask(152, 0, stor8E0C.field_8) = 0
                uint8(stor33A2.field_0) = 1
                Mask(152, 0, stor33A2.field_8) = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                stor1 = 1
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                sub_ef10df3cAddress = arg1
                stakingTokenAddress = arg2
                uint8(stor8E0C.field_0) = 1
                Mask(152, 0, stor8E0C.field_8) = 0
                uint8(stor33A2.field_0) = 1
                Mask(152, 0, stor33A2.field_8) = 0
                uint8(stor0.field_8) = 0
}

function unstake() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = msg.sender
    require ext_code.size(sub_ef10df3cAddress)
    staticcall sub_ef10df3cAddress.checkAccess(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NeedAccess: access is denied'
    if not sub_5dc167a6[msg.sender]:
        revert with 0, 'TalecraftStaking: the sender must be in the unlocking phase'
    if sub_5dc167a6[msg.sender] + (336 * 24 * 3600) < sub_5dc167a6[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < sub_5dc167a6[msg.sender] + (336 * 24 * 3600):
        revert with 0, 'LaunchpadStaking: lock time has not expired yet'
    sub_5dc167a6[msg.sender] = 0
    sub_4b3b0d10[msg.sender] = 0
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = sub_4b3b0d10[msg.sender]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stakingTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_4b3b0d10[msg.sender], 0
    mem[ceil32(return_data.size) + 328] = 0
    call stakingTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_4b3b0d10[msg.sender], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_4b3b0d10[msg.sender], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Unstake(sub_4b3b0d10[msg.sender], block.timestamp, msg.sender);
    stor1 = 1
    return sub_4b3b0d10[msg.sender]
}

function sub_197987e6(?) payable {
    require calldata.size - 4 >= 64
    require sub_4f49a78a <= test266151307()
    mem[96] = sub_4f49a78a
    mem[64] = (32 * sub_4f49a78a) + 128
    if not sub_4f49a78a:
        mem[0] = 1
        mem[32] = 55
        s = 0
        idx = address(stor8E0C.field_0)
        while address(idx) != 1:
            require s < mem[96]
            mem[mem[(32 * s) + 128]] = address(idx)
            mem[0] = address(idx)
            require s < mem[96]
            mem[mem[(32 * s) + 128] + 32] = stakeOf[address(idx)]
            mem[0] = address(idx)
            mem[32] = 55
            if s + 1 < s:
                revert with 0, 'SafeMath: addition overflow'
            s = s + 1
            idx = sub_d8e39bfc[address(idx)]
            continue 
        if arg2 <= mem[96] - arg1:
            require arg2 <= test266151307()
            _108 = mem[64]
            mem[mem[64]] = arg2
            mem[64] = mem[64] + (32 * arg2) + 32
            if not arg2:
                idx = 0
                while idx < arg2:
                    require arg1 + idx < mem[96]
                    require idx < mem[_108]
                    mem[(32 * idx) + _108 + 32] = mem[(32 * arg1 + idx) + 128]
                    idx = idx + 1
                    continue 
                _203 = mem[64]
                mem[mem[64]] = 64
                _209 = mem[_108]
                mem[mem[64] + 64] = mem[_108]
                idx = 0
                s = _108 + 32
                t = mem[64] + 96
                while idx < _209:
                    _287 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_287 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                mem[_203 + 32] = arg1 + arg2
                return memory
                  from mem[64]
                   len _203 + (64 * _209) + -mem[64] + 96
            mem[64] = _108 + (32 * arg2) + 96
            mem[_108 + (32 * arg2) + 32] = 0
            mem[_108 + (32 * arg2) + 64] = 0
            mem[var19001] = _108 + (32 * arg2) + 32
            s = var19001
            idx = var19002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_108 + (32 * arg2) + 32] = 0
                mem[_108 + (32 * arg2) + 64] = 0
                mem[s + 32] = _108 + (32 * arg2) + 32
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg2:
                require arg1 + idx < mem[96]
                require idx < mem[_108]
                mem[(32 * idx) + _108 + 32] = mem[(32 * arg1 + idx) + 128]
                idx = idx + 1
                continue 
            _369 = mem[64]
            mem[mem[64]] = 64
            _381 = mem[_108]
            mem[mem[64] + 64] = mem[_108]
            idx = 0
            s = _108 + 32
            t = mem[64] + 96
            while idx < _381:
                _421 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_421 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            mem[_369 + 32] = arg1 + arg2
            return memory
              from mem[64]
               len _369 + (64 * _381) + -mem[64] + 96
        _105 = mem[96]
        require mem[96] - arg1 <= test266151307()
        _109 = mem[64]
        mem[mem[64]] = mem[96] - arg1
        mem[64] = mem[64] + (32 * _105 - arg1) + 32
        if not _105 - arg1:
            idx = 0
            while idx < _105 - arg1:
                require arg1 + idx < mem[96]
                require idx < mem[_109]
                mem[(32 * idx) + _109 + 32] = mem[(32 * arg1 + idx) + 128]
                idx = idx + 1
                continue 
            _206 = mem[64]
            mem[mem[64]] = 64
            _210 = mem[_109]
            mem[mem[64] + 64] = mem[_109]
            idx = 0
            s = _109 + 32
            t = mem[64] + 96
            while idx < _210:
                _290 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_290 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            mem[_206 + 32] = _105
            return memory
              from mem[64]
               len _206 + (64 * _210) + -mem[64] + 96
        mem[64] = _109 + (32 * _105 - arg1) + 96
        mem[_109 + (32 * _105 - arg1) + 32] = 0
        mem[_109 + (32 * _105 - arg1) + 64] = 0
        mem[var20001] = _109 + (32 * _105 - arg1) + 32
        s = var20001
        idx = var20002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_109 + (32 * _105 - arg1) + 32] = 0
            mem[_109 + (32 * _105 - arg1) + 64] = 0
            mem[s + 32] = _109 + (32 * _105 - arg1) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _105 - arg1:
            require arg1 + idx < mem[96]
            require idx < mem[_109]
            mem[(32 * idx) + _109 + 32] = mem[(32 * arg1 + idx) + 128]
            idx = idx + 1
            continue 
        _372 = mem[64]
        mem[mem[64]] = 64
        _382 = mem[_109]
        mem[mem[64] + 64] = mem[_109]
        idx = 0
        s = _109 + 32
        t = mem[64] + 96
        while idx < _382:
            _424 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_424 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_372 + 32] = _105
        return memory
          from mem[64]
           len _372 + (64 * _382) + -mem[64] + 96
    mem[64] = (32 * sub_4f49a78a) + 192
    mem[(32 * sub_4f49a78a) + 128] = 0
    mem[(32 * sub_4f49a78a) + 160] = 0
    mem[var12001] = (32 * sub_4f49a78a) + 128
    s = var12001
    idx = var12002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * sub_4f49a78a) + 128] = 0
        mem[(32 * sub_4f49a78a) + 160] = 0
        mem[s + 32] = (32 * sub_4f49a78a) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = 1
    mem[32] = 55
    s = 0
    idx = address(stor8E0C.field_0)
    while address(idx) != 1:
        require s < mem[96]
        mem[mem[(32 * s) + 128]] = address(idx)
        mem[0] = address(idx)
        require s < mem[96]
        mem[mem[(32 * s) + 128] + 32] = stakeOf[address(idx)]
        mem[0] = address(idx)
        mem[32] = 55
        if s + 1 < s:
            revert with 0, 'SafeMath: addition overflow'
        s = s + 1
        idx = sub_d8e39bfc[address(idx)]
        continue 
    if arg2 <= mem[96] - arg1:
        require arg2 <= test266151307()
        _303 = mem[64]
        mem[mem[64]] = arg2
        mem[64] = mem[64] + (32 * arg2) + 32
        if not arg2:
            idx = 0
            while idx < arg2:
                require arg1 + idx < mem[96]
                require idx < mem[_303]
                mem[(32 * idx) + _303 + 32] = mem[(32 * arg1 + idx) + 128]
                idx = idx + 1
                continue 
            _375 = mem[64]
            mem[mem[64]] = 64
            _383 = mem[_303]
            mem[mem[64] + 64] = mem[_303]
            idx = 0
            s = _303 + 32
            t = mem[64] + 96
            while idx < _383:
                _427 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_427 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            mem[_375 + 32] = arg1 + arg2
            return memory
              from mem[64]
               len _375 + (64 * _383) + -mem[64] + 96
        mem[64] = _303 + (32 * arg2) + 96
        mem[_303 + (32 * arg2) + 32] = 0
        mem[_303 + (32 * arg2) + 64] = 0
        mem[var26001] = _303 + (32 * arg2) + 32
        s = var26001
        idx = var26002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_303 + (32 * arg2) + 32] = 0
            mem[_303 + (32 * arg2) + 64] = 0
            mem[s + 32] = _303 + (32 * arg2) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg2:
            require arg1 + idx < mem[96]
            require idx < mem[_303]
            mem[(32 * idx) + _303 + 32] = mem[(32 * arg1 + idx) + 128]
            idx = idx + 1
            continue 
        _457 = mem[64]
        mem[mem[64]] = 64
        _463 = mem[_303]
        mem[mem[64] + 64] = mem[_303]
        idx = 0
        s = _303 + 32
        t = mem[64] + 96
        while idx < _463:
            _473 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_473 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_457 + 32] = arg1 + arg2
        return memory
          from mem[64]
           len _457 + (64 * _463) + -mem[64] + 96
    _300 = mem[96]
    require mem[96] - arg1 <= test266151307()
    _306 = mem[64]
    mem[mem[64]] = mem[96] - arg1
    mem[64] = mem[64] + (32 * _300 - arg1) + 32
    if not _300 - arg1:
        idx = 0
        while idx < _300 - arg1:
            require arg1 + idx < mem[96]
            require idx < mem[_306]
            mem[(32 * idx) + _306 + 32] = mem[(32 * arg1 + idx) + 128]
            idx = idx + 1
            continue 
        _378 = mem[64]
        mem[mem[64]] = 64
        _384 = mem[_306]
        mem[mem[64] + 64] = mem[_306]
        idx = 0
        s = _306 + 32
        t = mem[64] + 96
        while idx < _384:
            _430 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_430 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_378 + 32] = _300
        return memory
          from mem[64]
           len _378 + (64 * _384) + -mem[64] + 96
    mem[64] = _306 + (32 * _300 - arg1) + 96
    mem[_306 + (32 * _300 - arg1) + 32] = 0
    mem[_306 + (32 * _300 - arg1) + 64] = 0
    mem[var27001] = _306 + (32 * _300 - arg1) + 32
    s = var27001
    idx = var27002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[_306 + (32 * _300 - arg1) + 32] = 0
        mem[_306 + (32 * _300 - arg1) + 64] = 0
        mem[s + 32] = _306 + (32 * _300 - arg1) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < _300 - arg1:
        require arg1 + idx < mem[96]
        require idx < mem[_306]
        mem[(32 * idx) + _306 + 32] = mem[(32 * arg1 + idx) + 128]
        idx = idx + 1
        continue 
    _460 = mem[64]
    mem[mem[64]] = 64
    _464 = mem[_306]
    mem[mem[64] + 64] = mem[_306]
    idx = 0
    s = _306 + 32
    t = mem[64] + 96
    while idx < _464:
        _476 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_476 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    mem[_460 + 32] = _300
    return memory
      from mem[64]
       len _460 + (64 * _464) + -mem[64] + 96
}

function restake(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = msg.sender
    require ext_code.size(sub_ef10df3cAddress)
    staticcall sub_ef10df3cAddress.checkAccess(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NeedAccess: access is denied'
    if not stakeOf[msg.sender]:
        if not sub_4b3b0d10[msg.sender]:
            revert with 0, 'TalecraftStaking: zero restaking amount'
        if sub_4b3b0d10[msg.sender] < 0:
            revert with 0, 'SafeMath: addition overflow'
        sub_5dc167a6[msg.sender] = 0
        sub_4b3b0d10[msg.sender] = 0
        if sub_4b3b0d10[msg.sender] <= 0:
            revert with 0, 'TalecraftStaking: zero restaking amount'
        if not sub_4b3b0d10[msg.sender]:
            mem[ceil32(return_data.size) + 132] = address(sub_09a8475aAddress)
            mem[ceil32(return_data.size) + 164] = sub_4b3b0d10[msg.sender]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor59)
            mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(stakingTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), sub_4b3b0d10[msg.sender], 0
            mem[ceil32(return_data.size) + 328] = 0
            call stakingTokenAddress with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), sub_4b3b0d10[msg.sender], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), sub_4b3b0d10[msg.sender], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = address(sub_09a8475aAddress)
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_09a8475aAddress)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(2 * ceil32(return_data.size)) + 132] = address(sub_09a8475aAddress)
            mem[(2 * ceil32(return_data.size)) + 164] = sub_4b3b0d10[msg.sender]
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor59)
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(stakingTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), sub_4b3b0d10[msg.sender], 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call stakingTokenAddress with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), sub_4b3b0d10[msg.sender], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), sub_4b3b0d10[msg.sender], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(sub_09a8475aAddress))
        call address(sub_09a8475aAddress).0x4624b191 with:
             gas gas_remaining wei
            args msg.sender, sub_4b3b0d10[msg.sender], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xe2d4f7d2: sub_4b3b0d10[msg.sender], block.timestamp, msg.sender
        stor1 = 1
        return sub_4b3b0d10[msg.sender]
    if stakeOf[msg.sender] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0, 'Stakeholder: zero target error'
    if not sub_d8e39bfc[address(msg.sender)]:
        revert with 0, 'Stakeholder: the sender must be on the list'
    if not stakeOf[address(msg.sender)]:
        revert with 0, 'Stakeholder: the sender must be a stakeholder'
    if not sub_d8e39bfc[address(msg.sender)]:
        revert with 0, 'Stakeholder: the list is broken'
    if not sub_72390ef3[address(msg.sender)]:
        revert with 0, 'Stakeholder: the list is broken'
    stakeOf[address(msg.sender)] = 0
    if 1 > sub_4f49a78a:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_4f49a78a--
    sub_d8e39bfc[stor56[address(msg.sender)]] = sub_d8e39bfc[address(msg.sender)]
    sub_72390ef3[stor55[address(msg.sender)]] = sub_72390ef3[address(msg.sender)]
    sub_d8e39bfc[address(msg.sender)] = 0
    sub_72390ef3[address(msg.sender)] = 0
    if not sub_4b3b0d10[msg.sender]:
        if stakeOf[msg.sender] <= 0:
            revert with 0, 'TalecraftStaking: zero restaking amount'
        if not stakeOf[msg.sender]:
            mem[ceil32(return_data.size) + 132] = address(sub_09a8475aAddress)
            mem[ceil32(return_data.size) + 164] = stakeOf[msg.sender]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor59)
            mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(stakingTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), stakeOf[msg.sender], 0
            mem[ceil32(return_data.size) + 328] = 0
            call stakingTokenAddress with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), stakeOf[msg.sender], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), stakeOf[msg.sender], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = address(sub_09a8475aAddress)
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(sub_09a8475aAddress)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(2 * ceil32(return_data.size)) + 132] = address(sub_09a8475aAddress)
            mem[(2 * ceil32(return_data.size)) + 164] = stakeOf[msg.sender]
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor59)
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(stakingTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), stakeOf[msg.sender], 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call stakingTokenAddress with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), stakeOf[msg.sender], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), stakeOf[msg.sender], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(sub_09a8475aAddress))
        call address(sub_09a8475aAddress).0x4624b191 with:
             gas gas_remaining wei
            args msg.sender, stakeOf[msg.sender], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xe2d4f7d2: stakeOf[msg.sender], block.timestamp, msg.sender
        stor1 = 1
        return stakeOf[msg.sender]
    if sub_4b3b0d10[msg.sender] + stakeOf[msg.sender] < stakeOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    sub_5dc167a6[msg.sender] = 0
    sub_4b3b0d10[msg.sender] = 0
    if sub_4b3b0d10[msg.sender] + stakeOf[msg.sender] <= 0:
        revert with 0, 'TalecraftStaking: zero restaking amount'
    if not sub_4b3b0d10[msg.sender] + stakeOf[msg.sender]:
        mem[ceil32(return_data.size) + 132] = address(sub_09a8475aAddress)
        mem[ceil32(return_data.size) + 164] = sub_4b3b0d10[msg.sender] + stakeOf[msg.sender]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor59)
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stakingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), sub_4b3b0d10[msg.sender] + stakeOf[msg.sender], 0
        mem[ceil32(return_data.size) + 328] = 0
        call stakingTokenAddress with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), sub_4b3b0d10[msg.sender] + stakeOf[msg.sender], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), sub_4b3b0d10[msg.sender] + stakeOf[msg.sender], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = address(sub_09a8475aAddress)
        require ext_code.size(stakingTokenAddress)
        staticcall stakingTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_09a8475aAddress)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = address(sub_09a8475aAddress)
        mem[(2 * ceil32(return_data.size)) + 164] = sub_4b3b0d10[msg.sender] + stakeOf[msg.sender]
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor59)
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stakingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), sub_4b3b0d10[msg.sender] + stakeOf[msg.sender], 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call stakingTokenAddress with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), sub_4b3b0d10[msg.sender] + stakeOf[msg.sender], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor59), uint32(stor59), sub_4b3b0d10[msg.sender] + stakeOf[msg.sender], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(sub_09a8475aAddress))
    call address(sub_09a8475aAddress).0x4624b191 with:
         gas gas_remaining wei
        args msg.sender, sub_4b3b0d10[msg.sender] + stakeOf[msg.sender], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xe2d4f7d2: sub_4b3b0d10[msg.sender] + stakeOf[msg.sender], block.timestamp, msg.sender
    stor1 = 1
    return (sub_4b3b0d10[msg.sender] + stakeOf[msg.sender])
}



}

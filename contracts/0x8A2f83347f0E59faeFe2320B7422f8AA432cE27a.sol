contract main {




// =====================  Runtime code  =====================


#
#  - sub_86c5c8f7(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint8 paused;
uint256 stor101;
address owner;
mapping of uint256 pendingStakesOf;
array of address stor202;
address stor203;
uint256 minimumStake;
uint256 sub_966cb23d;
address stor207;
uint256 pendingGap;
mapping of uint256 sub_033b9d5e;
array of address stor211;
uint256 pendingClaimGap;
array of uint256 stor30232785535072749652971633506012447853310042529756156461386917081222683561697;
array of uint256 stor65748345884687279104705167928541120391246617999136278198548921689436223979942;

function sub_033b9d5e(?) {
    require calldata.size - 4 >= 32
    return sub_033b9d5e[address(arg1)]
}

function pendingClaimGap() {
    return pendingClaimGap
}

function pendingGap() {
    return pendingGap
}

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function sub_966cb23d(?) {
    return sub_966cb23d
}

function sub_98954f5a(?) {
    return minimumStake
}

function pendingStakesOf(address arg1) {
    require calldata.size - 4 >= 32
    return pendingStakesOf[address(arg1)]
}

function getMinimumStake() {
    return minimumStake
}

function _fallback() payable {
    revert
}

function resetPendingGap() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    pendingGap = 0
}

function resetPendingClaimGap() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    pendingClaimGap = 0
}

function sub_eca70561(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor207 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeOperator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor203 = arg1
}

function setMinimumStake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor203 != msg.sender:
            revert with 0, 'Operator: not allowed'
    minimumStake = arg1
}

function calcPendingGap() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    s = 0
    while idx < stor202.length:
        mem[0] = 202
        if not address(stor202[idx]):
            idx = idx + 1
            s = s + 1
            continue 
        pendingGap = s
    pendingGap = stor202.length
}

function calcPendingClaimGap() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    s = 0
    while idx < stor211.length:
        mem[0] = 211
        if not stor211[idx]:
            idx = idx + 1
            s = s + 1
            continue 
        pendingClaimGap = s
    pendingClaimGap = stor211.length
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(stor207)
    staticcall stor207.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7243616e6e6f7420636c61696d206d6f7265207468616e2068617665206f6e20616464726573,
                    mem[202 len 26]
    if not sub_033b9d5e[msg.sender]:
        stor211.length++
        stor915C[stor211.length] = msg.sender or Mask(96, 160, stor915C[stor211.length])
    if arg1 + sub_033b9d5e[msg.sender] < sub_033b9d5e[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    sub_033b9d5e[msg.sender] += arg1
    require ext_code.size(stor207)
    call stor207.lockForDelayedBurn(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xafe84972: arg1, msg.sender
    stor101 = 1
}

function stake() payable {
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if msg.value < minimumStake:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6456616c7565206d7573742062652067726561746572207468616e206d696e20616d6f756e,
                    mem[201 len 27]
    require minimumStake
    if msg.value % minimumStake:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7356616c7565206d757374206265206d756c7469706c65206f66206d696e696d756d207374616b696e6720616d6f756e,
                    mem[212 len 16]
    if not pendingStakesOf[msg.sender]:
        stor202.length++
        stor42D7[stor202.length] = msg.sender or Mask(96, 160, stor42D7[stor202.length])
    if msg.value + pendingStakesOf[msg.sender] < pendingStakesOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    pendingStakesOf[msg.sender] += msg.value
    require ext_code.size(stor207)
    call stor207.0xa85374e1 with:
         gas gas_remaining wei
        args msg.sender, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit StakePending(msg.value, msg.sender);
    stor101 = 1
}

function getPendingClaims() {
    if owner != msg.sender:
        if stor203 != msg.sender:
            revert with 0, 'Operator: not allowed'
    require stor211.length <= test266151307()
    if stor211.length:
        mem[128 len 32 * stor211.length] = call.data[calldata.size len 32 * stor211.length]
    require stor211.length <= test266151307()
    mem[(32 * stor211.length) + 128] = stor211.length
    if stor211.length:
        mem[(32 * stor211.length) + 160 len 32 * stor211.length] = call.data[calldata.size len 32 * stor211.length]
    idx = 0
    while idx < stor211.length:
        mem[0] = stor211[idx]
        mem[32] = 210
        if stor211[idx]:
            require idx < stor211.length
            mem[(32 * idx) + 128] = stor211[idx]
            require idx < mem[(32 * stor211.length) + 128]
            mem[(32 * idx) + (32 * stor211.length) + 160] = sub_033b9d5e[stor211[idx]]
        idx = idx + 1
        continue 
    mem[(64 * stor211.length) + 160] = 64
    mem[(64 * stor211.length) + 224] = stor211.length
    mem[(64 * stor211.length) + 256 len floor32(stor211.length)] = mem[128 len floor32(stor211.length)]
    mem[(64 * stor211.length) + 192] = (32 * stor211.length) + 96
    mem[(98 * stor211.length) + 256] = mem[(32 * stor211.length) + 128]
    mem[(98 * stor211.length) + 288 len floor32(mem[(32 * stor211.length) + 128])] = mem[(32 * stor211.length) + 160 len floor32(mem[(32 * stor211.length) + 128])]
    return memory
      from (64 * stor211.length) + 160
       len (32 * mem[(32 * stor211.length) + 128]) + (161 * stor211.length) + 128
}

function getPendingStakes() {
    if owner != msg.sender:
        if stor203 != msg.sender:
            revert with 0, 'Operator: not allowed'
    require stor202.length <= test266151307()
    if stor202.length:
        mem[128 len 32 * stor202.length] = call.data[calldata.size len 32 * stor202.length]
    require stor202.length <= test266151307()
    mem[(32 * stor202.length) + 128] = stor202.length
    if stor202.length:
        mem[(32 * stor202.length) + 160 len 32 * stor202.length] = call.data[calldata.size len 32 * stor202.length]
    idx = 0
    while idx < stor202.length:
        mem[0] = address(stor202[idx])
        mem[32] = 201
        if address(stor202[idx]):
            require idx < stor202.length
            mem[(32 * idx) + 128] = address(stor202[idx])
            require idx < mem[(32 * stor202.length) + 128]
            mem[(32 * idx) + (32 * stor202.length) + 160] = pendingStakesOf[address(stor202[idx])]
        idx = idx + 1
        continue 
    mem[(64 * stor202.length) + 160] = 64
    mem[(64 * stor202.length) + 224] = stor202.length
    mem[(64 * stor202.length) + 256 len floor32(stor202.length)] = mem[128 len floor32(stor202.length)]
    mem[(64 * stor202.length) + 192] = (32 * stor202.length) + 96
    mem[(98 * stor202.length) + 256] = mem[(32 * stor202.length) + 128]
    mem[(98 * stor202.length) + 288 len floor32(mem[(32 * stor202.length) + 128])] = mem[(32 * stor202.length) + 160 len floor32(mem[(32 * stor202.length) + 128])]
    return memory
      from (64 * stor202.length) + 160
       len (32 * mem[(32 * stor202.length) + 128]) + (161 * stor202.length) + 128
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        paused = 0
        stor101 = 1
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor203 = arg1
        sub_966cb23d = 10^18
        minimumStake = 10^18
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            paused = 0
            stor101 = 1
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor203 = arg1
            sub_966cb23d = 10^18
            minimumStake = 10^18
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                paused = 0
                stor101 = 1
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor203 = arg1
                sub_966cb23d = 10^18
                minimumStake = 10^18
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    paused = 0
                    stor101 = 1
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor203 = arg1
                    sub_966cb23d = 10^18
                    minimumStake = 10^18
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        paused = 0
                        stor101 = 1
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor203 = arg1
                        sub_966cb23d = 10^18
                        minimumStake = 10^18
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        paused = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor101 = 1
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            stor203 = arg1
                            sub_966cb23d = 10^18
                            minimumStake = 10^18
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor101 = 1
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                                stor203 = arg1
                                sub_966cb23d = 10^18
                                minimumStake = 10^18
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if ext_code.size(this.address):
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                    mem[210 len 18]
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    stor203 = arg1
                                    sub_966cb23d = 10^18
                                    minimumStake = 10^18
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                        stor203 = arg1
                                        sub_966cb23d = 10^18
                                        minimumStake = 10^18
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                        if ext_code.size(this.address):
                                            if uint8(stor0.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                            mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            stor203 = arg1
                                            sub_966cb23d = 10^18
                                            minimumStake = 10^18
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            stor203 = arg1
                                            sub_966cb23d = 10^18
                                            minimumStake = 10^18
                                            uint8(stor0.field_8) = 0
}

function sub_96cfb2d6(?) payable {
    require calldata.size - 4 >= 64
    if msg.sender == owner:
        if pendingGap > stor202.length:
            revert with 0, 'SafeMath: subtraction overflow'
        require stor202.length - pendingGap <= test266151307()
        mem[96] = stor202.length - pendingGap
        if not stor202.length - pendingGap:
            if pendingGap > stor202.length:
                revert with 0, 'SafeMath: subtraction overflow'
            require stor202.length - pendingGap <= test266151307()
            mem[(32 * stor202.length - pendingGap) + 128] = stor202.length - pendingGap
            mem[64] = (64 * stor202.length - pendingGap) + 160
            if not stor202.length - pendingGap:
                idx = pendingGap
                s = 0
                while idx < stor202.length:
                    if 0 >= arg2:
                        if s + pendingGap < pendingGap:
                            revert with 0, 'SafeMath: addition overflow'
                        pendingGap += s
                        if stor202.length > s + pendingGap:
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1177 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1177:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1177) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                        else:
                            stor202.length = 0
                            idx = sha3(202)
                            while sha3(202) + stor202.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                            pendingGap = 0
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1437 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1437:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1437) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                    require idx < stor202.length
                    mem[0] = address(stor202[idx])
                    mem[32] = 201
                    if address(stor202[idx]):
                        if pendingStakesOf[address(stor202[idx])]:
                            if pendingStakesOf[address(stor202[idx])] <= arg2:
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = pendingStakesOf[address(stor202[idx])]
                                if pendingStakesOf[address(stor202[idx])] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if pendingStakesOf[address(stor202[idx])] > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] = 0
                            else:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = arg2
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[0] = address(stor202[idx])
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] -= arg2
                                if pendingStakesOf[address(stor202[idx])] - arg2:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            require idx < stor202.length
                            mem[0] = 202
                            address(stor202[idx]) = 0
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s + pendingGap < pendingGap:
                    revert with 0, 'SafeMath: addition overflow'
                pendingGap += s
                if stor202.length > s + pendingGap:
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1174 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1174) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                else:
                    stor202.length = 0
                    idx = 0
                    while stor202.length > idx:
                        uint256(stor202[idx]) = 0
                        idx = idx + 1
                        continue 
                    pendingGap = 0
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1432 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1432) + (161 * stor202.length) + (-161 * pendingGap) + 192]
            else:
                mem[(32 * stor202.length - pendingGap) + 160 len 32 * stor202.length - pendingGap] = call.data[calldata.size len 32 * stor202.length - pendingGap]
                idx = pendingGap
                s = 0
                while idx < stor202.length:
                    if 0 >= arg2:
                        if s + pendingGap < pendingGap:
                            revert with 0, 'SafeMath: addition overflow'
                        pendingGap += s
                        if stor202.length > s + pendingGap:
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1183 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1183:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1183) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                        else:
                            stor202.length = 0
                            idx = sha3(202)
                            while sha3(202) + stor202.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                            pendingGap = 0
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1447 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1447:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1447) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                    require idx < stor202.length
                    mem[0] = address(stor202[idx])
                    mem[32] = 201
                    if address(stor202[idx]):
                        if pendingStakesOf[address(stor202[idx])]:
                            if pendingStakesOf[address(stor202[idx])] <= arg2:
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = pendingStakesOf[address(stor202[idx])]
                                if pendingStakesOf[address(stor202[idx])] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if pendingStakesOf[address(stor202[idx])] > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] = 0
                            else:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = arg2
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[0] = address(stor202[idx])
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] -= arg2
                                if pendingStakesOf[address(stor202[idx])] - arg2:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            require idx < stor202.length
                            mem[0] = 202
                            address(stor202[idx]) = 0
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s + pendingGap < pendingGap:
                    revert with 0, 'SafeMath: addition overflow'
                pendingGap += s
                if stor202.length > s + pendingGap:
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1180 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1180) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                else:
                    stor202.length = 0
                    idx = 0
                    while stor202.length > idx:
                        uint256(stor202[idx]) = 0
                        idx = idx + 1
                        continue 
                    pendingGap = 0
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1442 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1442) + (161 * stor202.length) + (-161 * pendingGap) + 192]
        else:
            mem[128 len 32 * stor202.length - pendingGap] = call.data[calldata.size len 32 * stor202.length - pendingGap]
            if pendingGap > stor202.length:
                revert with 0, 'SafeMath: subtraction overflow'
            require stor202.length - pendingGap <= test266151307()
            mem[(32 * stor202.length - pendingGap) + 128] = stor202.length - pendingGap
            mem[64] = (64 * stor202.length - pendingGap) + 160
            if not stor202.length - pendingGap:
                idx = pendingGap
                s = 0
                while idx < stor202.length:
                    if 0 >= arg2:
                        if s + pendingGap < pendingGap:
                            revert with 0, 'SafeMath: addition overflow'
                        pendingGap += s
                        if stor202.length > s + pendingGap:
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1189 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1189:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1189) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                        else:
                            stor202.length = 0
                            idx = sha3(202)
                            while sha3(202) + stor202.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                            pendingGap = 0
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1457 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1457:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1457) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                    require idx < stor202.length
                    mem[0] = address(stor202[idx])
                    mem[32] = 201
                    if address(stor202[idx]):
                        if pendingStakesOf[address(stor202[idx])]:
                            if pendingStakesOf[address(stor202[idx])] <= arg2:
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = pendingStakesOf[address(stor202[idx])]
                                if pendingStakesOf[address(stor202[idx])] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if pendingStakesOf[address(stor202[idx])] > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] = 0
                            else:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = arg2
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[0] = address(stor202[idx])
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] -= arg2
                                if pendingStakesOf[address(stor202[idx])] - arg2:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            require idx < stor202.length
                            mem[0] = 202
                            address(stor202[idx]) = 0
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s + pendingGap < pendingGap:
                    revert with 0, 'SafeMath: addition overflow'
                pendingGap += s
                if stor202.length > s + pendingGap:
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1186 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1186) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                else:
                    stor202.length = 0
                    idx = 0
                    while stor202.length > idx:
                        uint256(stor202[idx]) = 0
                        idx = idx + 1
                        continue 
                    pendingGap = 0
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1452 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1452) + (161 * stor202.length) + (-161 * pendingGap) + 192]
            else:
                mem[(32 * stor202.length - pendingGap) + 160 len 32 * stor202.length - pendingGap] = call.data[calldata.size len 32 * stor202.length - pendingGap]
                idx = pendingGap
                s = 0
                while idx < stor202.length:
                    if 0 >= arg2:
                        if s + pendingGap < pendingGap:
                            revert with 0, 'SafeMath: addition overflow'
                        pendingGap += s
                        if stor202.length > s + pendingGap:
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1195 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1195:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1195) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                        else:
                            stor202.length = 0
                            idx = sha3(202)
                            while sha3(202) + stor202.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                            pendingGap = 0
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1467 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1467:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1467) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                    require idx < stor202.length
                    mem[0] = address(stor202[idx])
                    mem[32] = 201
                    if address(stor202[idx]):
                        if pendingStakesOf[address(stor202[idx])]:
                            if pendingStakesOf[address(stor202[idx])] <= arg2:
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = pendingStakesOf[address(stor202[idx])]
                                if pendingStakesOf[address(stor202[idx])] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if pendingStakesOf[address(stor202[idx])] > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] = 0
                            else:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = arg2
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[0] = address(stor202[idx])
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] -= arg2
                                if pendingStakesOf[address(stor202[idx])] - arg2:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            require idx < stor202.length
                            mem[0] = 202
                            address(stor202[idx]) = 0
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s + pendingGap < pendingGap:
                    revert with 0, 'SafeMath: addition overflow'
                pendingGap += s
                if stor202.length > s + pendingGap:
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1192 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1192) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                else:
                    stor202.length = 0
                    idx = 0
                    while stor202.length > idx:
                        uint256(stor202[idx]) = 0
                        idx = idx + 1
                        continue 
                    pendingGap = 0
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1462 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1462) + (161 * stor202.length) + (-161 * pendingGap) + 192]
    else:
        if stor203 != msg.sender:
            revert with 0, 'Operator: not allowed'
        if pendingGap > stor202.length:
            revert with 0, 'SafeMath: subtraction overflow'
        require stor202.length - pendingGap <= test266151307()
        mem[96] = stor202.length - pendingGap
        if not stor202.length - pendingGap:
            if pendingGap > stor202.length:
                revert with 0, 'SafeMath: subtraction overflow'
            require stor202.length - pendingGap <= test266151307()
            mem[(32 * stor202.length - pendingGap) + 128] = stor202.length - pendingGap
            mem[64] = (64 * stor202.length - pendingGap) + 160
            if not stor202.length - pendingGap:
                idx = pendingGap
                s = 0
                while idx < stor202.length:
                    if 0 >= arg2:
                        if s + pendingGap < pendingGap:
                            revert with 0, 'SafeMath: addition overflow'
                        pendingGap += s
                        if stor202.length > s + pendingGap:
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1201 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1201:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1201) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                        else:
                            stor202.length = 0
                            idx = sha3(202)
                            while sha3(202) + stor202.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                            pendingGap = 0
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1477 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1477:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1477) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                    require idx < stor202.length
                    mem[0] = address(stor202[idx])
                    mem[32] = 201
                    if address(stor202[idx]):
                        if pendingStakesOf[address(stor202[idx])]:
                            if pendingStakesOf[address(stor202[idx])] <= arg2:
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = pendingStakesOf[address(stor202[idx])]
                                if pendingStakesOf[address(stor202[idx])] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if pendingStakesOf[address(stor202[idx])] > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] = 0
                            else:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = arg2
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[0] = address(stor202[idx])
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] -= arg2
                                if pendingStakesOf[address(stor202[idx])] - arg2:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            require idx < stor202.length
                            mem[0] = 202
                            address(stor202[idx]) = 0
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s + pendingGap < pendingGap:
                    revert with 0, 'SafeMath: addition overflow'
                pendingGap += s
                if stor202.length > s + pendingGap:
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1198 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1198) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                else:
                    stor202.length = 0
                    idx = 0
                    while stor202.length > idx:
                        uint256(stor202[idx]) = 0
                        idx = idx + 1
                        continue 
                    pendingGap = 0
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1472 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1472) + (161 * stor202.length) + (-161 * pendingGap) + 192]
            else:
                mem[(32 * stor202.length - pendingGap) + 160 len 32 * stor202.length - pendingGap] = call.data[calldata.size len 32 * stor202.length - pendingGap]
                idx = pendingGap
                s = 0
                while idx < stor202.length:
                    if 0 >= arg2:
                        if s + pendingGap < pendingGap:
                            revert with 0, 'SafeMath: addition overflow'
                        pendingGap += s
                        if stor202.length > s + pendingGap:
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1207 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1207:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1207) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                        else:
                            stor202.length = 0
                            idx = sha3(202)
                            while sha3(202) + stor202.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                            pendingGap = 0
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1487 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1487:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1487) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                    require idx < stor202.length
                    mem[0] = address(stor202[idx])
                    mem[32] = 201
                    if address(stor202[idx]):
                        if pendingStakesOf[address(stor202[idx])]:
                            if pendingStakesOf[address(stor202[idx])] <= arg2:
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = pendingStakesOf[address(stor202[idx])]
                                if pendingStakesOf[address(stor202[idx])] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if pendingStakesOf[address(stor202[idx])] > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] = 0
                            else:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = arg2
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[0] = address(stor202[idx])
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] -= arg2
                                if pendingStakesOf[address(stor202[idx])] - arg2:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            require idx < stor202.length
                            mem[0] = 202
                            address(stor202[idx]) = 0
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s + pendingGap < pendingGap:
                    revert with 0, 'SafeMath: addition overflow'
                pendingGap += s
                if stor202.length > s + pendingGap:
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1204 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1204) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                else:
                    stor202.length = 0
                    idx = 0
                    while stor202.length > idx:
                        uint256(stor202[idx]) = 0
                        idx = idx + 1
                        continue 
                    pendingGap = 0
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1482 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1482) + (161 * stor202.length) + (-161 * pendingGap) + 192]
        else:
            mem[128 len 32 * stor202.length - pendingGap] = call.data[calldata.size len 32 * stor202.length - pendingGap]
            if pendingGap > stor202.length:
                revert with 0, 'SafeMath: subtraction overflow'
            require stor202.length - pendingGap <= test266151307()
            mem[(32 * stor202.length - pendingGap) + 128] = stor202.length - pendingGap
            mem[64] = (64 * stor202.length - pendingGap) + 160
            if not stor202.length - pendingGap:
                idx = pendingGap
                s = 0
                while idx < stor202.length:
                    if 0 >= arg2:
                        if s + pendingGap < pendingGap:
                            revert with 0, 'SafeMath: addition overflow'
                        pendingGap += s
                        if stor202.length > s + pendingGap:
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1213 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1213:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1213) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                        else:
                            stor202.length = 0
                            idx = sha3(202)
                            while sha3(202) + stor202.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                            pendingGap = 0
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1497 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1497:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1497) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                    require idx < stor202.length
                    mem[0] = address(stor202[idx])
                    mem[32] = 201
                    if address(stor202[idx]):
                        if pendingStakesOf[address(stor202[idx])]:
                            if pendingStakesOf[address(stor202[idx])] <= arg2:
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = pendingStakesOf[address(stor202[idx])]
                                if pendingStakesOf[address(stor202[idx])] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if pendingStakesOf[address(stor202[idx])] > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] = 0
                            else:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = arg2
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[0] = address(stor202[idx])
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] -= arg2
                                if pendingStakesOf[address(stor202[idx])] - arg2:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            require idx < stor202.length
                            mem[0] = 202
                            address(stor202[idx]) = 0
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s + pendingGap < pendingGap:
                    revert with 0, 'SafeMath: addition overflow'
                pendingGap += s
                if stor202.length > s + pendingGap:
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1210 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1210) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                else:
                    stor202.length = 0
                    idx = 0
                    while stor202.length > idx:
                        uint256(stor202[idx]) = 0
                        idx = idx + 1
                        continue 
                    pendingGap = 0
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1492 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1492) + (161 * stor202.length) + (-161 * pendingGap) + 192]
            else:
                mem[(32 * stor202.length - pendingGap) + 160 len 32 * stor202.length - pendingGap] = call.data[calldata.size len 32 * stor202.length - pendingGap]
                idx = pendingGap
                s = 0
                while idx < stor202.length:
                    if 0 >= arg2:
                        if s + pendingGap < pendingGap:
                            revert with 0, 'SafeMath: addition overflow'
                        pendingGap += s
                        if stor202.length > s + pendingGap:
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1219 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1219:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1219) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                        else:
                            stor202.length = 0
                            idx = sha3(202)
                            while sha3(202) + stor202.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                            pendingGap = 0
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(64 * stor202.length - pendingGap) + 224] = arg1
                            mem[(64 * stor202.length - pendingGap) + 256] = 0
                            mem[(64 * stor202.length - pendingGap) + 160] = 128
                            mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                            idx = 0
                            while idx < 32 * stor202.length - pendingGap:
                                mem[idx + (64 * stor202.length - pendingGap) + 320] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                            mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                            _1507 = mem[(32 * stor202.length - pendingGap) + 128]
                            idx = 0
                            while idx < 32 * _1507:
                                mem[idx + (98 * stor202.length) + (-98 * pendingGap) + 352] = mem[idx + (32 * stor202.length - pendingGap) + 160]
                                idx = idx + 32
                                continue 
                            emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1507) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                    require idx < stor202.length
                    mem[0] = address(stor202[idx])
                    mem[32] = 201
                    if address(stor202[idx]):
                        if pendingStakesOf[address(stor202[idx])]:
                            if pendingStakesOf[address(stor202[idx])] <= arg2:
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = pendingStakesOf[address(stor202[idx])]
                                if pendingStakesOf[address(stor202[idx])] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if pendingStakesOf[address(stor202[idx])] > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] = 0
                            else:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require 0 < stor202.length - pendingGap
                                mem[128] = address(stor202[idx])
                                require 0 < mem[(32 * stor202.length - pendingGap) + 128]
                                mem[(32 * stor202.length - pendingGap) + 160] = arg2
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 > pendingStakesOf[address(stor202[idx])]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[0] = address(stor202[idx])
                                mem[32] = 201
                                pendingStakesOf[address(stor202[idx])] -= arg2
                                if pendingStakesOf[address(stor202[idx])] - arg2:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            require idx < stor202.length
                            mem[0] = 202
                            address(stor202[idx]) = 0
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s + pendingGap < pendingGap:
                    revert with 0, 'SafeMath: addition overflow'
                pendingGap += s
                if stor202.length > s + pendingGap:
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1216 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1216) + (161 * stor202.length) + (-161 * pendingGap) + 192]
                else:
                    stor202.length = 0
                    idx = 0
                    while stor202.length > idx:
                        uint256(stor202[idx]) = 0
                        idx = idx + 1
                        continue 
                    pendingGap = 0
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(64 * stor202.length - pendingGap) + 224] = arg1
                    mem[(64 * stor202.length - pendingGap) + 256] = 0
                    mem[(64 * stor202.length - pendingGap) + 160] = 128
                    mem[(64 * stor202.length - pendingGap) + 288] = stor202.length - pendingGap
                    mem[(64 * stor202.length - pendingGap) + 320 len floor32(stor202.length - pendingGap)] = mem[128 len floor32(stor202.length - pendingGap)]
                    mem[(64 * stor202.length - pendingGap) + 192] = (32 * stor202.length - pendingGap) + 160
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 320] = mem[(32 * stor202.length - pendingGap) + 128]
                    _1502 = mem[(32 * stor202.length - pendingGap) + 128]
                    mem[(98 * stor202.length) + (-98 * pendingGap) + 352 len floor32(mem[(32 * stor202.length - pendingGap) + 128])] = mem[(32 * stor202.length - pendingGap) + 160 len floor32(mem[(32 * stor202.length - pendingGap) + 128])]
                    emit 0x6d39be3b: mem[(64 * stor202.length - pendingGap) + 160 len (32 * _1502) + (161 * stor202.length) + (-161 * pendingGap) + 192]
}



}

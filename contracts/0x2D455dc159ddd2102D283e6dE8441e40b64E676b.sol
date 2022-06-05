contract main {




// =====================  Runtime code  =====================


#
#  - sub_209b4845(?)
#  - claim()
#  - _fallback()
#
const version = 1


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint32 stor51;
address owner;
uint256 stor51;
uint128 stor102; offset 160
address factoryAddress;
uint256 stor102;
address tokenAddress;
array of struct stor104;
array of struct stor105;
uint8 state;
uint256 startTime;
uint256 totalTokens;
uint256 totalClaimed;
uint8 sub_4c5ca8c8;
array of struct stor111;
mapping of uint256 stor112;
mapping of uint256 allocationOf;
mapping of uint256 claimedOf;
uint256 sub_92595acd;
uint256 sub_713e10e3;
uint256 cycle;
uint256 stor118;
uint256 currentIndex;

function sub_0da5a1b7(?) {
    return stor111.length
}

function currentIndex() {
    return currentIndex
}

function sub_4c5ca8c8(?) {
    return bool(sub_4c5ca8c8)
}

function cycle() {
    return cycle
}

function isEligible(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(allocationOf[address(arg1)])
}

function sub_713e10e3(?) {
    return sub_713e10e3
}

function startTime() {
    return startTime
}

function totalTokens() {
    return totalTokens
}

function owner() {
    return address(owner)
}

function sub_92595acd(?) {
    return sub_92595acd
}

function allocationOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return allocationOf[arg1]
}

function claimedOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimedOf[arg1]
}

function state() {
    if state >= 3:
        revert with 0, 33
    return state
}

function factory() {
    return factoryAddress
}

function totalClaimed() {
    return totalClaimed
}

function token() {
    return tokenAddress
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function totalTokensNeeded() {
    if totalTokens and stor118 > -1 / totalTokens:
        revert with 0, 17
    if totalTokens > !(totalTokens * stor118 / 100):
        revert with 0, 17
    return (totalTokens + (totalTokens * stor118 / 100))
}

function cancel() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if state > 2:
        revert with 0, 33
    if state:
        revert with 0, 'Pool is not in preparation state'
    state = 2
    emit Cancelled(this.address);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function sub_d3438b52(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if address(owner) != msg.sender:
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.isGovernor(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Only operator'
    sub_4c5ca8c8 = uint8(bool(arg1))
}

function sub_b88aeaad(?) {
    require calldata.size - 4 >= 96
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if state > 2:
        revert with 0, 33
    if state:
        revert with 0, 'Pool is not in preparation state'
    if arg1 <= 0:
        revert with 0, 'Invalid vesting configs'
    if arg3 <= 0:
        revert with 0, 'Invalid vesting configs'
    if arg1 > !arg3:
        revert with 0, 17
    if arg1 + arg3 > 100:
        revert with 0, 'Invalid vesting configs'
    if arg2 <= 0:
        revert with 0, 'Invalid vesting configs'
    sub_92595acd = arg1
    cycle = arg2
    sub_713e10e3 = arg3
}

function sub_72f46643(?) {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if state > 2:
        revert with 0, 33
    if state:
        revert with 0, 'Pool is not in preparation state'
    if stor111.length:
        mem[128] = uint256(stor111.field_0)
        idx = 128
        s = 0
        while (32 * stor111.length) + 96 > idx:
            mem[idx + 32] = stor111[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < stor111.length:
        if idx >= stor111.length:
            revert with 0, 50
        allocationOf[mem[(32 * idx) + 140 len 20]] = 0
        if idx >= stor111.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 112
        if stor112[mem[(32 * idx) + 140 len 20]]:
            if stor112[mem[(32 * idx) + 140 len 20]] < 1:
                revert with 0, 17
            if stor111.length < 1:
                revert with 0, 17
            if stor111.length - 1 != stor112[mem[(32 * idx) + 140 len 20]] - 1:
                if stor111.length - 1 >= stor111.length:
                    revert with 0, 50
                if stor112[mem[(32 * idx) + 140 len 20]] - 1 >= stor111.length:
                    revert with 0, 50
                stor111[stor112[mem[(32 * idx) + 140 len 20]]].field_0 = stor111[stor111.length].field_0
                stor112[stor111[stor111.length].field_0] = stor112[mem[(32 * idx) + 140 len 20]]
            if not stor111.length:
                revert with 0, 49
            stor111[stor111.length].field_0 = 0
            stor111.length--
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 112
            stor112[address(mem[(32 * idx) + 128])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    totalTokens = 0
}

function sub_2a30ab1d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if address(owner) != msg.sender:
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.isGovernor(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Only operator'
    if state > 2:
        revert with 0, 33
    if state:
        revert with 0, 'Pool is not in preparation state'
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor104[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor104.length = 0
            idx = 0
            while (uint255(stor104.length) * 0.5) + 31 / 32 > idx:
                stor104[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor104[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor104.length = 0
            idx = 0
            while stor104.length.field_1 + 31 / 32 > idx:
                stor104[idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0x6c2822c6: Array(len=arg1.length, data=arg1[all]), block.timestamp
}

function sub_b7ca6cbe(?) {
    if stor111.length > test266151307():
        revert with 0, 65
    mem[96] = stor111.length
    mem[64] = (32 * stor111.length) + 128
    if not stor111.length:
        idx = 0
        while idx < stor111.length:
            mem[0] = 111
            _32 = mem[64]
            mem[64] = mem[64] + 64
            mem[_32] = stor111[idx].field_0
            mem[0] = stor111[idx].field_0
            mem[32] = 113
            mem[_32 + 32] = allocationOf[stor111[idx].field_0]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[mem[64]] = 32
        _25 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _25:
            _44 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_44 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _24 + (64 * _25) + -mem[64] + 64
    mem[64] = (32 * stor111.length) + 192
    mem[(32 * stor111.length) + 128] = 0
    mem[(32 * stor111.length) + 160] = 0
    mem[128] = (32 * stor111.length) + 128
    s = 128
    idx = stor111.length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor111.length) + 128] = 0
        mem[(32 * stor111.length) + 160] = 0
        mem[s + 32] = (32 * stor111.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor111.length:
        mem[0] = 111
        _55 = mem[64]
        mem[64] = mem[64] + 64
        mem[_55] = stor111[idx].field_0
        mem[0] = stor111[idx].field_0
        mem[32] = 113
        mem[_55 + 32] = allocationOf[stor111[idx].field_0]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _55
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _48 = mem[64]
    mem[mem[64]] = 32
    _49 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _49:
        _58 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_58 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _48 + (64 * _49) + -mem[64] + 64
}

function emergencyWithdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.isGovernor(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only governance'
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor51)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), arg2, 0) << 288)
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
}

function initialize(address arg1, address arg2, string arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if factoryAddress:
        revert with 0, 'AirdropPool: Forbidden'
    if uint8(stor0.field_8):
        address(owner) = msg.sender
        emit OwnershipTransferred(address(owner), msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            address(owner) = msg.sender
            emit OwnershipTransferred(address(owner), msg.sender);
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                address(owner) = msg.sender
                emit OwnershipTransferred(address(owner), msg.sender);
            else:
                uint16(stor0.field_0) = 257
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    address(owner) = msg.sender
                    emit OwnershipTransferred(address(owner), msg.sender);
                else:
                    uint16(stor0.field_0) = 257
                    address(owner) = msg.sender
                    emit OwnershipTransferred(address(owner), msg.sender);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
    uint256(stor102.field_0) = Mask(96, 0, stor102.field_160)
    tokenAddress = arg2
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor104[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor104.length = 0
            idx = 0
            while (uint255(stor104.length) * 0.5) + 31 / 32 > idx:
                stor104[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 0, 34
        if arg3.length:
            stor104[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor104.length = 0
            idx = 0
            while stor104.length.field_1 + 31 / 32 > idx:
                stor104[idx].field_0 = 0
                idx = idx + 1
                continue 
    sub_4c5ca8c8 = 1
    stor118 = arg4
    state = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_1ff64acd(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if state > 2:
        revert with 0, 33
    if state:
        revert with 0, 'Pool is not in preparation state'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Array length mismatched'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        allocationOf[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if totalTokens < allocationOf[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 17
        if totalTokens - allocationOf[address(cd[((32 * idx) + cd[4] + 36)])] > !cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 17
        totalTokens = totalTokens - allocationOf[address(cd[((32 * idx) + cd[4] + 36)])] + cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 112
        if cd[((32 * idx) + cd[36] + 36)] != 0:
            if not stor112[address(cd[((32 * idx) + cd[4] + 36)])]:
                stor111.length++
                stor111[stor111.length].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
                stor111[stor111.length].field_160 = 0
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 112
                stor112[address(cd[((32 * idx) + cd[4] + 36)])] = stor111.length
        else:
            if stor112[address(cd[((32 * idx) + cd[4] + 36)])]:
                if stor112[address(cd[((32 * idx) + cd[4] + 36)])] < 1:
                    revert with 0, 17
                if stor111.length < 1:
                    revert with 0, 17
                if stor111.length - 1 != stor112[address(cd[((32 * idx) + cd[4] + 36)])] - 1:
                    if stor111.length - 1 >= stor111.length:
                        revert with 0, 50
                    if stor112[address(cd[((32 * idx) + cd[4] + 36)])] - 1 >= stor111.length:
                        revert with 0, 50
                    stor111[stor112[address(cd[((32 * idx) + cd[4] + 36)])]].field_0 = stor111[stor111.length].field_0
                    stor112[stor111[stor111.length].field_0] = stor112[address(cd[((32 * idx) + cd[4] + 36)])]
                if not stor111.length:
                    revert with 0, 49
                stor111[stor111.length].field_0 = 0
                stor111.length--
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 112
                stor112[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_79a3892c(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 101] = msg.sender
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.isGovernor(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(ceil32(arg1.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only governance'
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor105[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor105.length = 0
            idx = 0
            while (uint255(stor105.length) * 0.5) + 31 / 32 > idx:
                stor105[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor105[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor105.length = 0
            idx = 0
            while stor105.length.field_1 + 31 / 32 > idx:
                stor105[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor105.length):
            emit 0xe1248419: Array(len=2 * Mask(256, -1, stor105.length), data=Mask(248, 8, stor105.length)), block.timestamp
        else:
            if bool(stor105.length) != 1:
                emit 0xe1248419: mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97 len -ceil32(ceil32(arg1.length)) + -ceil32(return_data.size) - 97]
            else:
                idx = 0
                s = 0
                while idx < uint255(stor105.length) * 0.5:
                    mem[idx + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = stor105[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xe1248419: Array(len=2 * Mask(256, -1, stor105.length), data=mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len ceil32(uint255(stor105.length) * 0.5)]), block.timestamp
    else:
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor105.length):
            emit 0xe1248419: Array(len=stor105.length % 128, data=Mask(248, 8, stor105.length)), block.timestamp
        else:
            if bool(stor105.length) != 1:
                emit 0xe1248419: mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97 len -ceil32(ceil32(arg1.length)) + -ceil32(return_data.size) - 97]
            else:
                idx = 0
                s = 0
                while idx < stor105.length.field_1:
                    mem[idx + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = stor105[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xe1248419: Array(len=stor105.length % 128, data=mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len ceil32(stor105.length.field_1)]), block.timestamp
}

function sub_7b5b7415(?) {
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor105.length):
            if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor105.length):
                if 31 < uint255(stor105.length) * 0.5:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor105.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)])
                mem[128] = 256 * stor105.length.field_8
        else:
            if bool(stor105.length) == stor105.length.field_1 < 32:
                revert with 0, 34
            if stor105.length.field_1:
                if 31 < stor105.length.field_1:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while stor105.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)])
                mem[128] = 256 * stor105.length.field_8
        mem[ceil32(uint255(stor105.length) * 0.5) + 192 len ceil32(uint255(stor105.length) * 0.5)] = mem[128 len ceil32(uint255(stor105.length) * 0.5)]
        if ceil32(uint255(stor105.length) * 0.5) > uint255(stor105.length) * 0.5:
            mem[(uint255(stor105.length) * 0.5) + ceil32(uint255(stor105.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)], mem[(2 * ceil32(uint255(stor105.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor105.length) * 0.5)]), 
    if bool(stor105.length) == stor105.length.field_1 < 32:
        revert with 0, 34
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor105.length):
            if 31 < uint255(stor105.length) * 0.5:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while (uint255(stor105.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    else:
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 0, 34
        if stor105.length.field_1:
            if 31 < stor105.length.field_1:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while stor105.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    mem[ceil32(stor105.length.field_1) + 192 len ceil32(stor105.length.field_1)] = mem[128 len ceil32(stor105.length.field_1)]
    if ceil32(stor105.length.field_1) > stor105.length.field_1:
        mem[stor105.length.field_1 + ceil32(stor105.length.field_1) + 192] = 0
    return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)], mem[(2 * ceil32(stor105.length.field_1)) + 192 len 2 * ceil32(stor105.length.field_1)]), 
}

function sub_8020c5b0(?) {
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor104.length):
            if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor104.length):
                if 31 < uint255(stor104.length) * 0.5:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor104.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)])
                mem[128] = 256 * stor104.length.field_8
        else:
            if bool(stor104.length) == stor104.length.field_1 < 32:
                revert with 0, 34
            if stor104.length.field_1:
                if 31 < stor104.length.field_1:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while stor104.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)])
                mem[128] = 256 * stor104.length.field_8
        mem[ceil32(uint255(stor104.length) * 0.5) + 192 len ceil32(uint255(stor104.length) * 0.5)] = mem[128 len ceil32(uint255(stor104.length) * 0.5)]
        if ceil32(uint255(stor104.length) * 0.5) > uint255(stor104.length) * 0.5:
            mem[(uint255(stor104.length) * 0.5) + ceil32(uint255(stor104.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)], mem[(2 * ceil32(uint255(stor104.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor104.length) * 0.5)]), 
    if bool(stor104.length) == stor104.length.field_1 < 32:
        revert with 0, 34
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor104.length):
            if 31 < uint255(stor104.length) * 0.5:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while (uint255(stor104.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    else:
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 0, 34
        if stor104.length.field_1:
            if 31 < stor104.length.field_1:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while stor104.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    mem[ceil32(stor104.length.field_1) + 192 len ceil32(stor104.length.field_1)] = mem[128 len ceil32(stor104.length.field_1)]
    if ceil32(stor104.length.field_1) > stor104.length.field_1:
        mem[stor104.length.field_1 + ceil32(stor104.length.field_1) + 192] = 0
    return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)], mem[(2 * ceil32(stor104.length.field_1)) + 192 len 2 * ceil32(stor104.length.field_1)]), 
}

function distribute() {
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must be calling from startDistributing()'
    if currentIndex >= stor111.length:
        revert with 0, 50
    if allocationOf[stor111[stor119].field_0]:
        if not claimedOf[stor111[stor119].field_0]:
            if claimedOf[stor111[stor119].field_0]:
                revert with 0, 'Already claimed'
            if not allocationOf[stor111[stor119].field_0]:
                revert with 0, 'Nothing to claim'
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.manager() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 132] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x63eaabc4 with:
                 gas gas_remaining wei
                args stor111[stor119].field_0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            claimedOf[stor111[stor119].field_0] = allocationOf[stor111[stor119].field_0]
            if totalClaimed > !allocationOf[stor111[stor119].field_0]:
                revert with 0, 17
            totalClaimed += allocationOf[stor111[stor119].field_0]
            mem[ceil32(return_data.size) + 100] = stor111[stor119].field_0
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args stor111[stor119].field_0
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 132] = stor111[stor119].field_0
            mem[(2 * ceil32(return_data.size)) + 164] = allocationOf[stor111[stor119].field_0]
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = stor111[stor119].field_0
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), stor111[stor119].field_0, stor111[stor119].field_0, allocationOf[stor111[stor119].field_0], 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call tokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), stor111[stor119].field_0, stor111[stor119].field_0, allocationOf[stor111[stor119].field_0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), stor111[stor119].field_0, stor111[stor119].field_0, allocationOf[stor111[stor119].field_0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
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
            if sub_4c5ca8c8:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args stor111[stor119].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if allocationOf[stor111[stor119].field_0] != 0:
                    revert with 0, 'Not enough tokens were transfered'
            emit Claimed(allocationOf[stor111[stor119].field_0], stor111[stor119].field_0);
    if currentIndex == -1:
        revert with 0, 17
    currentIndex++
}

function sub_ca1fd7cc(?) {
    require calldata.size - 4 >= 64
    if arg2 < stor111.length:
        if arg2 < arg1:
            revert with 0, 17
        if 1 > !(arg2 - arg1):
            revert with 0, 17
        if arg2 + -arg1 + 1 > test266151307():
            revert with 0, 65
        mem[96] = arg2 + -arg1 + 1
        mem[64] = (32 * arg2 + -arg1 + 1) + 128
        if not arg2 + -arg1 + 1:
            idx = arg1
            s = 0
            while idx <= arg2:
                if idx >= stor111.length:
                    revert with 0, 50
                mem[0] = 111
                _56 = mem[64]
                mem[64] = mem[64] + 64
                mem[_56] = stor111[idx].field_0
                mem[0] = stor111[idx].field_0
                mem[32] = 113
                mem[_56 + 32] = allocationOf[stor111[idx].field_0]
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _56
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _47 = mem[64]
            mem[mem[64]] = 32
            _49 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _49:
                _87 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_87 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _47 + (64 * _49) + -mem[64] + 64
        mem[64] = (32 * arg2 + -arg1 + 1) + 192
        mem[(32 * arg2 + -arg1 + 1) + 128] = 0
        mem[(32 * arg2 + -arg1 + 1) + 160] = 0
        mem[128] = (32 * arg2 + -arg1 + 1) + 128
        s = 128
        idx = arg2 + -arg1 + 1
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg2 + -arg1 + 1) + 128] = 0
            mem[(32 * arg2 + -arg1 + 1) + 160] = 0
            mem[s + 32] = (32 * arg2 + -arg1 + 1) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = arg1
        s = 0
        while idx <= arg2:
            if idx >= stor111.length:
                revert with 0, 50
            mem[0] = 111
            _104 = mem[64]
            mem[64] = mem[64] + 64
            mem[_104] = stor111[idx].field_0
            mem[0] = stor111[idx].field_0
            mem[32] = 113
            mem[_104 + 32] = allocationOf[stor111[idx].field_0]
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _104
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _95 = mem[64]
        mem[mem[64]] = 32
        _97 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _97:
            _115 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_115 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _95 + (64 * _97) + -mem[64] + 64
    if stor111.length < 1:
        revert with 0, 17
    if stor111.length - 1 < arg1:
        revert with 0, 17
    if 1 > !(stor111.length + -arg1 - 1):
        revert with 0, 17
    if stor111.length - arg1 > test266151307():
        revert with 0, 65
    mem[96] = stor111.length - arg1
    mem[64] = (32 * stor111.length - arg1) + 128
    if not stor111.length - arg1:
        idx = arg1
        s = 0
        while idx <= stor111.length - 1:
            if idx >= stor111.length:
                revert with 0, 50
            mem[0] = 111
            _63 = mem[64]
            mem[64] = mem[64] + 64
            mem[_63] = stor111[idx].field_0
            mem[0] = stor111[idx].field_0
            mem[32] = 113
            mem[_63 + 32] = allocationOf[stor111[idx].field_0]
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _63
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _48 = mem[64]
        mem[mem[64]] = 32
        _51 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _51:
            _90 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_90 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _48 + (64 * _51) + -mem[64] + 64
    mem[64] = (32 * stor111.length - arg1) + 192
    mem[(32 * stor111.length - arg1) + 128] = 0
    mem[(32 * stor111.length - arg1) + 160] = 0
    mem[128] = (32 * stor111.length - arg1) + 128
    s = 128
    idx = stor111.length - arg1
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor111.length - arg1) + 128] = 0
        mem[(32 * stor111.length - arg1) + 160] = 0
        mem[s + 32] = (32 * stor111.length - arg1) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg1
    s = 0
    while idx <= stor111.length - 1:
        if idx >= stor111.length:
            revert with 0, 50
        mem[0] = 111
        _110 = mem[64]
        mem[64] = mem[64] + 64
        mem[_110] = stor111[idx].field_0
        mem[0] = stor111[idx].field_0
        mem[32] = 113
        mem[_110 + 32] = allocationOf[stor111[idx].field_0]
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _110
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _96 = mem[64]
    mem[mem[64]] = 32
    _99 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _99:
        _118 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_118 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _96 + (64 * _99) + -mem[64] + 64
}

function start(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if state > 2:
        revert with 0, 33
    if state:
        revert with 0, 'Pool is not in preparation state'
    if totalTokens <= 0:
        revert with 0, 'No tokens to airdrop'
    state = 1
    if arg1:
        startTime = arg1
    else:
        startTime = block.timestamp
    if totalTokens and stor118 > -1 / totalTokens:
        revert with 0, 17
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.feeTo() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = totalTokens * stor118 / 100
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], totalTokens * stor118 / 100, 0
    mem[ceil32(return_data.size) + 392] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], totalTokens * stor118 / 100, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], totalTokens * stor118 / 100, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 328] = msg.sender
        mem[ceil32(return_data.size) + 360] = this.address
        mem[ceil32(return_data.size) + 392] = totalTokens
        mem[ceil32(return_data.size) + 292] = 100
        mem[ceil32(return_data.size) + 324 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 424] = 32
        mem[ceil32(return_data.size) + 456] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 488 len 128] = 0, msg.sender, address(this.address), totalTokens, 0
        mem[ceil32(return_data.size) + 588] = 0
        call tokenAddress with:
           funct Mask(32, 224, 0, msg.sender, address(this.address), totalTokens, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, msg.sender, address(this.address), totalTokens, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 492] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 488] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] == totalTokens:
                emit 0x9cb2be6e: totalTokens, this.address
            mem[(2 * ceil32(return_data.size)) + 488] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 492] = 32
            mem[(2 * ceil32(return_data.size)) + 524] = 33
            mem[(2 * ceil32(return_data.size)) + 556] = 'Not enough tokens were transfere'
            mem[(2 * ceil32(return_data.size)) + 588] = 0x6400000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (2 * ceil32(return_data.size)) + 488
               len ceil32(return_data.size) + 132
        mem[ceil32(return_data.size) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 520] == bool(mem[ceil32(return_data.size) + 520])
            if not mem[ceil32(return_data.size) + 520]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 493] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] == totalTokens:
            emit 0x9cb2be6e: totalTokens, this.address
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 33
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'Not enough tokens were transfere'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0x6400000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
           len ceil32(return_data.size) + 132
    mem[ceil32(return_data.size) + 292] = return_data.size
    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
        if not mem[ceil32(return_data.size) + 324]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = this.address
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = totalTokens
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 100
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = 32
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 489 len 128] = 0, msg.sender, address(this.address), totalTokens, 0
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 589] = 0
    call tokenAddress with:
       funct Mask(32, 224, 0, msg.sender, address(this.address), totalTokens, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, 0, msg.sender, address(this.address), totalTokens, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 493] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] == totalTokens:
            emit 0x9cb2be6e: totalTokens, this.address
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 33
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'Not enough tokens were transfere'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0x6400000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
           len ceil32(return_data.size) + 132
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = return_data.size
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 494] = 32
        mem[(4 * ceil32(return_data.size)) + 526] = 32
        mem[(4 * ceil32(return_data.size)) + 558] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 490
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 521])
        if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 521]:
            mem[(4 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 494] = 32
            mem[(4 * ceil32(return_data.size)) + 526] = 42
            mem[(4 * ceil32(return_data.size)) + 558] = 'SafeERC20: ERC20 operation did n'
            mem[(4 * ceil32(return_data.size)) + 590] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 490
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == totalTokens:
        emit 0x9cb2be6e: totalTokens, this.address
    mem[(4 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 494] = 32
    mem[(4 * ceil32(return_data.size)) + 526] = 33
    mem[(4 * ceil32(return_data.size)) + 558] = 'Not enough tokens were transfere'
    mem[(4 * ceil32(return_data.size)) + 590] = 0x6400000000000000000000000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 490
       len (3 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function claimableVestingTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not allocationOf[address(arg1)]:
        return 0
    if 0 == mulmod(allocationOf[address(arg1)], sub_92595acd, -1) - (allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, -1) < allocationOf[address(arg1)] * sub_92595acd):
        if 0 == mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3):
            if not startTime:
                return 0
            if block.timestamp < startTime:
                return 0
            if not cycle:
                return 0
            if block.timestamp < startTime:
                if 0 <= allocationOf[address(arg1)]:
                    if 0 < claimedOf[address(arg1)]:
                        revert with 0, 17
                    return -claimedOf[address(arg1)]
            else:
                if not cycle:
                    revert with 0, 18
                if block.timestamp - startTime / cycle and allocationOf[address(arg1)] * sub_713e10e3 / 100 > -1 / block.timestamp - startTime / cycle:
                    revert with 0, 17
                if block.timestamp - startTime / cycle * allocationOf[address(arg1)] * sub_713e10e3 / 100 > !(allocationOf[address(arg1)] * sub_92595acd / 100):
                    revert with 0, 17
                if (block.timestamp - startTime / cycle * allocationOf[address(arg1)] * sub_713e10e3 / 100) + (allocationOf[address(arg1)] * sub_92595acd / 100) <= allocationOf[address(arg1)]:
                    if (block.timestamp - startTime / cycle * allocationOf[address(arg1)] * sub_713e10e3 / 100) + (allocationOf[address(arg1)] * sub_92595acd / 100) < claimedOf[address(arg1)]:
                        revert with 0, 17
                    return ((block.timestamp - startTime / cycle * allocationOf[address(arg1)] * sub_713e10e3 / 100) + (allocationOf[address(arg1)] * sub_92595acd / 100) - claimedOf[address(arg1)])
        else:
            require 100 > mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3)
            if not startTime:
                return 0
            if block.timestamp < startTime:
                return 0
            if not cycle:
                return 0
            if block.timestamp < startTime:
                if 0 <= allocationOf[address(arg1)]:
                    if 0 < claimedOf[address(arg1)]:
                        revert with 0, 17
                    return -claimedOf[address(arg1)]
            else:
                if not cycle:
                    revert with 0, 18
                if block.timestamp - startTime / cycle and 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (allocationOf[address(arg1)] * sub_713e10e3) - mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) > allocationOf[address(arg1)] * sub_713e10e3) << 254 > -1 / block.timestamp - startTime / cycle:
                    revert with 0, 17
                if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * block.timestamp - startTime / cycle * (allocationOf[address(arg1)] * sub_713e10e3) - mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) > allocationOf[address(arg1)] * sub_713e10e3) << 254 > !(allocationOf[address(arg1)] * sub_92595acd / 100):
                    revert with 0, 17
                if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * block.timestamp - startTime / cycle * (allocationOf[address(arg1)] * sub_713e10e3) - mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) > allocationOf[address(arg1)] * sub_713e10e3) << 254) + (allocationOf[address(arg1)] * sub_92595acd / 100) <= allocationOf[address(arg1)]:
                    if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * block.timestamp - startTime / cycle * (allocationOf[address(arg1)] * sub_713e10e3) - mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) > allocationOf[address(arg1)] * sub_713e10e3) << 254) + (allocationOf[address(arg1)] * sub_92595acd / 100) < claimedOf[address(arg1)]:
                        revert with 0, 17
                    return ((0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * block.timestamp - startTime / cycle * (allocationOf[address(arg1)] * sub_713e10e3) - mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) > allocationOf[address(arg1)] * sub_713e10e3) << 254) + (allocationOf[address(arg1)] * sub_92595acd / 100) - claimedOf[address(arg1)])
    else:
        require 100 > mulmod(allocationOf[address(arg1)], sub_92595acd, -1) - (allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, -1) < allocationOf[address(arg1)] * sub_92595acd)
        if 0 == mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3):
            if not startTime:
                return 0
            if block.timestamp < startTime:
                return 0
            if not cycle:
                return 0
            if block.timestamp < startTime:
                if 0 <= allocationOf[address(arg1)]:
                    if 0 < claimedOf[address(arg1)]:
                        revert with 0, 17
                    return -claimedOf[address(arg1)]
            else:
                if not cycle:
                    revert with 0, 18
                if block.timestamp - startTime / cycle and allocationOf[address(arg1)] * sub_713e10e3 / 100 > -1 / block.timestamp - startTime / cycle:
                    revert with 0, 17
                if block.timestamp - startTime / cycle * allocationOf[address(arg1)] * sub_713e10e3 / 100 > !(0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (allocationOf[address(arg1)] * sub_92595acd) - mulmod(allocationOf[address(arg1)], sub_92595acd, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_92595acd, -1) - (allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, -1) < allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, 100) > allocationOf[address(arg1)] * sub_92595acd) << 254):
                    revert with 0, 17
                if (block.timestamp - startTime / cycle * allocationOf[address(arg1)] * sub_713e10e3 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (allocationOf[address(arg1)] * sub_92595acd) - mulmod(allocationOf[address(arg1)], sub_92595acd, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_92595acd, -1) - (allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, -1) < allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, 100) > allocationOf[address(arg1)] * sub_92595acd) << 254) <= allocationOf[address(arg1)]:
                    if (block.timestamp - startTime / cycle * allocationOf[address(arg1)] * sub_713e10e3 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (allocationOf[address(arg1)] * sub_92595acd) - mulmod(allocationOf[address(arg1)], sub_92595acd, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_92595acd, -1) - (allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, -1) < allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, 100) > allocationOf[address(arg1)] * sub_92595acd) << 254) < claimedOf[address(arg1)]:
                        revert with 0, 17
                    return ((block.timestamp - startTime / cycle * allocationOf[address(arg1)] * sub_713e10e3 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (allocationOf[address(arg1)] * sub_92595acd) - mulmod(allocationOf[address(arg1)], sub_92595acd, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_92595acd, -1) - (allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, -1) < allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, 100) > allocationOf[address(arg1)] * sub_92595acd) << 254) - claimedOf[address(arg1)])
        else:
            require 100 > mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3)
            if not startTime:
                return 0
            if block.timestamp < startTime:
                return 0
            if not cycle:
                return 0
            if block.timestamp < startTime:
                if 0 <= allocationOf[address(arg1)]:
                    if 0 < claimedOf[address(arg1)]:
                        revert with 0, 17
                    return -claimedOf[address(arg1)]
            else:
                if not cycle:
                    revert with 0, 18
                if block.timestamp - startTime / cycle and 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (allocationOf[address(arg1)] * sub_713e10e3) - mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) > allocationOf[address(arg1)] * sub_713e10e3) << 254 > -1 / block.timestamp - startTime / cycle:
                    revert with 0, 17
                if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * block.timestamp - startTime / cycle * (allocationOf[address(arg1)] * sub_713e10e3) - mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) > allocationOf[address(arg1)] * sub_713e10e3) << 254 > !(0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (allocationOf[address(arg1)] * sub_92595acd) - mulmod(allocationOf[address(arg1)], sub_92595acd, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_92595acd, -1) - (allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, -1) < allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, 100) > allocationOf[address(arg1)] * sub_92595acd) << 254):
                    revert with 0, 17
                if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * block.timestamp - startTime / cycle * (allocationOf[address(arg1)] * sub_713e10e3) - mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) > allocationOf[address(arg1)] * sub_713e10e3) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (allocationOf[address(arg1)] * sub_92595acd) - mulmod(allocationOf[address(arg1)], sub_92595acd, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_92595acd, -1) - (allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, -1) < allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, 100) > allocationOf[address(arg1)] * sub_92595acd) << 254) <= allocationOf[address(arg1)]:
                    if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * block.timestamp - startTime / cycle * (allocationOf[address(arg1)] * sub_713e10e3) - mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) > allocationOf[address(arg1)] * sub_713e10e3) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (allocationOf[address(arg1)] * sub_92595acd) - mulmod(allocationOf[address(arg1)], sub_92595acd, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_92595acd, -1) - (allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, -1) < allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, 100) > allocationOf[address(arg1)] * sub_92595acd) << 254) < claimedOf[address(arg1)]:
                        revert with 0, 17
                    return ((0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * block.timestamp - startTime / cycle * (allocationOf[address(arg1)] * sub_713e10e3) - mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) - (allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, -1) < allocationOf[address(arg1)] * sub_713e10e3) - (mulmod(allocationOf[address(arg1)], sub_713e10e3, 100) > allocationOf[address(arg1)] * sub_713e10e3) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (allocationOf[address(arg1)] * sub_92595acd) - mulmod(allocationOf[address(arg1)], sub_92595acd, 100) / 4 or mulmod(allocationOf[address(arg1)], sub_92595acd, -1) - (allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, -1) < allocationOf[address(arg1)] * sub_92595acd) - (mulmod(allocationOf[address(arg1)], sub_92595acd, 100) > allocationOf[address(arg1)] * sub_92595acd) << 254) - claimedOf[address(arg1)])
    if allocationOf[address(arg1)] < claimedOf[address(arg1)]:
        revert with 0, 17
    return (allocationOf[address(arg1)] - claimedOf[address(arg1)])
}

function distributeRange(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if msg.sender == address(owner):
        if state > 2:
            revert with 0, 33
        if state != 1:
            revert with 0, 'Pool is not in progress state'
        if block.timestamp < startTime:
            revert with 0, 'It is not time to claim'
        if sub_92595acd:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot distribute when use vesting'
        if sub_713e10e3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot distribute when use vesting'
        if cycle:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot distribute when use vesting'
        if arg2 < stor111.length:
            idx = arg1
            while idx <= arg2:
                if idx >= stor111.length:
                    revert with 0, 50
                mem[0] = stor111[idx].field_0
                mem[32] = 113
                if allocationOf[stor111[idx].field_0]:
                    mem[0] = stor111[idx].field_0
                    mem[32] = 114
                    if not claimedOf[stor111[idx].field_0]:
                        if claimedOf[stor111[idx].field_0]:
                            revert with 0, 'Already claimed'
                        mem[0] = stor111[idx].field_0
                        mem[32] = 113
                        if not allocationOf[stor111[idx].field_0]:
                            revert with 0, 'Nothing to claim'
                        require ext_code.size(factoryAddress)
                        staticcall factoryAddress.manager() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _727 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _731 = mem[_727]
                        require mem[_727] == mem[_727 + 12 len 20]
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(address(_731))
                        call address(_731).0x63eaabc4 with:
                             gas gas_remaining wei
                            args stor111[idx].field_0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = stor111[idx].field_0
                        mem[32] = 114
                        claimedOf[stor111[idx].field_0] = allocationOf[stor111[idx].field_0]
                        if totalClaimed > !allocationOf[stor111[idx].field_0]:
                            revert with 0, 17
                        totalClaimed += allocationOf[stor111[idx].field_0]
                        mem[mem[64] + 4] = stor111[idx].field_0
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args stor111[idx].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _759 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _763 = mem[_759]
                        _767 = mem[64]
                        mem[mem[64] + 36] = stor111[idx].field_0
                        mem[mem[64] + 68] = allocationOf[stor111[idx].field_0]
                        _771 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_771 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_771 + 36 len 28]
                        mem[64] = _767 + 164
                        mem[_767 + 100] = 32
                        mem[_767 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _799 = mem[_771]
                        s = 0
                        while s < _799:
                            mem[s + _767 + 164] = mem[s + _771 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_799) > _799:
                            mem[_799 + _767 + 164] = 0
                        call tokenAddress.mem[_767 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_767 + 168 len _799 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_767 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_767 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _767 + 232] = mem[idx + _767 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_767 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if not sub_4c5ca8c8:
                                mem[_767 + 164] = allocationOf[stor111[idx].field_0]
                            else:
                                mem[_767 + 168] = stor111[idx].field_0
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor111[idx].field_0
                                mem[_767 + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _767 + ceil32(return_data.size) + 164
                                require return_data.size >= 32
                                if ext_call.return_data[0] < _763:
                                    revert with 0, 17
                                if ext_call.return_data[0] - _763 != allocationOf[stor111[idx].field_0]:
                                    revert with 0, 'Not enough tokens were transfered'
                                mem[_767 + ceil32(return_data.size) + 164] = allocationOf[stor111[idx].field_0]
                        else:
                            mem[64] = _767 + ceil32(return_data.size) + 165
                            mem[_767 + 164] = return_data.size
                            mem[_767 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_767 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_767 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _767 + ceil32(return_data.size) + 233] = mem[idx + _767 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_767 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_767 + 196] == bool(mem[_767 + 196])
                                if not mem[_767 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if not sub_4c5ca8c8:
                                mem[_767 + ceil32(return_data.size) + 165] = allocationOf[stor111[idx].field_0]
                            else:
                                mem[_767 + ceil32(return_data.size) + 169] = stor111[idx].field_0
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor111[idx].field_0
                                mem[_767 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _767 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                require return_data.size >= 32
                                if ext_call.return_data[0] < _763:
                                    revert with 0, 17
                                if ext_call.return_data[0] - _763 != allocationOf[stor111[idx].field_0]:
                                    revert with 0, 'Not enough tokens were transfered'
                                mem[_767 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = allocationOf[stor111[idx].field_0]
                        emit Claimed(allocationOf[stor111[idx].field_0], stor111[idx].field_0);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if stor111.length < 1:
                revert with 0, 17
            idx = arg1
            while idx <= stor111.length - 1:
                if idx >= stor111.length:
                    revert with 0, 50
                mem[0] = stor111[idx].field_0
                mem[32] = 113
                if allocationOf[stor111[idx].field_0]:
                    mem[0] = stor111[idx].field_0
                    mem[32] = 114
                    if not claimedOf[stor111[idx].field_0]:
                        if claimedOf[stor111[idx].field_0]:
                            revert with 0, 'Already claimed'
                        mem[0] = stor111[idx].field_0
                        mem[32] = 113
                        if not allocationOf[stor111[idx].field_0]:
                            revert with 0, 'Nothing to claim'
                        require ext_code.size(factoryAddress)
                        staticcall factoryAddress.manager() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _728 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _732 = mem[_728]
                        require mem[_728] == mem[_728 + 12 len 20]
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(address(_732))
                        call address(_732).0x63eaabc4 with:
                             gas gas_remaining wei
                            args stor111[idx].field_0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = stor111[idx].field_0
                        mem[32] = 114
                        claimedOf[stor111[idx].field_0] = allocationOf[stor111[idx].field_0]
                        if totalClaimed > !allocationOf[stor111[idx].field_0]:
                            revert with 0, 17
                        totalClaimed += allocationOf[stor111[idx].field_0]
                        mem[mem[64] + 4] = stor111[idx].field_0
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args stor111[idx].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _760 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _764 = mem[_760]
                        _768 = mem[64]
                        mem[mem[64] + 36] = stor111[idx].field_0
                        mem[mem[64] + 68] = allocationOf[stor111[idx].field_0]
                        _773 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_773 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_773 + 36 len 28]
                        mem[64] = _768 + 164
                        mem[_768 + 100] = 32
                        mem[_768 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _801 = mem[_773]
                        s = 0
                        while s < _801:
                            mem[s + _768 + 164] = mem[s + _773 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_801) > _801:
                            mem[_801 + _768 + 164] = 0
                        call tokenAddress.mem[_768 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_768 + 168 len _801 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_768 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_768 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _768 + 232] = mem[idx + _768 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_768 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if not sub_4c5ca8c8:
                                mem[_768 + 164] = allocationOf[stor111[idx].field_0]
                            else:
                                mem[_768 + 168] = stor111[idx].field_0
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor111[idx].field_0
                                mem[_768 + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _768 + ceil32(return_data.size) + 164
                                require return_data.size >= 32
                                if ext_call.return_data[0] < _764:
                                    revert with 0, 17
                                if ext_call.return_data[0] - _764 != allocationOf[stor111[idx].field_0]:
                                    revert with 0, 'Not enough tokens were transfered'
                                mem[_768 + ceil32(return_data.size) + 164] = allocationOf[stor111[idx].field_0]
                        else:
                            mem[64] = _768 + ceil32(return_data.size) + 165
                            mem[_768 + 164] = return_data.size
                            mem[_768 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_768 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_768 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _768 + ceil32(return_data.size) + 233] = mem[idx + _768 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_768 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_768 + 196] == bool(mem[_768 + 196])
                                if not mem[_768 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if not sub_4c5ca8c8:
                                mem[_768 + ceil32(return_data.size) + 165] = allocationOf[stor111[idx].field_0]
                            else:
                                mem[_768 + ceil32(return_data.size) + 169] = stor111[idx].field_0
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor111[idx].field_0
                                mem[_768 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _768 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                require return_data.size >= 32
                                if ext_call.return_data[0] < _764:
                                    revert with 0, 17
                                if ext_call.return_data[0] - _764 != allocationOf[stor111[idx].field_0]:
                                    revert with 0, 'Not enough tokens were transfered'
                                mem[_768 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = allocationOf[stor111[idx].field_0]
                        emit Claimed(allocationOf[stor111[idx].field_0], stor111[idx].field_0);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        mem[100] = msg.sender
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.isGovernor(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Only operator'
        if state > 2:
            revert with 0, 33
        if state != 1:
            revert with 0, 'Pool is not in progress state'
        if block.timestamp < startTime:
            revert with 0, 'It is not time to claim'
        if sub_92595acd:
            revert with 0, 'Cannot distribute when use vesting'
        if sub_713e10e3:
            revert with 0, 'Cannot distribute when use vesting'
        if cycle:
            revert with 0, 'Cannot distribute when use vesting'
        if arg2 < stor111.length:
            idx = arg1
            while idx <= arg2:
                if idx >= stor111.length:
                    revert with 0, 50
                mem[0] = stor111[idx].field_0
                mem[32] = 113
                if allocationOf[stor111[idx].field_0]:
                    mem[0] = stor111[idx].field_0
                    mem[32] = 114
                    if not claimedOf[stor111[idx].field_0]:
                        if claimedOf[stor111[idx].field_0]:
                            revert with 0, 'Already claimed'
                        mem[0] = stor111[idx].field_0
                        mem[32] = 113
                        if not allocationOf[stor111[idx].field_0]:
                            revert with 0, 'Nothing to claim'
                        require ext_code.size(factoryAddress)
                        staticcall factoryAddress.manager() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _729 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _733 = mem[_729]
                        require mem[_729] == mem[_729 + 12 len 20]
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(address(_733))
                        call address(_733).0x63eaabc4 with:
                             gas gas_remaining wei
                            args stor111[idx].field_0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = stor111[idx].field_0
                        mem[32] = 114
                        claimedOf[stor111[idx].field_0] = allocationOf[stor111[idx].field_0]
                        if totalClaimed > !allocationOf[stor111[idx].field_0]:
                            revert with 0, 17
                        totalClaimed += allocationOf[stor111[idx].field_0]
                        mem[mem[64] + 4] = stor111[idx].field_0
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args stor111[idx].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _761 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _765 = mem[_761]
                        _769 = mem[64]
                        mem[mem[64] + 36] = stor111[idx].field_0
                        mem[mem[64] + 68] = allocationOf[stor111[idx].field_0]
                        _775 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_775 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_775 + 36 len 28]
                        mem[64] = _769 + 164
                        mem[_769 + 100] = 32
                        mem[_769 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _803 = mem[_775]
                        s = 0
                        while s < _803:
                            mem[s + _769 + 164] = mem[s + _775 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_803) > _803:
                            mem[_803 + _769 + 164] = 0
                        call tokenAddress.mem[_769 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_769 + 168 len _803 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_769 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_769 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _769 + 232] = mem[idx + _769 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_769 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if not sub_4c5ca8c8:
                                mem[_769 + 164] = allocationOf[stor111[idx].field_0]
                            else:
                                mem[_769 + 168] = stor111[idx].field_0
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor111[idx].field_0
                                mem[_769 + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _769 + ceil32(return_data.size) + 164
                                require return_data.size >= 32
                                if ext_call.return_data[0] < _765:
                                    revert with 0, 17
                                if ext_call.return_data[0] - _765 != allocationOf[stor111[idx].field_0]:
                                    revert with 0, 'Not enough tokens were transfered'
                                mem[_769 + ceil32(return_data.size) + 164] = allocationOf[stor111[idx].field_0]
                        else:
                            mem[64] = _769 + ceil32(return_data.size) + 165
                            mem[_769 + 164] = return_data.size
                            mem[_769 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_769 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_769 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _769 + ceil32(return_data.size) + 233] = mem[idx + _769 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_769 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_769 + 196] == bool(mem[_769 + 196])
                                if not mem[_769 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if not sub_4c5ca8c8:
                                mem[_769 + ceil32(return_data.size) + 165] = allocationOf[stor111[idx].field_0]
                            else:
                                mem[_769 + ceil32(return_data.size) + 169] = stor111[idx].field_0
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor111[idx].field_0
                                mem[_769 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _769 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                require return_data.size >= 32
                                if ext_call.return_data[0] < _765:
                                    revert with 0, 17
                                if ext_call.return_data[0] - _765 != allocationOf[stor111[idx].field_0]:
                                    revert with 0, 'Not enough tokens were transfered'
                                mem[_769 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = allocationOf[stor111[idx].field_0]
                        emit Claimed(allocationOf[stor111[idx].field_0], stor111[idx].field_0);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if stor111.length < 1:
                revert with 0, 17
            idx = arg1
            while idx <= stor111.length - 1:
                if idx >= stor111.length:
                    revert with 0, 50
                mem[0] = stor111[idx].field_0
                mem[32] = 113
                if allocationOf[stor111[idx].field_0]:
                    mem[0] = stor111[idx].field_0
                    mem[32] = 114
                    if not claimedOf[stor111[idx].field_0]:
                        if claimedOf[stor111[idx].field_0]:
                            revert with 0, 'Already claimed'
                        mem[0] = stor111[idx].field_0
                        mem[32] = 113
                        if not allocationOf[stor111[idx].field_0]:
                            revert with 0, 'Nothing to claim'
                        require ext_code.size(factoryAddress)
                        staticcall factoryAddress.manager() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _730 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _734 = mem[_730]
                        require mem[_730] == mem[_730 + 12 len 20]
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(address(_734))
                        call address(_734).0x63eaabc4 with:
                             gas gas_remaining wei
                            args stor111[idx].field_0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = stor111[idx].field_0
                        mem[32] = 114
                        claimedOf[stor111[idx].field_0] = allocationOf[stor111[idx].field_0]
                        if totalClaimed > !allocationOf[stor111[idx].field_0]:
                            revert with 0, 17
                        totalClaimed += allocationOf[stor111[idx].field_0]
                        mem[mem[64] + 4] = stor111[idx].field_0
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args stor111[idx].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _762 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _766 = mem[_762]
                        _770 = mem[64]
                        mem[mem[64] + 36] = stor111[idx].field_0
                        mem[mem[64] + 68] = allocationOf[stor111[idx].field_0]
                        _777 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_777 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_777 + 36 len 28]
                        mem[64] = _770 + 164
                        mem[_770 + 100] = 32
                        mem[_770 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        _805 = mem[_777]
                        s = 0
                        while s < _805:
                            mem[s + _770 + 164] = mem[s + _777 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_805) > _805:
                            mem[_805 + _770 + 164] = 0
                        call tokenAddress.mem[_770 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_770 + 168 len _805 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_770 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_770 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _770 + 232] = mem[idx + _770 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_770 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if not sub_4c5ca8c8:
                                mem[_770 + 164] = allocationOf[stor111[idx].field_0]
                            else:
                                mem[_770 + 168] = stor111[idx].field_0
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor111[idx].field_0
                                mem[_770 + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _770 + ceil32(return_data.size) + 164
                                require return_data.size >= 32
                                if ext_call.return_data[0] < _766:
                                    revert with 0, 17
                                if ext_call.return_data[0] - _766 != allocationOf[stor111[idx].field_0]:
                                    revert with 0, 'Not enough tokens were transfered'
                                mem[_770 + ceil32(return_data.size) + 164] = allocationOf[stor111[idx].field_0]
                        else:
                            mem[64] = _770 + ceil32(return_data.size) + 165
                            mem[_770 + 164] = return_data.size
                            mem[_770 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_770 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_770 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _770 + ceil32(return_data.size) + 233] = mem[idx + _770 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_770 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_770 + 196] == bool(mem[_770 + 196])
                                if not mem[_770 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if not sub_4c5ca8c8:
                                mem[_770 + ceil32(return_data.size) + 165] = allocationOf[stor111[idx].field_0]
                            else:
                                mem[_770 + ceil32(return_data.size) + 169] = stor111[idx].field_0
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor111[idx].field_0
                                mem[_770 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _770 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                require return_data.size >= 32
                                if ext_call.return_data[0] < _766:
                                    revert with 0, 17
                                if ext_call.return_data[0] - _766 != allocationOf[stor111[idx].field_0]:
                                    revert with 0, 'Not enough tokens were transfered'
                                mem[_770 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = allocationOf[stor111[idx].field_0]
                        emit Claimed(allocationOf[stor111[idx].field_0], stor111[idx].field_0);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - harvest(address arg1)
#  - unpause()
#  - harvest()
#  - panic()
#  - beforeDeposit()
#  - pause()
#  - sub_a39219f9(?)
#  - managerHarvest()
#
const chef = 0x1f806f7c8ded893fd3cae279191ad7aa3798e928

const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 stor0; offset 160
address owner;
address keeperAddress;
address strategistAddress;
address unirouterAddress;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
address nativeAddress;
address outputAddress;
address wantAddress;
address lpToken0Address;
address lpToken1Address;
uint256 stor14; offset 32
uint256 poolId;
uint256 lastHarvest;
uint8 stor16;
array of struct outputToNativeRoute;
array of struct nativeToLp0Route;
array of struct nativeToLp1Route;

function native() payable {
    return nativeAddress
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return unirouterAddress
}

function poolId() payable {
    return poolId
}

function paused() payable {
    return bool(stor0)
}

function lpToken0() payable {
    return lpToken0Address
}

function lpToken1() payable {
    return lpToken1Address
}

function harvestOnDeposit() payable {
    return bool(stor16)
}

function withdrawalFee() payable {
    return withdrawalFee
}

function owner() payable {
    return owner
}

function beefyFeeRecipient() payable {
    return beefyFeeRecipientAddress
}

function callFee() payable {
    return callFee
}

function keeper() payable {
    return keeperAddress
}

function outputToNativeRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToNativeRoute.length
    return outputToNativeRoute[arg1].field_0
}

function sub_cb92acde(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < stor18.length
    require arg2 < uint256(stor18[arg1].field_0)
    return stor[('array', ('param', 'arg1'), ('name', 'stor18', 18)) + arg2].field_0
}

function beefyFee() payable {
    return beefyFee
}

function nativeToLp1Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < nativeToLp1Route.length
    return nativeToLp1Route[arg1].field_0
}

function nativeToLp0Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < nativeToLp0Route.length
    return nativeToLp0Route[arg1].field_0
}

function lastHarvest() payable {
    return lastHarvest
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unirouterAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(vaultAddress) = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setBeefyFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    beefyFeeRecipientAddress = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 111:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -arg1 + 888
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOfPool() payable {
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    stor16 = uint8(arg1)
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if not uint8(arg1):
        withdrawalFee = 10
    else:
        withdrawalFee = 0
}

function balanceOf() payable {
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function nativeToLp1() payable {
    if nativeToLp1Route.length:
        mem[128] = address(nativeToLp1Route.field_0)
        if (32 * nativeToLp1Route.length) + 32 > 64:
            mem[160] = address(nativeToLp1Route.field_256)
            idx = 160
            s = 1
            while (32 * nativeToLp1Route.length) + 96 > idx:
                mem[idx + 32] = nativeToLp1Route[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * nativeToLp1Route.length) + 128] = 32
    mem[(32 * nativeToLp1Route.length) + 160] = nativeToLp1Route.length
    idx = 0
    s = (32 * nativeToLp1Route.length) + 192
    t = 128
    while idx < nativeToLp1Route.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * nativeToLp1Route.length) + 128
       len (96 * nativeToLp1Route.length) + 64
}

function nativeToLp0() payable {
    if nativeToLp0Route.length:
        mem[128] = address(nativeToLp0Route.field_0)
        if (32 * nativeToLp0Route.length) + 32 > 64:
            mem[160] = address(nativeToLp0Route.field_256)
            idx = 160
            s = 1
            while (32 * nativeToLp0Route.length) + 96 > idx:
                mem[idx + 32] = nativeToLp0Route[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * nativeToLp0Route.length) + 128] = 32
    mem[(32 * nativeToLp0Route.length) + 160] = nativeToLp0Route.length
    idx = 0
    s = (32 * nativeToLp0Route.length) + 192
    t = 128
    while idx < nativeToLp0Route.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * nativeToLp0Route.length) + 128
       len (96 * nativeToLp0Route.length) + 64
}

function sub_b1507943(?) payable {
    require 1 < stor18.length
    if uint256(stor18.field_256):
        mem[128] = stor18[1].field_0
        if (32 * uint256(stor18.field_256)) + 32 > 64:
            mem[160] = stor18[1].field_256
            idx = 160
            s = 1
            while (32 * uint256(stor18.field_256)) + 96 > idx:
                mem[idx + 32] = stor18[s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * uint256(stor18.field_256)) + 128] = 32
    mem[(32 * uint256(stor18.field_256)) + 160] = uint256(stor18.field_256)
    idx = 0
    s = (32 * uint256(stor18.field_256)) + 192
    t = 128
    while idx < uint256(stor18.field_256):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * uint256(stor18.field_256)) + 128
       len (96 * uint256(stor18.field_256)) + 64
}

function sub_13ed1ae0(?) payable {
    require 0 < stor18.length
    if uint256(stor18.field_0):
        mem[128] = stor[sha3(('name', 'stor18', 18))].field_0
        if (32 * uint256(stor18.field_0)) + 32 > 64:
            mem[160] = stor[sha3(('name', 'stor18', 18))].field_256
            idx = 160
            s = 1
            while (32 * uint256(stor18.field_0)) + 96 > idx:
                mem[idx + 32] = stor[s + sha3(('name', 'stor18', 18))].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * uint256(stor18.field_0)) + 128] = 32
    mem[(32 * uint256(stor18.field_0)) + 160] = uint256(stor18.field_0)
    idx = 0
    s = (32 * uint256(stor18.field_0)) + 192
    t = 128
    while idx < uint256(stor18.field_0):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * uint256(stor18.field_0)) + 128
       len (96 * uint256(stor18.field_0)) + 64
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    call 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.emergencyWithdraw(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function outputToNative() payable {
    mem[64] = (32 * outputToNativeRoute.length) + 128
    mem[96] = outputToNativeRoute.length
    if not outputToNativeRoute.length:
        mem[(32 * outputToNativeRoute.length) + 128] = 32
        mem[(32 * outputToNativeRoute.length) + 160] = outputToNativeRoute.length
        idx = 0
        s = (32 * outputToNativeRoute.length) + 192
        t = 128
        while idx < outputToNativeRoute.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * outputToNativeRoute.length) + 128
           len (96 * outputToNativeRoute.length) + 64
    mem[128] = address(outputToNativeRoute.field_0)
    idx = 128
    s = 0
    while (32 * outputToNativeRoute.length) + 96 > idx:
        mem[idx + 32] = outputToNativeRoute[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * outputToNativeRoute.length) + 128] = 32
    mem[(32 * outputToNativeRoute.length) + 160] = outputToNativeRoute.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < outputToNativeRoute.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * outputToNativeRoute.length) + -mem[64] + 192
}

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
        call 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.0x93f1a40b with:
                gas gas_remaining wei
               args poolId, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        emit Deposit((2 * ext_call.return_data[0]));
}

function rewardsAvailable() payable {
    mem[100] = poolId
    mem[132] = this.address
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = poolId
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.rewarder(uint256 arg1) with:
            gas gas_remaining wei
           args poolId
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 128] = 64
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 192 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
        return ext_call.return_data[0], 
               Array(len=ext_call.return_data[0], data=mem[(2 * ceil32(return_data.size)) + 192 len 32 * ext_call.return_data[0]])
    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = poolId
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args poolId, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 64
    _16 = mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _17 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 + 96] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 + 96]) + 128 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 + 96]) + 128
    mem[(4 * ceil32(return_data.size)) + 96] = _17
    require _16 + (32 * _17) + 32 <= return_data.size
    s = (2 * ceil32(return_data.size)) + _16 + 128
    t = (4 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _17:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _29 = mem[(2 * ceil32(return_data.size)) + 128]
    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _32 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] <= test266151307()
    _33 = mem[64]
    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 32
    mem[_33] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
    require return_data.size >= _29 + (32 * _32) + 32
    mem[_33 + 32 len 32 * _32] = mem[(2 * ceil32(return_data.size)) + _29 + 128 len 32 * _32]
    mem[mem[64]] = ext_call.return_data[0]
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _32
    mem[mem[64] + 96 len 32 * _32] = mem[_33 + 32 len 32 * _32]
    return ext_call.return_data[0], Array(len=_32, data=mem[mem[64] + 96 len 32 * _32])
}

function callReward() payable {
    mem[100] = poolId
    mem[132] = this.address
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = poolId
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.rewarder(uint256 arg1) with:
            gas gas_remaining wei
           args poolId
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        mem[(2 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 132] = 64
        mem[(2 * ceil32(return_data.size)) + 164] = outputToNativeRoute.length
        mem[0] = 17
        idx = 0
        s = 0
        t = (2 * ceil32(return_data.size)) + 196
        while idx < outputToNativeRoute.length:
            mem[t] = outputToNativeRoute[s].field_0
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=outputToNativeRoute.length, data=mem[(2 * ceil32(return_data.size)) + 196 len 32 * outputToNativeRoute.length])
        if not ext_call.success:
            if not stor18.length:
                return 0
            idx = 0
            s = 0
            while idx < stor18.length:
                require idx < mem[96]
                _278 = mem[(32 * idx) + 128]
                require idx < stor18.length
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _278
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = uint256(stor18[idx].field_0)
                mem[0] = sha3(18) + idx
                t = 0
                u = sha3(mem[0])
                v = mem[64] + 100
                while t < uint256(stor18[idx].field_0):
                    mem[v] = stor[u]
                    t = t + 1
                    u = u + 1
                    v = v + 32
                    continue 
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len v + -mem[64] - 4]
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                _408 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _411 = mem[_408]
                require mem[_408] <= test266151307()
                require _408 + mem[_408] + 31 < _408 + return_data.size
                _415 = mem[_408 + mem[_408]]
                require mem[_408 + mem[_408]] <= test266151307()
                require (32 * mem[_408 + mem[_408]]) + 32 >= 0 and _408 + ceil32(return_data.size) + (32 * mem[_408 + mem[_408]]) + 32 <= test266151307()
                mem[64] = _408 + ceil32(return_data.size) + (32 * mem[_408 + mem[_408]]) + 32
                mem[_408 + ceil32(return_data.size)] = _415
                require return_data.size >= _411 + (32 * _415) + 32
                t = 0
                u = _408 + _411 + 32
                v = _408 + ceil32(return_data.size) + 32
                while t < _415:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if _415 - 1 < _415:
                    idx = idx + 1
                    s = s + mem[(32 * _415 - 1) + _408 + ceil32(return_data.size) + 32]
                    continue 
                revert
        else:
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _151 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _154 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 128 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 128
            mem[(4 * ceil32(return_data.size)) + 96] = _154
            require return_data.size >= _151 + (32 * _154) + 32
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _154] = mem[(2 * ceil32(return_data.size)) + _151 + 128 len 32 * _154]
            require _154 - 1 < _154
            if not stor18.length:
                if not mem[(32 * _154 - 1) + (4 * ceil32(return_data.size)) + 128]:
                    return 0
                if 45 * mem[(32 * _154 - 1) + (4 * ceil32(return_data.size)) + 128] / mem[(32 * _154 - 1) + (4 * ceil32(return_data.size)) + 128] != 45:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 45 * mem[(32 * _154 - 1) + (4 * ceil32(return_data.size)) + 128] / 1000:
                    return 0
                if callFee * 45 * mem[(32 * _154 - 1) + (4 * ceil32(return_data.size)) + 128] / 1000 / 45 * mem[(32 * _154 - 1) + (4 * ceil32(return_data.size)) + 128] / 1000 != callFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = callFee * 45 * mem[(32 * _154 - 1) + (4 * ceil32(return_data.size)) + 128] / 1000 / 1000
                return memory
                  from mem[64]
                   len 32
            idx = 0
            s = mem[(32 * mem[(4 * ceil32(return_data.size)) + 96] - 1) + (4 * ceil32(return_data.size)) + 128]
            while idx < stor18.length:
                require idx < mem[96]
                _402 = mem[(32 * idx) + 128]
                require idx < stor18.length
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _402
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = uint256(stor18[idx].field_0)
                mem[0] = sha3(18) + idx
                t = 0
                u = sha3(mem[0])
                v = mem[64] + 100
                while t < uint256(stor18[idx].field_0):
                    mem[v] = stor[u]
                    t = t + 1
                    u = u + 1
                    v = v + 32
                    continue 
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len v + -mem[64] - 4]
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                _508 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _511 = mem[_508]
                require mem[_508] <= test266151307()
                require _508 + mem[_508] + 31 < _508 + return_data.size
                _515 = mem[_508 + mem[_508]]
                require mem[_508 + mem[_508]] <= test266151307()
                require (32 * mem[_508 + mem[_508]]) + 32 >= 0 and _508 + ceil32(return_data.size) + (32 * mem[_508 + mem[_508]]) + 32 <= test266151307()
                mem[64] = _508 + ceil32(return_data.size) + (32 * mem[_508 + mem[_508]]) + 32
                mem[_508 + ceil32(return_data.size)] = _515
                require return_data.size >= _511 + (32 * _515) + 32
                t = 0
                u = _508 + _511 + 32
                v = _508 + ceil32(return_data.size) + 32
                while t < _515:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if _515 - 1 < _515:
                    idx = idx + 1
                    s = s + mem[(32 * _515 - 1) + _508 + ceil32(return_data.size) + 32]
                    continue 
                revert
    else:
        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = poolId
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args poolId, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 64
        _14 = mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _16 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 + 96]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 + 96] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 + 96]) + 128 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor14 + 96]) + 128
        mem[(4 * ceil32(return_data.size)) + 96] = _16
        require _14 + (32 * _16) + 32 <= return_data.size
        s = (2 * ceil32(return_data.size)) + _14 + 128
        t = (4 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _16:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _146 = mem[(2 * ceil32(return_data.size)) + 128]
        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _149 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] <= test266151307()
        _152 = mem[64]
        require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 32
        mem[_152] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
        require return_data.size >= _146 + (32 * _149) + 32
        mem[_152 + 32 len 32 * _149] = mem[(2 * ceil32(return_data.size)) + _146 + 128 len 32 * _149]
        _284 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = outputToNativeRoute.length
        mem[0] = 17
        idx = 0
        s = 0
        t = mem[64] + 100
        while idx < outputToNativeRoute.length:
            mem[t] = stor[s + sha3(mem[0])]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _284 + (32 * outputToNativeRoute.length) + -mem[64] + 96]
        if not ext_call.success:
            if not stor18.length:
                return 0
            idx = 0
            s = 0
            while idx < stor18.length:
                require idx < mem[_152]
                _498 = mem[(32 * idx) + _152 + 32]
                require idx < stor18.length
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _498
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = uint256(stor18[idx].field_0)
                mem[0] = sha3(18) + idx
                t = 0
                u = sha3(mem[0])
                v = mem[64] + 100
                while t < uint256(stor18[idx].field_0):
                    mem[v] = stor[u]
                    t = t + 1
                    u = u + 1
                    v = v + 32
                    continue 
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len v + -mem[64] - 4]
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                _580 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _582 = mem[_580]
                require mem[_580] <= test266151307()
                require _580 + mem[_580] + 31 < _580 + return_data.size
                _585 = mem[_580 + mem[_580]]
                require mem[_580 + mem[_580]] <= test266151307()
                require (32 * mem[_580 + mem[_580]]) + 32 >= 0 and _580 + ceil32(return_data.size) + (32 * mem[_580 + mem[_580]]) + 32 <= test266151307()
                mem[64] = _580 + ceil32(return_data.size) + (32 * mem[_580 + mem[_580]]) + 32
                mem[_580 + ceil32(return_data.size)] = _585
                require return_data.size >= _582 + (32 * _585) + 32
                t = 0
                u = _580 + _582 + 32
                v = _580 + ceil32(return_data.size) + 32
                while t < _585:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if _585 - 1 < _585:
                    idx = idx + 1
                    s = s + mem[(32 * _585 - 1) + _580 + ceil32(return_data.size) + 32]
                    continue 
                revert
        else:
            _410 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _413 = mem[_410]
            require mem[_410] <= test266151307()
            require _410 + mem[_410] + 31 < _410 + return_data.size
            _417 = mem[_410 + mem[_410]]
            require mem[_410 + mem[_410]] <= test266151307()
            require (32 * mem[_410 + mem[_410]]) + 32 >= 0 and _410 + ceil32(return_data.size) + (32 * mem[_410 + mem[_410]]) + 32 <= test266151307()
            mem[64] = _410 + ceil32(return_data.size) + (32 * mem[_410 + mem[_410]]) + 32
            mem[_410 + ceil32(return_data.size)] = _417
            require return_data.size >= _413 + (32 * _417) + 32
            mem[_410 + ceil32(return_data.size) + 32 len 32 * _417] = mem[_410 + _413 + 32 len 32 * _417]
            require _417 - 1 < _417
            if not stor18.length:
                if not mem[(32 * _417 - 1) + _410 + ceil32(return_data.size) + 32]:
                    return 0
                if 45 * mem[(32 * _417 - 1) + _410 + ceil32(return_data.size) + 32] / mem[(32 * _417 - 1) + _410 + ceil32(return_data.size) + 32] != 45:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 45 * mem[(32 * _417 - 1) + _410 + ceil32(return_data.size) + 32] / 1000:
                    return 0
                if callFee * 45 * mem[(32 * _417 - 1) + _410 + ceil32(return_data.size) + 32] / 1000 / 45 * mem[(32 * _417 - 1) + _410 + ceil32(return_data.size) + 32] / 1000 != callFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = callFee * 45 * mem[(32 * _417 - 1) + _410 + ceil32(return_data.size) + 32] / 1000 / 1000
                return memory
                  from mem[64]
                   len 32
            idx = 0
            s = mem[(32 * mem[_410 + ceil32(return_data.size)] - 1) + _410 + ceil32(return_data.size) + 32]
            while idx < stor18.length:
                require idx < mem[_152]
                _572 = mem[(32 * idx) + _152 + 32]
                require idx < stor18.length
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _572
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = uint256(stor18[idx].field_0)
                mem[0] = sha3(18) + idx
                t = 0
                u = sha3(mem[0])
                v = mem[64] + 100
                while t < uint256(stor18[idx].field_0):
                    mem[v] = stor[u]
                    t = t + 1
                    u = u + 1
                    v = v + 32
                    continue 
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len v + -mem[64] - 4]
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                _612 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _613 = mem[_612]
                require mem[_612] <= test266151307()
                require _612 + mem[_612] + 31 < _612 + return_data.size
                _614 = mem[_612 + mem[_612]]
                require mem[_612 + mem[_612]] <= test266151307()
                require (32 * mem[_612 + mem[_612]]) + 32 >= 0 and _612 + ceil32(return_data.size) + (32 * mem[_612 + mem[_612]]) + 32 <= test266151307()
                mem[64] = _612 + ceil32(return_data.size) + (32 * mem[_612 + mem[_612]]) + 32
                mem[_612 + ceil32(return_data.size)] = _614
                require return_data.size >= _613 + (32 * _614) + 32
                t = 0
                u = _612 + _613 + 32
                v = _612 + ceil32(return_data.size) + 32
                while t < _614:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if _614 - 1 < _614:
                    idx = idx + 1
                    s = s + mem[(32 * _614 - 1) + _612 + ceil32(return_data.size) + 32]
                    continue 
                revert
    if not s:
        return 0
    if 45 * s / s != 45:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 45 * s / 1000:
        return 0
    if callFee * 45 * s / 1000 / 45 * s / 1000 != callFee:
        revert with 0, 'SafeMath: multiplication overflow'
    return (callFee * 45 * s / 1000 / 1000)
}

function sub_cc289480(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if msg.sender == owner:
        require ('cd', 4).length
        _1655 = mem[128]
        mem[(32 * ('cd', 4).length) + 128] = 68
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_1655)):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * ('cd', 4).length) + 292 len 96] = 0, unirouterAddress, 0, 0
        call address(_1655) with:
           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 4).length:
                    revert with memory
                      from 128
                       len ('cd', 4).length
                revert with 0, 'SafeERC20: low-level call failed'
            if ('cd', 4).length:
                require ('cd', 4).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ('cd', 4).length
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), unirouterAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(mem[140 len 20]):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 456 len 96] = 0, unirouterAddress, -1, 0
            call mem[140 len 20] with:
               funct Mask(32, 224, 0, unirouterAddress, -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, unirouterAddress, -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 4).length:
                        revert with memory
                          from 128
                           len ('cd', 4).length
                    revert with 0, 'SafeERC20: low-level call failed'
                if ('cd', 4).length:
                    require ('cd', 4).length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 488] == bool(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 488])
                    if not mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 488]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            stor18.length++
            uint256(stor18[stor18.length].field_0) = ('cd', 4).length
            if not ('cd', 4).length:
                idx = 0
                while uint256(stor18[stor18.length].field_0) > idx:
                    stor18[stor18.length + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * ('cd', 4).length) + 128 > idx:
                    stor18[stor18.length + s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                while uint256(stor18[stor18.length].field_0) > idx:
                    stor18[stor18.length + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        mem[(32 * ('cd', 4).length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(32 * ('cd', 4).length) + 324] == bool(mem[(32 * ('cd', 4).length) + 324])
            if not mem[(32 * ('cd', 4).length) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ('cd', 4).length
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), unirouterAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(mem[140 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 96] = 0, unirouterAddress, -1, 0
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = 0
        call mem[140 len 20] with:
           funct Mask(32, 224, 0, unirouterAddress, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, unirouterAddress, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 4).length:
                    revert with memory
                      from 128
                       len ('cd', 4).length
                revert with 0, 'SafeERC20: low-level call failed'
            if ('cd', 4).length:
                require ('cd', 4).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            stor18.length++
            uint256(stor18[stor18.length].field_0) = ('cd', 4).length
            if not ('cd', 4).length:
                idx = 0
                while uint256(stor18[stor18.length].field_0) > idx:
                    stor18[stor18.length + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * ('cd', 4).length) + 128 > idx:
                    stor18[stor18.length + s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                while uint256(stor18[stor18.length].field_0) > idx:
                    stor18[stor18.length + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 462] = 32
            mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 494] = 32
            mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 458
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        require ('cd', 4).length
        _1658 = mem[128]
        mem[(32 * ('cd', 4).length) + 128] = 68
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_1658)):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * ('cd', 4).length) + 292 len 96] = 0, unirouterAddress, 0, 0
        call address(_1658) with:
           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 4).length:
                    revert with memory
                      from 128
                       len ('cd', 4).length
                revert with 0, 'SafeERC20: low-level call failed'
            if not ('cd', 4).length:
                require ('cd', 4).length
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), unirouterAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(mem[140 len 20]):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 456 len 96] = 0, unirouterAddress, -1, 0
                call mem[140 len 20] with:
                   funct Mask(32, 224, 0, unirouterAddress, -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, unirouterAddress, -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ('cd', 4).length:
                            revert with memory
                              from 128
                               len ('cd', 4).length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ('cd', 4).length:
                        require ('cd', 4).length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 488] == bool(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 488])
                        if not mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 488]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ('cd', 4).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ('cd', 4).length
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), unirouterAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(mem[140 len 20]):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 456 len 96] = 0, unirouterAddress, -1, 0
                call mem[140 len 20] with:
                   funct Mask(32, 224, 0, unirouterAddress, -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, unirouterAddress, -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ('cd', 4).length:
                            revert with memory
                              from 128
                               len ('cd', 4).length
                        var101001 = 32
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ('cd', 4).length:
                        require ('cd', 4).length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        var101001 = 32
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 488] == bool(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 488])
                        if not mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 488]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            stor18.length++
            uint256(stor18[stor18.length].field_0) = ('cd', 4).length
            if not ('cd', 4).length:
                idx = 0
                while uint256(stor18[stor18.length].field_0) > idx:
                    stor18[stor18.length + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * ('cd', 4).length) + 128 > idx:
                    stor18[stor18.length + s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                while uint256(stor18[stor18.length].field_0) > idx:
                    stor18[stor18.length + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        mem[(32 * ('cd', 4).length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ('cd', 4).length
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), unirouterAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(mem[140 len 20]):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 96] = 0, unirouterAddress, -1, 0
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = 0
            call mem[140 len 20] with:
               funct Mask(32, 224, 0, unirouterAddress, -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, unirouterAddress, -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 4).length:
                        revert with memory
                          from 128
                           len ('cd', 4).length
                    revert with 0, 'SafeERC20: low-level call failed'
                if ('cd', 4).length:
                    require ('cd', 4).length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                stor18.length++
                uint256(stor18[stor18.length].field_0) = ('cd', 4).length
                if not ('cd', 4).length:
                    idx = 0
                    while uint256(stor18[stor18.length].field_0) > idx:
                        stor18[stor18.length + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 128
                    while (32 * ('cd', 4).length) + 128 > idx:
                        stor18[stor18.length + s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                    while uint256(stor18[stor18.length].field_0) > idx:
                        stor18[stor18.length + idx].field_0 = 0
                        idx = idx + 1
                        continue 
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 462] = 32
                mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 458
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        else:
            require return_data.size >= 32
            require mem[(32 * ('cd', 4).length) + 324] == bool(mem[(32 * ('cd', 4).length) + 324])
            if not mem[(32 * ('cd', 4).length) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ('cd', 4).length
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), unirouterAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(mem[140 len 20]):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 96] = 0, unirouterAddress, -1, 0
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = 0
            call mem[140 len 20] with:
               funct Mask(32, 224, 0, unirouterAddress, -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, unirouterAddress, -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 4).length:
                        revert with memory
                          from 128
                           len ('cd', 4).length
                    var101001 = 32
                    revert with 0, 'SafeERC20: low-level call failed'
                if ('cd', 4).length:
                    require ('cd', 4).length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                stor18.length++
                uint256(stor18[stor18.length].field_0) = ('cd', 4).length
                if not ('cd', 4).length:
                    idx = 0
                    while uint256(stor18[stor18.length].field_0) > idx:
                        stor18[stor18.length + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 128
                    while (32 * ('cd', 4).length) + 128 > idx:
                        stor18[stor18.length + s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                    while uint256(stor18[stor18.length].field_0) > idx:
                        stor18[stor18.length + idx].field_0 = 0
                        idx = idx + 1
                        continue 
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 462] = 32
                mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                var101001 = 32
                revert with memory
                  from (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 458
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    ('bool', 'ext_call.success')
    if not return_data.size:
        stor18.length++
        uint256(stor18[stor18.length].field_0) = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while uint256(stor18[stor18.length].field_0) > idx:
                stor18[stor18.length + idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * ('cd', 4).length) + 128 > idx:
                stor18[stor18.length + s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while uint256(stor18[stor18.length].field_0) > idx:
                stor18[stor18.length + idx].field_0 = 0
                idx = idx + 1
                continue 
    require return_data.size >= 32
    require mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 489] == bool(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 489])
    if mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
        stor18.length++
        uint256(stor18[stor18.length].field_0) = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while uint256(stor18[stor18.length].field_0) > idx:
                stor18[stor18.length + idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * ('cd', 4).length) + 128 > idx:
                stor18[stor18.length + s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while uint256(stor18[stor18.length].field_0) > idx:
                stor18[stor18.length + idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 462] = 32
    mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 494] = 42
    mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
    mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 558] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 458
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
            else:
                if stor0:
                    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                    else:
                        if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), 0) << 288)
        else:
            if tx.origin == owner:
                mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                mem[ceil32(return_data.size) + 164] = arg1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
            else:
                if stor0:
                    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = arg1
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                    else:
                        if withdrawalFee * arg1 / arg1 != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if withdrawalFee * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = arg1 - (withdrawalFee * arg1 / 10000)
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
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
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[ceil32(return_data.size) + 132] = arg1 - ext_call.return_data[0]
        mem[ceil32(return_data.size) + 164] = this.address
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
        call 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.withdraw(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args poolId, arg1 - ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
            else:
                if stor0:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                    else:
                        if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), 0) << 288)
        else:
            if tx.origin == owner:
                mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 164] = arg1
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
            else:
                if stor0:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = arg1
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = arg1
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                    else:
                        if withdrawalFee * arg1 / arg1 != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if withdrawalFee * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = arg1 - (withdrawalFee * arg1 / 10000)
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
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
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    emit Withdraw((2 * ext_call.return_data[0]));
}



}

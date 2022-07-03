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
const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 stor0; offset 160
address owner;
array of address stor1;
address strategistAddress;
address unirouterAddress;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
uint8 stor9;
address gaspriceAddress; offset 8
address nativeAddress;
address outputAddress;
address wantAddress;
address lpToken0Address;
address lpToken1Address;
address chefAddress;
uint256 stor16; offset 32
uint256 poolId;
uint256 lastHarvest;
uint8 harvestOnDeposit;
array of struct outputToNativeRoute;
array of struct outputToLp0Route;
array of struct outputToLp1Route;
array of uint256 stor97789825912453899259273410636466998099043528421815129078110847000656284369545;

function native() payable {
    return nativeAddress
}

function want() payable {
    return wantAddress
}

function chef() payable {
    return chefAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return unirouterAddress
}

function outputToLp0Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToLp0Route.length
    return outputToLp0Route[arg1].field_0
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

function gasprice() payable {
    return gaspriceAddress
}

function lpToken1() payable {
    return lpToken1Address
}

function harvestOnDeposit() payable {
    return bool(harvestOnDeposit)
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

function sub_96813fca(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < stor22.length
    require arg2 < uint256(stor22[arg1])
    return address(stor[('array', ('param', 'arg1'), ('name', 'stor22', 22)) + arg2])
}

function sub_9f8b5da1(?) payable {
    return bool(stor9)
}

function keeper() payable {
    return stor1.length
}

function outputToNativeRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToNativeRoute.length
    return outputToNativeRoute[arg1].field_0
}

function beefyFee() payable {
    return beefyFee
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

function outputToLp1Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToLp1Route.length
    return outputToLp1Route[arg1].field_0
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
        if stor1.length != msg.sender:
            revert with 0, '!manager'
    stor1.length = arg1
}

function setBeefyFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    beefyFeeRecipientAddress = arg1
}

function setShouldGasThrottle(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, '!manager'
    stor9 = uint8(arg1)
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1.length != msg.sender:
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

function balanceOfPool() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
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

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, '!manager'
    harvestOnDeposit = uint8(arg1)
    if owner != msg.sender:
        if stor1.length != msg.sender:
            revert with 0, '!manager'
    if not uint8(arg1):
        withdrawalFee = 10
    else:
        withdrawalFee = 0
}

function balanceOf() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
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

function outputToLp0() payable {
    if outputToLp0Route.length:
        mem[128] = address(outputToLp0Route.field_0)
        if (32 * outputToLp0Route.length) + 32 > 64:
            mem[160] = address(outputToLp0Route.field_256)
            idx = 160
            s = 1
            while (32 * outputToLp0Route.length) + 96 > idx:
                mem[idx + 32] = outputToLp0Route[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * outputToLp0Route.length) + 128] = 32
    mem[(32 * outputToLp0Route.length) + 160] = outputToLp0Route.length
    idx = 0
    s = 128
    t = (32 * outputToLp0Route.length) + 192
    while idx < outputToLp0Route.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * outputToLp0Route.length) + 128
       len (96 * outputToLp0Route.length) + 64
}

function outputToNative() payable {
    if outputToNativeRoute.length:
        mem[128] = address(outputToNativeRoute.field_0)
        if (32 * outputToNativeRoute.length) + 32 > 64:
            mem[160] = address(outputToNativeRoute.field_256)
            idx = 160
            s = 1
            while (32 * outputToNativeRoute.length) + 96 > idx:
                mem[idx + 32] = outputToNativeRoute[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * outputToNativeRoute.length) + 128] = 32
    mem[(32 * outputToNativeRoute.length) + 160] = outputToNativeRoute.length
    idx = 0
    s = 128
    t = (32 * outputToNativeRoute.length) + 192
    while idx < outputToNativeRoute.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * outputToNativeRoute.length) + 128
       len (96 * outputToNativeRoute.length) + 64
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(chefAddress)
    call chefAddress.emergencyWithdraw(uint256 arg1, address arg2) with:
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

function outputToLp1() payable {
    mem[64] = (32 * outputToLp1Route.length) + 128
    mem[96] = outputToLp1Route.length
    if not outputToLp1Route.length:
        mem[(32 * outputToLp1Route.length) + 128] = 32
        mem[(32 * outputToLp1Route.length) + 160] = outputToLp1Route.length
        idx = 0
        s = 128
        t = (32 * outputToLp1Route.length) + 192
        while idx < outputToLp1Route.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * outputToLp1Route.length) + 128
           len (96 * outputToLp1Route.length) + 64
    mem[128] = address(outputToLp1Route.field_0)
    idx = 128
    s = 0
    while (32 * outputToLp1Route.length) + 96 > idx:
        mem[idx + 32] = outputToLp1Route[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * outputToLp1Route.length) + 128] = 32
    mem[(32 * outputToLp1Route.length) + 160] = outputToLp1Route.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < outputToLp1Route.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * outputToLp1Route.length) + -mem[64] + 192
}

function sub_fa5c9edd(?) payable {
    mem[64] = (32 * stor22.length) + 128
    mem[96] = stor22.length
    s = 128
    idx = 0
    while idx < stor22.length:
        mem[0] = 22
        _12 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor22[idx])) + 32
        mem[_12] = uint256(stor22[idx])
        if uint256(stor22[idx]):
            mem[0] = idx + sha3(22)
            mem[_12 + 32] = address(stor22[idx])
            t = _12 + 32
            u = sha3(mem[0])
            while _12 + (32 * uint256(stor22[idx])) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _15:
        mem[t] = u + -_13 - 64
        _20 = mem[s]
        _22 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        w = _20 + 32
        x = u + 32
        while v < _22:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        v = _22 + 1
        w = _20 + (32 * _22) + 64
        t = t + 32
        u = u + (32 * _22) + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
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
        require ext_code.size(chefAddress)
        call chefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
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
    require ext_code.size(chefAddress)
    staticcall chefAddress.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = poolId
    require ext_code.size(chefAddress)
    staticcall chefAddress.rewarder(uint256 arg1) with:
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
    _16 = mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _17 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 96] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 96]) + 128 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 96]) + 128
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 96]
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
    mem[_33] = _32
    require return_data.size >= _29 + (32 * _32) + 32
    mem[_33 + 32 len 32 * _32] = mem[(2 * ceil32(return_data.size)) + _29 + 128 len 32 * _32]
    mem[mem[64]] = ext_call.return_data[0]
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _32
    mem[mem[64] + 96 len 32 * _32] = mem[_33 + 32 len 32 * _32]
    return ext_call.return_data[0], Array(len=_32, data=mem[mem[64] + 96 len 32 * _32])
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
            stor22.length++
            storD833[stor22.length] = ('cd', 4).length
            if not ('cd', 4).length:
                idx = 0
                while storD833[stor22.length] > idx:
                    stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * ('cd', 4).length) + 128 > idx:
                    stor[s + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                while storD833[stor22.length] > idx:
                    stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
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
            stor22.length++
            storD833[stor22.length] = ('cd', 4).length
            if not ('cd', 4).length:
                idx = 0
                while storD833[stor22.length] > idx:
                    stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * ('cd', 4).length) + 128 > idx:
                    stor[s + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                while storD833[stor22.length] > idx:
                    stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
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
        if stor1.length != msg.sender:
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
            stor22.length++
            storD833[stor22.length] = ('cd', 4).length
            if not ('cd', 4).length:
                idx = 0
                while storD833[stor22.length] > idx:
                    stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * ('cd', 4).length) + 128 > idx:
                    stor[s + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                while storD833[stor22.length] > idx:
                    stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
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
                stor22.length++
                storD833[stor22.length] = ('cd', 4).length
                if not ('cd', 4).length:
                    idx = 0
                    while storD833[stor22.length] > idx:
                        stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 128
                    while (32 * ('cd', 4).length) + 128 > idx:
                        stor[s + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                    while storD833[stor22.length] > idx:
                        stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
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
                stor22.length++
                storD833[stor22.length] = ('cd', 4).length
                if not ('cd', 4).length:
                    idx = 0
                    while storD833[stor22.length] > idx:
                        stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 128
                    while (32 * ('cd', 4).length) + 128 > idx:
                        stor[s + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                    while storD833[stor22.length] > idx:
                        stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
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
        stor22.length++
        storD833[stor22.length] = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while storD833[stor22.length] > idx:
                stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * ('cd', 4).length) + 128 > idx:
                stor[s + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while storD833[stor22.length] > idx:
                stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
                idx = idx + 1
                continue 
    require return_data.size >= 32
    require mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 489] == bool(mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 489])
    if mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
        stor22.length++
        storD833[stor22.length] = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while storD833[stor22.length] > idx:
                stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * ('cd', 4).length) + 128 > idx:
                stor[s + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while storD833[stor22.length] > idx:
                stor[idx + sha3(stor22.length - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd77)] = 0
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
        require ext_code.size(chefAddress)
        call chefAddress.withdraw(uint256 arg1, uint256 arg2, address arg3) with:
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
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
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

function callReward() payable {
    mem[100] = poolId
    mem[132] = this.address
    require ext_code.size(chefAddress)
    staticcall chefAddress.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = poolId
    require ext_code.size(chefAddress)
    staticcall chefAddress.rewarder(uint256 arg1) with:
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
        mem[0] = 19
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
            if not stor22.length:
                return 0
            idx = 0
            s = 0
            while idx < stor22.length:
                require idx < mem[96]
                _366 = mem[(32 * idx) + 128]
                require idx < stor22.length
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _366
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = uint256(stor22[idx])
                mem[0] = sha3(22) + idx
                t = 0
                u = sha3(mem[0])
                v = mem[64] + 100
                while t < uint256(stor22[idx]):
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
                _540 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _543 = mem[_540]
                require mem[_540] <= test266151307()
                require _540 + mem[_540] + 31 < _540 + return_data.size
                _547 = mem[_540 + mem[_540]]
                require mem[_540 + mem[_540]] <= test266151307()
                require (32 * mem[_540 + mem[_540]]) + 32 >= 0 and _540 + ceil32(return_data.size) + (32 * mem[_540 + mem[_540]]) + 32 <= test266151307()
                mem[64] = _540 + ceil32(return_data.size) + (32 * mem[_540 + mem[_540]]) + 32
                mem[_540 + ceil32(return_data.size)] = _547
                require return_data.size >= _543 + (32 * _547) + 32
                t = 0
                u = _540 + _543 + 32
                v = _540 + ceil32(return_data.size) + 32
                while t < _547:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if _547 - 1 < _547:
                    _683 = mem[(32 * _547 - 1) + _540 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _683
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = outputToNativeRoute.length
                    mem[0] = 19
                    t = 0
                    u = sha3(19)
                    v = mem[64] + 100
                    while t < outputToNativeRoute.length:
                        mem[v] = stor[u]
                        t = t + 1
                        u = u + 1
                        v = v + 32
                        continue 
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _683, Array(len=outputToNativeRoute.length, data=mem[mem[64] + 100 len 32 * outputToNativeRoute.length])
                    if not ext_call.success:
                        idx = idx + 1
                        s = s
                        continue 
                    _800 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _805 = mem[_800]
                    require mem[_800] <= test266151307()
                    require _800 + mem[_800] + 31 < _800 + return_data.size
                    _810 = mem[_800 + mem[_800]]
                    require mem[_800 + mem[_800]] <= test266151307()
                    require (32 * mem[_800 + mem[_800]]) + 32 >= 0 and _800 + ceil32(return_data.size) + (32 * mem[_800 + mem[_800]]) + 32 <= test266151307()
                    mem[64] = _800 + ceil32(return_data.size) + (32 * mem[_800 + mem[_800]]) + 32
                    mem[_800 + ceil32(return_data.size)] = _810
                    require return_data.size >= _805 + (32 * _810) + 32
                    t = 0
                    u = _800 + _805 + 32
                    v = _800 + ceil32(return_data.size) + 32
                    while t < _810:
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if _810 - 1 < _810:
                        idx = idx + 1
                        s = s + mem[(32 * _810 - 1) + _800 + ceil32(return_data.size) + 32]
                        continue 
                revert
        else:
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _195 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _198 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 128 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 128
            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
            require return_data.size >= _195 + (32 * _198) + 32
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _198] = mem[(2 * ceil32(return_data.size)) + _195 + 128 len 32 * _198]
            require _198 - 1 < _198
            if not stor22.length:
                if not mem[(32 * _198 - 1) + (4 * ceil32(return_data.size)) + 128]:
                    return 0
                if 45 * mem[(32 * _198 - 1) + (4 * ceil32(return_data.size)) + 128] / mem[(32 * _198 - 1) + (4 * ceil32(return_data.size)) + 128] != 45:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 45 * mem[(32 * _198 - 1) + (4 * ceil32(return_data.size)) + 128] / 1000:
                    return 0
                if callFee * 45 * mem[(32 * _198 - 1) + (4 * ceil32(return_data.size)) + 128] / 1000 / 45 * mem[(32 * _198 - 1) + (4 * ceil32(return_data.size)) + 128] / 1000 != callFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = callFee * 45 * mem[(32 * _198 - 1) + (4 * ceil32(return_data.size)) + 128] / 1000 / 1000
                return memory
                  from mem[64]
                   len 32
            idx = 0
            s = mem[(32 * mem[(4 * ceil32(return_data.size)) + 96] - 1) + (4 * ceil32(return_data.size)) + 128]
            while idx < stor22.length:
                require idx < mem[96]
                _534 = mem[(32 * idx) + 128]
                require idx < stor22.length
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _534
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = uint256(stor22[idx])
                mem[0] = sha3(22) + idx
                t = 0
                u = sha3(mem[0])
                v = mem[64] + 100
                while t < uint256(stor22[idx]):
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
                _685 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _689 = mem[_685]
                require mem[_685] <= test266151307()
                require _685 + mem[_685] + 31 < _685 + return_data.size
                _693 = mem[_685 + mem[_685]]
                require mem[_685 + mem[_685]] <= test266151307()
                require (32 * mem[_685 + mem[_685]]) + 32 >= 0 and _685 + ceil32(return_data.size) + (32 * mem[_685 + mem[_685]]) + 32 <= test266151307()
                mem[64] = _685 + ceil32(return_data.size) + (32 * mem[_685 + mem[_685]]) + 32
                mem[_685 + ceil32(return_data.size)] = _693
                require return_data.size >= _689 + (32 * _693) + 32
                t = 0
                u = _685 + _689 + 32
                v = _685 + ceil32(return_data.size) + 32
                while t < _693:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if _693 - 1 < _693:
                    _801 = mem[(32 * _693 - 1) + _685 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _801
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = outputToNativeRoute.length
                    mem[0] = 19
                    t = 0
                    u = sha3(19)
                    v = mem[64] + 100
                    while t < outputToNativeRoute.length:
                        mem[v] = stor[u]
                        t = t + 1
                        u = u + 1
                        v = v + 32
                        continue 
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _801, Array(len=outputToNativeRoute.length, data=mem[mem[64] + 100 len 32 * outputToNativeRoute.length])
                    if not ext_call.success:
                        idx = idx + 1
                        s = s
                        continue 
                    _878 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _882 = mem[_878]
                    require mem[_878] <= test266151307()
                    require _878 + mem[_878] + 31 < _878 + return_data.size
                    _885 = mem[_878 + mem[_878]]
                    require mem[_878 + mem[_878]] <= test266151307()
                    require (32 * mem[_878 + mem[_878]]) + 32 >= 0 and _878 + ceil32(return_data.size) + (32 * mem[_878 + mem[_878]]) + 32 <= test266151307()
                    mem[64] = _878 + ceil32(return_data.size) + (32 * mem[_878 + mem[_878]]) + 32
                    mem[_878 + ceil32(return_data.size)] = _885
                    require return_data.size >= _882 + (32 * _885) + 32
                    t = 0
                    u = _878 + _882 + 32
                    v = _878 + ceil32(return_data.size) + 32
                    while t < _885:
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if _885 - 1 < _885:
                        idx = idx + 1
                        s = s + mem[(32 * _885 - 1) + _878 + ceil32(return_data.size) + 32]
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
        _14 = mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _16 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 96]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 96] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 96]) + 128 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 96]) + 128
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], stor16 + 96]
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
        _190 = mem[(2 * ceil32(return_data.size)) + 128]
        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _193 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] <= test266151307()
        _196 = mem[64]
        require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 32
        mem[_196] = _193
        require return_data.size >= _190 + (32 * _193) + 32
        mem[_196 + 32 len 32 * _193] = mem[(2 * ceil32(return_data.size)) + _190 + 128 len 32 * _193]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = outputToNativeRoute.length
        mem[0] = 19
        idx = 0
        s = 0
        t = mem[64] + 100
        while idx < outputToNativeRoute.length:
            mem[t] = outputToNativeRoute[s].field_0
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=outputToNativeRoute.length, data=mem[mem[64] + 100 len 32 * outputToNativeRoute.length])
        if not ext_call.success:
            if not stor22.length:
                return 0
            idx = 0
            s = 0
            while idx < stor22.length:
                require idx < mem[_196]
                _674 = mem[(32 * idx) + _196 + 32]
                require idx < stor22.length
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _674
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = uint256(stor22[idx])
                mem[0] = sha3(22) + idx
                t = 0
                u = sha3(mem[0])
                v = mem[64] + 100
                while t < uint256(stor22[idx]):
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
                _803 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _807 = mem[_803]
                require mem[_803] <= test266151307()
                require _803 + mem[_803] + 31 < _803 + return_data.size
                _811 = mem[_803 + mem[_803]]
                require mem[_803 + mem[_803]] <= test266151307()
                require (32 * mem[_803 + mem[_803]]) + 32 >= 0 and _803 + ceil32(return_data.size) + (32 * mem[_803 + mem[_803]]) + 32 <= test266151307()
                mem[64] = _803 + ceil32(return_data.size) + (32 * mem[_803 + mem[_803]]) + 32
                mem[_803 + ceil32(return_data.size)] = _811
                require return_data.size >= _807 + (32 * _811) + 32
                t = 0
                u = _803 + _807 + 32
                v = _803 + ceil32(return_data.size) + 32
                while t < _811:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if _811 - 1 < _811:
                    _879 = mem[(32 * _811 - 1) + _803 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _879
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = outputToNativeRoute.length
                    mem[0] = 19
                    t = 0
                    u = sha3(19)
                    v = mem[64] + 100
                    while t < outputToNativeRoute.length:
                        mem[v] = stor[u]
                        t = t + 1
                        u = u + 1
                        v = v + 32
                        continue 
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _879, Array(len=outputToNativeRoute.length, data=mem[mem[64] + 100 len 32 * outputToNativeRoute.length])
                    if not ext_call.success:
                        idx = idx + 1
                        s = s
                        continue 
                    _925 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _928 = mem[_925]
                    require mem[_925] <= test266151307()
                    require _925 + mem[_925] + 31 < _925 + return_data.size
                    _930 = mem[_925 + mem[_925]]
                    require mem[_925 + mem[_925]] <= test266151307()
                    require (32 * mem[_925 + mem[_925]]) + 32 >= 0 and _925 + ceil32(return_data.size) + (32 * mem[_925 + mem[_925]]) + 32 <= test266151307()
                    mem[64] = _925 + ceil32(return_data.size) + (32 * mem[_925 + mem[_925]]) + 32
                    mem[_925 + ceil32(return_data.size)] = _930
                    require return_data.size >= _928 + (32 * _930) + 32
                    t = 0
                    u = _925 + _928 + 32
                    v = _925 + ceil32(return_data.size) + 32
                    while t < _930:
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if _930 - 1 < _930:
                        idx = idx + 1
                        s = s + mem[(32 * _930 - 1) + _925 + ceil32(return_data.size) + 32]
                        continue 
                revert
        else:
            _542 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _545 = mem[_542]
            require mem[_542] <= test266151307()
            require _542 + mem[_542] + 31 < _542 + return_data.size
            _549 = mem[_542 + mem[_542]]
            require mem[_542 + mem[_542]] <= test266151307()
            require (32 * mem[_542 + mem[_542]]) + 32 >= 0 and _542 + ceil32(return_data.size) + (32 * mem[_542 + mem[_542]]) + 32 <= test266151307()
            mem[64] = _542 + ceil32(return_data.size) + (32 * mem[_542 + mem[_542]]) + 32
            mem[_542 + ceil32(return_data.size)] = _549
            require return_data.size >= _545 + (32 * _549) + 32
            mem[_542 + ceil32(return_data.size) + 32 len 32 * _549] = mem[_542 + _545 + 32 len 32 * _549]
            require _549 - 1 < _549
            if not stor22.length:
                if not mem[(32 * _549 - 1) + _542 + ceil32(return_data.size) + 32]:
                    return 0
                if 45 * mem[(32 * _549 - 1) + _542 + ceil32(return_data.size) + 32] / mem[(32 * _549 - 1) + _542 + ceil32(return_data.size) + 32] != 45:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 45 * mem[(32 * _549 - 1) + _542 + ceil32(return_data.size) + 32] / 1000:
                    return 0
                if callFee * 45 * mem[(32 * _549 - 1) + _542 + ceil32(return_data.size) + 32] / 1000 / 45 * mem[(32 * _549 - 1) + _542 + ceil32(return_data.size) + 32] / 1000 != callFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = callFee * 45 * mem[(32 * _549 - 1) + _542 + ceil32(return_data.size) + 32] / 1000 / 1000
                return memory
                  from mem[64]
                   len 32
            idx = 0
            s = mem[(32 * mem[_542 + ceil32(return_data.size)] - 1) + _542 + ceil32(return_data.size) + 32]
            while idx < stor22.length:
                require idx < mem[_196]
                _792 = mem[(32 * idx) + _196 + 32]
                require idx < stor22.length
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _792
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = uint256(stor22[idx])
                mem[0] = sha3(22) + idx
                t = 0
                u = sha3(mem[0])
                v = mem[64] + 100
                while t < uint256(stor22[idx]):
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
                _881 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _884 = mem[_881]
                require mem[_881] <= test266151307()
                require _881 + mem[_881] + 31 < _881 + return_data.size
                _886 = mem[_881 + mem[_881]]
                require mem[_881 + mem[_881]] <= test266151307()
                require (32 * mem[_881 + mem[_881]]) + 32 >= 0 and _881 + ceil32(return_data.size) + (32 * mem[_881 + mem[_881]]) + 32 <= test266151307()
                mem[64] = _881 + ceil32(return_data.size) + (32 * mem[_881 + mem[_881]]) + 32
                mem[_881 + ceil32(return_data.size)] = _886
                require return_data.size >= _884 + (32 * _886) + 32
                t = 0
                u = _881 + _884 + 32
                v = _881 + ceil32(return_data.size) + 32
                while t < _886:
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if _886 - 1 < _886:
                    _926 = mem[(32 * _886 - 1) + _881 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _926
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = outputToNativeRoute.length
                    mem[0] = 19
                    t = 0
                    u = sha3(19)
                    v = mem[64] + 100
                    while t < outputToNativeRoute.length:
                        mem[v] = stor[u]
                        t = t + 1
                        u = u + 1
                        v = v + 32
                        continue 
                    require ext_code.size(unirouterAddress)
                    staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args _926, Array(len=outputToNativeRoute.length, data=mem[mem[64] + 100 len 32 * outputToNativeRoute.length])
                    if not ext_call.success:
                        idx = idx + 1
                        s = s
                        continue 
                    _950 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _951 = mem[_950]
                    require mem[_950] <= test266151307()
                    require _950 + mem[_950] + 31 < _950 + return_data.size
                    _952 = mem[_950 + mem[_950]]
                    require mem[_950 + mem[_950]] <= test266151307()
                    require (32 * mem[_950 + mem[_950]]) + 32 >= 0 and _950 + ceil32(return_data.size) + (32 * mem[_950 + mem[_950]]) + 32 <= test266151307()
                    mem[64] = _950 + ceil32(return_data.size) + (32 * mem[_950 + mem[_950]]) + 32
                    mem[_950 + ceil32(return_data.size)] = _952
                    require return_data.size >= _951 + (32 * _952) + 32
                    t = 0
                    u = _950 + _951 + 32
                    v = _950 + ceil32(return_data.size) + 32
                    while t < _952:
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if _952 - 1 < _952:
                        idx = idx + 1
                        s = s + mem[(32 * _952 - 1) + _950 + ceil32(return_data.size) + 32]
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



}

contract main {




// =====================  Runtime code  =====================


#
#  - sub_5bdc50b1(?)
#  - pause()
#  - emergency()
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
uint32 stor151;
address vaultAddress;
uint256 stor151;
address stor202;
address stor203;
address stor204;
address lpToken0Address;
uint8 sub_c6fa8346; offset 160
uint128 stor206; offset 160
address lpToken1Address;
address farmingTokenAddress;
address joeRouterAddress;
address feeManagerAddress;
address sub_94f0d0bfAddress;
address masterchefAddress;
uint32 stor212;
uint256 stor212; offset 32
uint256 poolId;
uint256 stor213;
array of address sub_42438da0;

function poolId() {
    return poolId
}

function sub_42438da0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_42438da0.length
    return sub_42438da0[arg1]
}

function joeRouter() {
    return joeRouterAddress
}

function paused() {
    return bool(paused)
}

function lpToken0() {
    return lpToken0Address
}

function lpToken1() {
    return lpToken1Address
}

function owner() {
    return owner
}

function sub_94f0d0bf(?) {
    return sub_94f0d0bfAddress
}

function farmingToken() {
    return farmingTokenAddress
}

function sub_c6fa8346(?) {
    return bool(sub_c6fa8346)
}

function feeManager() {
    return feeManagerAddress
}

function masterchef() {
    return masterchefAddress
}

function vault() {
    return address(vaultAddress)
}

function beforeDeposit() {
  stop
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_7562a1da(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor206 = Mask(96, 0, bool(arg1))
}

function sub_713f6a0a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_94f0d0bfAddress = address(arg1)
    emit 0x31eba9bb: address(arg1)
}

function sub_bd228651(?) {
    require ext_code.size(stor204)
    staticcall stor204.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
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

function sub_e77a0400(?) {
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_5252a8e4(?) {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function deposit() {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(vaultAddress):
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).strategy() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == this.address:
            revert with 0, 'Previous vault still points to this strategy'
    address(vaultAddress) = arg1
    emit VaultSet(address(vaultAddress));
}

function balanceOf() {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0])
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
    require ext_code.size(stor202)
    call stor202.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_94f0d0bfAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(farmingTokenAddress)
    call farmingTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args masterchefAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor204)
    call stor204.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args joeRouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(lpToken0Address)
    call lpToken0Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args joeRouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(lpToken1Address)
    call lpToken1Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args joeRouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x98ea80558af05998412275e4830791ce0677dbbd)
    delegate 0x98ea80558af05998412275e4830791ce0677dbbd.0x84553ef8 with:
         gas gas_remaining wei
        args masterchefAddress, joeRouterAddress, poolId
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function retireStrategy() {
    if address(vaultAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only vault can retire the strategy'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor151)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(farmingTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call farmingTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_0a807b69(?) {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        paused = 0
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            paused = 0
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                paused = 0
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    paused = 0
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        paused = 0
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            paused = 0
                        else:
                            Mask(248, 0, stor0.field_8) = 1
                            uint8(stor0.field_0) = 1
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                paused = 0
                            else:
                                Mask(248, 0, stor0.field_8) = 1
                                uint8(stor0.field_0) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    paused = 0
                                else:
                                    Mask(248, 0, stor0.field_8) = 1
                                    uint8(stor0.field_0) = 1
                                    paused = 0
                                    Mask(248, 0, stor0.field_8) = 0
                                    Mask(248, 0, stor0.field_8) = 0
                                    Mask(248, 0, stor0.field_8) = 0
}

function getPendingFees() {
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = poolId
    mem[132] = this.address
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _4 = mem[96 len 4], Mask(224, 0, stor212.field_32)
    require mem[96 len 4], Mask(224, 0, stor212.field_32) == mem[96 len 4], Mask(224, 0, stor212.field_32)
    require uint32(stor212.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
    _6 = 0, mem[164 len 28]
    require 0, mem[164 len 28] <= test266151307()
    require 0, mem[164 len 28] + 127 < return_data.size + 96
    _7 = mem[0, mem[164 len 28] + 96]
    if mem[0, mem[164 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[0, mem[164 len 28] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[0, mem[164 len 28] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[0, mem[164 len 28] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        require mem[192] == mem[192]
        mem[mem[64] + 4] = _4
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.calculateTotalFee(uint256 arg1) with:
                gas gas_remaining wei
               args _4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _65 = mem[_63]
        require mem[_63] == mem[_63]
        if not mem[_63]:
            return 0
        _67 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _65
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = sub_42438da0.length
        mem[0] = 214
        idx = 0
        s = 0
        t = mem[64] + 100
        while idx < sub_42438da0.length:
            mem[t] = stor[s + sha3(mem[0])]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(joeRouterAddress)
        staticcall joeRouterAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _67 + (32 * sub_42438da0.length) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _105 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _107 = mem[_105]
        require mem[_105] <= test266151307()
        require _105 + mem[_105] + 31 < _105 + return_data.size
        _109 = mem[_105 + mem[_105]]
        if mem[_105 + mem[_105]] > test266151307():
            revert with 'NH{q', 65
        if _105 + ceil32(return_data.size) + floor32(mem[_105 + mem[_105]]) + 1 > test266151307() or floor32(mem[_105 + mem[_105]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _105 + ceil32(return_data.size) + floor32(mem[_105 + mem[_105]]) + 1
        mem[_105 + ceil32(return_data.size)] = _109
        require _107 + (32 * _109) + 32 <= return_data.size
        idx = 0
        s = _105 + _107 + 32
        t = _105 + ceil32(return_data.size) + 32
        while idx < _109:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _109:
            revert with 'NH{q', 50
        _135 = mem[_105 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = mem[_105 + ceil32(return_data.size) + 64]
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.0xf831505a with:
                gas gas_remaining wei
               args _135
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _141 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_141] == mem[_141]
        mem[mem[64]] = mem[_141]
    else:
        mem[ceil32(return_data.size) + _7 + 128] = 0
        require mem[192] == mem[192]
        mem[mem[64] + 4] = _4
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.calculateTotalFee(uint256 arg1) with:
                gas gas_remaining wei
               args _4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _64 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _66 = mem[_64]
        require mem[_64] == mem[_64]
        if not mem[_64]:
            return 0
        _68 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _66
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = sub_42438da0.length
        mem[0] = 214
        idx = 0
        s = 0
        t = mem[64] + 100
        while idx < sub_42438da0.length:
            mem[t] = stor[s + sha3(mem[0])]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(joeRouterAddress)
        staticcall joeRouterAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _68 + (32 * sub_42438da0.length) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _108 = mem[_106]
        require mem[_106] <= test266151307()
        require _106 + mem[_106] + 31 < _106 + return_data.size
        _110 = mem[_106 + mem[_106]]
        if mem[_106 + mem[_106]] > test266151307():
            revert with 'NH{q', 65
        if _106 + ceil32(return_data.size) + floor32(mem[_106 + mem[_106]]) + 1 > test266151307() or floor32(mem[_106 + mem[_106]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _106 + ceil32(return_data.size) + floor32(mem[_106 + mem[_106]]) + 1
        mem[_106 + ceil32(return_data.size)] = _110
        require _108 + (32 * _110) + 32 <= return_data.size
        idx = 0
        s = _106 + _108 + 32
        t = _106 + ceil32(return_data.size) + 32
        while idx < _110:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _110:
            revert with 'NH{q', 50
        _137 = mem[_106 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = mem[_106 + ceil32(return_data.size) + 64]
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.0xf831505a with:
                gas gas_remaining wei
               args _137
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _142 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_142] == mem[_142]
        mem[mem[64]] = mem[_142]
    return memory
      from mem[64]
       len 32
}

function harvest() {
    if paused:
        revert with 0, 'Pausable: paused'
    mem[132] = 0
    require ext_code.size(masterchefAddress)
    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolId, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(stor204)
    staticcall stor204.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(stor204)
    staticcall stor204.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    require ext_code.size(feeManagerAddress)
    staticcall feeManagerAddress.calculateTotalFee(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 132] = 0
    mem[(4 * ceil32(return_data.size)) + 164] = 160
    mem[(4 * ceil32(return_data.size)) + 260] = sub_42438da0.length
    mem[0] = 214
    idx = 0
    s = 0
    t = (4 * ceil32(return_data.size)) + 292
    while idx < sub_42438da0.length:
        mem[t] = sub_42438da0[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 196] = this.address
    mem[(4 * ceil32(return_data.size)) + 228] = block.timestamp
    require ext_code.size(joeRouterAddress)
    call joeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_42438da0.length, mem[(4 * ceil32(return_data.size)) + 292 len 32 * sub_42438da0.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _44 = mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
    _45 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(6 * ceil32(return_data.size)) + 96] = _45
    require _44 + (32 * _45) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _44 + 128
    t = (6 * ceil32(return_data.size)) + 128
    while idx < _45:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor202)
    staticcall stor202.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _262 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _263 = mem[_262]
    require mem[_262] == mem[_262]
    mem[mem[64] + 4] = mem[_262]
    require ext_code.size(feeManagerAddress)
    staticcall feeManagerAddress.0xf831505a with:
            gas gas_remaining wei
           args _263
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _266 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _267 = mem[_266]
    require mem[_266] == mem[_266]
    _268 = mem[64]
    mem[mem[64] + 36] = tx.origin
    mem[mem[64] + 68] = _267
    _269 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_268 + 100] = 32
    mem[_268 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(stor202) <= 0:
        revert with 0, 'Address: call to non-contract'
    _275 = mem[_269]
    mem[_268 + 164 len ceil32(mem[_269])] = mem[_269 + 32 len ceil32(mem[_269])]
    if ceil32(_275) > _275:
        mem[_268 + _275 + 164] = 0
    call stor202 with:
         gas gas_remaining wei
        args mem[_268 + 168 len _275 - 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_268 + 168] = _263
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.0x9c7c270c with:
                gas gas_remaining wei
               args _263
        mem[_268 + 164] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_94f0d0bfAddress)
        call sub_94f0d0bfAddress.process(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_268 + ceil32(return_data.size) + 168] = _263
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.0xa51704c3 with:
                gas gas_remaining wei
               args _263
        mem[_268 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.strategyDev() with:
                gas gas_remaining wei
        mem[_268 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[_268 + (4 * ceil32(return_data.size)) + 200] = ext_call.return_data[12 len 20]
        mem[_268 + (4 * ceil32(return_data.size)) + 232] = ext_call.return_data[0]
        mem[_268 + (4 * ceil32(return_data.size)) + 164] = 68
        mem[_268 + (4 * ceil32(return_data.size)) + 196 len 4] = unknown_0xa9059cbb(?????)
        mem[_268 + (4 * ceil32(return_data.size)) + 264] = 32
        mem[_268 + (4 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(stor202) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[_268 + (4 * ceil32(return_data.size)) + 328 len 96] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0
        mem[_268 + (4 * ceil32(return_data.size)) + 396] = 0
        call stor202 with:
           funct Mask(32, 224, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0x47c3d9e2: ext_call.return_data[0], _267, ext_call.return_data[0], ext_call.return_data[0], msg.sender
            mem[_268 + (4 * ceil32(return_data.size)) + 328] = lpToken0Address
            mem[_268 + (4 * ceil32(return_data.size)) + 360] = lpToken1Address
            mem[_268 + (4 * ceil32(return_data.size)) + 392] = stor204
            mem[_268 + (4 * ceil32(return_data.size)) + 424] = farmingTokenAddress
            mem[_268 + (4 * ceil32(return_data.size)) + 456] = stor202
            mem[_268 + (4 * ceil32(return_data.size)) + 488] = stor203
            mem[_268 + (4 * ceil32(return_data.size)) + 520] = 0xca9fa74e00000000000000000000000000000000000000000000000000000000
            mem[_268 + (4 * ceil32(return_data.size)) + 524] = address(vaultAddress)
            idx = 0
            s = _268 + (4 * ceil32(return_data.size)) + 328
            t = _268 + (4 * ceil32(return_data.size)) + 652
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = _268 + (4 * ceil32(return_data.size)) + 392
            t = _268 + (4 * ceil32(return_data.size)) + 716
            while idx < 4:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x98ea80558af05998412275e4830791ce0677dbbd)
            delegate 0x98ea80558af05998412275e4830791ce0677dbbd.0xca9fa74e with:
                 gas gas_remaining wei
                args address(vaultAddress), masterchefAddress, joeRouterAddress, poolId, mem[_268 + (4 * ceil32(return_data.size)) + 652 len 192], stor213, bool(sub_c6fa8346)
        else:
            mem[_268 + (4 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_268 + (4 * ceil32(return_data.size)) + 360] == bool(mem[_268 + (4 * ceil32(return_data.size)) + 360])
                if not mem[_268 + (4 * ceil32(return_data.size)) + 360]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0x47c3d9e2: ext_call.return_data[0], _267, ext_call.return_data[0], ext_call.return_data[0], msg.sender
            mem[_268 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = lpToken0Address
            mem[_268 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = lpToken1Address
            mem[_268 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = stor204
            mem[_268 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = farmingTokenAddress
            mem[_268 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = stor202
            mem[_268 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = stor203
            mem[_268 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0xca9fa74e00000000000000000000000000000000000000000000000000000000
            mem[_268 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = address(vaultAddress)
            idx = 0
            s = _268 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329
            t = _268 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 653
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = _268 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
            t = _268 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
            while idx < 4:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x98ea80558af05998412275e4830791ce0677dbbd)
            delegate 0x98ea80558af05998412275e4830791ce0677dbbd.0xca9fa74e with:
                 gas gas_remaining wei
                args address(vaultAddress), masterchefAddress, joeRouterAddress, poolId, mem[_268 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 653 len 192], stor213, bool(sub_c6fa8346)
    else:
        mem[_268 + 164] = return_data.size
        mem[_268 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[_268 + 196] == bool(mem[_268 + 196])
            if not mem[_268 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_268 + ceil32(return_data.size) + 169] = _263
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.0x9c7c270c with:
                gas gas_remaining wei
               args _263
        mem[_268 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_94f0d0bfAddress)
        call sub_94f0d0bfAddress.process(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_268 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = _263
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.0xa51704c3 with:
                gas gas_remaining wei
               args _263
        mem[_268 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.strategyDev() with:
                gas gas_remaining wei
        mem[_268 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = ext_call.return_data[12 len 20]
        mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = ext_call.return_data[0]
        mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 68
        mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197 len 4] = unknown_0xa9059cbb(?????)
        mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 32
        mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(stor202) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329 len 96] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0
        mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 397] = 0
        call stor202 with:
           funct Mask(32, 224, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0x47c3d9e2: ext_call.return_data[0], _267, ext_call.return_data[0], ext_call.return_data[0], msg.sender
            mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329] = lpToken0Address
            mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361] = lpToken1Address
            mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 393] = stor204
            mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 425] = farmingTokenAddress
            mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 457] = stor202
            mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 489] = stor203
            mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 521] = 0xca9fa74e00000000000000000000000000000000000000000000000000000000
            mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 525] = address(vaultAddress)
            idx = 0
            s = _268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329
            t = _268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 653
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = _268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 393
            t = _268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 717
            while idx < 4:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x98ea80558af05998412275e4830791ce0677dbbd)
            delegate 0x98ea80558af05998412275e4830791ce0677dbbd.0xca9fa74e with:
                 gas gas_remaining wei
                args address(vaultAddress), masterchefAddress, joeRouterAddress, poolId, mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 653 len 192], stor213, bool(sub_c6fa8346)
        else:
            mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329] = return_data.size
            mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_268 + (8 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_268 + (8 * ceil32(return_data.size)) + 334] = 32
                mem[_268 + (8 * ceil32(return_data.size)) + 366] = 32
                mem[_268 + (8 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                revert with memory
                  from _268 + (8 * ceil32(return_data.size)) + 330
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361] == bool(mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361])
                if not mem[_268 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361]:
                    mem[_268 + (8 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_268 + (8 * ceil32(return_data.size)) + 334] = 32
                    mem[_268 + (8 * ceil32(return_data.size)) + 366] = 42
                    mem[_268 + (8 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                    mem[_268 + (8 * ceil32(return_data.size)) + 430] = 'ot succeed'
                    revert with memory
                      from _268 + (8 * ceil32(return_data.size)) + 330
                       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[_268 + (8 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
            mem[_268 + (8 * ceil32(return_data.size)) + 362] = _267
            mem[_268 + (8 * ceil32(return_data.size)) + 394] = ext_call.return_data[0]
            mem[_268 + (8 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
            mem[_268 + (8 * ceil32(return_data.size)) + 458] = msg.sender
            emit 0x47c3d9e2: mem[_268 + (8 * ceil32(return_data.size)) + 330 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 160]
            mem[_268 + (8 * ceil32(return_data.size)) + 330] = lpToken0Address
            mem[_268 + (8 * ceil32(return_data.size)) + 362] = lpToken1Address
            mem[_268 + (8 * ceil32(return_data.size)) + 394] = stor204
            mem[_268 + (8 * ceil32(return_data.size)) + 426] = farmingTokenAddress
            mem[_268 + (8 * ceil32(return_data.size)) + 458] = stor202
            mem[_268 + (8 * ceil32(return_data.size)) + 490] = stor203
            mem[_268 + (8 * ceil32(return_data.size)) + 522] = 0xca9fa74e00000000000000000000000000000000000000000000000000000000
            mem[_268 + (8 * ceil32(return_data.size)) + 526] = address(vaultAddress)
            idx = 0
            s = _268 + (8 * ceil32(return_data.size)) + 330
            t = _268 + (8 * ceil32(return_data.size)) + 654
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = _268 + (8 * ceil32(return_data.size)) + 394
            t = _268 + (8 * ceil32(return_data.size)) + 718
            while idx < 4:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x98ea80558af05998412275e4830791ce0677dbbd)
            delegate 0x98ea80558af05998412275e4830791ce0677dbbd.0xca9fa74e with:
                 gas gas_remaining wei
                args address(vaultAddress), masterchefAddress, joeRouterAddress, poolId, mem[_268 + (8 * ceil32(return_data.size)) + 654 len 192], stor213, bool(sub_c6fa8346)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require delegate.return_data[0] == delegate.return_data[0]
    require delegate.return_data[32] == delegate.return_data[32]
    emit 0x6c663e88: lpToken0Address, lpToken1Address, delegate.return_data[0], delegate.return_data[32], msg.sender
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xd80eb4cb: ext_call.return_data[0], msg.sender
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(vaultAddress) != msg.sender:
        revert with 0, 'only vault can withdraw'
    mem[100] = this.address
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor151)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(farmingTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 328] = 0
                call farmingTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if paused:
                    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor151)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
                    require ext_code.size(feeManagerAddress)
                    staticcall feeManagerAddress.0x18e1b3bb with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), 0, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), 0, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                            if not mem[(2 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if tx.origin == owner:
                mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                mem[ceil32(return_data.size) + 164] = arg1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor151)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(farmingTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call farmingTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if paused:
                    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor151)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 100] = arg1
                    require ext_code.size(feeManagerAddress)
                    staticcall feeManagerAddress.0x18e1b3bb with:
                            gas gas_remaining wei
                           args arg1
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if arg1 < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = arg1 - ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1 - ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1 - ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1 - ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                            if not mem[(2 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if arg1 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 132] = arg1 - ext_call.return_data[0]
        require ext_code.size(masterchefAddress)
        call masterchefAddress.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(farmingTokenAddress)
        staticcall farmingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(farmingTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call farmingTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                        if not mem[(2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if paused:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                            if not mem[(2 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                    require ext_code.size(feeManagerAddress)
                    staticcall feeManagerAddress.0x18e1b3bb with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(4 * ceil32(return_data.size)) + 164] = 0
                    mem[(4 * ceil32(return_data.size)) + 96] = 68
                    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), 0, 0
                    mem[(4 * ceil32(return_data.size)) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), 0, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                            if not mem[(4 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if tx.origin == owner:
                mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 164] = arg1
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(farmingTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call farmingTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                        if not mem[(2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if paused:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = arg1
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                            if not mem[(2 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = arg1
                    require ext_code.size(feeManagerAddress)
                    staticcall feeManagerAddress.0x18e1b3bb with:
                            gas gas_remaining wei
                           args arg1
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if arg1 < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(4 * ceil32(return_data.size)) + 164] = arg1 - ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 96] = 68
                    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1 - ext_call.return_data[0], 0
                    mem[(4 * ceil32(return_data.size)) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1 - ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1 - ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                            if not mem[(4 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - sub_6e356b08(?)
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
address stor204;
address lpToken0Address;
address lpToken1Address;
address farmingTokenAddress;
address pcsRouterAddress;
address feeManagerAddress;
address sub_94f0d0bfAddress;
address masterchefAddress;
uint256 poolId;
array of address sub_42438da0;
array of address sub_32a4d4f9;
array of address sub_f7816985;

function sub_32a4d4f9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_32a4d4f9.length
    return sub_32a4d4f9[arg1]
}

function poolId() payable {
    return poolId
}

function sub_42438da0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_42438da0.length
    return sub_42438da0[arg1]
}

function paused() payable {
    return bool(paused)
}

function lpToken0() payable {
    return lpToken0Address
}

function pcsRouter() payable {
    return pcsRouterAddress
}

function lpToken1() payable {
    return lpToken1Address
}

function owner() payable {
    return owner
}

function sub_94f0d0bf(?) payable {
    return sub_94f0d0bfAddress
}

function farmingToken() payable {
    return farmingTokenAddress
}

function feeManager() payable {
    return feeManagerAddress
}

function sub_f7816985(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f7816985.length
    return sub_f7816985[arg1]
}

function masterchef() payable {
    return masterchefAddress
}

function vault() payable {
    return address(vaultAddress)
}

function beforeDeposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function balanceOfCake() payable {
    require ext_code.size(stor204)
    staticcall stor204.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_e77a0400(?) payable {
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_5252a8e4(?) payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function sub_713f6a0a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xe2717c7ce08a30680f9038792b5d5ccf914c36f)
    delegate 0xe2717c7ce08a30680f9038792b5d5ccf914c36f.isContract(address rg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    if not delegate.return_data[0]:
        revert with 0, 'Invalid fee processor address'
    sub_94f0d0bfAddress = address(arg1)
    emit 0x31eba9bb: address(arg1)
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.balanceOf(address rg1) with:
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

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xe2717c7ce08a30680f9038792b5d5ccf914c36f)
    delegate 0xe2717c7ce08a30680f9038792b5d5ccf914c36f.isContract(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    if not delegate.return_data[0]:
        revert with 0, 'Invalid vault address'
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

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
    require ext_code.size(stor202)
    call stor202.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_94f0d0bfAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(farmingTokenAddress)
    call farmingTokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args masterchefAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor204)
    call stor204.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args pcsRouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(lpToken0Address)
    call lpToken0Address.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args pcsRouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(lpToken1Address)
    call lpToken1Address.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args pcsRouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function retireStrategy() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only vault can retire the strategy'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.balanceOf(address rg1) with:
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
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(farmingTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call farmingTokenAddress with:
       funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) << 288)
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

function sub_0a807b69(?) payable {
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

function getPendingFees() payable {
    mem[100] = poolId
    mem[132] = this.address
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.pendingJoe(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolId, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(feeManagerAddress)
    staticcall feeManagerAddress.calculateTotalFee(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    mem[(2 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = 64
    mem[(2 * ceil32(return_data.size)) + 164] = sub_42438da0.length
    mem[0] = 214
    idx = 0
    s = 0
    t = (2 * ceil32(return_data.size)) + 196
    while idx < sub_42438da0.length:
        mem[t] = sub_42438da0[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(pcsRouterAddress)
    staticcall pcsRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=sub_42438da0.length, data=mem[(2 * ceil32(return_data.size)) + 196 len 32 * sub_42438da0.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _29 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _30 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = _30
    require _29 + (32 * _30) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _29 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _30:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _30:
        revert with 'NH{q', 50
    _43 = mem[(4 * ceil32(return_data.size)) + 160]
    mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 160]
    require ext_code.size(feeManagerAddress)
    staticcall feeManagerAddress.0xf831505a with:
            gas gas_remaining wei
           args _43
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _46 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_46] == mem[_46]
    mem[mem[64]] = mem[_46]
    return memory
      from mem[64]
       len 32
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(vaultAddress) != msg.sender:
        revert with 0, 'only vault can withdraw'
    mem[100] = this.address
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.balanceOf(address rg1) with:
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
                mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(farmingTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 328] = 0
                call farmingTokenAddress with:
                   funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) << 288)
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
                    mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) << 288)
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
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), 0, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), 0, 0) << 288)
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
                mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(farmingTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call farmingTokenAddress with:
                   funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1, 0) << 288)
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
                    mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1, 0) << 288)
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
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1 - ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1 - ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1 - ext_call.return_data[0], 0) << 288)
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
        call masterchefAddress.withdraw(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args poolId, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(farmingTokenAddress)
        staticcall farmingTokenAddress.balanceOf(address rg1) with:
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
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(farmingTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call farmingTokenAddress with:
                   funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) << 288)
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
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0) << 288)
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
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), 0, 0
                    mem[(4 * ceil32(return_data.size)) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), 0, 0) << 288)
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
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(farmingTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call farmingTokenAddress with:
                   funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1, 0) << 288)
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
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1, 0) << 288)
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
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1 - ext_call.return_data[0], 0
                    mem[(4 * ceil32(return_data.size)) + 328] = 0
                    call farmingTokenAddress with:
                       funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1 - ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor151), uint32(stor151), arg1 - ext_call.return_data[0], 0) << 288)
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

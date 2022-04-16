contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - pause()
#  - emergency()
#  - initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
uint32 stor151;
address vaultAddress;
uint256 stor151;
address wavaxAddress;
address farmingTokenAddress;
address masterchefAddress;
uint32 stor205;
address pcsRouterAddress;
uint256 stor205;
address feeManagerAddress;
uint32 stor207;
address sub_94f0d0bfAddress;
array of address sub_42438da0;

function wavax() payable {
    return wavaxAddress
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

function pcsRouter() payable {
    return address(pcsRouterAddress)
}

function owner() payable {
    return owner
}

function sub_94f0d0bf(?) payable {
    return address(sub_94f0d0bfAddress)
}

function farmingToken() payable {
    return farmingTokenAddress
}

function feeManager() payable {
    return feeManagerAddress
}

function masterchef() payable {
    return masterchefAddress
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

function sub_e77a0400(?) payable {
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

function sub_5252a8e4(?) payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function deposit() payable {
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
        call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    address(sub_94f0d0bfAddress) = address(arg1)
    emit 0x31eba9bb: address(arg1)
}

function balanceOf() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
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

function retireStrategy() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only vault can retire the strategy'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args 0
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
    mem[100] = 0
    mem[132] = this.address
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.pendingJoe(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(feeManagerAddress)
    staticcall feeManagerAddress.0x3a51198d with:
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
    mem[0] = 208
    idx = 0
    s = 0
    t = (2 * ceil32(return_data.size)) + 196
    while idx < sub_42438da0.length:
        mem[t] = sub_42438da0[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(address(pcsRouterAddress))
    staticcall address(pcsRouterAddress).getAmountsOut(uint256 rg1, address[] rg2) with:
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

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
    mem[100] = address(sub_94f0d0bfAddress)
    mem[132] = -1
    require ext_code.size(wavaxAddress)
    call wavaxAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(sub_94f0d0bfAddress), -1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(pcsRouterAddress)
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(pcsRouterAddress)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(2 * ceil32(return_data.size)) + 132] = address(pcsRouterAddress)
    mem[(2 * ceil32(return_data.size)) + 164] = -1
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor205)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address rg1, uint256 rg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(farmingTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor205), uint32(stor205), -1, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call farmingTokenAddress with:
       funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor205), uint32(stor205), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor205), uint32(stor205), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(stor207), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff == bool(uint32(stor207), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
            if not uint32(stor207), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + 264] = this.address
        mem[(2 * ceil32(return_data.size)) + 296] = masterchefAddress
        require ext_code.size(farmingTokenAddress)
        staticcall farmingTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), masterchefAddress
        mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(4 * ceil32(return_data.size)) + 296] = masterchefAddress
        mem[(4 * ceil32(return_data.size)) + 328] = -1
        mem[(4 * ceil32(return_data.size)) + 260] = 68
        mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address rg1, uint256 rg2)
        mem[(4 * ceil32(return_data.size)) + 360] = 32
        mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(farmingTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, masterchefAddress, -1, 0
        mem[(4 * ceil32(return_data.size)) + 492] = 0
        call farmingTokenAddress with:
           funct Mask(32, 224, 0, masterchefAddress, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, masterchefAddress, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require uint32(stor207), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff == bool(uint32(stor207), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                if not uint32(stor207), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
                call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0, 0, mem[(6 * ceil32(return_data.size)) + 492 len 9 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                if not mem[(4 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
                call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0, 0, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 9 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
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
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = masterchefAddress
        require ext_code.size(farmingTokenAddress)
        staticcall farmingTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), masterchefAddress
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = masterchefAddress
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address rg1, uint256 rg2)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(farmingTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, masterchefAddress, -1, 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call farmingTokenAddress with:
           funct Mask(32, 224, 0, masterchefAddress, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, masterchefAddress, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require uint32(stor207), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff == bool(uint32(stor207), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                if not uint32(stor207), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
                call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0, 0, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 9 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 430] = 32
                mem[(8 * ceil32(return_data.size)) + 462] = 32
                mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 426
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                    mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 430] = 32
                    mem[(8 * ceil32(return_data.size)) + 462] = 42
                    mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                    mem[(8 * ceil32(return_data.size)) + 526] = 'ot succeed'
                    revert with memory
                      from (8 * ceil32(return_data.size)) + 426
                       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            if paused:
                mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 430] = 32
                mem[(8 * ceil32(return_data.size)) + 462] = 16
                mem[(8 * ceil32(return_data.size)) + 494] = 'Pausable: paused'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 426
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
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
                call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0, 0, mem[(9 * ceil32(return_data.size)) + 494 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function beforeDeposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    mem[132] = 0
    require ext_code.size(masterchefAddress)
    call masterchefAddress.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0
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
    if ext_call.return_data[0] > 0:
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
        mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.0x3a51198d with:
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
        mem[0] = 208
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
        require ext_code.size(address(pcsRouterAddress))
        call address(pcsRouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_42438da0.length, mem[(4 * ceil32(return_data.size)) + 292 len 32 * sub_42438da0.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _42 = mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _43 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _42 + (32 * _43) + 32 <= return_data.size
        idx = 0
        s = (4 * ceil32(return_data.size)) + _42 + 128
        t = (6 * ceil32(return_data.size)) + 128
        while idx < _43:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wavaxAddress)
        staticcall wavaxAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _260 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _261 = mem[_260]
        require mem[_260] == mem[_260]
        mem[mem[64] + 4] = mem[_260]
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.0xf831505a with:
                gas gas_remaining wei
               args _261
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _264 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _265 = mem[_264]
        require mem[_264] == mem[_264]
        _266 = mem[64]
        mem[mem[64] + 36] = tx.origin
        mem[mem[64] + 68] = _265
        _267 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_266 + 100] = 32
        mem[_266 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(wavaxAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _273 = mem[_267]
        mem[_266 + 164 len ceil32(mem[_267])] = mem[_267 + 32 len ceil32(mem[_267])]
        if ceil32(_273) > _273:
            mem[_266 + _273 + 164] = 0
        call wavaxAddress with:
             gas gas_remaining wei
            args mem[_266 + 168 len _273 - 4]
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
            mem[_266 + 168] = _261
            require ext_code.size(feeManagerAddress)
            staticcall feeManagerAddress.0x9c7c270c with:
                    gas gas_remaining wei
                   args _261
            mem[_266 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(sub_94f0d0bfAddress))
            call address(sub_94f0d0bfAddress).0xffb2c479 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_266 + ceil32(return_data.size) + 168] = _261
            require ext_code.size(feeManagerAddress)
            staticcall feeManagerAddress.0xa51704c3 with:
                    gas gas_remaining wei
                   args _261
            mem[_266 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(feeManagerAddress)
            staticcall feeManagerAddress.0xbecacda6 with:
                    gas gas_remaining wei
            mem[_266 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_266 + (4 * ceil32(return_data.size)) + 200] = ext_call.return_data[12 len 20]
            mem[_266 + (4 * ceil32(return_data.size)) + 232] = ext_call.return_data[0]
            mem[_266 + (4 * ceil32(return_data.size)) + 164] = 68
            mem[_266 + (4 * ceil32(return_data.size)) + 196 len 4] = unknown_0xa9059cbb(?????)
            mem[_266 + (4 * ceil32(return_data.size)) + 264] = 32
            mem[_266 + (4 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(wavaxAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_266 + (4 * ceil32(return_data.size)) + 328 len 96] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0
            mem[_266 + (4 * ceil32(return_data.size)) + 396] = 0
            call wavaxAddress with:
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
                mem[_266 + (4 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
                mem[_266 + (4 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                mem[_266 + (4 * ceil32(return_data.size)) + 456] = msg.sender
                emit 0x47c3d9e2: ext_call.return_data[0], _265, ext_call.return_data[0], ext_call.return_data[0], msg.sender
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
                    call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0, 0, mem[_266 + (6 * ceil32(return_data.size)) + 396 len 9 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[_266 + (4 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_266 + (4 * ceil32(return_data.size)) + 360] == bool(mem[_266 + (4 * ceil32(return_data.size)) + 360])
                    if not mem[_266 + (4 * ceil32(return_data.size)) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_266 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                mem[_266 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                mem[_266 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = msg.sender
                emit 0x47c3d9e2: ext_call.return_data[0], _265, ext_call.return_data[0], ext_call.return_data[0], msg.sender
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
                    call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0, 0, mem[_266 + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 397 len 9 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[_266 + 164] = return_data.size
            mem[_266 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_266 + 196] == bool(mem[_266 + 196])
                if not mem[_266 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_266 + ceil32(return_data.size) + 169] = _261
            require ext_code.size(feeManagerAddress)
            staticcall feeManagerAddress.0x9c7c270c with:
                    gas gas_remaining wei
                   args _261
            mem[_266 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(sub_94f0d0bfAddress))
            call address(sub_94f0d0bfAddress).0xffb2c479 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_266 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = _261
            require ext_code.size(feeManagerAddress)
            staticcall feeManagerAddress.0xa51704c3 with:
                    gas gas_remaining wei
                   args _261
            mem[_266 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(feeManagerAddress)
            staticcall feeManagerAddress.0xbecacda6 with:
                    gas gas_remaining wei
            mem[_266 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = ext_call.return_data[12 len 20]
            mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = ext_call.return_data[0]
            mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 68
            mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197 len 4] = unknown_0xa9059cbb(?????)
            mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 32
            mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(wavaxAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329 len 96] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0
            mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 397] = 0
            call wavaxAddress with:
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
                mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 393] = ext_call.return_data[0]
                mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 425] = ext_call.return_data[0]
                mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 457] = msg.sender
                emit 0x47c3d9e2: ext_call.return_data[0], _265, ext_call.return_data[0], ext_call.return_data[0], msg.sender
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
                    call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0, 0, mem[_266 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 397 len 9 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329] = return_data.size
                mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_266 + (8 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_266 + (8 * ceil32(return_data.size)) + 334] = 32
                    mem[_266 + (8 * ceil32(return_data.size)) + 366] = 32
                    mem[_266 + (8 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from _266 + (8 * ceil32(return_data.size)) + 330
                       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361] == bool(mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361])
                    if not mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361]:
                        mem[_266 + (8 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_266 + (8 * ceil32(return_data.size)) + 334] = 32
                        mem[_266 + (8 * ceil32(return_data.size)) + 366] = 42
                        mem[_266 + (8 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                        mem[_266 + (8 * ceil32(return_data.size)) + 430] = 'ot succeed'
                        revert with memory
                          from _266 + (8 * ceil32(return_data.size)) + 330
                           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[_266 + (8 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
                mem[_266 + (8 * ceil32(return_data.size)) + 362] = _265
                mem[_266 + (8 * ceil32(return_data.size)) + 394] = ext_call.return_data[0]
                mem[_266 + (8 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                mem[_266 + (8 * ceil32(return_data.size)) + 458] = msg.sender
                emit 0x47c3d9e2: mem[_266 + (8 * ceil32(return_data.size)) + 330 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 160]
                if paused:
                    mem[_266 + (8 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_266 + (8 * ceil32(return_data.size)) + 334] = 32
                    mem[_266 + (8 * ceil32(return_data.size)) + 366] = 16
                    mem[_266 + (8 * ceil32(return_data.size)) + 398] = 'Pausable: paused'
                    revert with memory
                      from _266 + (8 * ceil32(return_data.size)) + 330
                       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
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
                    call masterchefAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0, 0, mem[_266 + (9 * ceil32(return_data.size)) + 398 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        emit 0xd80eb4cb: ext_call.return_data[0], msg.sender
}

function withdraw(uint256 arg1) payable {
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
        call masterchefAddress.withdraw(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0, arg1 - ext_call.return_data[0]
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

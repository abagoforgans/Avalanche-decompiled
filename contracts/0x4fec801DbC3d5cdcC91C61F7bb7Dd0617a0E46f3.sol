contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - pause()
#  - initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, uint256 arg8)
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
address wavaxAddress;
address sub_50ed1471Address;
address farmingTokenAddress;
uint32 stor205;
uint256 stor205; offset 32
uint256 poolId;
address masterchefAddress;
address joeRouterAddress;
address feeManagerAddress;
address sub_94f0d0bfAddress;
array of address sub_0400d2b0;

function sub_0400d2b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_0400d2b0.length
    return sub_0400d2b0[arg1]
}

function wavax() payable {
    return wavaxAddress
}

function poolId() payable {
    return poolId
}

function sub_50ed1471(?) payable {
    return sub_50ed1471Address
}

function joeRouter() payable {
    return joeRouterAddress
}

function paused() payable {
    return bool(paused)
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

function sub_2098ecb6(?) payable {
    require ext_code.size(sub_50ed1471Address)
    staticcall sub_50ed1471Address.0x70a08231 with:
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

function sub_713f6a0a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xe2717c7ce08a30680f9038792b5d5ccf914c36f)
    delegate 0xe2717c7ce08a30680f9038792b5d5ccf914c36f.isContract(address arg1) with:
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

function setVault(address arg1) payable {
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

function exchangeRate() payable {
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_50ed1471Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_50ed1471Address)
    staticcall sub_50ed1471Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_e2ddd046(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_50ed1471Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_50ed1471Address)
    staticcall sub_50ed1471Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if arg1 and 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18)
}

function sub_dfce5841(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_50ed1471Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_50ed1471Address)
    staticcall sub_50ed1471Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (10^18 * arg1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
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
        require ext_code.size(sub_50ed1471Address)
        call sub_50ed1471Address.enter(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_50ed1471Address)
        staticcall sub_50ed1471Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
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
           args sub_50ed1471Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_50ed1471Address)
    staticcall sub_50ed1471Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -(10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] + (10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]))
}

function retireStrategy() payable {
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
    _4 = mem[96 len 4], Mask(224, 0, stor205.field_32)
    require mem[96 len 4], Mask(224, 0, stor205.field_32) == mem[96 len 4], Mask(224, 0, stor205.field_32)
    require uint32(stor205.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
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
        mem[mem[64] + 4] = sub_50ed1471Address
        require ext_code.size(farmingTokenAddress)
        staticcall farmingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args sub_50ed1471Address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _72 = mem[_70]
        require mem[_70] == mem[_70]
        require ext_code.size(sub_50ed1471Address)
        staticcall sub_50ed1471Address.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _78 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _80 = mem[_78]
        require mem[_78] == mem[_78]
        if mem[_78] and 10^18 > -1 / mem[_78]:
            revert with 'NH{q', 17
        if not _72:
            revert with 'NH{q', 18
        if _4 and 10^18 > -1 / _4:
            revert with 'NH{q', 17
        if not 10^18 * mem[_78] / _72:
            revert with 'NH{q', 18
        mem[mem[64] + 4] = 10^18 * _4 / 10^18 * mem[_78] / _72
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.calculateTotalFee(uint256 arg1) with:
                gas gas_remaining wei
               args (10^18 * _4 / 10^18 * _80 / _72)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _86 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _88 = mem[_86]
        require mem[_86] == mem[_86]
        if not mem[_86]:
            return 0
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _88
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = sub_0400d2b0.length
        mem[0] = 210
        idx = 0
        s = 0
        t = mem[64] + 100
        while idx < sub_0400d2b0.length:
            mem[t] = sub_0400d2b0[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(joeRouterAddress)
        staticcall joeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _88, Array(len=sub_0400d2b0.length, data=mem[mem[64] + 100 len 32 * sub_0400d2b0.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _128 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _130 = mem[_128]
        require mem[_128] <= test266151307()
        require _128 + mem[_128] + 31 < _128 + return_data.size
        _132 = mem[_128 + mem[_128]]
        if mem[_128 + mem[_128]] > test266151307():
            revert with 'NH{q', 65
        if _128 + ceil32(return_data.size) + floor32(mem[_128 + mem[_128]]) + 1 > test266151307() or floor32(mem[_128 + mem[_128]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _128 + ceil32(return_data.size) + floor32(mem[_128 + mem[_128]]) + 1
        mem[_128 + ceil32(return_data.size)] = _132
        require _130 + (32 * _132) + 32 <= return_data.size
        idx = 0
        s = _128 + _130 + 32
        t = _128 + ceil32(return_data.size) + 32
        while idx < _132:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _132:
            revert with 'NH{q', 50
        _158 = mem[_128 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = mem[_128 + ceil32(return_data.size) + 64]
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.0xf831505a with:
                gas gas_remaining wei
               args _158
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _164 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_164] == mem[_164]
        mem[mem[64]] = mem[_164]
    else:
        mem[ceil32(return_data.size) + _7 + 128] = 0
        require mem[192] == mem[192]
        mem[mem[64] + 4] = sub_50ed1471Address
        require ext_code.size(farmingTokenAddress)
        staticcall farmingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args sub_50ed1471Address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _73 = mem[_71]
        require mem[_71] == mem[_71]
        require ext_code.size(sub_50ed1471Address)
        staticcall sub_50ed1471Address.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _81 = mem[_79]
        require mem[_79] == mem[_79]
        if mem[_79] and 10^18 > -1 / mem[_79]:
            revert with 'NH{q', 17
        if not _73:
            revert with 'NH{q', 18
        if _4 and 10^18 > -1 / _4:
            revert with 'NH{q', 17
        if not 10^18 * mem[_79] / _73:
            revert with 'NH{q', 18
        mem[mem[64] + 4] = 10^18 * _4 / 10^18 * mem[_79] / _73
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.calculateTotalFee(uint256 arg1) with:
                gas gas_remaining wei
               args (10^18 * _4 / 10^18 * _81 / _73)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _89 = mem[_87]
        require mem[_87] == mem[_87]
        if not mem[_87]:
            return 0
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _89
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = sub_0400d2b0.length
        mem[0] = 210
        idx = 0
        s = 0
        t = mem[64] + 100
        while idx < sub_0400d2b0.length:
            mem[t] = sub_0400d2b0[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(joeRouterAddress)
        staticcall joeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _89, Array(len=sub_0400d2b0.length, data=mem[mem[64] + 100 len 32 * sub_0400d2b0.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _129 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _131 = mem[_129]
        require mem[_129] <= test266151307()
        require _129 + mem[_129] + 31 < _129 + return_data.size
        _133 = mem[_129 + mem[_129]]
        if mem[_129 + mem[_129]] > test266151307():
            revert with 'NH{q', 65
        if _129 + ceil32(return_data.size) + floor32(mem[_129 + mem[_129]]) + 1 > test266151307() or floor32(mem[_129 + mem[_129]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _129 + ceil32(return_data.size) + floor32(mem[_129 + mem[_129]]) + 1
        mem[_129 + ceil32(return_data.size)] = _133
        require _131 + (32 * _133) + 32 <= return_data.size
        idx = 0
        s = _129 + _131 + 32
        t = _129 + ceil32(return_data.size) + 32
        while idx < _133:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _133:
            revert with 'NH{q', 50
        _160 = mem[_129 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = mem[_129 + ceil32(return_data.size) + 64]
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.0xf831505a with:
                gas gas_remaining wei
               args _160
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _165 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_165] == mem[_165]
        mem[mem[64]] = mem[_165]
    return memory
      from mem[64]
       len 32
}

function harvest() payable {
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
        mem[(4 * ceil32(return_data.size)) + 260] = sub_0400d2b0.length
        mem[0] = 210
        idx = 0
        s = 0
        t = (4 * ceil32(return_data.size)) + 292
        while idx < sub_0400d2b0.length:
            mem[t] = sub_0400d2b0[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        mem[(4 * ceil32(return_data.size)) + 228] = block.timestamp
        require ext_code.size(joeRouterAddress)
        call joeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_0400d2b0.length, mem[(4 * ceil32(return_data.size)) + 292 len 32 * sub_0400d2b0.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _43 = mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _44 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(6 * ceil32(return_data.size)) + 96] = _44
        require _43 + (32 * _44) + 32 <= return_data.size
        idx = 0
        s = (4 * ceil32(return_data.size)) + _43 + 128
        t = (6 * ceil32(return_data.size)) + 128
        while idx < _44:
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
        _261 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _262 = mem[_261]
        require mem[_261] == mem[_261]
        mem[mem[64] + 4] = mem[_261]
        require ext_code.size(feeManagerAddress)
        staticcall feeManagerAddress.0xf831505a with:
                gas gas_remaining wei
               args _262
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _265 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _266 = mem[_265]
        require mem[_265] == mem[_265]
        _267 = mem[64]
        mem[mem[64] + 36] = tx.origin
        mem[mem[64] + 68] = _266
        _268 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_267 + 100] = 32
        mem[_267 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(wavaxAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _274 = mem[_268]
        mem[_267 + 164 len ceil32(mem[_268])] = mem[_268 + 32 len ceil32(mem[_268])]
        if ceil32(_274) > _274:
            mem[_267 + _274 + 164] = 0
        call wavaxAddress with:
             gas gas_remaining wei
            args mem[_267 + 168 len _274 - 4]
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
            mem[_267 + 168] = _262
            require ext_code.size(feeManagerAddress)
            staticcall feeManagerAddress.0x9c7c270c with:
                    gas gas_remaining wei
                   args _262
            mem[_267 + 164] = ext_call.return_data[0]
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
            mem[_267 + ceil32(return_data.size) + 168] = _262
            require ext_code.size(feeManagerAddress)
            staticcall feeManagerAddress.0xa51704c3 with:
                    gas gas_remaining wei
                   args _262
            mem[_267 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(feeManagerAddress)
            staticcall feeManagerAddress.strategyDev() with:
                    gas gas_remaining wei
            mem[_267 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_267 + (4 * ceil32(return_data.size)) + 200] = ext_call.return_data[12 len 20]
            mem[_267 + (4 * ceil32(return_data.size)) + 232] = ext_call.return_data[0]
            mem[_267 + (4 * ceil32(return_data.size)) + 164] = 68
            mem[_267 + (4 * ceil32(return_data.size)) + 196 len 4] = unknown_0xa9059cbb(?????)
            mem[_267 + (4 * ceil32(return_data.size)) + 264] = 32
            mem[_267 + (4 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(wavaxAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_267 + (4 * ceil32(return_data.size)) + 328 len 96] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0
            mem[_267 + (4 * ceil32(return_data.size)) + 396] = 0
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
                mem[_267 + (4 * ceil32(return_data.size)) + 360] = _266
                mem[_267 + (4 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
                mem[_267 + (4 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                mem[_267 + (4 * ceil32(return_data.size)) + 456] = msg.sender
                emit 0x47c3d9e2: ext_call.return_data[0], _266, ext_call.return_data[0], ext_call.return_data[0], msg.sender
                if paused:
                    revert with 0, 'Pausable: paused'
                mem[_267 + (4 * ceil32(return_data.size)) + 332] = this.address
                require ext_code.size(farmingTokenAddress)
                staticcall farmingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_267 + (4 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    require ext_code.size(sub_50ed1471Address)
                    call sub_50ed1471Address.enter(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_267 + (6 * ceil32(return_data.size)) + 332] = this.address
                    require ext_code.size(sub_50ed1471Address)
                    staticcall sub_50ed1471Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_267 + (6 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_267 + (8 * ceil32(return_data.size)) + 332] = poolId
                    mem[_267 + (8 * ceil32(return_data.size)) + 364] = ext_call.return_data[0]
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[_267 + (8 * ceil32(return_data.size)) + 332 len (13 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[_267 + (4 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_267 + (4 * ceil32(return_data.size)) + 360] == bool(mem[_267 + (4 * ceil32(return_data.size)) + 360])
                    if not mem[_267 + (4 * ceil32(return_data.size)) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_267 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = _266
                mem[_267 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                mem[_267 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                mem[_267 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = msg.sender
                emit 0x47c3d9e2: ext_call.return_data[0], _266, ext_call.return_data[0], ext_call.return_data[0], msg.sender
                if paused:
                    revert with 0, 'Pausable: paused'
                mem[_267 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 333] = this.address
                require ext_code.size(farmingTokenAddress)
                staticcall farmingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_267 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    require ext_code.size(sub_50ed1471Address)
                    call sub_50ed1471Address.enter(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_267 + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 333] = this.address
                    require ext_code.size(sub_50ed1471Address)
                    staticcall sub_50ed1471Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_267 + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_267 + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 333] = poolId
                    mem[_267 + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 365] = ext_call.return_data[0]
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[_267 + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 333 len (13 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[_267 + 164] = return_data.size
            mem[_267 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_267 + 196] == bool(mem[_267 + 196])
                if not mem[_267 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_267 + ceil32(return_data.size) + 169] = _262
            require ext_code.size(feeManagerAddress)
            staticcall feeManagerAddress.0x9c7c270c with:
                    gas gas_remaining wei
                   args _262
            mem[_267 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
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
            mem[_267 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = _262
            require ext_code.size(feeManagerAddress)
            staticcall feeManagerAddress.0xa51704c3 with:
                    gas gas_remaining wei
                   args _262
            mem[_267 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(feeManagerAddress)
            staticcall feeManagerAddress.strategyDev() with:
                    gas gas_remaining wei
            mem[_267 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = ext_call.return_data[12 len 20]
            mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = ext_call.return_data[0]
            mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 68
            mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197 len 4] = unknown_0xa9059cbb(?????)
            mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 32
            mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(wavaxAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329 len 96] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0
            mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 397] = 0
            call wavaxAddress with:
               funct Mask(32, 224, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) << 288)
            if return_data.size:
                mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329] = return_data.size
                mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_267 + (8 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_267 + (8 * ceil32(return_data.size)) + 334] = 32
                    mem[_267 + (8 * ceil32(return_data.size)) + 366] = 32
                    mem[_267 + (8 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from _267 + (8 * ceil32(return_data.size)) + 330
                       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361] == bool(mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361])
                    if not mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361]:
                        mem[_267 + (8 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_267 + (8 * ceil32(return_data.size)) + 334] = 32
                        mem[_267 + (8 * ceil32(return_data.size)) + 366] = 42
                        mem[_267 + (8 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                        mem[_267 + (8 * ceil32(return_data.size)) + 430] = 'ot succeed'
                        revert with memory
                          from _267 + (8 * ceil32(return_data.size)) + 330
                           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[_267 + (8 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
                mem[_267 + (8 * ceil32(return_data.size)) + 362] = _266
                mem[_267 + (8 * ceil32(return_data.size)) + 394] = ext_call.return_data[0]
                mem[_267 + (8 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                mem[_267 + (8 * ceil32(return_data.size)) + 458] = msg.sender
                emit 0x47c3d9e2: mem[_267 + (8 * ceil32(return_data.size)) + 330 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 160]
                if paused:
                    mem[_267 + (8 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_267 + (8 * ceil32(return_data.size)) + 334] = 32
                    mem[_267 + (8 * ceil32(return_data.size)) + 366] = 16
                    mem[_267 + (8 * ceil32(return_data.size)) + 398] = 'Pausable: paused'
                    revert with memory
                      from _267 + (8 * ceil32(return_data.size)) + 330
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
                    require ext_code.size(sub_50ed1471Address)
                    call sub_50ed1471Address.enter(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_50ed1471Address)
                    staticcall sub_50ed1471Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0], mem[_267 + (12 * ceil32(return_data.size)) + 398 len (17 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
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
                mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361] = _266
                mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 393] = ext_call.return_data[0]
                mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 425] = ext_call.return_data[0]
                mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 457] = msg.sender
                emit 0x47c3d9e2: ext_call.return_data[0], _266, ext_call.return_data[0], ext_call.return_data[0], msg.sender
                if paused:
                    revert with 0, 'Pausable: paused'
                mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 333] = this.address
                require ext_code.size(farmingTokenAddress)
                staticcall farmingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_267 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    require ext_code.size(sub_50ed1471Address)
                    call sub_50ed1471Address.enter(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_267 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 333] = this.address
                    require ext_code.size(sub_50ed1471Address)
                    staticcall sub_50ed1471Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_267 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 329] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_267 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 333] = poolId
                    mem[_267 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 365] = ext_call.return_data[0]
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[_267 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 333 len (13 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        emit 0xd80eb4cb: ext_call.return_data[0], msg.sender
}

function beforeDeposit() payable {
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
        mem[(4 * ceil32(return_data.size)) + 260] = sub_0400d2b0.length
        mem[0] = 210
        idx = 0
        s = 0
        t = (4 * ceil32(return_data.size)) + 292
        while idx < sub_0400d2b0.length:
            mem[t] = sub_0400d2b0[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        mem[(4 * ceil32(return_data.size)) + 228] = block.timestamp
        require ext_code.size(joeRouterAddress)
        call joeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_0400d2b0.length, mem[(4 * ceil32(return_data.size)) + 292 len 32 * sub_0400d2b0.length]
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
        mem[(6 * ceil32(return_data.size)) + 96] = _43
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
            require ext_code.size(sub_94f0d0bfAddress)
            call sub_94f0d0bfAddress.process(uint256 arg1) with:
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
            staticcall feeManagerAddress.strategyDev() with:
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
                mem[_266 + (4 * ceil32(return_data.size)) + 360] = _265
                mem[_266 + (4 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
                mem[_266 + (4 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                mem[_266 + (4 * ceil32(return_data.size)) + 456] = msg.sender
                emit 0x47c3d9e2: ext_call.return_data[0], _265, ext_call.return_data[0], ext_call.return_data[0], msg.sender
                if paused:
                    revert with 0, 'Pausable: paused'
                mem[_266 + (4 * ceil32(return_data.size)) + 332] = this.address
                require ext_code.size(farmingTokenAddress)
                staticcall farmingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_266 + (4 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    require ext_code.size(sub_50ed1471Address)
                    call sub_50ed1471Address.enter(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_266 + (6 * ceil32(return_data.size)) + 332] = this.address
                    require ext_code.size(sub_50ed1471Address)
                    staticcall sub_50ed1471Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_266 + (6 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_266 + (8 * ceil32(return_data.size)) + 332] = poolId
                    mem[_266 + (8 * ceil32(return_data.size)) + 364] = ext_call.return_data[0]
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[_266 + (8 * ceil32(return_data.size)) + 332 len (13 * ceil32(return_data.size)) + 64]
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
                mem[_266 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = _265
                mem[_266 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                mem[_266 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                mem[_266 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = msg.sender
                emit 0x47c3d9e2: ext_call.return_data[0], _265, ext_call.return_data[0], ext_call.return_data[0], msg.sender
                if paused:
                    revert with 0, 'Pausable: paused'
                mem[_266 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 333] = this.address
                require ext_code.size(farmingTokenAddress)
                staticcall farmingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_266 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    require ext_code.size(sub_50ed1471Address)
                    call sub_50ed1471Address.enter(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_266 + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 333] = this.address
                    require ext_code.size(sub_50ed1471Address)
                    staticcall sub_50ed1471Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_266 + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_266 + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 333] = poolId
                    mem[_266 + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 365] = ext_call.return_data[0]
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[_266 + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 333 len (13 * ceil32(return_data.size)) + 64]
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
            require ext_code.size(sub_94f0d0bfAddress)
            call sub_94f0d0bfAddress.process(uint256 arg1) with:
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
            staticcall feeManagerAddress.strategyDev() with:
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
            if return_data.size:
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
                    require ext_code.size(sub_50ed1471Address)
                    call sub_50ed1471Address.enter(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_50ed1471Address)
                    staticcall sub_50ed1471Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0], mem[_266 + (12 * ceil32(return_data.size)) + 398 len (17 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
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
                mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361] = _265
                mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 393] = ext_call.return_data[0]
                mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 425] = ext_call.return_data[0]
                mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 457] = msg.sender
                emit 0x47c3d9e2: ext_call.return_data[0], _265, ext_call.return_data[0], ext_call.return_data[0], msg.sender
                if paused:
                    revert with 0, 'Pausable: paused'
                mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 333] = this.address
                require ext_code.size(farmingTokenAddress)
                staticcall farmingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_266 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    require ext_code.size(sub_50ed1471Address)
                    call sub_50ed1471Address.enter(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_266 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 333] = this.address
                    require ext_code.size(sub_50ed1471Address)
                    staticcall sub_50ed1471Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_266 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 329] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_266 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 333] = poolId
                    mem[_266 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 365] = ext_call.return_data[0]
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[_266 + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 333 len (13 * ceil32(return_data.size)) + 64]
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
        mem[ceil32(return_data.size) + 100] = sub_50ed1471Address
        require ext_code.size(farmingTokenAddress)
        staticcall farmingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args sub_50ed1471Address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_50ed1471Address)
        staticcall sub_50ed1471Address.0x18160ddd with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if arg1 - ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / arg1 - ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 132] = (arg1 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 10^18
        require ext_code.size(masterchefAddress)
        call masterchefAddress.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, (arg1 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_50ed1471Address)
        call sub_50ed1471Address.leave(uint256 arg1) with:
             gas gas_remaining wei
            args ((arg1 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(farmingTokenAddress)
        staticcall farmingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                mem[(6 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(farmingTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
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
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if paused:
                    mem[(6 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 96] = 68
                    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(6 * ceil32(return_data.size)) + 196] = 32
                    mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0], 0
                    mem[(6 * ceil32(return_data.size)) + 328] = 0
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
                        mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                            if not mem[(6 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                    require ext_code.size(feeManagerAddress)
                    staticcall feeManagerAddress.0x18e1b3bb with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(7 * ceil32(return_data.size)) + 164] = 0
                    mem[(7 * ceil32(return_data.size)) + 96] = 68
                    mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                    mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 196] = 32
                    mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), 0, 0
                    mem[(7 * ceil32(return_data.size)) + 328] = 0
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
                        mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                            if not mem[(7 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if tx.origin == owner:
                mem[(6 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                mem[(6 * ceil32(return_data.size)) + 164] = arg1
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(farmingTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
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
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if paused:
                    mem[(6 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(6 * ceil32(return_data.size)) + 164] = arg1
                    mem[(6 * ceil32(return_data.size)) + 96] = 68
                    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(6 * ceil32(return_data.size)) + 196] = 32
                    mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1, 0
                    mem[(6 * ceil32(return_data.size)) + 328] = 0
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
                        mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                            if not mem[(6 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 100] = arg1
                    require ext_code.size(feeManagerAddress)
                    staticcall feeManagerAddress.0x18e1b3bb with:
                            gas gas_remaining wei
                           args arg1
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if arg1 < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(7 * ceil32(return_data.size)) + 164] = arg1 - ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 96] = 68
                    mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor151)
                    mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 196] = 32
                    mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(farmingTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor151), uint32(stor151), arg1 - ext_call.return_data[0], 0
                    mem[(7 * ceil32(return_data.size)) + 328] = 0
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
                        mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                            if not mem[(7 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - allDollarBalances()
#  - recoverERC20(address arg1, uint256 arg2)
#
address owner;
address nominatedOwner;
address stor2;
address stor3;
address sub_92e51617Address;
address stor5;
address sub_9b41830bAddress;
address sub_3e0551edAddress;
address sub_ff52a0b1Address;
address timelock_address;
address custodian_address;
address routerAddress;
array of address sub_136e4b88;
mapping of uint8 stor13;
uint256 sub_ed163800;
uint256 missing_decimals;
uint256 stor16;

function sub_136e4b88(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_136e4b88.length
    return sub_136e4b88[arg1]
}

function sub_3e0551ed(?) payable {
    return sub_3e0551edAddress
}

function missing_decimals() payable {
    return missing_decimals
}

function sub_5223c685(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor13[arg1])
}

function nominatedOwner() payable {
    return nominatedOwner
}

function custodian_address() payable {
    return custodian_address
}

function owner() payable {
    return owner
}

function sub_92e51617(?) payable {
    return sub_92e51617Address
}

function sub_9b41830b(?) payable {
    return sub_9b41830bAddress
}

function timelock_address() payable {
    return timelock_address
}

function sub_ed163800(?) payable {
    return sub_ed163800
}

function router() payable {
    return routerAddress
}

function sub_ff52a0b1(?) payable {
    return sub_ff52a0b1Address
}

function _fallback() payable {
    revert
}

function setSlippages(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    sub_ed163800 = arg1
}

function setCustodian(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    if not arg1:
        revert with 0, 'Zero address detected'
    custodian_address = arg1
}

function nominateNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function acceptOwnership() payable {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}

function borrowed_fxs() payable {
    require ext_code.size(sub_92e51617Address)
    staticcall sub_92e51617Address.0x3906f181 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function borrowed_frax() payable {
    require ext_code.size(sub_92e51617Address)
    staticcall sub_92e51617Address.0x3001f398 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function removeTrackedLP(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    if bool(stor13[address(arg1)]) != 1:
        revert with 0, 'LP not already present'
    stor13[address(arg1)] = 0
    idx = 0
    while idx < sub_136e4b88.length:
        mem[0] = 12
        if sub_136e4b88[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_136e4b88.length:
            revert with 'NH{q', 50
        sub_136e4b88[idx] = 0
}

function setAMOMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    sub_92e51617Address = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xdc6663c7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    timelock_address = ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Invalid timelock'
}

function giveFXSBack(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    require ext_code.size(stor3)
    call stor3.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_92e51617Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_92e51617Address)
    call sub_92e51617Address.'ueg:' with:
         gas gas_remaining wei
        args sub_3e0551edAddress, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function giveFRAXBack(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    require ext_code.size(stor2)
    call stor2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_92e51617Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_92e51617Address)
    call sub_92e51617Address.'ueg:' with:
         gas gas_remaining wei
        args sub_9b41830bAddress, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function giveCollatBack(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    require ext_code.size(stor5)
    call stor5.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_92e51617Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_92e51617Address)
    call sub_92e51617Address.'ueg:' with:
         gas gas_remaining wei
        args sub_ff52a0b1Address, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function showTokenBalances() payable {
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    mem[96 len arg3.length] = arg3[all]
    mem[arg3.length + 96] = 0
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[96] = bool(ext_call.success)
    mem[128] = 64
    mem[160] = bool(ext_call.success)
    mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
    if ceil32(bool(ext_call.success)) > bool(ext_call.success):
        mem[bool(ext_call.success) + 192] = 0
    return memory
      from 96
       len ceil32(bool(ext_call.success)) + 96
}

function removeLiquidity(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    if not stor13[address(arg1)]:
        revert with 0, 'LP address not allowed'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, this.address, 2105300114
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function addTrackedLP(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    if ext_call.return_data[12 len 20] != sub_9b41830bAddress:
        staticcall arg1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != sub_3e0551edAddress:
        require ext_code.size(arg1)
        staticcall arg1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != sub_9b41830bAddress:
        if ext_call.return_data[12 len 20] != sub_3e0551edAddress:
            revert with 0, 'FRAX or FXS not in pair'
    if stor13[address(arg1)]:
        revert with 0, 'LP already exists'
    stor13[address(arg1)] = 1
    sub_136e4b88.length++
    sub_136e4b88[sub_136e4b88.length] = arg1
}

function addLiquidity(address arg1, address arg2, uint256 arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    if not stor13[address(arg1)]:
        revert with 0, 'LP address not allowed'
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg4)
    call arg4.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg3 and sub_ed163800 > -1 / arg3:
        revert with 'NH{q', 17
    if not stor16:
        revert with 'NH{q', 18
    if arg3 < arg3 * sub_ed163800 / stor16:
        revert with 'NH{q', 17
    if arg5 and sub_ed163800 > -1 / arg5:
        revert with 'NH{q', 17
    if not stor16:
        revert with 'NH{q', 18
    if arg5 < arg5 * sub_ed163800 / stor16:
        revert with 'NH{q', 17
    require ext_code.size(routerAddress)
    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
         gas gas_remaining wei
        args address(arg2), address(arg4), arg3, arg5, arg3 - (arg3 * sub_ed163800 / stor16), arg5 - (arg5 * sub_ed163800 / stor16), this.address, 2105300114
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function pair_reserve_ratio_E18(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if uint8(ext_call.return_data[0]) >= uint8(ext_call.return_data[0]):
        if ext_call.return_data[50 len 14] and 1 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
    else:
        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        if uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
            if ext_call.return_data[18 len 14] and 1 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
        else:
            if ext_call.return_data[50 len 14] and 1 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
    if address(ext_call.return_data[0]) == arg2:
        if ext_call.return_data[18 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not ext_call.return_data[50 len 14]:
            revert with 'NH{q', 18
        return (10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    if address(ext_call.return_data[0]) != arg2:
        revert with 0, 'Token not in pair'
    if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not ext_call.return_data[18 len 14]:
        revert with 'NH{q', 18
    return (10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}

function swapTokens(address arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 == arg3
    if msg.sender == timelock_address:
        mem[100] = routerAddress
        mem[132] = arg2
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args routerAddress, arg2
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = arg1
        mem[ceil32(return_data.size) + 160] = arg3
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg2
        mem[ceil32(return_data.size) + 228] = arg4
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 388
        t = ceil32(return_data.size) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = 2105300114
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, arg4, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), 2105300114
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _49 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
        _51 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307():
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _51
        require _49 + (32 * _51) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _51] = mem[ceil32(return_data.size) + _49 + 224 len 32 * _51]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _51
        mem[mem[64] + 64 len 32 * _51] = mem[(2 * ceil32(return_data.size)) + 224 len 32 * _51]
        return Array(len=_51, data=mem[mem[64] + 64 len 32 * _51])
    if owner != msg.sender:
        revert with 0, 'Not owner or timelock'
    mem[100] = routerAddress
    mem[132] = arg2
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = arg1
    mem[ceil32(return_data.size) + 160] = arg3
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 228] = arg4
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = 2105300114
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg2, arg4, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), 2105300114
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _50 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
    _52 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307():
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _52
    require _50 + (32 * _52) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _52] = mem[ceil32(return_data.size) + _50 + 224 len 32 * _52]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _52
    mem[mem[64] + 64 len 32 * _52] = mem[(2 * ceil32(return_data.size)) + 224 len 32 * _52]
    return Array(len=_52, data=mem[mem[64] + 64 len 32 * _52])
}

function sub_e3cc6fe3(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require calldata.size > cd[100] + 35
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 100).length) + 97 < 96 or ceil32(32 * ('cd', 100).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    s = cd[100] + 36
    t = 128
    idx = 0
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if msg.sender == timelock_address:
        mem[ceil32(32 * ('cd', 100).length) + 101] = routerAddress
        mem[ceil32(32 * ('cd', 100).length) + 133] = cd[36]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args routerAddress, cd[36]
        mem[ceil32(32 * ('cd', 100).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 101] = cd[36]
        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 133] = cd[68]
        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = 160
        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = ('cd', 100).length
        idx = 0
        s = ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 293
        t = 128
        while idx < ('cd', 100).length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 197] = this.address
        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = 2105300114
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(this.address), 2105300114
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        _80 = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128
        _82 = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
        if mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307():
            revert with 'NH{q', 65
        mem[64] = ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98
        mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] = _82
        require _80 + (32 * _82) + 32 <= return_data.size
        mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len 32 * _82] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _80 + 129 len 32 * _82]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _82
        mem[mem[64] + 64 len 32 * _82] = mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len 32 * _82]
        return Array(len=_82, data=mem[mem[64] + 64 len 32 * _82])
    if owner != msg.sender:
        revert with 0, 'Not owner or timelock'
    mem[ceil32(32 * ('cd', 100).length) + 101] = routerAddress
    mem[ceil32(32 * ('cd', 100).length) + 133] = cd[36]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, cd[36]
    mem[ceil32(32 * ('cd', 100).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 101] = cd[36]
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 133] = cd[68]
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = 160
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = ('cd', 100).length
    idx = 0
    s = ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 293
    t = 128
    while idx < ('cd', 100).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 197] = this.address
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = 2105300114
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(this.address), 2105300114
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97
    require return_data.size >= 32
    _81 = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128
    _83 = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    if mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] = _83
    require _81 + (32 * _83) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len 32 * _83] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _81 + 129 len 32 * _83]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _83
    mem[mem[64] + 64 len 32 * _83] = mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len 32 * _83]
    return Array(len=_83, data=mem[mem[64] + 64 len 32 * _83])
}

function lpTokenInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if sub_9b41830bAddress == address(ext_call.return_data[0]):
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_9b41830bAddress == ext_call.return_data[12 len 20]:
            if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                    return 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 
                           10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           0
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                    return 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 
                           10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           1
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            return 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 
                   10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                   10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                   2
        if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_3e0551edAddress == ext_call.return_data[12 len 20]:
            if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                    return 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                           10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           0
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                    return 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                           10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           1
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            return 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                   10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                   10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                   2
        if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ff52a0b1Address != ext_call.return_data[12 len 20]:
            if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                    return 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                           10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           0
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                    return 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                           10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           1
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            return 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                   10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                   10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                   2
        if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                return 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                       10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                       10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                       0
        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                return 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
                       10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                       10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                       1
        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'Invalid pair'
        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
            revert with 0, 'Invalid pair'
        return 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
               10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
               10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
               2
    if sub_3e0551edAddress == address(ext_call.return_data[0]):
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_9b41830bAddress == ext_call.return_data[12 len 20]:
            if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    return 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 
                           10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           0
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    return 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 
                           10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           1
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            return 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 
                   10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                   10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                   2
        if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_3e0551edAddress == ext_call.return_data[12 len 20]:
            if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                    return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                           10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           0
            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                    return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                           10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           1
            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                   10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                   10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                   2
        if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ff52a0b1Address != ext_call.return_data[12 len 20]:
            if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                           10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           0
            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                    return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                           10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           1
            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                   10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                   10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                   2
        if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                       10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                       10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                       0
        if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                       10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                       10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                       1
        if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
            revert with 0, 'Invalid pair'
        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'Invalid pair'
        return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
               10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
               10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
               2
    if sub_ff52a0b1Address != address(ext_call.return_data[0]):
        if sub_9b41830bAddress == ext_call.return_data[12 len 20]:
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                    return 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 
                           10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           0
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                    return 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 
                           10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           1
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            return 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 
                   10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                   10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                   2
        if sub_3e0551edAddress == ext_call.return_data[12 len 20]:
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                    return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                           10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           0
            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                    return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                           10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           1
            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                   10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                   10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                   2
        if sub_ff52a0b1Address != ext_call.return_data[12 len 20]:
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                    return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                           10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           0
            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                    return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                           10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                           10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                           1
            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                   10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                   10^18 * call.data[calldata.size + 64] / ext_call.return_data[0],
                   2
    else:
        if sub_9b41830bAddress == ext_call.return_data[12 len 20]:
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                    return 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 
                           10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                           10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                           0
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                    return 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 
                           10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                           10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                           1
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            return 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0], 
                   10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                   10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                   2
        if sub_3e0551edAddress == ext_call.return_data[12 len 20]:
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                    return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                           10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                           10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                           0
            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                    return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                           10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                           10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                           1
            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                   10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                   10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                   2
        if sub_ff52a0b1Address != ext_call.return_data[12 len 20]:
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                    return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                           10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                           10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                           0
            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                    return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                           10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                           10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                           1
            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                revert with 0, 'Invalid pair'
            return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                   10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                   10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0],
                   2
    ('eq', ('stor', ('name', 'sub_ff52a0b1Address', 8)), ('ext_call.return_data', 12, 20))
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
            return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                   10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                   10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                   0
    if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
            return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
                   10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
                   10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
                   1
    if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
        revert with 0, 'Invalid pair'
    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
        revert with 0, 'Invalid pair'
    return 10^18 * call.data[calldata.size] / ext_call.return_data[0], 
           10^18 * call.data[calldata.size + 32] / ext_call.return_data[0],
           10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0],
           2
}

function showAllocations() payable {
    mem[96 len 544] = call.data[calldata.size len 544]
    require ext_code.size(sub_92e51617Address)
    staticcall sub_92e51617Address.0xda92c9e6 with:
            gas gas_remaining wei
    mem[640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 644] = sub_3e0551edAddress
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPrice(address rg1) with:
            gas gas_remaining wei
           args sub_3e0551edAddress
    mem[ceil32(return_data.size) + 640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 640] = 4
    mem[64] = (2 * ceil32(return_data.size)) + 800
    mem[(2 * ceil32(return_data.size)) + 672 len 128] = call.data[calldata.size len 128]
    idx = 0
    while idx < sub_136e4b88.length:
        mem[0] = sub_136e4b88[idx]
        mem[32] = 13
        if stor13[stor12[idx]]:
            _3319 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3319 len 128] = call.data[calldata.size len 128]
            _3321 = mem[64]
            mem[mem[64] + 32 len 96] = call.data[calldata.size len 96]
            require ext_code.size(sub_136e4b88[idx])
            staticcall sub_136e4b88[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(sub_136e4b88[idx])
            staticcall sub_136e4b88[idx].token0() with:
                    gas gas_remaining wei
            mem[mem[64] + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_136e4b88[idx])
            staticcall sub_136e4b88[idx].token1() with:
                    gas gas_remaining wei
            mem[mem[64] + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + (4 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if sub_9b41830bAddress == address(ext_call.return_data[0]):
                if 0 >= mem[_3321]:
                    revert with 'NH{q', 50
                mem[_3321 + 32] = Mask(112, 0, ext_call.return_data[0])
                if sub_9b41830bAddress == ext_call.return_data[12 len 20]:
                    if 0 >= mem[_3321]:
                        revert with 'NH{q', 50
                    mem[_3321 + 32] = Mask(112, 0, ext_call.return_data[32])
                    require ext_code.size(sub_136e4b88[idx])
                    staticcall sub_136e4b88[idx].0x18160ddd with:
                            gas gas_remaining wei
                    mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    if 0 >= mem[_3321]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    mem[_3319] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                    require ext_code.size(sub_136e4b88[idx])
                    staticcall sub_136e4b88[idx].0x18160ddd with:
                            gas gas_remaining wei
                    mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    if 1 >= mem[_3321]:
                        revert with 'NH{q', 50
                    if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    mem[_3319 + 32] = 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]
                    require ext_code.size(sub_136e4b88[idx])
                    staticcall sub_136e4b88[idx].0x18160ddd with:
                            gas gas_remaining wei
                    mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    if 2 >= mem[_3321]:
                        revert with 'NH{q', 50
                    if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    mem[_3319 + 64] = 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                revert with 0, 'Invalid pair'
                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                revert with 0, 'Invalid pair'
                            mem[_3319 + 96] = 2
                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                revert with 'NH{q', 50
                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 'NH{q', 17
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                revert with 'NH{q', 50
                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 'NH{q', 17
                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                revert with 'NH{q', 50
                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 'NH{q', 17
                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                revert with 'NH{q', 50
                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 'NH{q', 17
                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                        else:
                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    revert with 0, 'Invalid pair'
                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                    revert with 0, 'Invalid pair'
                                mem[_3319 + 96] = 2
                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                            else:
                                mem[_3319 + 96] = 1
                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                    revert with 'NH{q', 17
                                if not stor16:
                                    revert with 'NH{q', 18
                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                    else:
                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                            mem[_3319 + 96] = 0
                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                revert with 'NH{q', 50
                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 'NH{q', 17
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                revert with 'NH{q', 50
                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 'NH{q', 17
                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                revert with 'NH{q', 50
                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 'NH{q', 17
                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                revert with 'NH{q', 50
                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 'NH{q', 17
                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                        else:
                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    revert with 0, 'Invalid pair'
                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                    revert with 0, 'Invalid pair'
                                mem[_3319 + 96] = 2
                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                            else:
                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    mem[_3319 + 96] = 2
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    mem[_3319 + 96] = 1
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                        revert with 'NH{q', 17
                                    if not stor16:
                                        revert with 'NH{q', 18
                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                else:
                    if sub_3e0551edAddress == ext_call.return_data[12 len 20]:
                        if 1 >= mem[_3321]:
                            revert with 'NH{q', 50
                        mem[_3321 + 64] = Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(sub_136e4b88[idx])
                        staticcall sub_136e4b88[idx].0x18160ddd with:
                                gas gas_remaining wei
                        mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        if 0 >= mem[_3321]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        mem[_3319] = 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                        require ext_code.size(sub_136e4b88[idx])
                        staticcall sub_136e4b88[idx].0x18160ddd with:
                                gas gas_remaining wei
                        mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        if 1 >= mem[_3321]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        mem[_3319 + 32] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                        require ext_code.size(sub_136e4b88[idx])
                        staticcall sub_136e4b88[idx].0x18160ddd with:
                                gas gas_remaining wei
                        mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        if 2 >= mem[_3321]:
                            revert with 'NH{q', 50
                        if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        mem[_3319 + 64] = 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]
                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                    revert with 0, 'Invalid pair'
                                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    revert with 0, 'Invalid pair'
                                mem[_3319 + 96] = 2
                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                            else:
                                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    mem[_3319 + 96] = 2
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    mem[_3319 + 96] = 1
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                        revert with 'NH{q', 17
                                    if not stor16:
                                        revert with 'NH{q', 18
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                        else:
                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                mem[_3319 + 96] = 0
                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                            else:
                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    mem[_3319 + 96] = 2
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        mem[_3319 + 96] = 1
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                            revert with 'NH{q', 17
                                        if not stor16:
                                            revert with 'NH{q', 18
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                    else:
                        if sub_ff52a0b1Address != ext_call.return_data[12 len 20]:
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 0 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319] = 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 1 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319 + 32] = 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 2 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319 + 64] = 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]
                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    mem[_3319 + 96] = 2
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        mem[_3319 + 96] = 1
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                            revert with 'NH{q', 17
                                        if not stor16:
                                            revert with 'NH{q', 18
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                            else:
                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                    mem[_3319 + 96] = 0
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            mem[_3319 + 96] = 1
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                revert with 'NH{q', 17
                                            if not stor16:
                                                revert with 'NH{q', 18
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                        else:
                            if 2 >= mem[_3321]:
                                revert with 'NH{q', 50
                            mem[_3321 + 96] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 0 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319] = 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 1 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319 + 32] = 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 2 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319 + 64] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    mem[_3319 + 96] = 2
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        mem[_3319 + 96] = 1
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                            revert with 'NH{q', 17
                                        if not stor16:
                                            revert with 'NH{q', 18
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                            else:
                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                    mem[_3319 + 96] = 0
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            mem[_3319 + 96] = 1
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                revert with 'NH{q', 17
                                            if not stor16:
                                                revert with 'NH{q', 18
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
            else:
                if sub_3e0551edAddress == address(ext_call.return_data[0]):
                    if 1 >= mem[_3321]:
                        revert with 'NH{q', 50
                    mem[_3321 + 64] = Mask(112, 0, ext_call.return_data[0])
                    if sub_9b41830bAddress == ext_call.return_data[12 len 20]:
                        if 0 >= mem[_3321]:
                            revert with 'NH{q', 50
                        mem[_3321 + 32] = Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(sub_136e4b88[idx])
                        staticcall sub_136e4b88[idx].0x18160ddd with:
                                gas gas_remaining wei
                        mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        if 0 >= mem[_3321]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        mem[_3319] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                        require ext_code.size(sub_136e4b88[idx])
                        staticcall sub_136e4b88[idx].0x18160ddd with:
                                gas gas_remaining wei
                        mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        if 1 >= mem[_3321]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        mem[_3319 + 32] = 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                        require ext_code.size(sub_136e4b88[idx])
                        staticcall sub_136e4b88[idx].0x18160ddd with:
                                gas gas_remaining wei
                        mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        if 2 >= mem[_3321]:
                            revert with 'NH{q', 50
                        if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        mem[_3319 + 64] = 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    revert with 0, 'Invalid pair'
                                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                    revert with 0, 'Invalid pair'
                                mem[_3319 + 96] = 2
                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                            else:
                                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    mem[_3319 + 96] = 2
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    mem[_3319 + 96] = 1
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                        revert with 'NH{q', 17
                                    if not stor16:
                                        revert with 'NH{q', 18
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                        else:
                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                mem[_3319 + 96] = 0
                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                    revert with 'NH{q', 50
                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                            else:
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    mem[_3319 + 96] = 2
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        mem[_3319 + 96] = 1
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                            revert with 'NH{q', 17
                                        if not stor16:
                                            revert with 'NH{q', 18
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                    else:
                        if sub_3e0551edAddress == ext_call.return_data[12 len 20]:
                            if 1 >= mem[_3321]:
                                revert with 'NH{q', 50
                            mem[_3321 + 64] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 0 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319] = 10^18 * call.data[calldata.size] / ext_call.return_data[0]
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 1 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319 + 32] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 2 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319 + 64] = 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]
                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                    if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    mem[_3319 + 96] = 2
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        mem[_3319 + 96] = 1
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                            revert with 'NH{q', 17
                                        if not stor16:
                                            revert with 'NH{q', 18
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                            else:
                                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    mem[_3319 + 96] = 0
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                        if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            mem[_3319 + 96] = 1
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                revert with 'NH{q', 17
                                            if not stor16:
                                                revert with 'NH{q', 18
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                        else:
                            if sub_ff52a0b1Address != ext_call.return_data[12 len 20]:
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x18160ddd with:
                                        gas gas_remaining wei
                                mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 0 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                mem[_3319] = 10^18 * call.data[calldata.size] / ext_call.return_data[0]
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x18160ddd with:
                                        gas gas_remaining wei
                                mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 1 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                mem[_3319 + 32] = 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x18160ddd with:
                                        gas gas_remaining wei
                                mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 2 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                mem[_3319 + 64] = 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]
                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                        if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            mem[_3319 + 96] = 1
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                revert with 'NH{q', 17
                                            if not stor16:
                                                revert with 'NH{q', 18
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                                else:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        mem[_3319 + 96] = 0
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                mem[_3319 + 96] = 2
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            else:
                                                mem[_3319 + 96] = 1
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                    revert with 'NH{q', 17
                                                if not stor16:
                                                    revert with 'NH{q', 18
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                            else:
                                if 2 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                mem[_3321 + 96] = Mask(112, 0, ext_call.return_data[32])
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x18160ddd with:
                                        gas gas_remaining wei
                                mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 0 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                mem[_3319] = 10^18 * call.data[calldata.size] / ext_call.return_data[0]
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x18160ddd with:
                                        gas gas_remaining wei
                                mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 1 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                mem[_3319 + 32] = 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x18160ddd with:
                                        gas gas_remaining wei
                                mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 2 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                mem[_3319 + 64] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                        if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            mem[_3319 + 96] = 1
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                revert with 'NH{q', 17
                                            if not stor16:
                                                revert with 'NH{q', 18
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                                else:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        mem[_3319 + 96] = 0
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                mem[_3319 + 96] = 2
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            else:
                                                mem[_3319 + 96] = 1
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                    revert with 'NH{q', 17
                                                if not stor16:
                                                    revert with 'NH{q', 18
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                else:
                    if sub_ff52a0b1Address != address(ext_call.return_data[0]):
                        if sub_9b41830bAddress == ext_call.return_data[12 len 20]:
                            if 0 >= mem[_3321]:
                                revert with 'NH{q', 50
                            mem[_3321 + 32] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 0 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 1 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319 + 32] = 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 2 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319 + 64] = 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]
                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    mem[_3319 + 96] = 2
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        mem[_3319 + 96] = 1
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                            revert with 'NH{q', 17
                                        if not stor16:
                                            revert with 'NH{q', 18
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                            else:
                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                    mem[_3319 + 96] = 0
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            mem[_3319 + 96] = 1
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                revert with 'NH{q', 17
                                            if not stor16:
                                                revert with 'NH{q', 18
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                        else:
                            if sub_3e0551edAddress == ext_call.return_data[12 len 20]:
                                if 1 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                mem[_3321 + 64] = Mask(112, 0, ext_call.return_data[32])
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x18160ddd with:
                                        gas gas_remaining wei
                                mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 0 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                mem[_3319] = 10^18 * call.data[calldata.size] / ext_call.return_data[0]
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x18160ddd with:
                                        gas gas_remaining wei
                                mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 1 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                mem[_3319 + 32] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x18160ddd with:
                                        gas gas_remaining wei
                                mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 2 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                mem[_3319 + 64] = 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]
                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                        if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            mem[_3319 + 96] = 1
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                revert with 'NH{q', 17
                                            if not stor16:
                                                revert with 'NH{q', 18
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                                else:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        mem[_3319 + 96] = 0
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                mem[_3319 + 96] = 2
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            else:
                                                mem[_3319 + 96] = 1
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                    revert with 'NH{q', 17
                                                if not stor16:
                                                    revert with 'NH{q', 18
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                            else:
                                if sub_ff52a0b1Address != ext_call.return_data[12 len 20]:
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 0 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    mem[_3319] = 10^18 * call.data[calldata.size] / ext_call.return_data[0]
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 1 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    mem[_3319 + 32] = 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 2 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    if call.data[calldata.size + 64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    mem[_3319 + 64] = 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]
                                    if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                mem[_3319 + 96] = 2
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            else:
                                                mem[_3319 + 96] = 1
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                    revert with 'NH{q', 17
                                                if not stor16:
                                                    revert with 'NH{q', 18
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                                    else:
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            mem[_3319 + 96] = 0
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                mem[_3319 + 96] = 2
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            else:
                                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                        revert with 0, 'Invalid pair'
                                                    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                        revert with 0, 'Invalid pair'
                                                    mem[_3319 + 96] = 2
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                    require ext_code.size(sub_136e4b88[idx])
                                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                    require return_data.size >= 32
                                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 'NH{q', 17
                                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                else:
                                                    mem[_3319 + 96] = 1
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                    require ext_code.size(sub_136e4b88[idx])
                                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                    require return_data.size >= 32
                                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 64] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * call.data[calldata.size + 64] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not stor16:
                                                        revert with 'NH{q', 18
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 'NH{q', 17
                                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                                else:
                                    if 2 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    mem[_3321 + 96] = Mask(112, 0, ext_call.return_data[32])
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 0 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    mem[_3319] = 10^18 * call.data[calldata.size] / ext_call.return_data[0]
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 1 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    mem[_3319 + 32] = 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 2 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    mem[_3319 + 64] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                    if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                mem[_3319 + 96] = 2
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            else:
                                                mem[_3319 + 96] = 1
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                    revert with 'NH{q', 17
                                                if not stor16:
                                                    revert with 'NH{q', 18
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                                    else:
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            mem[_3319 + 96] = 0
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                mem[_3319 + 96] = 2
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            else:
                                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                        revert with 0, 'Invalid pair'
                                                    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                        revert with 0, 'Invalid pair'
                                                    mem[_3319 + 96] = 2
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                    require ext_code.size(sub_136e4b88[idx])
                                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                    require return_data.size >= 32
                                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 'NH{q', 17
                                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                else:
                                                    mem[_3319 + 96] = 1
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                    require ext_code.size(sub_136e4b88[idx])
                                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                    require return_data.size >= 32
                                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not stor16:
                                                        revert with 'NH{q', 18
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 'NH{q', 17
                                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                    else:
                        if 2 >= mem[_3321]:
                            revert with 'NH{q', 50
                        mem[_3321 + 96] = Mask(112, 0, ext_call.return_data[0])
                        if sub_9b41830bAddress == ext_call.return_data[12 len 20]:
                            if 0 >= mem[_3321]:
                                revert with 'NH{q', 50
                            mem[_3321 + 32] = Mask(112, 0, ext_call.return_data[32])
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 0 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 1 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319 + 32] = 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]
                            require ext_code.size(sub_136e4b88[idx])
                            staticcall sub_136e4b88[idx].0x18160ddd with:
                                    gas gas_remaining wei
                            mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            if 2 >= mem[_3321]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            mem[_3319 + 64] = 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 0, 'Invalid pair'
                                    mem[_3319 + 96] = 2
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        mem[_3319 + 96] = 1
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                            revert with 'NH{q', 17
                                        if not stor16:
                                            revert with 'NH{q', 18
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                            else:
                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                    mem[_3319 + 96] = 0
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                        revert with 'NH{q', 50
                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                else:
                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            mem[_3319 + 96] = 1
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                revert with 'NH{q', 17
                                            if not stor16:
                                                revert with 'NH{q', 18
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                        else:
                            if sub_3e0551edAddress == ext_call.return_data[12 len 20]:
                                if 1 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                mem[_3321 + 64] = Mask(112, 0, ext_call.return_data[32])
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x18160ddd with:
                                        gas gas_remaining wei
                                mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 0 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                mem[_3319] = 10^18 * call.data[calldata.size] / ext_call.return_data[0]
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x18160ddd with:
                                        gas gas_remaining wei
                                mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 1 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                mem[_3319 + 32] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                require ext_code.size(sub_136e4b88[idx])
                                staticcall sub_136e4b88[idx].0x18160ddd with:
                                        gas gas_remaining wei
                                mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                if 2 >= mem[_3321]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                mem[_3319 + 64] = 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                        if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 0, 'Invalid pair'
                                        mem[_3319 + 96] = 2
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            mem[_3319 + 96] = 1
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                revert with 'NH{q', 17
                                            if not stor16:
                                                revert with 'NH{q', 18
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                                else:
                                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        mem[_3319 + 96] = 0
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                        require ext_code.size(sub_136e4b88[idx])
                                        staticcall sub_136e4b88[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                            revert with 'NH{q', 50
                                        if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                            revert with 'NH{q', 17
                                        mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                    else:
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                mem[_3319 + 96] = 2
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            else:
                                                mem[_3319 + 96] = 1
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                    revert with 'NH{q', 17
                                                if not stor16:
                                                    revert with 'NH{q', 18
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                            else:
                                if sub_ff52a0b1Address != ext_call.return_data[12 len 20]:
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 0 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    mem[_3319] = 10^18 * call.data[calldata.size] / ext_call.return_data[0]
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 1 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    mem[_3319 + 32] = 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 2 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    mem[_3319 + 64] = 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                    if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                mem[_3319 + 96] = 2
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            else:
                                                mem[_3319 + 96] = 1
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                    revert with 'NH{q', 17
                                                if not stor16:
                                                    revert with 'NH{q', 18
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                                    else:
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            mem[_3319 + 96] = 0
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                mem[_3319 + 96] = 2
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            else:
                                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                        revert with 0, 'Invalid pair'
                                                    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                        revert with 0, 'Invalid pair'
                                                    mem[_3319 + 96] = 2
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                    require ext_code.size(sub_136e4b88[idx])
                                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                    require return_data.size >= 32
                                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 'NH{q', 17
                                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                else:
                                                    mem[_3319 + 96] = 1
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                    require ext_code.size(sub_136e4b88[idx])
                                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                    require return_data.size >= 32
                                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not stor16:
                                                        revert with 'NH{q', 18
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 'NH{q', 17
                                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                                else:
                                    if 2 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    mem[_3321 + 96] = Mask(112, 0, ext_call.return_data[32])
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[_3321 + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (6 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 0 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    if call.data[calldata.size] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    mem[_3319] = 10^18 * call.data[calldata.size] / ext_call.return_data[0]
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[_3321 + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (7 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 1 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    if call.data[calldata.size + 32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    mem[_3319 + 32] = 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]
                                    require ext_code.size(sub_136e4b88[idx])
                                    staticcall sub_136e4b88[idx].0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[_3321 + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _3321 + (8 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    if 2 >= mem[_3321]:
                                        revert with 'NH{q', 50
                                    if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    mem[_3319 + 64] = 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                    if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                        if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                            if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 0, 'Invalid pair'
                                            mem[_3319 + 96] = 2
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                mem[_3319 + 96] = 2
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            else:
                                                mem[_3319 + 96] = 1
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                    revert with 'NH{q', 17
                                                if not stor16:
                                                    revert with 'NH{q', 18
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
                                    else:
                                        if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                            mem[_3319 + 96] = 0
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                            require ext_code.size(sub_136e4b88[idx])
                                            staticcall sub_136e4b88[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                            require return_data.size >= 32
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                revert with 'NH{q', 50
                                            if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                revert with 'NH{q', 17
                                            mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                        else:
                                            if 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 0, 'Invalid pair'
                                                mem[_3319 + 96] = 2
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                require ext_code.size(sub_136e4b88[idx])
                                                staticcall sub_136e4b88[idx].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                require return_data.size >= 32
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                    revert with 'NH{q', 50
                                                if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                    revert with 'NH{q', 17
                                                mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                            else:
                                                if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                    if not 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                        revert with 0, 'Invalid pair'
                                                    if not 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                        revert with 0, 'Invalid pair'
                                                    mem[_3319 + 96] = 2
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                    require ext_code.size(sub_136e4b88[idx])
                                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                    require return_data.size >= 32
                                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 'NH{q', 17
                                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                else:
                                                    mem[_3319 + 96] = 1
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 132] = this.address
                                                    require ext_code.size(sub_136e4b88[idx])
                                                    staticcall sub_136e4b88[idx].0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[_3321 + (8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _3321 + (10 * ceil32(return_data.size)) + 128
                                                    require return_data.size >= 32
                                                    if 10^18 * call.data[calldata.size] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if 0 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 672] > !(10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 672] + (10^18 * call.data[calldata.size] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 704] > !(10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 704] + (10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 736] > !(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 736] + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not stor16:
                                                        revert with 'NH{q', 18
                                                    if 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 'NH{q', 17
                                                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                                                        revert with 'NH{q', 50
                                                    if mem[(2 * ceil32(return_data.size)) + 768] > !(2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16):
                                                        revert with 'NH{q', 17
                                                    mem[(2 * ceil32(return_data.size)) + 768] = mem[(2 * ceil32(return_data.size)) + 768] + (2 * 10^18 * call.data[calldata.size + 32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / stor16)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3317 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[96] = mem[_3317]
    if not mem[(2 * ceil32(return_data.size)) + 640]:
        revert with 'NH{q', 50
    mem[128] = mem[(2 * ceil32(return_data.size)) + 672]
    if mem[96] > !mem[(2 * ceil32(return_data.size)) + 672]:
        revert with 'NH{q', 17
    mem[160] = mem[96] + mem[(2 * ceil32(return_data.size)) + 672]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3331 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _3333 = mem[_3331]
    mem[192] = mem[_3331]
    if _3333 and ext_call.return_data[0] > -1 / _3333:
        revert with 'NH{q', 17
    if not stor16:
        revert with 'NH{q', 18
    mem[224] = _3333 * ext_call.return_data[0] / stor16
    if 1 >= mem[(2 * ceil32(return_data.size)) + 640]:
        revert with 'NH{q', 50
    mem[256] = mem[(2 * ceil32(return_data.size)) + 704]
    if mem[(2 * ceil32(return_data.size)) + 704] and ext_call.return_data[0] > -1 / mem[(2 * ceil32(return_data.size)) + 704]:
        revert with 'NH{q', 17
    if not stor16:
        revert with 'NH{q', 18
    mem[288] = mem[(2 * ceil32(return_data.size)) + 704] * ext_call.return_data[0] / stor16
    if mem[192] > !mem[(2 * ceil32(return_data.size)) + 704]:
        revert with 'NH{q', 17
    mem[320] = mem[192] + mem[(2 * ceil32(return_data.size)) + 704]
    if _3333 * ext_call.return_data[0] / stor16 > !(mem[(2 * ceil32(return_data.size)) + 704] * ext_call.return_data[0] / stor16):
        revert with 'NH{q', 17
    mem[352] = (_3333 * ext_call.return_data[0] / stor16) + (mem[(2 * ceil32(return_data.size)) + 704] * ext_call.return_data[0] / stor16)
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3355 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[384] = mem[_3355]
    if not missing_decimals:
        if mem[384] and 1 > -1 / mem[384]:
            revert with 'NH{q', 17
        mem[416] = mem[384]
        if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
            revert with 'NH{q', 50
        mem[448] = mem[(2 * ceil32(return_data.size)) + 736]
        if not missing_decimals:
            if mem[(2 * ceil32(return_data.size)) + 736] and 1 > -1 / mem[(2 * ceil32(return_data.size)) + 736]:
                revert with 'NH{q', 17
            mem[480] = mem[(2 * ceil32(return_data.size)) + 736]
            if mem[384] > !mem[(2 * ceil32(return_data.size)) + 736]:
                revert with 'NH{q', 17
            mem[512] = mem[384] + mem[(2 * ceil32(return_data.size)) + 736]
            if mem[384] > !mem[(2 * ceil32(return_data.size)) + 736]:
                revert with 'NH{q', 17
            mem[544] = mem[384] + mem[(2 * ceil32(return_data.size)) + 736]
            if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                revert with 'NH{q', 50
            mem[576] = mem[(2 * ceil32(return_data.size)) + 768]
            if mem[96] > !(_3333 * ext_call.return_data[0] / stor16):
                revert with 'NH{q', 17
            if mem[96] + (_3333 * ext_call.return_data[0] / stor16) > !mem[384]:
                revert with 'NH{q', 17
            if mem[96] + (_3333 * ext_call.return_data[0] / stor16) + mem[384] > !mem[384]:
                revert with 'NH{q', 17
            mem[608] = mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (2 * mem[384])
            mem[mem[64] len 544] = mem[96 len 128], _3333 * ext_call.return_data[0] / stor16, mem[256 len 160], mem[384], mem[(2 * ceil32(return_data.size)) + 736], mem[(2 * ceil32(return_data.size)) + 736], mem[384] + mem[(2 * ceil32(return_data.size)) + 736], mem[384] + mem[(2 * ceil32(return_data.size)) + 736], mem[(2 * ceil32(return_data.size)) + 768], mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (2 * mem[384])
        else:
            if bool(bool(missing_decimals < 78)) or bool(bool(missing_decimals < 32)):
                if mem[(2 * ceil32(return_data.size)) + 736] and 10^missing_decimals > -1 / mem[(2 * ceil32(return_data.size)) + 736]:
                    revert with 'NH{q', 17
                mem[480] = mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals
                if mem[384] > !mem[(2 * ceil32(return_data.size)) + 736]:
                    revert with 'NH{q', 17
                mem[512] = mem[384] + mem[(2 * ceil32(return_data.size)) + 736]
                if mem[384] > !(mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals):
                    revert with 'NH{q', 17
                mem[544] = mem[384] + (mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals)
                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                    revert with 'NH{q', 50
                mem[576] = mem[(2 * ceil32(return_data.size)) + 768]
                if mem[96] > !(_3333 * ext_call.return_data[0] / stor16):
                    revert with 'NH{q', 17
                if mem[96] + (_3333 * ext_call.return_data[0] / stor16) > !mem[384]:
                    revert with 'NH{q', 17
                if mem[96] + (_3333 * ext_call.return_data[0] / stor16) + mem[384] > !mem[384]:
                    revert with 'NH{q', 17
                mem[608] = mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (2 * mem[384])
                mem[mem[64] len 544] = mem[96 len 128], _3333 * ext_call.return_data[0] / stor16, mem[256 len 160], mem[384], mem[(2 * ceil32(return_data.size)) + 736], mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals, mem[384] + mem[(2 * ceil32(return_data.size)) + 736], mem[384] + (mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals), mem[(2 * ceil32(return_data.size)) + 768], mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (2 * mem[384])
            else:
                s = 10
                t = 1
                idx = missing_decimals
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if mem[(2 * ceil32(return_data.size)) + 736] and s * t > -1 / mem[(2 * ceil32(return_data.size)) + 736]:
                    revert with 'NH{q', 17
                mem[480] = mem[(2 * ceil32(return_data.size)) + 736] * s * t
                if mem[384] > !mem[(2 * ceil32(return_data.size)) + 736]:
                    revert with 'NH{q', 17
                mem[512] = mem[384] + mem[(2 * ceil32(return_data.size)) + 736]
                if mem[384] > !(mem[(2 * ceil32(return_data.size)) + 736] * s * t):
                    revert with 'NH{q', 17
                mem[544] = mem[384] + (mem[(2 * ceil32(return_data.size)) + 736] * s * t)
                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                    revert with 'NH{q', 50
                mem[576] = mem[(2 * ceil32(return_data.size)) + 768]
                if mem[96] > !(_3333 * ext_call.return_data[0] / stor16):
                    revert with 'NH{q', 17
                if mem[96] + (_3333 * ext_call.return_data[0] / stor16) > !mem[384]:
                    revert with 'NH{q', 17
                if mem[96] + (_3333 * ext_call.return_data[0] / stor16) + mem[384] > !mem[384]:
                    revert with 'NH{q', 17
                mem[608] = mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (2 * mem[384])
                mem[mem[64] len 544] = mem[96 len 128], _3333 * ext_call.return_data[0] / stor16, mem[256 len 160], mem[384], mem[(2 * ceil32(return_data.size)) + 736], mem[(2 * ceil32(return_data.size)) + 736] * s * t, mem[384] + mem[(2 * ceil32(return_data.size)) + 736], mem[384] + (mem[(2 * ceil32(return_data.size)) + 736] * s * t), mem[(2 * ceil32(return_data.size)) + 768], mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (2 * mem[384])
    else:
        if bool(bool(missing_decimals < 78)) or bool(bool(missing_decimals < 32)):
            if mem[384] and 10^missing_decimals > -1 / mem[384]:
                revert with 'NH{q', 17
            mem[416] = mem[384] * 10^missing_decimals
            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                revert with 'NH{q', 50
            mem[448] = mem[(2 * ceil32(return_data.size)) + 736]
            if not missing_decimals:
                if mem[(2 * ceil32(return_data.size)) + 736] and 1 > -1 / mem[(2 * ceil32(return_data.size)) + 736]:
                    revert with 'NH{q', 17
                mem[480] = mem[(2 * ceil32(return_data.size)) + 736]
                if mem[384] > !mem[(2 * ceil32(return_data.size)) + 736]:
                    revert with 'NH{q', 17
                mem[512] = mem[384] + mem[(2 * ceil32(return_data.size)) + 736]
                if mem[384] * 10^missing_decimals > !mem[(2 * ceil32(return_data.size)) + 736]:
                    revert with 'NH{q', 17
                mem[544] = (mem[384] * 10^missing_decimals) + mem[(2 * ceil32(return_data.size)) + 736]
                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                    revert with 'NH{q', 50
                mem[576] = mem[(2 * ceil32(return_data.size)) + 768]
                if mem[96] > !(_3333 * ext_call.return_data[0] / stor16):
                    revert with 'NH{q', 17
                if mem[96] + (_3333 * ext_call.return_data[0] / stor16) > !(mem[384] * 10^missing_decimals):
                    revert with 'NH{q', 17
                if mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * 10^missing_decimals) > !mem[384]:
                    revert with 'NH{q', 17
                mem[608] = mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * 10^missing_decimals) + mem[384]
                mem[mem[64] len 544] = mem[96 len 128], _3333 * ext_call.return_data[0] / stor16, mem[256 len 160], mem[384] * 10^missing_decimals, mem[(2 * ceil32(return_data.size)) + 736], mem[(2 * ceil32(return_data.size)) + 736], mem[384] + mem[(2 * ceil32(return_data.size)) + 736], (mem[384] * 10^missing_decimals) + mem[(2 * ceil32(return_data.size)) + 736], mem[(2 * ceil32(return_data.size)) + 768], mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * 10^missing_decimals) + mem[384]
            else:
                if bool(bool(missing_decimals < 78)) or bool(bool(missing_decimals < 32)):
                    if mem[(2 * ceil32(return_data.size)) + 736] and 10^missing_decimals > -1 / mem[(2 * ceil32(return_data.size)) + 736]:
                        revert with 'NH{q', 17
                    mem[480] = mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals
                    if mem[384] > !mem[(2 * ceil32(return_data.size)) + 736]:
                        revert with 'NH{q', 17
                    mem[512] = mem[384] + mem[(2 * ceil32(return_data.size)) + 736]
                    if mem[384] * 10^missing_decimals > !(mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals):
                        revert with 'NH{q', 17
                    mem[544] = (mem[384] * 10^missing_decimals) + (mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals)
                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                        revert with 'NH{q', 50
                    mem[576] = mem[(2 * ceil32(return_data.size)) + 768]
                    if mem[96] > !(_3333 * ext_call.return_data[0] / stor16):
                        revert with 'NH{q', 17
                    if mem[96] + (_3333 * ext_call.return_data[0] / stor16) > !(mem[384] * 10^missing_decimals):
                        revert with 'NH{q', 17
                    if mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * 10^missing_decimals) > !mem[384]:
                        revert with 'NH{q', 17
                    mem[608] = mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * 10^missing_decimals) + mem[384]
                    mem[mem[64] len 544] = mem[96 len 128], _3333 * ext_call.return_data[0] / stor16, mem[256 len 160], mem[384] * 10^missing_decimals, mem[(2 * ceil32(return_data.size)) + 736], mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals, mem[384] + mem[(2 * ceil32(return_data.size)) + 736], (mem[384] * 10^missing_decimals) + (mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals), mem[(2 * ceil32(return_data.size)) + 768], mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * 10^missing_decimals) + mem[384]
                else:
                    s = 10
                    t = 1
                    idx = missing_decimals
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if mem[(2 * ceil32(return_data.size)) + 736] and s * t > -1 / mem[(2 * ceil32(return_data.size)) + 736]:
                        revert with 'NH{q', 17
                    mem[480] = mem[(2 * ceil32(return_data.size)) + 736] * s * t
                    if mem[384] > !mem[(2 * ceil32(return_data.size)) + 736]:
                        revert with 'NH{q', 17
                    mem[512] = mem[384] + mem[(2 * ceil32(return_data.size)) + 736]
                    if mem[384] * 10^missing_decimals > !(mem[(2 * ceil32(return_data.size)) + 736] * s * t):
                        revert with 'NH{q', 17
                    mem[544] = (mem[384] * 10^missing_decimals) + (mem[(2 * ceil32(return_data.size)) + 736] * s * t)
                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                        revert with 'NH{q', 50
                    mem[576] = mem[(2 * ceil32(return_data.size)) + 768]
                    if mem[96] > !(_3333 * ext_call.return_data[0] / stor16):
                        revert with 'NH{q', 17
                    if mem[96] + (_3333 * ext_call.return_data[0] / stor16) > !(mem[384] * 10^missing_decimals):
                        revert with 'NH{q', 17
                    if mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * 10^missing_decimals) > !mem[384]:
                        revert with 'NH{q', 17
                    mem[608] = mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * 10^missing_decimals) + mem[384]
                    mem[mem[64] len 544] = mem[96 len 128], _3333 * ext_call.return_data[0] / stor16, mem[256 len 160], mem[384] * 10^missing_decimals, mem[(2 * ceil32(return_data.size)) + 736], mem[(2 * ceil32(return_data.size)) + 736] * s * t, mem[384] + mem[(2 * ceil32(return_data.size)) + 736], (mem[384] * 10^missing_decimals) + (mem[(2 * ceil32(return_data.size)) + 736] * s * t), mem[(2 * ceil32(return_data.size)) + 768], mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * 10^missing_decimals) + mem[384]
        else:
            s = 10
            t = 1
            idx = missing_decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if mem[384] and s * t > -1 / mem[384]:
                revert with 'NH{q', 17
            mem[416] = mem[384] * s * t
            if 2 >= mem[(2 * ceil32(return_data.size)) + 640]:
                revert with 'NH{q', 50
            mem[448] = mem[(2 * ceil32(return_data.size)) + 736]
            if not missing_decimals:
                if mem[(2 * ceil32(return_data.size)) + 736] and 1 > -1 / mem[(2 * ceil32(return_data.size)) + 736]:
                    revert with 'NH{q', 17
                mem[480] = mem[(2 * ceil32(return_data.size)) + 736]
                if mem[384] > !mem[(2 * ceil32(return_data.size)) + 736]:
                    revert with 'NH{q', 17
                mem[512] = mem[384] + mem[(2 * ceil32(return_data.size)) + 736]
                if mem[384] * s * t > !mem[(2 * ceil32(return_data.size)) + 736]:
                    revert with 'NH{q', 17
                mem[544] = (mem[384] * s * t) + mem[(2 * ceil32(return_data.size)) + 736]
                if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                    revert with 'NH{q', 50
                mem[576] = mem[(2 * ceil32(return_data.size)) + 768]
                if mem[96] > !(_3333 * ext_call.return_data[0] / stor16):
                    revert with 'NH{q', 17
                if mem[96] + (_3333 * ext_call.return_data[0] / stor16) > !(mem[384] * s * t):
                    revert with 'NH{q', 17
                if mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * s * t) > !mem[384]:
                    revert with 'NH{q', 17
                mem[608] = mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * s * t) + mem[384]
                mem[mem[64] len 544] = mem[96 len 128], _3333 * ext_call.return_data[0] / stor16, mem[256 len 160], mem[384] * s * t, mem[(2 * ceil32(return_data.size)) + 736], mem[(2 * ceil32(return_data.size)) + 736], mem[384] + mem[(2 * ceil32(return_data.size)) + 736], (mem[384] * s * t) + mem[(2 * ceil32(return_data.size)) + 736], mem[(2 * ceil32(return_data.size)) + 768], mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * s * t) + mem[384]
            else:
                if bool(bool(missing_decimals < 78)) or bool(bool(missing_decimals < 32)):
                    if mem[(2 * ceil32(return_data.size)) + 736] and 10^missing_decimals > -1 / mem[(2 * ceil32(return_data.size)) + 736]:
                        revert with 'NH{q', 17
                    mem[480] = mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals
                    if mem[384] > !mem[(2 * ceil32(return_data.size)) + 736]:
                        revert with 'NH{q', 17
                    mem[512] = mem[384] + mem[(2 * ceil32(return_data.size)) + 736]
                    if mem[384] * s * t > !(mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals):
                        revert with 'NH{q', 17
                    mem[544] = (mem[384] * s * t) + (mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals)
                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                        revert with 'NH{q', 50
                    mem[576] = mem[(2 * ceil32(return_data.size)) + 768]
                    if mem[96] > !(_3333 * ext_call.return_data[0] / stor16):
                        revert with 'NH{q', 17
                    if mem[96] + (_3333 * ext_call.return_data[0] / stor16) > !(mem[384] * s * t):
                        revert with 'NH{q', 17
                    if mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * s * t) > !mem[384]:
                        revert with 'NH{q', 17
                    mem[608] = mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * s * t) + mem[384]
                    mem[mem[64] len 544] = mem[96 len 128], _3333 * ext_call.return_data[0] / stor16, mem[256 len 160], mem[384] * s * t, mem[(2 * ceil32(return_data.size)) + 736], mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals, mem[384] + mem[(2 * ceil32(return_data.size)) + 736], (mem[384] * s * t) + (mem[(2 * ceil32(return_data.size)) + 736] * 10^missing_decimals), mem[(2 * ceil32(return_data.size)) + 768], mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * s * t) + mem[384]
                else:
                    u = 10
                    v = 1
                    idx = missing_decimals
                    while idx > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 'NH{q', 17
                    if mem[(2 * ceil32(return_data.size)) + 736] and u * v > -1 / mem[(2 * ceil32(return_data.size)) + 736]:
                        revert with 'NH{q', 17
                    mem[480] = mem[(2 * ceil32(return_data.size)) + 736] * u * v
                    if mem[384] > !mem[(2 * ceil32(return_data.size)) + 736]:
                        revert with 'NH{q', 17
                    mem[512] = mem[384] + mem[(2 * ceil32(return_data.size)) + 736]
                    if mem[384] * s * t > !(mem[(2 * ceil32(return_data.size)) + 736] * u * v):
                        revert with 'NH{q', 17
                    mem[544] = (mem[384] * s * t) + (mem[(2 * ceil32(return_data.size)) + 736] * u * v)
                    if 3 >= mem[(2 * ceil32(return_data.size)) + 640]:
                        revert with 'NH{q', 50
                    mem[576] = mem[(2 * ceil32(return_data.size)) + 768]
                    if mem[96] > !(_3333 * ext_call.return_data[0] / stor16):
                        revert with 'NH{q', 17
                    if mem[96] + (_3333 * ext_call.return_data[0] / stor16) > !(mem[384] * s * t):
                        revert with 'NH{q', 17
                    if mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * s * t) > !mem[384]:
                        revert with 'NH{q', 17
                    mem[608] = mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * s * t) + mem[384]
                    mem[mem[64] len 544] = mem[96 len 128], _3333 * ext_call.return_data[0] / stor16, mem[256 len 160], mem[384] * s * t, mem[(2 * ceil32(return_data.size)) + 736], mem[(2 * ceil32(return_data.size)) + 736] * u * v, mem[384] + mem[(2 * ceil32(return_data.size)) + 736], (mem[384] * s * t) + (mem[(2 * ceil32(return_data.size)) + 736] * u * v), mem[(2 * ceil32(return_data.size)) + 768], mem[96] + (_3333 * ext_call.return_data[0] / stor16) + (mem[384] * s * t) + mem[384]
    return memory
      from mem[64]
       len 544
}



}

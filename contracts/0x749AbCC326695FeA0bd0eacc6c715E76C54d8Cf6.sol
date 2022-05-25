contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address sub_b328f1ecAddress;
address timeAddress;
address sub_37f6f658Address;
address stakingAddress;
address traderJoeRouterAddress;
address owner;
uint256 initialDeposit;
uint256 sub_2fb47be4;
uint256 sub_b9b26350;
uint256 earnings;
uint256 sub_ea3598ad;

function sub_2fb47be4(?) payable {
    return sub_2fb47be4
}

function sub_37f6f658(?) payable {
    return sub_37f6f658Address
}

function TraderJoeRouter() payable {
    return traderJoeRouterAddress
}

function owner() payable {
    return owner
}

function earnings() payable {
    return earnings
}

function sub_b328f1ec(?) payable {
    return sub_b328f1ecAddress
}

function sub_b9b26350(?) payable {
    return sub_b9b26350
}

function initialDeposit() payable {
    return initialDeposit
}

function sub_ea3598ad(?) payable {
    return sub_ea3598ad
}

function Staking() payable {
    return stakingAddress
}

function Time() payable {
    return timeAddress
}

function _fallback() payable {
    revert
}

function sub_6051eac5(?) payable {
    require ext_code.size(sub_37f6f658Address)
    staticcall sub_37f6f658Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] - sub_b9b26350:
        return 0
    mem[160] = stor0
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0] - sub_b9b26350
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(traderJoeRouterAddress)
    staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0] - sub_b9b26350, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _28 = mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32
    require mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]
    _31 = mem[_28 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_28 + 192])] = mem[_28 + 224 len floor32(mem[_28 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _31) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _31) + ceil32(return_data.size) + 224
       len 32
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not initialDeposit
    require ext_code.size(sub_b328f1ecAddress)
    call sub_b328f1ecAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = stor0
    mem[160] = stor1
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(traderJoeRouterAddress)
    staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _47 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _50 = mem[_47 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_47 + 192])] = mem[_47 + 224 len floor32(mem[_47 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _79 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _50) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _50) + ceil32(return_data.size) + 228] = arg1
    mem[(32 * _50) + ceil32(return_data.size) + 260] = 99 * _79 / 100
    mem[(32 * _50) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _50) + ceil32(return_data.size) + 356] = block.timestamp + 60
    mem[(32 * _50) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _50) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _50) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(traderJoeRouterAddress)
    call traderJoeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 99 * _79 / 100, Array(len=2, data=mem[(32 * _50) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _50) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _50) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _106 = mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _50) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _50) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    mem[(32 * _50) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _50) + ceil32(return_data.size) + 224]
    mem[(32 * _50) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_106 + (32 * _50) + ceil32(return_data.size) + 224])] = mem[_106 + (32 * _50) + ceil32(return_data.size) + 256 len floor32(mem[_106 + (32 * _50) + ceil32(return_data.size) + 224])]
    require 0 < mem[(32 * _50) + (2 * ceil32(return_data.size)) + 224]
    initialDeposit = mem[(32 * _50) + (2 * ceil32(return_data.size)) + 256]
    sub_2fb47be4 = block.timestamp
    require 1 < mem[(32 * _50) + (2 * ceil32(return_data.size)) + 224]
    sub_b9b26350 = mem[(32 * _50) + (2 * ceil32(return_data.size)) + 288]
    sub_ea3598ad = block.timestamp
    require 1 < mem[(32 * _50) + (2 * ceil32(return_data.size)) + 224]
    require ext_code.size(stakingAddress)
    call stakingAddress.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[(32 * _50) + (2 * ceil32(return_data.size)) + 288], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingAddress)
    call stakingAddress.claim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(bool arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require initialDeposit > 0
    require ext_code.size(sub_37f6f658Address)
    staticcall sub_37f6f658Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingAddress)
    if not arg1:
        call stakingAddress.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 2
        mem[128] = stor1
        mem[160] = stor0
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(traderJoeRouterAddress)
        staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _97 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        _103 = mem[_97 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_97 + 192])] = mem[_97 + 224 len floor32(mem[_97 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _165 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _103) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _103) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[(32 * _103) + ceil32(return_data.size) + 260] = 99 * _165 / 100
        mem[(32 * _103) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _103) + ceil32(return_data.size) + 356] = block.timestamp + 60
        mem[(32 * _103) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _103) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _103) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(traderJoeRouterAddress)
        call traderJoeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 99 * _165 / 100, Array(len=2, data=mem[(32 * _103) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _103) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _103) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _223 = mem[(32 * _103) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * _103) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * _103) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * _103) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _103) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _103) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _103) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _103) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
        mem[(32 * _103) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _103) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _103) + ceil32(return_data.size) + 224]
        mem[(32 * _103) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_223 + (32 * _103) + ceil32(return_data.size) + 224])] = mem[_223 + (32 * _103) + ceil32(return_data.size) + 256 len floor32(mem[_223 + (32 * _103) + ceil32(return_data.size) + 224])]
        if arg1:
            require 1 < mem[(32 * _103) + (2 * ceil32(return_data.size)) + 224]
            earnings += mem[(32 * _103) + (2 * ceil32(return_data.size)) + 288]
            sub_ea3598ad = block.timestamp
            require ext_code.size(sub_b328f1ecAddress)
            call sub_b328f1ecAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, mem[(32 * _103) + (2 * ceil32(return_data.size)) + 288]
        else:
            require ext_code.size(sub_b328f1ecAddress)
            staticcall sub_b328f1ecAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            initialDeposit = 0
            sub_2fb47be4 = 0
            sub_b9b26350 = 0
            earnings = 0
            sub_ea3598ad = 0
            require ext_code.size(sub_b328f1ecAddress)
            call sub_b328f1ecAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
    else:
        call stakingAddress.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0] - sub_b9b26350, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 2
        mem[128] = stor1
        mem[160] = stor0
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0] - sub_b9b26350
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(traderJoeRouterAddress)
        staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0] - sub_b9b26350, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _99 = mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32
        require mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]
        _104 = mem[_99 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_99 + 192])] = mem[_99 + 224 len floor32(mem[_99 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _166 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _104) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _104) + ceil32(return_data.size) + 228] = ext_call.return_data[0] - sub_b9b26350
        mem[(32 * _104) + ceil32(return_data.size) + 260] = 99 * _166 / 100
        mem[(32 * _104) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _104) + ceil32(return_data.size) + 356] = block.timestamp + 60
        mem[(32 * _104) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _104) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _104) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(traderJoeRouterAddress)
        call traderJoeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] - sub_b9b26350, 99 * _166 / 100, Array(len=2, data=mem[(32 * _104) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _104) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _104) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _225 = mem[(32 * _104) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32
        require mem[(32 * _104) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 <= 4294967296
        require mem[(32 * _104) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _104) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + (32 * _104) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _104) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + (32 * mem[mem[(32 * _104) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + (32 * _104) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
        mem[(32 * _104) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _104) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + (32 * _104) + ceil32(return_data.size) + 224]
        mem[(32 * _104) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_225 + (32 * _104) + ceil32(return_data.size) + 224])] = mem[_225 + (32 * _104) + ceil32(return_data.size) + 256 len floor32(mem[_225 + (32 * _104) + ceil32(return_data.size) + 224])]
        if arg1:
            require 1 < mem[(32 * _104) + (2 * ceil32(return_data.size)) + 224]
            earnings += mem[(32 * _104) + (2 * ceil32(return_data.size)) + 288]
            sub_ea3598ad = block.timestamp
            require ext_code.size(sub_b328f1ecAddress)
            call sub_b328f1ecAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, mem[(32 * _104) + (2 * ceil32(return_data.size)) + 288]
        else:
            require ext_code.size(sub_b328f1ecAddress)
            staticcall sub_b328f1ecAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            initialDeposit = 0
            sub_2fb47be4 = 0
            sub_b9b26350 = 0
            earnings = 0
            sub_ea3598ad = 0
            require ext_code.size(sub_b328f1ecAddress)
            call sub_b328f1ecAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - sub_b50d1084(?)
#
address owner;
address administratorAddress;
address stor2;
uint256 stor3; offset 32
uint256 stor3;
uint256 stor4;
address stor5;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;

function getAdministrator() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return administratorAddress
}

function owner() {
    return owner
}

function authenticatedSeller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function sub_c8cc4984(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[address(arg1)])
}

function sub_ff71d464(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[address(arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function authenticateSeller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = 1
}

function getSnipeConfiguration() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return address(stor6.field_0), uint256(stor3.field_0), stor5, stor4, bool(uint8(stor6.field_160))
}

function setAdministrator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    administratorAddress = arg1
    stor10[address(arg1)] = 1
    return 1
}

function _fallback() payable {
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function configureSnipe(address arg1, uint256 arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor6.field_0) = arg1
    uint256(stor3.field_0) = arg2
    stor5 = arg3
    stor4 = arg4
    Mask(96, 0, stor6.field_160) = 0
    return 1
}

function sub_69763e2a(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'contract has an empty WAVAX balance'
    call administratorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function emmergencyWithdrawTkn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough tokens in contract'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args administratorAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function snipeListing() {
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < uint256(stor3.field_0):
        revert with 0, 'not enough wavax'
    mem[ceil32(return_data.size) + 100] = stor2
    mem[ceil32(return_data.size) + 132] = uint256(stor3.field_0)
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, uint256(stor3.field_0)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if uint8(stor6.field_160):
        revert with 0, 'locked'
    Mask(96, 0, stor6.field_160) = 1
    mem[(2 * ceil32(return_data.size)) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if address(stor6.field_0) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[(2 * ceil32(return_data.size)) + 160] = stor5
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = uint256(stor3.field_0)
        mem[(2 * ceil32(return_data.size)) + 228] = stor4
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = administratorAddress
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 120
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args uint256(stor3.field_0), stor4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), administratorAddress, block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _48 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32)
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _50 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192]) + 224 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192]) + 224
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192]
        require _48 + (32 * _50) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _48 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _50:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[(2 * ceil32(return_data.size)) + 160] = address(stor6.field_0)
        mem[(2 * ceil32(return_data.size)) + 192] = stor5
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = uint256(stor3.field_0)
        mem[(2 * ceil32(return_data.size)) + 260] = stor4
        mem[(2 * ceil32(return_data.size)) + 292] = 160
        mem[(2 * ceil32(return_data.size)) + 388] = 3
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 324] = administratorAddress
        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 120
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args uint256(stor3.field_0), stor4, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), administratorAddress, block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _49 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32)
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
        _51 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]) + 256 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]) + 256
        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]
        require _49 + (32 * _51) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _49 + 256
        t = (4 * ceil32(return_data.size)) + 256
        while idx < _51:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    return 1
}

function sub_b19b377f(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough wavax'
    mem[ceil32(return_data.size) + 100] = stor2
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall 'console.log'.log(address arg1) with:
            gas gas_remaining wei
           args address(arg1) << 64, 0
    staticcall 'console.log'.0xf5b1bba9 with:
            gas gas_remaining wei
           args arg2
    staticcall 'console.log'.log(address arg1) with:
            gas gas_remaining wei
           args address(arg3) << 64, 0
    mem[(2 * ceil32(return_data.size)) + 332] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if address(arg1) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[(2 * ceil32(return_data.size)) + 364] = address(arg3)
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 396] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 400] = arg2
        mem[(2 * ceil32(return_data.size)) + 432] = 0
        mem[(2 * ceil32(return_data.size)) + 464] = 160
        mem[(2 * ceil32(return_data.size)) + 560] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 332
        t = (2 * ceil32(return_data.size)) + 592
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 496] = administratorAddress
        mem[(2 * ceil32(return_data.size)) + 528] = block.timestamp + 120
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, administratorAddress, block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 592 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 396 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 396
        require return_data.size >= 32
        _58 = mem[(2 * ceil32(return_data.size)) + 396 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + 396 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 396 len 4], Mask(224, 32, arg2) >> 32 + 427 < (2 * ceil32(return_data.size)) + return_data.size + 396
        _60 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 396 len 4], Mask(224, 32, arg2) >> 32 + 396]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 396 len 4], Mask(224, 32, arg2) >> 32 + 396] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 396 len 4], Mask(224, 32, arg2) >> 32 + 396]) + 428 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 396 len 4], Mask(224, 32, arg2) >> 32 + 396]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 396 len 4], Mask(224, 32, arg2) >> 32 + 396]) + 428
        mem[(4 * ceil32(return_data.size)) + 396] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 396 len 4], Mask(224, 32, arg2) >> 32 + 396]
        require _58 + (32 * _60) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _58 + 428
        t = (4 * ceil32(return_data.size)) + 428
        while idx < _60:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[(2 * ceil32(return_data.size)) + 364] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 396] = address(arg3)
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 428] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 432] = arg2
        mem[(2 * ceil32(return_data.size)) + 464] = 0
        mem[(2 * ceil32(return_data.size)) + 496] = 160
        mem[(2 * ceil32(return_data.size)) + 592] = 3
        idx = 0
        s = (2 * ceil32(return_data.size)) + 332
        t = (2 * ceil32(return_data.size)) + 624
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 528] = administratorAddress
        mem[(2 * ceil32(return_data.size)) + 560] = block.timestamp + 120
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, administratorAddress, block.timestamp + 120, 3, mem[(2 * ceil32(return_data.size)) + 624 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 428 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 428
        require return_data.size >= 32
        _59 = mem[(2 * ceil32(return_data.size)) + 428 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + 428 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 428 len 4], Mask(224, 32, arg2) >> 32 + 459 < (2 * ceil32(return_data.size)) + return_data.size + 428
        _61 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 428 len 4], Mask(224, 32, arg2) >> 32 + 428]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 428 len 4], Mask(224, 32, arg2) >> 32 + 428] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 428 len 4], Mask(224, 32, arg2) >> 32 + 428]) + 460 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 428 len 4], Mask(224, 32, arg2) >> 32 + 428]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 428 len 4], Mask(224, 32, arg2) >> 32 + 428]) + 460
        mem[(4 * ceil32(return_data.size)) + 428] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 428 len 4], Mask(224, 32, arg2) >> 32 + 428]
        require _59 + (32 * _61) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _59 + 460
        t = (4 * ceil32(return_data.size)) + 460
        while idx < _61:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    return 1
}

function sub_a0addaa9(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    mem[0] = address(arg3)
    mem[32] = 7
    if stor7[address(arg3)]:
        revert with 0, 'locked for token'
    mem[100] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough wavax'
    mem[ceil32(return_data.size) + 100] = stor2
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if address(arg1) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg2
        mem[(2 * ceil32(return_data.size)) + 228] = 0
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = administratorAddress
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 120
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, administratorAddress, block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _71 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _73 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require _71 + (32 * _73) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _71 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _73:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = administratorAddress
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args administratorAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _111 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _113 = mem[_111]
        require mem[_111] == mem[_111]
        mem[mem[64] + 36] = mem[_111]
        _117 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        staticcall 'console.log'.0xf5b1bba9 with:
                gas gas_remaining wei
               args mem[_117 + 36 len mem[_117] - 4]
        if _113 > 0:
            stor7[address(arg3)] = 1
    else:
        mem[(2 * ceil32(return_data.size)) + 96] = 3
        mem[(2 * ceil32(return_data.size)) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 192] = address(arg3)
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = arg2
        mem[(2 * ceil32(return_data.size)) + 260] = 0
        mem[(2 * ceil32(return_data.size)) + 292] = 160
        mem[(2 * ceil32(return_data.size)) + 388] = 3
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 324] = administratorAddress
        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 120
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, administratorAddress, block.timestamp + 120, 3, mem[(2 * ceil32(return_data.size)) + 420 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _72 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
        _74 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256
        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
        require _72 + (32 * _74) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _72 + 256
        t = (4 * ceil32(return_data.size)) + 256
        while idx < _74:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = administratorAddress
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args administratorAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _112 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _114 = mem[_112]
        require mem[_112] == mem[_112]
        mem[mem[64] + 36] = mem[_112]
        _119 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        staticcall 'console.log'.0xf5b1bba9 with:
                gas gas_remaining wei
               args mem[_119 + 36 len mem[_119] - 4]
        if _114 > 0:
            stor7[address(arg3)] = 1
    return 1
}

function sub_63af46c6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor8[address(arg1)]:
        revert with 0, 'get fucked scammer'
    mem[96] = 2
    mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[160] = address(arg1)
    mem[192] = 2
    mem[224] = address(arg1)
    mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[0] = address(arg1)
    mem[32] = 9
    if stor9[address(arg1)]:
        mem[292] = administratorAddress
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args administratorAddress
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg2 and 1 > -1 / arg2:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 292] = arg2
            mem[(2 * ceil32(return_data.size)) + 324] = 64
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                 gas gas_remaining wei
                args arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            _171 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32
            require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
            _174 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 320 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 320
            mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2) >> 32 + 288]
            require _171 + (32 * _174) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _171 + 320
            t = (4 * ceil32(return_data.size)) + 320
            while idx < _174:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 0 >= _174:
                revert with 'NH{q', 50
            _366 = mem[(4 * ceil32(return_data.size)) + 320]
            _368 = mem[64]
            mem[mem[64] + 36] = mem[(4 * ceil32(return_data.size)) + 320]
            _374 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_374 + 32 len 4] = 4122065833
            staticcall 'console.log'.0xf5b1bba9 with:
                    gas gas_remaining wei
                   args mem[_374 + 36 len mem[_374] - 4]
            mem[_368 + 72] = stor2
            mem[_368 + 104] = _366
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, _366
            mem[_368 + 68] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _368 + ceil32(return_data.size) + 68
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[_368 + ceil32(return_data.size) + 68] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[_368 + ceil32(return_data.size) + 72] = arg2
            mem[_368 + ceil32(return_data.size) + 104] = _366
            mem[_368 + ceil32(return_data.size) + 136] = 160
            mem[_368 + ceil32(return_data.size) + 232] = 2
            idx = 0
            s = 128
            t = _368 + ceil32(return_data.size) + 264
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_368 + ceil32(return_data.size) + 168] = administratorAddress
            mem[_368 + ceil32(return_data.size) + 200] = block.timestamp + 120
            require ext_code.size(stor2)
            call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, _366, Array(len=2, data=mem[_368 + ceil32(return_data.size) + 264 len 64]), administratorAddress, block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_368 + ceil32(return_data.size) + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _368 + (2 * ceil32(return_data.size)) + 68
            require return_data.size >= 32
            _559 = mem[_368 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32
            require mem[_368 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require _368 + ceil32(return_data.size) + mem[_368 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 + 99 < _368 + ceil32(return_data.size) + return_data.size + 68
            _561 = mem[_368 + ceil32(return_data.size) + mem[_368 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 + 68]
            if mem[_368 + ceil32(return_data.size) + mem[_368 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 + 68] > test266151307():
                revert with 'NH{q', 65
            if _368 + (2 * ceil32(return_data.size)) + (32 * mem[_368 + ceil32(return_data.size) + mem[_368 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 + 68]) + 100 > test266151307() or (32 * mem[_368 + ceil32(return_data.size) + mem[_368 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 + 68]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _368 + (2 * ceil32(return_data.size)) + (32 * mem[_368 + ceil32(return_data.size) + mem[_368 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 + 68]) + 100
            mem[_368 + (2 * ceil32(return_data.size)) + 68] = _561
            require _559 + (32 * _561) + 32 <= return_data.size
            idx = 0
            s = _368 + ceil32(return_data.size) + _559 + 100
            t = _368 + (2 * ceil32(return_data.size)) + 100
            while idx < _561:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = administratorAddress
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args administratorAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _744 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _748 = mem[_744]
            require mem[_744] == mem[_744]
            mem[mem[64] + 36] = mem[_744]
            _757 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            staticcall 'console.log'.0xf5b1bba9 with:
                    gas gas_remaining wei
                   args mem[_757 + 36 len mem[_757] - 4]
            if _748 > ext_call.return_data[0]:
                stor9[address(arg1)] = 1
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                    revert with 'NH{q', 17
                mem[(2 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 292] = arg2 * 10^uint8(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 324] = 64
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args arg2 * 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _170 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32
                require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
                _173 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 + 288]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 + 288] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 + 288]) + 320 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 + 288]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 + 288]) + 320
                mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 + 288]
                require _170 + (32 * _173) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _170 + 320
                t = (4 * ceil32(return_data.size)) + 320
                while idx < _173:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 0 >= _173:
                    revert with 'NH{q', 50
                _365 = mem[(4 * ceil32(return_data.size)) + 320]
                _367 = mem[64]
                mem[mem[64] + 36] = mem[(4 * ceil32(return_data.size)) + 320]
                _372 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_372 + 32 len 4] = 4122065833
                staticcall 'console.log'.0xf5b1bba9 with:
                        gas gas_remaining wei
                       args mem[_372 + 36 len mem[_372] - 4]
                mem[_367 + 72] = stor2
                mem[_367 + 104] = _365
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor2, _365
                mem[_367 + 68] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _367 + ceil32(return_data.size) + 68
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -121:
                    revert with 'NH{q', 17
                mem[_367 + ceil32(return_data.size) + 68] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[_367 + ceil32(return_data.size) + 72] = arg2 * 10^uint8(ext_call.return_data[0])
                mem[_367 + ceil32(return_data.size) + 104] = _365
                mem[_367 + ceil32(return_data.size) + 136] = 160
                mem[_367 + ceil32(return_data.size) + 232] = 2
                idx = 0
                s = 128
                t = _367 + ceil32(return_data.size) + 264
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_367 + ceil32(return_data.size) + 168] = administratorAddress
                mem[_367 + ceil32(return_data.size) + 200] = block.timestamp + 120
                require ext_code.size(stor2)
                call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2 * 10^uint8(ext_call.return_data[0]), _365, Array(len=2, data=mem[_367 + ceil32(return_data.size) + 264 len 64]), administratorAddress, block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_367 + ceil32(return_data.size) + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _367 + (2 * ceil32(return_data.size)) + 68
                require return_data.size >= 32
                _558 = mem[_367 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32
                require mem[_367 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                require _367 + ceil32(return_data.size) + mem[_367 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 + 99 < _367 + ceil32(return_data.size) + return_data.size + 68
                _560 = mem[_367 + ceil32(return_data.size) + mem[_367 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 + 68]
                if mem[_367 + ceil32(return_data.size) + mem[_367 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 + 68] > test266151307():
                    revert with 'NH{q', 65
                if _367 + (2 * ceil32(return_data.size)) + (32 * mem[_367 + ceil32(return_data.size) + mem[_367 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 + 68]) + 100 > test266151307() or (32 * mem[_367 + ceil32(return_data.size) + mem[_367 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 + 68]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _367 + (2 * ceil32(return_data.size)) + (32 * mem[_367 + ceil32(return_data.size) + mem[_367 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(ext_call.return_data[0])) >> 32 + 68]) + 100
                mem[_367 + (2 * ceil32(return_data.size)) + 68] = _560
                require _558 + (32 * _560) + 32 <= return_data.size
                idx = 0
                s = _367 + ceil32(return_data.size) + _558 + 100
                t = _367 + (2 * ceil32(return_data.size)) + 100
                while idx < _560:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = administratorAddress
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args administratorAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _743 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _747 = mem[_743]
                require mem[_743] == mem[_743]
                mem[mem[64] + 36] = mem[_743]
                _755 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                staticcall 'console.log'.0xf5b1bba9 with:
                        gas gas_remaining wei
                       args mem[_755 + 36 len mem[_755] - 4]
                if _747 > ext_call.return_data[0]:
                    stor9[address(arg1)] = 1
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if arg2 and t * s > -1 / arg2:
                    revert with 'NH{q', 17
                mem[(2 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 292] = arg2 * t * s
                mem[(2 * ceil32(return_data.size)) + 324] = 64
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                u = 128
                v = (2 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args arg2 * t * s, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _369 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * t * s) >> 32
                require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * t * s) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
                _370 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 288]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 288] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 288]) + 320 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 288]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 288]) + 320
                mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 288]
                require _369 + (32 * _370) + 32 <= return_data.size
                idx = 0
                u = (2 * ceil32(return_data.size)) + _369 + 320
                v = (4 * ceil32(return_data.size)) + 320
                while idx < _370:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 0 >= _370:
                    revert with 'NH{q', 50
                _544 = mem[(4 * ceil32(return_data.size)) + 320]
                _545 = mem[64]
                mem[mem[64] + 36] = mem[(4 * ceil32(return_data.size)) + 320]
                _546 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_546 + 32 len 4] = 4122065833
                staticcall 'console.log'.0xf5b1bba9 with:
                        gas gas_remaining wei
                       args mem[_546 + 36 len mem[_546] - 4]
                mem[_545 + 72] = stor2
                mem[_545 + 104] = _544
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor2, _544
                mem[_545 + 68] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _545 + ceil32(return_data.size) + 68
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -121:
                    revert with 'NH{q', 17
                mem[_545 + ceil32(return_data.size) + 68] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[_545 + ceil32(return_data.size) + 72] = arg2 * t * s
                mem[_545 + ceil32(return_data.size) + 104] = _544
                mem[_545 + ceil32(return_data.size) + 136] = 160
                mem[_545 + ceil32(return_data.size) + 232] = 2
                idx = 0
                u = 128
                v = _545 + ceil32(return_data.size) + 264
                while idx < 2:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_545 + ceil32(return_data.size) + 168] = administratorAddress
                mem[_545 + ceil32(return_data.size) + 200] = block.timestamp + 120
                require ext_code.size(stor2)
                call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2 * t * s, _544, Array(len=2, data=mem[_545 + ceil32(return_data.size) + 264 len 64]), administratorAddress, block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_545 + ceil32(return_data.size) + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _545 + (2 * ceil32(return_data.size)) + 68
                require return_data.size >= 32
                _746 = mem[_545 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32
                require mem[_545 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 <= test266151307()
                require _545 + ceil32(return_data.size) + mem[_545 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 99 < _545 + ceil32(return_data.size) + return_data.size + 68
                _749 = mem[_545 + ceil32(return_data.size) + mem[_545 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 68]
                if mem[_545 + ceil32(return_data.size) + mem[_545 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 68] > test266151307():
                    revert with 'NH{q', 65
                if _545 + (2 * ceil32(return_data.size)) + (32 * mem[_545 + ceil32(return_data.size) + mem[_545 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 68]) + 100 > test266151307() or (32 * mem[_545 + ceil32(return_data.size) + mem[_545 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 68]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _545 + (2 * ceil32(return_data.size)) + (32 * mem[_545 + ceil32(return_data.size) + mem[_545 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 68]) + 100
                mem[_545 + (2 * ceil32(return_data.size)) + 68] = _749
                require _746 + (32 * _749) + 32 <= return_data.size
                idx = 0
                s = _545 + ceil32(return_data.size) + _746 + 100
                t = _545 + (2 * ceil32(return_data.size)) + 100
                while idx < _749:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = administratorAddress
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args administratorAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _948 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _951 = mem[_948]
                require mem[_948] == mem[_948]
                mem[mem[64] + 36] = mem[_948]
                _965 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                staticcall 'console.log'.0xf5b1bba9 with:
                        gas gas_remaining wei
                       args mem[_965 + 36 len mem[_965] - 4]
                if _951 > ext_call.return_data[0]:
                    stor9[address(arg1)] = 1
    else:
        mem[292] = stor2
        mem[324] = 10^14
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, 10^14
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 292] = 10^14
        mem[ceil32(return_data.size) + 324] = 64
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args 10^14, 64, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _172 = mem[ceil32(return_data.size) + 288 len 4], 23283
        require mem[ceil32(return_data.size) + 288 len 4], 23283 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 23283 + 319 < ceil32(return_data.size) + return_data.size + 288
        _175 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 23283 + 288]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 23283 + 288] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 23283 + 288]) + 320 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 23283 + 288]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 23283 + 288]) + 320
        mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 23283 + 288]
        require _172 + (32 * _175) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _172 + 320
        t = (2 * ceil32(return_data.size)) + 320
        while idx < _175:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _175:
            revert with 'NH{q', 50
        _376 = mem[(2 * ceil32(return_data.size)) + 352]
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 10^14
        mem[mem[64] + 36] = _376
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 120
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 10^14, _376, 160, address(this.address), block.timestamp + 120, 2, mem[mem[64] + 196 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _551 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _554 = mem[_551]
        require mem[_551] <= test266151307()
        require _551 + mem[_551] + 31 < _551 + return_data.size
        _557 = mem[_551 + mem[_551]]
        if mem[_551 + mem[_551]] > test266151307():
            revert with 'NH{q', 65
        if _551 + ceil32(return_data.size) + (32 * mem[_551 + mem[_551]]) + 32 > test266151307() or (32 * mem[_551 + mem[_551]]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = _551 + ceil32(return_data.size) + (32 * mem[_551 + mem[_551]]) + 32
        mem[_551 + ceil32(return_data.size)] = _557
        require _554 + (32 * _557) + 32 <= return_data.size
        idx = 0
        s = _551 + _554 + 32
        t = _551 + ceil32(return_data.size) + 32
        while idx < _557:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _738 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _742 = mem[_738]
        require mem[_738] == mem[_738]
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = _742
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, _742
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _763 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_763] == bool(mem[_763])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _742
        mem[mem[64] + 36] = 64
        _787 = mem[192]
        mem[mem[64] + 68] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 100
        while idx < _787:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
             gas gas_remaining wei
            args _742, 64, mem[mem[64] + 68 len (32 * _787) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _935 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _938 = mem[_935]
        require mem[_935] <= test266151307()
        require _935 + mem[_935] + 31 < _935 + return_data.size
        _943 = mem[_935 + mem[_935]]
        if mem[_935 + mem[_935]] > test266151307():
            revert with 'NH{q', 65
        if _935 + ceil32(return_data.size) + (32 * mem[_935 + mem[_935]]) + 32 > test266151307() or (32 * mem[_935 + mem[_935]]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = _935 + ceil32(return_data.size) + (32 * mem[_935 + mem[_935]]) + 32
        mem[_935 + ceil32(return_data.size)] = _943
        require _938 + (32 * _943) + 32 <= return_data.size
        idx = 0
        s = _935 + _938 + 32
        t = _935 + ceil32(return_data.size) + 32
        while idx < _943:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[192] < 1:
            revert with 'NH{q', 17
        if mem[192] - 1 >= _943:
            revert with 'NH{q', 50
        _1159 = mem[(32 * mem[192] - 1) + _935 + ceil32(return_data.size) + 32]
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _742
        mem[mem[64] + 36] = _1159
        mem[mem[64] + 68] = 160
        _1169 = mem[192]
        mem[mem[64] + 164] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 196
        while idx < mem[192]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 120
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _742, _1159, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * _1169) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1364 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1365 = mem[_1364]
        require mem[_1364] <= test266151307()
        require _1364 + mem[_1364] + 31 < _1364 + return_data.size
        _1369 = mem[_1364 + mem[_1364]]
        if mem[_1364 + mem[_1364]] > test266151307():
            revert with 'NH{q', 65
        if _1364 + ceil32(return_data.size) + (32 * mem[_1364 + mem[_1364]]) + 32 > test266151307() or (32 * mem[_1364 + mem[_1364]]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = _1364 + ceil32(return_data.size) + (32 * mem[_1364 + mem[_1364]]) + 32
        mem[_1364 + ceil32(return_data.size)] = _1369
        require _1365 + (32 * _1369) + 32 <= return_data.size
        idx = 0
        s = _1364 + _1365 + 32
        t = _1364 + ceil32(return_data.size) + 32
        while idx < _1369:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = administratorAddress
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args administratorAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1596 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1599 = mem[_1596]
        require mem[_1596] == mem[_1596]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1612 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1613 = mem[_1612]
        require mem[_1612] == mem[_1612 + 31 len 1]
        if not mem[_1612 + 31 len 1]:
            if arg2 and 1 > -1 / arg2:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 100
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                 gas gas_remaining wei
                args arg2, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1785 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1791 = mem[_1785]
            require mem[_1785] <= test266151307()
            require _1785 + mem[_1785] + 31 < _1785 + return_data.size
            _1803 = mem[_1785 + mem[_1785]]
            if mem[_1785 + mem[_1785]] > test266151307():
                revert with 'NH{q', 65
            if _1785 + ceil32(return_data.size) + (32 * mem[_1785 + mem[_1785]]) + 32 > test266151307() or (32 * mem[_1785 + mem[_1785]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _1785 + ceil32(return_data.size) + (32 * mem[_1785 + mem[_1785]]) + 32
            mem[_1785 + ceil32(return_data.size)] = _1803
            require _1791 + (32 * _1803) + 32 <= return_data.size
            idx = 0
            s = _1785 + _1791 + 32
            t = _1785 + ceil32(return_data.size) + 32
            while idx < _1803:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 0 >= _1803:
                revert with 'NH{q', 50
            _1931 = mem[_1785 + ceil32(return_data.size) + 32]
            _1933 = mem[64]
            mem[mem[64] + 36] = mem[_1785 + ceil32(return_data.size) + 32]
            _1938 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_1938 + 32 len 4] = 4122065833
            staticcall 'console.log'.0xf5b1bba9 with:
                    gas gas_remaining wei
                   args mem[_1938 + 36 len mem[_1938] - 4]
            mem[_1933 + 72] = stor2
            mem[_1933 + 104] = _1931
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, _1931
            mem[_1933 + 68] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1933 + ceil32(return_data.size) + 68
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[_1933 + ceil32(return_data.size) + 68] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[_1933 + ceil32(return_data.size) + 72] = arg2
            mem[_1933 + ceil32(return_data.size) + 104] = _1931
            mem[_1933 + ceil32(return_data.size) + 136] = 160
            mem[_1933 + ceil32(return_data.size) + 232] = mem[96]
            idx = 0
            s = 128
            t = _1933 + ceil32(return_data.size) + 264
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1933 + ceil32(return_data.size) + 168] = administratorAddress
            mem[_1933 + ceil32(return_data.size) + 200] = block.timestamp + 120
            require ext_code.size(stor2)
            call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, _1931, 160, administratorAddress, block.timestamp + 120, mem[_1933 + ceil32(return_data.size) + 232 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1933 + ceil32(return_data.size) + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1933 + (2 * ceil32(return_data.size)) + 68
            require return_data.size >= 32
            _2043 = mem[_1933 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32
            require mem[_1933 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require _1933 + ceil32(return_data.size) + mem[_1933 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 + 99 < _1933 + ceil32(return_data.size) + return_data.size + 68
            _2045 = mem[_1933 + ceil32(return_data.size) + mem[_1933 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 + 68]
            if mem[_1933 + ceil32(return_data.size) + mem[_1933 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 + 68] > test266151307():
                revert with 'NH{q', 65
            if _1933 + (2 * ceil32(return_data.size)) + (32 * mem[_1933 + ceil32(return_data.size) + mem[_1933 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 + 68]) + 100 > test266151307() or (32 * mem[_1933 + ceil32(return_data.size) + mem[_1933 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 + 68]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _1933 + (2 * ceil32(return_data.size)) + (32 * mem[_1933 + ceil32(return_data.size) + mem[_1933 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2) >> 32 + 68]) + 100
            mem[_1933 + (2 * ceil32(return_data.size)) + 68] = _2045
            require _2043 + (32 * _2045) + 32 <= return_data.size
            idx = 0
            s = _1933 + ceil32(return_data.size) + _2043 + 100
            t = _1933 + (2 * ceil32(return_data.size)) + 100
            while idx < _2045:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = administratorAddress
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args administratorAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2114 = mem[_2110]
            require mem[_2110] == mem[_2110]
            mem[mem[64] + 36] = mem[_2110]
            _2122 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            staticcall 'console.log'.0xf5b1bba9 with:
                    gas gas_remaining wei
                   args mem[_2122 + 36 len mem[_2122] - 4]
            if _2114 > _1599:
                stor9[address(arg1)] = 1
        else:
            if bool(bool(mem[_1612 + 31 len 1] < 78)) or bool(bool(mem[_1612 + 31 len 1] < 32)):
                if 10^mem[_1612 + 31 len 1] > -1:
                    revert with 'NH{q', 17
                if arg2 and 10^mem[_1612 + 31 len 1] > -1 / arg2:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2 * 10^uint8(_1613)
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 100
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args arg2 * 10^uint8(_1613), 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1784 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1790 = mem[_1784]
                require mem[_1784] <= test266151307()
                require _1784 + mem[_1784] + 31 < _1784 + return_data.size
                _1802 = mem[_1784 + mem[_1784]]
                if mem[_1784 + mem[_1784]] > test266151307():
                    revert with 'NH{q', 65
                if _1784 + ceil32(return_data.size) + (32 * mem[_1784 + mem[_1784]]) + 32 > test266151307() or (32 * mem[_1784 + mem[_1784]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1784 + ceil32(return_data.size) + (32 * mem[_1784 + mem[_1784]]) + 32
                mem[_1784 + ceil32(return_data.size)] = _1802
                require _1790 + (32 * _1802) + 32 <= return_data.size
                idx = 0
                s = _1784 + _1790 + 32
                t = _1784 + ceil32(return_data.size) + 32
                while idx < _1802:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 0 >= _1802:
                    revert with 'NH{q', 50
                _1930 = mem[_1784 + ceil32(return_data.size) + 32]
                _1932 = mem[64]
                mem[mem[64] + 36] = mem[_1784 + ceil32(return_data.size) + 32]
                _1936 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_1936 + 32 len 4] = 4122065833
                staticcall 'console.log'.0xf5b1bba9 with:
                        gas gas_remaining wei
                       args mem[_1936 + 36 len mem[_1936] - 4]
                mem[_1932 + 72] = stor2
                mem[_1932 + 104] = _1930
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor2, _1930
                mem[_1932 + 68] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1932 + ceil32(return_data.size) + 68
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -121:
                    revert with 'NH{q', 17
                mem[_1932 + ceil32(return_data.size) + 68] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[_1932 + ceil32(return_data.size) + 72] = arg2 * 10^uint8(_1613)
                mem[_1932 + ceil32(return_data.size) + 104] = _1930
                mem[_1932 + ceil32(return_data.size) + 136] = 160
                mem[_1932 + ceil32(return_data.size) + 232] = mem[96]
                idx = 0
                s = 128
                t = _1932 + ceil32(return_data.size) + 264
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1932 + ceil32(return_data.size) + 168] = administratorAddress
                mem[_1932 + ceil32(return_data.size) + 200] = block.timestamp + 120
                require ext_code.size(stor2)
                call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2 * 10^uint8(_1613), _1930, 160, administratorAddress, block.timestamp + 120, mem[_1932 + ceil32(return_data.size) + 232 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1932 + ceil32(return_data.size) + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1932 + (2 * ceil32(return_data.size)) + 68
                require return_data.size >= 32
                _2042 = mem[_1932 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(_1613)) >> 32
                require mem[_1932 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(_1613)) >> 32 <= test266151307()
                require _1932 + ceil32(return_data.size) + mem[_1932 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(_1613)) >> 32 + 99 < _1932 + ceil32(return_data.size) + return_data.size + 68
                _2044 = mem[_1932 + ceil32(return_data.size) + mem[_1932 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(_1613)) >> 32 + 68]
                if mem[_1932 + ceil32(return_data.size) + mem[_1932 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(_1613)) >> 32 + 68] > test266151307():
                    revert with 'NH{q', 65
                if _1932 + (2 * ceil32(return_data.size)) + (32 * mem[_1932 + ceil32(return_data.size) + mem[_1932 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(_1613)) >> 32 + 68]) + 100 > test266151307() or (32 * mem[_1932 + ceil32(return_data.size) + mem[_1932 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(_1613)) >> 32 + 68]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1932 + (2 * ceil32(return_data.size)) + (32 * mem[_1932 + ceil32(return_data.size) + mem[_1932 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * 10^uint8(_1613)) >> 32 + 68]) + 100
                mem[_1932 + (2 * ceil32(return_data.size)) + 68] = _2044
                require _2042 + (32 * _2044) + 32 <= return_data.size
                idx = 0
                s = _1932 + ceil32(return_data.size) + _2042 + 100
                t = _1932 + (2 * ceil32(return_data.size)) + 100
                while idx < _2044:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = administratorAddress
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args administratorAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2109 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2113 = mem[_2109]
                require mem[_2109] == mem[_2109]
                mem[mem[64] + 36] = mem[_2109]
                _2120 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                staticcall 'console.log'.0xf5b1bba9 with:
                        gas gas_remaining wei
                       args mem[_2120 + 36 len mem[_2120] - 4]
                if _2113 > _1599:
                    stor9[address(arg1)] = 1
            else:
                s = 10
                t = 1
                idx = mem[_1612 + 31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if arg2 and t * s > -1 / arg2:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2 * t * s
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                idx = 0
                u = 128
                v = mem[64] + 100
                while idx < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args arg2 * t * s, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1929 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1934 = mem[_1929]
                require mem[_1929] <= test266151307()
                require _1929 + mem[_1929] + 31 < _1929 + return_data.size
                _1935 = mem[_1929 + mem[_1929]]
                if mem[_1929 + mem[_1929]] > test266151307():
                    revert with 'NH{q', 65
                if _1929 + ceil32(return_data.size) + (32 * mem[_1929 + mem[_1929]]) + 32 > test266151307() or (32 * mem[_1929 + mem[_1929]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1929 + ceil32(return_data.size) + (32 * mem[_1929 + mem[_1929]]) + 32
                mem[_1929 + ceil32(return_data.size)] = _1935
                require _1934 + (32 * _1935) + 32 <= return_data.size
                idx = 0
                u = _1929 + _1934 + 32
                v = _1929 + ceil32(return_data.size) + 32
                while idx < _1935:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 0 >= _1935:
                    revert with 'NH{q', 50
                _2032 = mem[_1929 + ceil32(return_data.size) + 32]
                _2033 = mem[64]
                mem[mem[64] + 36] = mem[_1929 + ceil32(return_data.size) + 32]
                _2034 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_2034 + 32 len 4] = 4122065833
                staticcall 'console.log'.0xf5b1bba9 with:
                        gas gas_remaining wei
                       args mem[_2034 + 36 len mem[_2034] - 4]
                mem[_2033 + 72] = stor2
                mem[_2033 + 104] = _2032
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor2, _2032
                mem[_2033 + 68] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2033 + ceil32(return_data.size) + 68
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -121:
                    revert with 'NH{q', 17
                mem[_2033 + ceil32(return_data.size) + 68] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[_2033 + ceil32(return_data.size) + 72] = arg2 * t * s
                mem[_2033 + ceil32(return_data.size) + 104] = _2032
                mem[_2033 + ceil32(return_data.size) + 136] = 160
                mem[_2033 + ceil32(return_data.size) + 232] = mem[96]
                idx = 0
                u = 128
                v = _2033 + ceil32(return_data.size) + 264
                while idx < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_2033 + ceil32(return_data.size) + 168] = administratorAddress
                mem[_2033 + ceil32(return_data.size) + 200] = block.timestamp + 120
                require ext_code.size(stor2)
                call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2 * t * s, _2032, 160, administratorAddress, block.timestamp + 120, mem[_2033 + ceil32(return_data.size) + 232 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2033 + ceil32(return_data.size) + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2033 + (2 * ceil32(return_data.size)) + 68
                require return_data.size >= 32
                _2112 = mem[_2033 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32
                require mem[_2033 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 <= test266151307()
                require _2033 + ceil32(return_data.size) + mem[_2033 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 99 < _2033 + ceil32(return_data.size) + return_data.size + 68
                _2115 = mem[_2033 + ceil32(return_data.size) + mem[_2033 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 68]
                if mem[_2033 + ceil32(return_data.size) + mem[_2033 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 68] > test266151307():
                    revert with 'NH{q', 65
                if _2033 + (2 * ceil32(return_data.size)) + (32 * mem[_2033 + ceil32(return_data.size) + mem[_2033 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 68]) + 100 > test266151307() or (32 * mem[_2033 + ceil32(return_data.size) + mem[_2033 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 68]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _2033 + (2 * ceil32(return_data.size)) + (32 * mem[_2033 + ceil32(return_data.size) + mem[_2033 + ceil32(return_data.size) + 68 len 4], Mask(224, 32, arg2 * t * s) >> 32 + 68]) + 100
                mem[_2033 + (2 * ceil32(return_data.size)) + 68] = _2115
                require _2112 + (32 * _2115) + 32 <= return_data.size
                idx = 0
                s = _2033 + ceil32(return_data.size) + _2112 + 100
                t = _2033 + (2 * ceil32(return_data.size)) + 100
                while idx < _2115:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = administratorAddress
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args administratorAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2152 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2153 = mem[_2152]
                require mem[_2152] == mem[_2152]
                mem[mem[64] + 36] = mem[_2152]
                _2155 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                staticcall 'console.log'.0xf5b1bba9 with:
                        gas gas_remaining wei
                       args mem[_2155 + 36 len mem[_2155] - 4]
                if _2153 > _1599:
                    stor9[address(arg1)] = 1
    return 1
}



}

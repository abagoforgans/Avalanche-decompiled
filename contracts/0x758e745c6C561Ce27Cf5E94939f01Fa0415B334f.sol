contract main {




// =====================  Runtime code  =====================


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
    return bool(stor7[arg1])
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
    stor7[address(arg1)] = 1
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
    stor7[address(arg1)] = 1
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
        revert with 0, 'snipe: not enough wavax on the contract'
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
        revert with 0, 'snipe: sniping is locked. See configure'
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
        revert with 0, 'snipe: not enough wavax on the contract'
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
        mem[(2 * ceil32(return_data.size)) + 464] = address(arg3)
        mem[(2 * ceil32(return_data.size)) + 396] = 68
        staticcall 'console.log'.log(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0xb31f66aa3c1e785363f0875a, 0, address(arg3)
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 496] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 500] = arg2
        mem[(2 * ceil32(return_data.size)) + 532] = 0
        mem[(2 * ceil32(return_data.size)) + 564] = 160
        mem[(2 * ceil32(return_data.size)) + 660] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 332
        t = (2 * ceil32(return_data.size)) + 692
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 596] = administratorAddress
        mem[(2 * ceil32(return_data.size)) + 628] = block.timestamp + 120
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, administratorAddress, block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 692 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 496 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 496
        require return_data.size >= 32
        _70 = mem[(2 * ceil32(return_data.size)) + 496 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + 496 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 496 len 4], Mask(224, 32, arg2) >> 32 + 527 < (2 * ceil32(return_data.size)) + return_data.size + 496
        _72 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 496 len 4], Mask(224, 32, arg2) >> 32 + 496]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 496 len 4], Mask(224, 32, arg2) >> 32 + 496] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 496 len 4], Mask(224, 32, arg2) >> 32 + 496]) + 528 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 496 len 4], Mask(224, 32, arg2) >> 32 + 496]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 496 len 4], Mask(224, 32, arg2) >> 32 + 496]) + 528
        mem[(4 * ceil32(return_data.size)) + 496] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 496 len 4], Mask(224, 32, arg2) >> 32 + 496]
        require _70 + (32 * _72) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _70 + 528
        t = (4 * ceil32(return_data.size)) + 528
        while idx < _72:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[(2 * ceil32(return_data.size)) + 364] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 396] = address(arg3)
        mem[(2 * ceil32(return_data.size)) + 496] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 428] = 68
        staticcall 'console.log'.log(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0xb31f66aa3c1e785363f0875a, 0, address(arg1)
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 528] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 532] = arg2
        mem[(2 * ceil32(return_data.size)) + 564] = 0
        mem[(2 * ceil32(return_data.size)) + 596] = 160
        mem[(2 * ceil32(return_data.size)) + 692] = 3
        idx = 0
        s = (2 * ceil32(return_data.size)) + 332
        t = (2 * ceil32(return_data.size)) + 724
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 628] = administratorAddress
        mem[(2 * ceil32(return_data.size)) + 660] = block.timestamp + 120
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, administratorAddress, block.timestamp + 120, 3, mem[(2 * ceil32(return_data.size)) + 724 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 528 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 528
        require return_data.size >= 32
        _71 = mem[(2 * ceil32(return_data.size)) + 528 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + 528 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 528 len 4], Mask(224, 32, arg2) >> 32 + 559 < (2 * ceil32(return_data.size)) + return_data.size + 528
        _73 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 528 len 4], Mask(224, 32, arg2) >> 32 + 528]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 528 len 4], Mask(224, 32, arg2) >> 32 + 528] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 528 len 4], Mask(224, 32, arg2) >> 32 + 528]) + 560 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 528 len 4], Mask(224, 32, arg2) >> 32 + 528]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 528 len 4], Mask(224, 32, arg2) >> 32 + 528]) + 560
        mem[(4 * ceil32(return_data.size)) + 528] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 528 len 4], Mask(224, 32, arg2) >> 32 + 528]
        require _71 + (32 * _73) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _71 + 560
        t = (4 * ceil32(return_data.size)) + 560
        while idx < _73:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    return 1
}



}

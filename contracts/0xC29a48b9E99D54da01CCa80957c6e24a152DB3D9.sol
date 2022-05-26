contract main {




// =====================  Runtime code  =====================


address owner;
address administratorAddress;
address sandwichRouterAddress;
uint256 stor3; offset 32
uint256 stor3;
uint256 stor4;
address stor5;
uint8 stor6; offset 160
address stor6;
mapping of uint8 stor7;

function getAdministrator() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return administratorAddress
}

function getSandwichRouter() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sandwichRouterAddress
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

function setSandwichRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sandwichRouterAddress = arg1
    return 1
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
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor3.field_0) = arg2
    stor5 = arg3
    stor4 = arg4
    address(stor6.field_0) = arg1
    uint8(stor6.field_160) = 0
    return 1
}

function emmergencyWithdrawBnb() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'contract has an empty BNB balance'
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough tokens in contract'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args administratorAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sandwichOut(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bool(stor7[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'out: must be called by authenticated seller'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = sandwichRouterAddress
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sandwichRouterAddress, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 128] = arg1
    mem[(2 * ceil32(return_data.size)) + 160] = 0xc778417e063141139fce010982780140aa0cd5ab
    if 120 > !block.timestamp:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0x5aeca58700000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 228] = arg2
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
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 120
    call sandwichRouterAddress.sandwichExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    return 1
}

function sandwichIn(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if administratorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'in: must be called by admin or owner'
    staticcall 0xc778417e063141139fce010982780140aa0cd5ab.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'in: not enough wbnb on the contract'
    mem[ceil32(return_data.size) + 100] = sandwichRouterAddress
    mem[ceil32(return_data.size) + 132] = arg2
    call 0xc778417e063141139fce010982780140aa0cd5ab.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sandwichRouterAddress, arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 128] = 0xc778417e063141139fce010982780140aa0cd5ab
    mem[(2 * ceil32(return_data.size)) + 160] = arg1
    if 120 > !block.timestamp:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0x5aeca58700000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg2
    mem[(2 * ceil32(return_data.size)) + 228] = arg3
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
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 120
    call sandwichRouterAddress.sandwichExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    return 1
}

function snipeListing() {
    staticcall 0xc778417e063141139fce010982780140aa0cd5ab.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < uint256(stor3.field_0):
        revert with 0, 'snipe: not enough wbnb on the contract'
    mem[ceil32(return_data.size) + 100] = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d
    mem[ceil32(return_data.size) + 132] = uint256(stor3.field_0)
    call 0xc778417e063141139fce010982780140aa0cd5ab.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, uint256(stor3.field_0)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if uint8(stor6.field_160):
        revert with 0, 'snipe: sniping is locked. See configure'
    uint8(stor6.field_160) = 1
    mem[(2 * ceil32(return_data.size)) + 128] = 0xc778417e063141139fce010982780140aa0cd5ab
    if 0xc778417e063141139fce010982780140aa0cd5ab == address(stor6.field_0):
        mem[(2 * ceil32(return_data.size)) + 160] = stor5
        if 120 > !block.timestamp:
            revert with 0, 17
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
        call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args uint256(stor3.field_0), stor4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), administratorAddress, block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192]) + 1 < 0:
            revert with 0, 65
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192]) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 32 <= return_data.size
    else:
        mem[(2 * ceil32(return_data.size)) + 160] = address(stor6.field_0)
        mem[(2 * ceil32(return_data.size)) + 192] = stor5
        if 120 > !block.timestamp:
            revert with 0, 17
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
        call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args uint256(stor3.field_0), stor4, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), administratorAddress, block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]) + 1 < 0:
            revert with 0, 65
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 32 <= return_data.size
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        require ext_code.size(0xc778417e063141139fce010982780140aa0cd5ab)
        call 0xc778417e063141139fce010982780140aa0cd5ab.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xae38dc87(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if uint32(call.func_hash) >> 224 != unknown_0x8f761e09(?????):
                if unknown_0x9dd3beee(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor7[arg1])
                require unknown_0xa4d3924c(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if eth.balance(this.address) <= 0:
                    revert with 0, 'contract has an empty BNB balance'
                call administratorAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2:
                    revert with 0, 'not enough tokens in contract'
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args administratorAddress, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0xae38dc87(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor7[address(arg1)] = 1
            if uint32(call.func_hash) >> 224 != unknown_0xd64f650d(?????):
                if unknown_0xdf8089ef(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    administratorAddress = address(arg1)
                    stor7[address(arg1)] = 1
                    return 1
                require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(arg1):
                    revert with 0, 'Ownable: new owner is the zero address'
                emit OwnershipTransferred(owner, address(arg1));
                owner = address(arg1)
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if bool(stor7[msg.sender]) != 1:
                revert with 0, 'out: must be called by authenticated seller'
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 132] = sandwichRouterAddress
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sandwichRouterAddress, ext_call.return_data[0]
            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 160] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 192] = 0xc778417e063141139fce010982780140aa0cd5ab
            if 120 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 224] = 0x5aeca58700000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 260] = arg2
            mem[(2 * ceil32(return_data.size)) + 292] = 160
            mem[(2 * ceil32(return_data.size)) + 388] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 160
            t = (2 * ceil32(return_data.size)) + 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 324] = this.address
            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 120
            call sandwichRouterAddress.sandwichExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                revert with 0, 65
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    else:
        if unknown_0x60238f25(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x60238f25(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                return address(stor6.field_0), uint256(stor3.field_0), stor5, stor4, bool(uint8(stor6.field_160))
            if uint32(call.func_hash) >> 224 != unknown_0x6db7b060(?????):
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
                require unknown_0x72cf0d58(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 128
                require arg1 == address(arg1)
                require arg3 == address(arg3)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                uint256(stor3.field_0) = arg2
                stor5 = address(arg3)
                stor4 = arg4
                address(stor6.field_0) = address(arg1)
                uint8(stor6.field_160) = 0
            else:
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                if administratorAddress != msg.sender:
                    if owner != msg.sender:
                        revert with 0, 'in: must be called by admin or owner'
                staticcall 0xc778417e063141139fce010982780140aa0cd5ab.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2:
                    revert with 0, 'in: not enough wbnb on the contract'
                mem[ceil32(return_data.size) + 132] = sandwichRouterAddress
                mem[ceil32(return_data.size) + 164] = arg2
                call 0xc778417e063141139fce010982780140aa0cd5ab.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sandwichRouterAddress, arg2
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 160] = 0xc778417e063141139fce010982780140aa0cd5ab
                mem[(2 * ceil32(return_data.size)) + 192] = address(arg1)
                if 120 > !block.timestamp:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 224] = 0x5aeca58700000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 228] = arg2
                mem[(2 * ceil32(return_data.size)) + 260] = arg3
                mem[(2 * ceil32(return_data.size)) + 292] = 160
                mem[(2 * ceil32(return_data.size)) + 388] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 160
                t = (2 * ceil32(return_data.size)) + 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 324] = this.address
                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                call sandwichRouterAddress.sandwichExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
                    revert with 0, 65
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        else:
            if setSandwichRouter(address arg1) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                sandwichRouterAddress = address(arg1)
            else:
                if unknown_0x16967407(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    return administratorAddress
                if unknown_0x22b0adc3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    return sandwichRouterAddress
                require unknown_0x4efac329(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                mem[132] = this.address
                staticcall 0xc778417e063141139fce010982780140aa0cd5ab.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < uint256(stor3.field_0):
                    revert with 0, 'snipe: not enough wbnb on the contract'
                mem[ceil32(return_data.size) + 132] = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d
                mem[ceil32(return_data.size) + 164] = uint256(stor3.field_0)
                call 0xc778417e063141139fce010982780140aa0cd5ab.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, uint256(stor3.field_0)
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if uint8(stor6.field_160):
                    revert with 0, 'snipe: sniping is locked. See configure'
                uint8(stor6.field_160) = 1
                mem[(2 * ceil32(return_data.size)) + 160] = 0xc778417e063141139fce010982780140aa0cd5ab
                if 0xc778417e063141139fce010982780140aa0cd5ab == address(stor6.field_0):
                    mem[(2 * ceil32(return_data.size)) + 192] = stor5
                    if 120 > !block.timestamp:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 228] = uint256(stor3.field_0)
                    mem[(2 * ceil32(return_data.size)) + 260] = stor4
                    mem[(2 * ceil32(return_data.size)) + 292] = 160
                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 160
                    t = (2 * ceil32(return_data.size)) + 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 324] = administratorAddress
                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                    call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint256(stor3.field_0), stor4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 420 len 64]), administratorAddress, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]) + 1 < 0:
                        revert with 0, 65
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 32 <= return_data.size
                else:
                    mem[(2 * ceil32(return_data.size)) + 192] = address(stor6.field_0)
                    mem[(2 * ceil32(return_data.size)) + 224] = stor5
                    if 120 > !block.timestamp:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = uint256(stor3.field_0)
                    mem[(2 * ceil32(return_data.size)) + 292] = stor4
                    mem[(2 * ceil32(return_data.size)) + 324] = 160
                    mem[(2 * ceil32(return_data.size)) + 420] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 160
                    t = (2 * ceil32(return_data.size)) + 452
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 356] = administratorAddress
                    mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp + 120
                    call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint256(stor3.field_0), stor4, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 452 len 96]), administratorAddress, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 0, stor3.field_32) <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 0, stor3.field_32) + 287 < (2 * ceil32(return_data.size)) + return_data.size + 256
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 0, stor3.field_32) + 256] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 0, stor3.field_32) + 256]) + 257 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 0, stor3.field_32) + 256]) + 1 < 0:
                        revert with 0, 65
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 0, stor3.field_32) + 256]) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 0, stor3.field_32) + 32 <= return_data.size
    return 1
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
address administratorAddress;
address routerAddress;
uint256 sub_fceb0f3b;
uint256 orders;
uint256 sub_5e66ff28;
uint256 sub_d3de13d6;
address tokenToBuyAddress;
address sub_105a5fe0Address;
address chiTokenAddress;
mapping of uint8 stor10;

function chiToken() {
    return chiTokenAddress
}

function sub_105a5fe0(?) {
    return sub_105a5fe0Address
}

function getAdministrator() {
    if not stor10[msg.sender]:
        revert with 0, '!Auth'
    return administratorAddress
}

function tokenToBuy() {
    return tokenToBuyAddress
}

function orders() {
    return orders
}

function sub_5e66ff28(?) {
    return sub_5e66ff28
}

function owner() {
    return owner
}

function getRouter() {
    if not stor10[msg.sender]:
        revert with 0, '!Auth'
    return routerAddress
}

function sub_d3de13d6(?) {
    return sub_d3de13d6
}

function administrator() {
    return administratorAddress
}

function router() {
    return routerAddress
}

function sub_fceb0f3b(?) {
    return sub_fceb0f3b
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[address(arg1)])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    stor10[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    stor10[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    owner = arg1
    stor10[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function mintGasToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(chiTokenAddress)
    call chiTokenAddress.0xa0712d68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setConfig(address arg1, address arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    if not stor10[msg.sender]:
        revert with 0, '!Auth'
    routerAddress = arg1
    sub_fceb0f3b = arg3
    sub_105a5fe0Address = arg4
    chiTokenAddress = arg2
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_dc7a70ca(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!Owner'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'No tokens'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args administratorAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function Suicide(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg4 == arg4
    require arg5 == arg5
    mem[0] = msg.sender
    mem[32] = 10
    if not stor10[msg.sender]:
        revert with 0, '!Auth'
    sub_5e66ff28 = arg1
    sub_d3de13d6 = arg2
    orders = arg3
    tokenToBuyAddress = arg4
    sub_105a5fe0Address = arg5
    mem[100] = this.address
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'No WBNB!'
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == sub_105a5fe0Address:
        mem[ceil32(return_data.size) + 96] = 2
        mem[64] = ceil32(return_data.size) + 192
        mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[ceil32(return_data.size) + 160] = tokenToBuyAddress
        idx = 0
        while idx < orders:
            if 120 > !block.timestamp:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_5e66ff28
            mem[mem[64] + 36] = sub_d3de13d6
            mem[mem[64] + 68] = 160
            _69 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = mem[64] + 196
            u = ceil32(return_data.size) + 128
            while s < _69:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp + 120
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sub_5e66ff28, sub_d3de13d6, 160, msg.sender, block.timestamp + 120, mem[mem[64] + 164 len (32 * _69) + 32]
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
            if _105 + ceil32(return_data.size) + ceil32(32 * mem[_105 + mem[_105]]) + 1 > test266151307() or ceil32(32 * mem[_105 + mem[_105]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _105 + ceil32(return_data.size) + ceil32(32 * mem[_105 + mem[_105]]) + 1
            mem[_105 + ceil32(return_data.size)] = _109
            require (32 * _109) + _107 + 32 <= return_data.size
            t = _105 + ceil32(return_data.size) + 32
            s = _105 + _107 + 32
            while s < (32 * _109) + _105 + _107 + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        staticcall chiTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_63] > 0:
            if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 21000 > !gas_remaining:
                revert with 'NH{q', 17
            if gas_remaining + 21000 < gas_remaining:
                revert with 'NH{q', 17
            if 21000 > !(16 * calldata.size):
                revert with 'NH{q', 17
            if 14154 > !((16 * calldata.size) + 21000):
                revert with 'NH{q', 17
            call chiTokenAddress.freeUpTo(uint256 arg1) with:
                 gas gas_remaining wei
                args ((16 * calldata.size) + 35154 / 41947)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        mem[ceil32(return_data.size) + 96] = 3
        mem[64] = ceil32(return_data.size) + 224
        mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[ceil32(return_data.size) + 160] = sub_105a5fe0Address
        mem[ceil32(return_data.size) + 192] = tokenToBuyAddress
        idx = 0
        while idx < orders:
            if 120 > !block.timestamp:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_5e66ff28
            mem[mem[64] + 36] = sub_d3de13d6
            mem[mem[64] + 68] = 160
            _70 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = mem[64] + 196
            u = ceil32(return_data.size) + 128
            while s < _70:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp + 120
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sub_5e66ff28, sub_d3de13d6, 160, msg.sender, block.timestamp + 120, mem[mem[64] + 164 len (32 * _70) + 32]
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
            if _106 + ceil32(return_data.size) + ceil32(32 * mem[_106 + mem[_106]]) + 1 > test266151307() or ceil32(32 * mem[_106 + mem[_106]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _106 + ceil32(return_data.size) + ceil32(32 * mem[_106 + mem[_106]]) + 1
            mem[_106 + ceil32(return_data.size)] = _110
            require (32 * _110) + _108 + 32 <= return_data.size
            t = _106 + ceil32(return_data.size) + 32
            s = _106 + _108 + 32
            while s < (32 * _110) + _106 + _108 + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        staticcall chiTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _64 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_64] > 0:
            if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 21000 > !gas_remaining:
                revert with 'NH{q', 17
            if gas_remaining + 21000 < gas_remaining:
                revert with 'NH{q', 17
            if 21000 > !(16 * calldata.size):
                revert with 'NH{q', 17
            if 14154 > !((16 * calldata.size) + 21000):
                revert with 'NH{q', 17
            call chiTokenAddress.freeUpTo(uint256 arg1) with:
                 gas gas_remaining wei
                args ((16 * calldata.size) + 35154 / 41947)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    return 1
}

function buy_quantity(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg4 == arg4
    require arg5 == arg5
    mem[0] = msg.sender
    mem[32] = 10
    if not stor10[msg.sender]:
        revert with 0, '!Auth'
    sub_5e66ff28 = arg1
    sub_d3de13d6 = arg2
    orders = arg3
    tokenToBuyAddress = arg4
    sub_105a5fe0Address = arg5
    mem[100] = this.address
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'No WBNB'
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == sub_105a5fe0Address:
        mem[ceil32(return_data.size) + 96] = 2
        mem[64] = ceil32(return_data.size) + 192
        mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[ceil32(return_data.size) + 160] = tokenToBuyAddress
        idx = 0
        while idx < orders:
            if 120 > !block.timestamp:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_d3de13d6
            mem[mem[64] + 36] = sub_5e66ff28
            mem[mem[64] + 68] = 160
            _69 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = mem[64] + 196
            u = ceil32(return_data.size) + 128
            while s < _69:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp + 120
            call routerAddress.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sub_d3de13d6, sub_5e66ff28, 160, msg.sender, block.timestamp + 120, mem[mem[64] + 164 len (32 * _69) + 32]
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
            if _105 + ceil32(return_data.size) + ceil32(32 * mem[_105 + mem[_105]]) + 1 > test266151307() or ceil32(32 * mem[_105 + mem[_105]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _105 + ceil32(return_data.size) + ceil32(32 * mem[_105 + mem[_105]]) + 1
            mem[_105 + ceil32(return_data.size)] = _109
            require (32 * _109) + _107 + 32 <= return_data.size
            t = _105 + ceil32(return_data.size) + 32
            s = _105 + _107 + 32
            while s < (32 * _109) + _105 + _107 + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        staticcall chiTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_63] > 0:
            if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 21000 > !gas_remaining:
                revert with 'NH{q', 17
            if gas_remaining + 21000 < gas_remaining:
                revert with 'NH{q', 17
            if 21000 > !(16 * calldata.size):
                revert with 'NH{q', 17
            if 14154 > !((16 * calldata.size) + 21000):
                revert with 'NH{q', 17
            call chiTokenAddress.freeUpTo(uint256 arg1) with:
                 gas gas_remaining wei
                args ((16 * calldata.size) + 35154 / 41947)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        mem[ceil32(return_data.size) + 96] = 3
        mem[64] = ceil32(return_data.size) + 224
        mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[ceil32(return_data.size) + 160] = sub_105a5fe0Address
        mem[ceil32(return_data.size) + 192] = tokenToBuyAddress
        idx = 0
        while idx < orders:
            if 120 > !block.timestamp:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_d3de13d6
            mem[mem[64] + 36] = sub_5e66ff28
            mem[mem[64] + 68] = 160
            _70 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = mem[64] + 196
            u = ceil32(return_data.size) + 128
            while s < _70:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp + 120
            call routerAddress.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sub_d3de13d6, sub_5e66ff28, 160, msg.sender, block.timestamp + 120, mem[mem[64] + 164 len (32 * _70) + 32]
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
            if _106 + ceil32(return_data.size) + ceil32(32 * mem[_106 + mem[_106]]) + 1 > test266151307() or ceil32(32 * mem[_106 + mem[_106]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _106 + ceil32(return_data.size) + ceil32(32 * mem[_106 + mem[_106]]) + 1
            mem[_106 + ceil32(return_data.size)] = _110
            require (32 * _110) + _108 + 32 <= return_data.size
            t = _106 + ceil32(return_data.size) + 32
            s = _106 + _108 + 32
            while s < (32 * _110) + _106 + _108 + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        staticcall chiTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _64 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_64] > 0:
            if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 21000 > !gas_remaining:
                revert with 'NH{q', 17
            if gas_remaining + 21000 < gas_remaining:
                revert with 'NH{q', 17
            if 21000 > !(16 * calldata.size):
                revert with 'NH{q', 17
            if 14154 > !((16 * calldata.size) + 21000):
                revert with 'NH{q', 17
            call chiTokenAddress.freeUpTo(uint256 arg1) with:
                 gas gas_remaining wei
                args ((16 * calldata.size) + 35154 / 41947)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if unknown_0xb0f479a1(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xf2fde38b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xf887ea40(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return routerAddress
                if unknown_0xfceb0f3b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_fceb0f3b
                require unknown_0xfe9fbb80(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor10[address(arg1)])
            if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, '!Owner'
                owner = address(arg1)
                stor10[address(arg1)] = 1
                emit OwnershipTransferred(address(arg1));
            else:
                if unknown_0xf53d0a8e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return administratorAddress
                require unknown_0xf75ff6a4(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require ext_code.size(chiTokenAddress)
                call chiTokenAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if unknown_0xd3de13d6(?????) > uint32(call.func_hash) >> 224:
            if unknown_0xb0f479a1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if not stor10[msg.sender]:
                    revert with 0, '!Auth'
                return routerAddress
            require unknown_0xb6a5d7de(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, '!Owner'
            stor10[address(arg1)] = 1
        if unknown_0xd3de13d6(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_d3de13d6
        if uint32(call.func_hash) >> 224 != unknown_0xdc7a70ca(?????):
            require unknown_0xf0b37c04(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, '!Owner'
            stor10[address(arg1)] = 0
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if owner != msg.sender:
            revert with 0, '!Owner'
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'No tokens'
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args administratorAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if unknown_0x4fb764c9(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x16967407(?????) > uint32(call.func_hash) >> 224:
                if chiToken() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return chiTokenAddress
                require unknown_0x105a5fe0(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_105a5fe0Address
            if unknown_0x16967407(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if not stor10[msg.sender]:
                    revert with 0, '!Auth'
                return administratorAddress
            if unknown_0x19ca8d9d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return tokenToBuyAddress
            require unknown_0x2f54bf6e(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            return (owner == address(arg1))
        if unknown_0x6c6d086c(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x4fb764c9(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return orders
            if uint32(call.func_hash) >> 224 != unknown_0x519f6885(?????):
                require unknown_0x5e66ff28(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_5e66ff28
            require not msg.value
            require calldata.size - 4 >= 160
            require arg4 == address(arg4)
            require arg5 == address(arg5)
            mem[0] = msg.sender
            mem[32] = 10
            if not stor10[msg.sender]:
                revert with 0, '!Auth'
            sub_5e66ff28 = arg1
            sub_d3de13d6 = arg2
            orders = arg3
            tokenToBuyAddress = address(arg4)
            sub_105a5fe0Address = address(arg5)
            mem[132] = this.address
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1:
                revert with 0, 'No WBNB!'
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == sub_105a5fe0Address:
                mem[ceil32(return_data.size) + 128] = 2
                mem[64] = ceil32(return_data.size) + 224
                mem[ceil32(return_data.size) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[ceil32(return_data.size) + 192] = tokenToBuyAddress
                idx = 0
                while idx < orders:
                    if 120 > !block.timestamp:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_5e66ff28
                    mem[mem[64] + 36] = sub_d3de13d6
                    mem[mem[64] + 68] = 160
                    _210 = mem[ceil32(return_data.size) + 128]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 128]
                    s = 0
                    t = mem[64] + 196
                    u = ceil32(return_data.size) + 160
                    while s < _210:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 120
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args sub_5e66ff28, sub_d3de13d6, 160, msg.sender, block.timestamp + 120, mem[mem[64] + 164 len (32 * _210) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _282 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _286 = mem[_282]
                    require mem[_282] <= test266151307()
                    require _282 + mem[_282] + 31 < _282 + return_data.size
                    _290 = mem[_282 + mem[_282]]
                    if mem[_282 + mem[_282]] > test266151307():
                        revert with 'NH{q', 65
                    if _282 + ceil32(return_data.size) + ceil32(32 * mem[_282 + mem[_282]]) + 1 > test266151307() or ceil32(32 * mem[_282 + mem[_282]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _282 + ceil32(return_data.size) + ceil32(32 * mem[_282 + mem[_282]]) + 1
                    mem[_282 + ceil32(return_data.size)] = _290
                    require (32 * _290) + _286 + 32 <= return_data.size
                    t = _282 + ceil32(return_data.size) + 32
                    s = _282 + _286 + 32
                    while s < (32 * _290) + _282 + _286 + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall chiTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _198 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_198] > 0:
                    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 21000 > !gas_remaining:
                        revert with 'NH{q', 17
                    if gas_remaining + 21000 < gas_remaining:
                        revert with 'NH{q', 17
                    if 21000 > !(16 * calldata.size):
                        revert with 'NH{q', 17
                    if 14154 > !((16 * calldata.size) + 21000):
                        revert with 'NH{q', 17
                    call chiTokenAddress.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                mem[ceil32(return_data.size) + 128] = 3
                mem[64] = ceil32(return_data.size) + 256
                mem[ceil32(return_data.size) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[ceil32(return_data.size) + 192] = sub_105a5fe0Address
                mem[ceil32(return_data.size) + 224] = tokenToBuyAddress
                idx = 0
                while idx < orders:
                    if 120 > !block.timestamp:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_5e66ff28
                    mem[mem[64] + 36] = sub_d3de13d6
                    mem[mem[64] + 68] = 160
                    _211 = mem[ceil32(return_data.size) + 128]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 128]
                    s = 0
                    t = mem[64] + 196
                    u = ceil32(return_data.size) + 160
                    while s < _211:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 120
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args sub_5e66ff28, sub_d3de13d6, 160, msg.sender, block.timestamp + 120, mem[mem[64] + 164 len (32 * _211) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _283 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _287 = mem[_283]
                    require mem[_283] <= test266151307()
                    require _283 + mem[_283] + 31 < _283 + return_data.size
                    _291 = mem[_283 + mem[_283]]
                    if mem[_283 + mem[_283]] > test266151307():
                        revert with 'NH{q', 65
                    if _283 + ceil32(return_data.size) + ceil32(32 * mem[_283 + mem[_283]]) + 1 > test266151307() or ceil32(32 * mem[_283 + mem[_283]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _283 + ceil32(return_data.size) + ceil32(32 * mem[_283 + mem[_283]]) + 1
                    mem[_283 + ceil32(return_data.size)] = _291
                    require (32 * _291) + _287 + 32 <= return_data.size
                    t = _283 + ceil32(return_data.size) + 32
                    s = _283 + _287 + 32
                    while s < (32 * _291) + _283 + _287 + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall chiTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _199 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_199] > 0:
                    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 21000 > !gas_remaining:
                        revert with 'NH{q', 17
                    if gas_remaining + 21000 < gas_remaining:
                        revert with 'NH{q', 17
                    if 21000 > !(16 * calldata.size):
                        revert with 'NH{q', 17
                    if 14154 > !((16 * calldata.size) + 21000):
                        revert with 'NH{q', 17
                    call chiTokenAddress.freeUpTo(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((16 * calldata.size) + 35154 / 41947)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            if unknown_0x6c6d086c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 128
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg4 == address(arg4)
                if not stor10[msg.sender]:
                    revert with 0, '!Auth'
                routerAddress = address(arg1)
                sub_fceb0f3b = arg3
                sub_105a5fe0Address = address(arg4)
                chiTokenAddress = address(arg2)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                require unknown_0xa90c4480(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 160
                require arg4 == address(arg4)
                require arg5 == address(arg5)
                mem[0] = msg.sender
                mem[32] = 10
                if not stor10[msg.sender]:
                    revert with 0, '!Auth'
                sub_5e66ff28 = arg1
                sub_d3de13d6 = arg2
                orders = arg3
                tokenToBuyAddress = address(arg4)
                sub_105a5fe0Address = address(arg5)
                mem[132] = this.address
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg1:
                    revert with 0, 'No WBNB'
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == sub_105a5fe0Address:
                    mem[ceil32(return_data.size) + 128] = 2
                    mem[64] = ceil32(return_data.size) + 224
                    mem[ceil32(return_data.size) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[ceil32(return_data.size) + 192] = tokenToBuyAddress
                    idx = 0
                    while idx < orders:
                        if 120 > !block.timestamp:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_d3de13d6
                        mem[mem[64] + 36] = sub_5e66ff28
                        mem[mem[64] + 68] = 160
                        _212 = mem[ceil32(return_data.size) + 128]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 128]
                        s = 0
                        t = mem[64] + 196
                        u = ceil32(return_data.size) + 160
                        while s < _212:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 120
                        call routerAddress.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args sub_d3de13d6, sub_5e66ff28, 160, msg.sender, block.timestamp + 120, mem[mem[64] + 164 len (32 * _212) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _284 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _288 = mem[_284]
                        require mem[_284] <= test266151307()
                        require _284 + mem[_284] + 31 < _284 + return_data.size
                        _292 = mem[_284 + mem[_284]]
                        if mem[_284 + mem[_284]] > test266151307():
                            revert with 'NH{q', 65
                        if _284 + ceil32(return_data.size) + ceil32(32 * mem[_284 + mem[_284]]) + 1 > test266151307() or ceil32(32 * mem[_284 + mem[_284]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _284 + ceil32(return_data.size) + ceil32(32 * mem[_284 + mem[_284]]) + 1
                        mem[_284 + ceil32(return_data.size)] = _292
                        require (32 * _292) + _288 + 32 <= return_data.size
                        t = _284 + ceil32(return_data.size) + 32
                        s = _284 + _288 + 32
                        while s < (32 * _292) + _284 + _288 + 32:
                            mem[t] = mem[s]
                            t = t + 32
                            s = s + 32
                            continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    staticcall chiTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_200] > 0:
                        if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 21000 > !gas_remaining:
                            revert with 'NH{q', 17
                        if gas_remaining + 21000 < gas_remaining:
                            revert with 'NH{q', 17
                        if 21000 > !(16 * calldata.size):
                            revert with 'NH{q', 17
                        if 14154 > !((16 * calldata.size) + 21000):
                            revert with 'NH{q', 17
                        call chiTokenAddress.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    mem[ceil32(return_data.size) + 128] = 3
                    mem[64] = ceil32(return_data.size) + 256
                    mem[ceil32(return_data.size) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[ceil32(return_data.size) + 192] = sub_105a5fe0Address
                    mem[ceil32(return_data.size) + 224] = tokenToBuyAddress
                    idx = 0
                    while idx < orders:
                        if 120 > !block.timestamp:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_d3de13d6
                        mem[mem[64] + 36] = sub_5e66ff28
                        mem[mem[64] + 68] = 160
                        _213 = mem[ceil32(return_data.size) + 128]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 128]
                        s = 0
                        t = mem[64] + 196
                        u = ceil32(return_data.size) + 160
                        while s < _213:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 120
                        call routerAddress.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args sub_d3de13d6, sub_5e66ff28, 160, msg.sender, block.timestamp + 120, mem[mem[64] + 164 len (32 * _213) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _285 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _289 = mem[_285]
                        require mem[_285] <= test266151307()
                        require _285 + mem[_285] + 31 < _285 + return_data.size
                        _293 = mem[_285 + mem[_285]]
                        if mem[_285 + mem[_285]] > test266151307():
                            revert with 'NH{q', 65
                        if _285 + ceil32(return_data.size) + ceil32(32 * mem[_285 + mem[_285]]) + 1 > test266151307() or ceil32(32 * mem[_285 + mem[_285]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _285 + ceil32(return_data.size) + ceil32(32 * mem[_285 + mem[_285]]) + 1
                        mem[_285 + ceil32(return_data.size)] = _293
                        require (32 * _293) + _289 + 32 <= return_data.size
                        t = _285 + ceil32(return_data.size) + 32
                        s = _285 + _289 + 32
                        while s < (32 * _293) + _285 + _289 + 32:
                            mem[t] = mem[s]
                            t = t + 32
                            s = s + 32
                            continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    staticcall chiTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _201 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_201] > 0:
                        if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 21000 > !gas_remaining:
                            revert with 'NH{q', 17
                        if gas_remaining + 21000 < gas_remaining:
                            revert with 'NH{q', 17
                        if 21000 > !(16 * calldata.size):
                            revert with 'NH{q', 17
                        if 14154 > !((16 * calldata.size) + 21000):
                            revert with 'NH{q', 17
                        call chiTokenAddress.freeUpTo(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((16 * calldata.size) + 35154 / 41947)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
    return 1
}



}

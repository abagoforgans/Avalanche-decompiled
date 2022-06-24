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
mapping of uint8 stor9;

function sub_105a5fe0(?) {
    return sub_105a5fe0Address
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
    return bool(stor9[address(arg1)])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function getConfig() {
    if not stor9[msg.sender]:
        revert with 0, '!Auth'
    return routerAddress, administratorAddress, owner, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    stor9[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    stor9[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    owner = arg1
    stor9[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sub_ea1b8ccf(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if not stor9[msg.sender]:
        revert with 0, '!Auth'
    routerAddress = address(arg1)
    sub_fceb0f3b = arg2
    sub_105a5fe0Address = address(arg3)
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
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
    mem[32] = 9
    if not stor9[msg.sender]:
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
            _43 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_5e66ff28
            mem[mem[64] + 36] = sub_d3de13d6
            mem[mem[64] + 68] = 160
            _45 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = mem[64] + 196
            u = ceil32(return_data.size) + 128
            while s < _45:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_43 + 100] = msg.sender
            mem[_43 + 132] = block.timestamp + 120
            call routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _43 + (32 * _45) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _65 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _67 = mem[_65]
            require mem[_65] <= test266151307()
            require _65 + mem[_65] + 31 < _65 + return_data.size
            _69 = mem[_65 + mem[_65]]
            if mem[_65 + mem[_65]] > test266151307():
                revert with 'NH{q', 65
            if _65 + ceil32(return_data.size) + ceil32(32 * mem[_65 + mem[_65]]) + 1 > test266151307() or ceil32(32 * mem[_65 + mem[_65]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _65 + ceil32(return_data.size) + ceil32(32 * mem[_65 + mem[_65]]) + 1
            mem[_65 + ceil32(return_data.size)] = _69
            require (32 * _69) + _67 + 32 <= return_data.size
            t = _65 + ceil32(return_data.size) + 32
            s = _65 + _67 + 32
            while s < (32 * _69) + _65 + _67 + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
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
            _44 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_5e66ff28
            mem[mem[64] + 36] = sub_d3de13d6
            mem[mem[64] + 68] = 160
            _46 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = mem[64] + 196
            u = ceil32(return_data.size) + 128
            while s < _46:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_44 + 100] = msg.sender
            mem[_44 + 132] = block.timestamp + 120
            call routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _44 + (32 * _46) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _68 = mem[_66]
            require mem[_66] <= test266151307()
            require _66 + mem[_66] + 31 < _66 + return_data.size
            _70 = mem[_66 + mem[_66]]
            if mem[_66 + mem[_66]] > test266151307():
                revert with 'NH{q', 65
            if _66 + ceil32(return_data.size) + ceil32(32 * mem[_66 + mem[_66]]) + 1 > test266151307() or ceil32(32 * mem[_66 + mem[_66]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _66 + ceil32(return_data.size) + ceil32(32 * mem[_66 + mem[_66]]) + 1
            mem[_66 + ceil32(return_data.size)] = _70
            require (32 * _70) + _68 + 32 <= return_data.size
            t = _66 + ceil32(return_data.size) + 32
            s = _66 + _68 + 32
            while s < (32 * _70) + _66 + _68 + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    return 1
}

function buy_quantity(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg4 == arg4
    require arg5 == arg5
    mem[0] = msg.sender
    mem[32] = 9
    if not stor9[msg.sender]:
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
            _43 = mem[64]
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_d3de13d6
            mem[mem[64] + 36] = sub_5e66ff28
            mem[mem[64] + 68] = 160
            _45 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = mem[64] + 196
            u = ceil32(return_data.size) + 128
            while s < _45:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_43 + 100] = msg.sender
            mem[_43 + 132] = block.timestamp + 120
            call routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _43 + (32 * _45) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _65 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _67 = mem[_65]
            require mem[_65] <= test266151307()
            require _65 + mem[_65] + 31 < _65 + return_data.size
            _69 = mem[_65 + mem[_65]]
            if mem[_65 + mem[_65]] > test266151307():
                revert with 'NH{q', 65
            if _65 + ceil32(return_data.size) + ceil32(32 * mem[_65 + mem[_65]]) + 1 > test266151307() or ceil32(32 * mem[_65 + mem[_65]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _65 + ceil32(return_data.size) + ceil32(32 * mem[_65 + mem[_65]]) + 1
            mem[_65 + ceil32(return_data.size)] = _69
            require (32 * _69) + _67 + 32 <= return_data.size
            t = _65 + ceil32(return_data.size) + 32
            s = _65 + _67 + 32
            while s < (32 * _69) + _65 + _67 + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
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
            _44 = mem[64]
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_d3de13d6
            mem[mem[64] + 36] = sub_5e66ff28
            mem[mem[64] + 68] = 160
            _46 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = mem[64] + 196
            u = ceil32(return_data.size) + 128
            while s < _46:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_44 + 100] = msg.sender
            mem[_44 + 132] = block.timestamp + 120
            call routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _44 + (32 * _46) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _68 = mem[_66]
            require mem[_66] <= test266151307()
            require _66 + mem[_66] + 31 < _66 + return_data.size
            _70 = mem[_66 + mem[_66]]
            if mem[_66 + mem[_66]] > test266151307():
                revert with 'NH{q', 65
            if _66 + ceil32(return_data.size) + ceil32(32 * mem[_66 + mem[_66]]) + 1 > test266151307() or ceil32(32 * mem[_66 + mem[_66]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _66 + ceil32(return_data.size) + ceil32(32 * mem[_66 + mem[_66]]) + 1
            mem[_66 + ceil32(return_data.size)] = _70
            require (32 * _70) + _68 + 32 <= return_data.size
            t = _66 + ceil32(return_data.size) + 32
            s = _66 + _68 + 32
            while s < (32 * _70) + _66 + _68 + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if unknown_0xc3f909d4(?????) <= uint32(call.func_hash) >> 224:
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
                return bool(stor9[address(arg1)])
            if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                require unknown_0xf53d0a8e(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return administratorAddress
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, '!Owner'
            owner = address(arg1)
            stor9[address(arg1)] = 1
            emit OwnershipTransferred(address(arg1));
        if unknown_0xdc7a70ca(?????) > uint32(call.func_hash) >> 224:
            if unknown_0xc3f909d4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if not stor9[msg.sender]:
                    revert with 0, '!Auth'
                return routerAddress, administratorAddress, owner, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            require unknown_0xd3de13d6(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return sub_d3de13d6
        if unknown_0xdc7a70ca(?????) == uint32(call.func_hash) >> 224:
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
        else:
            if uint32(call.func_hash) >> 224 != unknown_0xea1b8ccf(?????):
                require unknown_0xf0b37c04(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, '!Owner'
                stor9[address(arg1)] = 0
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg3 == address(arg3)
            if not stor9[msg.sender]:
                revert with 0, '!Auth'
            routerAddress = address(arg1)
            sub_fceb0f3b = arg2
            sub_105a5fe0Address = address(arg3)
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if unknown_0x519f6885(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x105a5fe0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_105a5fe0Address
            if unknown_0x19ca8d9d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return tokenToBuyAddress
            if uint32(call.func_hash) >> 224 != unknown_0x2f54bf6e(?????):
                require unknown_0x4fb764c9(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return orders
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            return (owner == address(arg1))
        if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x519f6885(?????):
                require unknown_0x5e66ff28(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_5e66ff28
            require not msg.value
            require calldata.size - 4 >= 160
            require arg4 == address(arg4)
            require arg5 == address(arg5)
            mem[0] = msg.sender
            mem[32] = 9
            if not stor9[msg.sender]:
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
                    _149 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_5e66ff28
                    mem[mem[64] + 36] = sub_d3de13d6
                    mem[mem[64] + 68] = 160
                    _153 = mem[ceil32(return_data.size) + 128]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 128]
                    s = 0
                    t = mem[64] + 196
                    u = ceil32(return_data.size) + 160
                    while s < _153:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_149 + 100] = msg.sender
                    mem[_149 + 132] = block.timestamp + 120
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _149 + (32 * _153) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _193 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _197 = mem[_193]
                    require mem[_193] <= test266151307()
                    require _193 + mem[_193] + 31 < _193 + return_data.size
                    _201 = mem[_193 + mem[_193]]
                    if mem[_193 + mem[_193]] > test266151307():
                        revert with 'NH{q', 65
                    if _193 + ceil32(return_data.size) + ceil32(32 * mem[_193 + mem[_193]]) + 1 > test266151307() or ceil32(32 * mem[_193 + mem[_193]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _193 + ceil32(return_data.size) + ceil32(32 * mem[_193 + mem[_193]]) + 1
                    mem[_193 + ceil32(return_data.size)] = _201
                    require (32 * _201) + _197 + 32 <= return_data.size
                    t = _193 + ceil32(return_data.size) + 32
                    s = _193 + _197 + 32
                    while s < (32 * _201) + _193 + _197 + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
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
                    _150 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_5e66ff28
                    mem[mem[64] + 36] = sub_d3de13d6
                    mem[mem[64] + 68] = 160
                    _154 = mem[ceil32(return_data.size) + 128]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 128]
                    s = 0
                    t = mem[64] + 196
                    u = ceil32(return_data.size) + 160
                    while s < _154:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_150 + 100] = msg.sender
                    mem[_150 + 132] = block.timestamp + 120
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _150 + (32 * _154) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _194 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _198 = mem[_194]
                    require mem[_194] <= test266151307()
                    require _194 + mem[_194] + 31 < _194 + return_data.size
                    _202 = mem[_194 + mem[_194]]
                    if mem[_194 + mem[_194]] > test266151307():
                        revert with 'NH{q', 65
                    if _194 + ceil32(return_data.size) + ceil32(32 * mem[_194 + mem[_194]]) + 1 > test266151307() or ceil32(32 * mem[_194 + mem[_194]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _194 + ceil32(return_data.size) + ceil32(32 * mem[_194 + mem[_194]]) + 1
                    mem[_194 + ceil32(return_data.size)] = _202
                    require (32 * _202) + _198 + 32 <= return_data.size
                    t = _194 + ceil32(return_data.size) + 32
                    s = _194 + _198 + 32
                    while s < (32 * _202) + _194 + _198 + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if uint32(call.func_hash) >> 224 != unknown_0xa90c4480(?????):
                require unknown_0xb6a5d7de(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, '!Owner'
                stor9[address(arg1)] = 1
            require not msg.value
            require calldata.size - 4 >= 160
            require arg4 == address(arg4)
            require arg5 == address(arg5)
            mem[0] = msg.sender
            mem[32] = 9
            if not stor9[msg.sender]:
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
                    _151 = mem[64]
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_d3de13d6
                    mem[mem[64] + 36] = sub_5e66ff28
                    mem[mem[64] + 68] = 160
                    _155 = mem[ceil32(return_data.size) + 128]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 128]
                    s = 0
                    t = mem[64] + 196
                    u = ceil32(return_data.size) + 160
                    while s < _155:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_151 + 100] = msg.sender
                    mem[_151 + 132] = block.timestamp + 120
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _151 + (32 * _155) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _195 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _199 = mem[_195]
                    require mem[_195] <= test266151307()
                    require _195 + mem[_195] + 31 < _195 + return_data.size
                    _203 = mem[_195 + mem[_195]]
                    if mem[_195 + mem[_195]] > test266151307():
                        revert with 'NH{q', 65
                    if _195 + ceil32(return_data.size) + ceil32(32 * mem[_195 + mem[_195]]) + 1 > test266151307() or ceil32(32 * mem[_195 + mem[_195]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _195 + ceil32(return_data.size) + ceil32(32 * mem[_195 + mem[_195]]) + 1
                    mem[_195 + ceil32(return_data.size)] = _203
                    require (32 * _203) + _199 + 32 <= return_data.size
                    t = _195 + ceil32(return_data.size) + 32
                    s = _195 + _199 + 32
                    while s < (32 * _203) + _195 + _199 + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
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
                    _152 = mem[64]
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_d3de13d6
                    mem[mem[64] + 36] = sub_5e66ff28
                    mem[mem[64] + 68] = 160
                    _156 = mem[ceil32(return_data.size) + 128]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 128]
                    s = 0
                    t = mem[64] + 196
                    u = ceil32(return_data.size) + 160
                    while s < _156:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_152 + 100] = msg.sender
                    mem[_152 + 132] = block.timestamp + 120
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _152 + (32 * _156) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _196 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _200 = mem[_196]
                    require mem[_196] <= test266151307()
                    require _196 + mem[_196] + 31 < _196 + return_data.size
                    _204 = mem[_196 + mem[_196]]
                    if mem[_196 + mem[_196]] > test266151307():
                        revert with 'NH{q', 65
                    if _196 + ceil32(return_data.size) + ceil32(32 * mem[_196 + mem[_196]]) + 1 > test266151307() or ceil32(32 * mem[_196 + mem[_196]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _196 + ceil32(return_data.size) + ceil32(32 * mem[_196 + mem[_196]]) + 1
                    mem[_196 + ceil32(return_data.size)] = _204
                    require (32 * _204) + _200 + 32 <= return_data.size
                    t = _196 + ceil32(return_data.size) + 32
                    s = _196 + _200 + 32
                    while s < (32 * _204) + _196 + _200 + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
    return 1
}



}

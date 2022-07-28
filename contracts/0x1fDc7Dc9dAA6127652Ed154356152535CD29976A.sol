contract main {




// =====================  Runtime code  =====================


address owner;
address sub_ded34837Address;
mapping of uint8 stor2;

function owner() {
    return owner
}

function authorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_ded34837(?) {
    return sub_ded34837Address
}

function _fallback() payable {
    revert
}

function sub_61c40381(?) {
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    return eth.balance(this.address)
}

function addAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You are NOT contract owner!'
    stor2[address(arg1)] = 1
}

function removeAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You are NOT contract owner!'
    require arg1 != msg.sender
    stor2[address(arg1)] = 0
}

function withdrawAVAX() {
    if owner != msg.sender:
        revert with 0, 'You are NOT contract owner!'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9948736f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    return ext_call.return_data[18 len 14]
}

function balanceToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_2f53183f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5d3eaa87(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    return 1
}

function sub_0567ecfe(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    return ext_call.return_data[12 len 20]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You are NOT contract owner!'
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_63f1a900(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == uint32(arg3)
    require arg4 == address(arg4)
    mem[0] = msg.sender
    mem[32] = 2
    if stor2[address(msg.sender)]:
        mem[96] = 2
        mem[128] = address(arg2)
        mem[160] = address(arg4)
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = 0
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = uint32(arg3)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, address(this.address), uint32(arg3), 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _34 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
        _36 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require _34 + (32 * _36) + 32 <= return_data.size
        idx = _34 + 224
        s = ceil32(return_data.size) + 224
        while idx < _34 + (32 * _36) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
        mem[96] = 2
        mem[128] = address(arg2)
        mem[160] = address(arg4)
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = 0
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = uint32(arg3)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, address(this.address), uint32(arg3), 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _35 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
        _37 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require _35 + (32 * _37) + 32 <= return_data.size
        idx = _35 + 224
        s = ceil32(return_data.size) + 224
        while idx < _35 + (32 * _37) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
}

function sub_38e1170f(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == uint32(arg3)
    mem[0] = msg.sender
    mem[32] = 2
    if stor2[address(msg.sender)]:
        mem[96] = 2
        mem[128] = address(arg2)
        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[192] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = 0
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = uint32(arg3)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, address(this.address), uint32(arg3), 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _34 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
        _36 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require _34 + (32 * _36) + 32 <= return_data.size
        idx = _34 + 224
        s = ceil32(return_data.size) + 224
        while idx < _34 + (32 * _36) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
        mem[96] = 2
        mem[128] = address(arg2)
        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[192] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = 0
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = uint32(arg3)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, address(this.address), uint32(arg3), 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _35 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
        _37 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require _35 + (32 * _37) + 32 <= return_data.size
        idx = _35 + 224
        s = ceil32(return_data.size) + 224
        while idx < _35 + (32 * _37) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
}

function sub_21553e4b(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == uint32(arg3)
    require arg4 == arg4
    if stor2[address(msg.sender)]:
        if stor2[address(msg.sender)]:
            mem[100] = this.address
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'Tokens already boutght'
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[ceil32(return_data.size) + 160] = address(arg2)
            mem[ceil32(return_data.size) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg4
            mem[ceil32(return_data.size) + 228] = 128
            mem[ceil32(return_data.size) + 324] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 260] = this.address
            mem[ceil32(return_data.size) + 292] = uint32(arg3)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg1 wei
                 gas gas_remaining wei
                args arg4, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), address(this.address), uint32(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _170 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _174 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
            require _170 + (32 * _174) + 32 <= return_data.size
            idx = ceil32(return_data.size) + _170 + 224
            s = (2 * ceil32(return_data.size)) + 224
            while idx < ceil32(return_data.size) + _170 + (32 * _174) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[0] = msg.sender
            mem[32] = 2
            if stor2[address(msg.sender)]:
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _286 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _302 = mem[_286]
                require mem[_286] == mem[_286]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _302
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _302
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _322 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_322] == bool(mem[_322])
            else:
                if owner != msg.sender:
                    revert with 0, 'onlyAuthorized!'
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _298 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _306 = mem[_298]
                require mem[_298] == mem[_298]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _306
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _306
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _330 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_330] == bool(mem[_330])
        else:
            if owner != msg.sender:
                revert with 0, 'onlyAuthorized!'
            mem[100] = this.address
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'Tokens already boutght'
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[ceil32(return_data.size) + 160] = address(arg2)
            mem[ceil32(return_data.size) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg4
            mem[ceil32(return_data.size) + 228] = 128
            mem[ceil32(return_data.size) + 324] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 260] = this.address
            mem[ceil32(return_data.size) + 292] = uint32(arg3)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg1 wei
                 gas gas_remaining wei
                args arg4, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), address(this.address), uint32(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _171 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _175 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
            require _171 + (32 * _175) + 32 <= return_data.size
            idx = ceil32(return_data.size) + _171 + 224
            s = (2 * ceil32(return_data.size)) + 224
            while idx < ceil32(return_data.size) + _171 + (32 * _175) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[0] = msg.sender
            mem[32] = 2
            if stor2[address(msg.sender)]:
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _303 = mem[_289]
                require mem[_289] == mem[_289]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _303
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _303
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _324 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_324] == bool(mem[_324])
            else:
                if owner != msg.sender:
                    revert with 0, 'onlyAuthorized!'
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _299 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _307 = mem[_299]
                require mem[_299] == mem[_299]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _307
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _307
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _331 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_331] == bool(mem[_331])
    else:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
        if stor2[address(msg.sender)]:
            mem[100] = this.address
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'Tokens already boutght'
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[ceil32(return_data.size) + 160] = address(arg2)
            mem[ceil32(return_data.size) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg4
            mem[ceil32(return_data.size) + 228] = 128
            mem[ceil32(return_data.size) + 324] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 260] = this.address
            mem[ceil32(return_data.size) + 292] = uint32(arg3)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg1 wei
                 gas gas_remaining wei
                args arg4, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), address(this.address), uint32(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _172 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _176 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
            require _172 + (32 * _176) + 32 <= return_data.size
            idx = ceil32(return_data.size) + _172 + 224
            s = (2 * ceil32(return_data.size)) + 224
            while idx < ceil32(return_data.size) + _172 + (32 * _176) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[0] = msg.sender
            mem[32] = 2
            if stor2[address(msg.sender)]:
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _292 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _304 = mem[_292]
                require mem[_292] == mem[_292]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _304
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _304
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _326 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_326] == bool(mem[_326])
            else:
                if owner != msg.sender:
                    revert with 0, 'onlyAuthorized!'
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _300 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _308 = mem[_300]
                require mem[_300] == mem[_300]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _308
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _308
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _332 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_332] == bool(mem[_332])
        else:
            if owner != msg.sender:
                revert with 0, 'onlyAuthorized!'
            mem[100] = this.address
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'Tokens already boutght'
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[ceil32(return_data.size) + 160] = address(arg2)
            mem[ceil32(return_data.size) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg4
            mem[ceil32(return_data.size) + 228] = 128
            mem[ceil32(return_data.size) + 324] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 260] = this.address
            mem[ceil32(return_data.size) + 292] = uint32(arg3)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg1 wei
                 gas gas_remaining wei
                args arg4, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), address(this.address), uint32(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _173 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _177 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
            require _173 + (32 * _177) + 32 <= return_data.size
            idx = ceil32(return_data.size) + _173 + 224
            s = (2 * ceil32(return_data.size)) + 224
            while idx < ceil32(return_data.size) + _173 + (32 * _177) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[0] = msg.sender
            mem[32] = 2
            if stor2[address(msg.sender)]:
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _305 = mem[_295]
                require mem[_295] == mem[_295]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _305
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _305
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _328 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_328] == bool(mem[_328])
            else:
                if owner != msg.sender:
                    revert with 0, 'onlyAuthorized!'
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _301 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _309 = mem[_301]
                require mem[_301] == mem[_301]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _309
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _309
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _333 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_333] == bool(mem[_333])
}

function sub_ef5949b1(?) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == uint32(arg3)
    require arg4 == arg4
    require arg5 == address(arg5)
    if stor2[address(msg.sender)]:
        if stor2[address(msg.sender)]:
            mem[100] = this.address
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'Tokens already boutght'
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = address(arg5)
            mem[ceil32(return_data.size) + 160] = address(arg2)
            mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg1
            mem[ceil32(return_data.size) + 228] = arg4
            mem[ceil32(return_data.size) + 260] = 160
            mem[ceil32(return_data.size) + 356] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 292] = this.address
            mem[ceil32(return_data.size) + 324] = uint32(arg3)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg4, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), uint32(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _170 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _174 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require _170 + (32 * _174) + 32 <= return_data.size
            idx = ceil32(return_data.size) + _170 + 224
            s = (2 * ceil32(return_data.size)) + 224
            while idx < ceil32(return_data.size) + _170 + (32 * _174) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[0] = msg.sender
            mem[32] = 2
            if stor2[address(msg.sender)]:
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _286 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _302 = mem[_286]
                require mem[_286] == mem[_286]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _302
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _302
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _322 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_322] == bool(mem[_322])
            else:
                if owner != msg.sender:
                    revert with 0, 'onlyAuthorized!'
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _298 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _306 = mem[_298]
                require mem[_298] == mem[_298]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _306
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _306
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _330 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_330] == bool(mem[_330])
        else:
            if owner != msg.sender:
                revert with 0, 'onlyAuthorized!'
            mem[100] = this.address
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'Tokens already boutght'
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = address(arg5)
            mem[ceil32(return_data.size) + 160] = address(arg2)
            mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg1
            mem[ceil32(return_data.size) + 228] = arg4
            mem[ceil32(return_data.size) + 260] = 160
            mem[ceil32(return_data.size) + 356] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 292] = this.address
            mem[ceil32(return_data.size) + 324] = uint32(arg3)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg4, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), uint32(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _171 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _175 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require _171 + (32 * _175) + 32 <= return_data.size
            idx = ceil32(return_data.size) + _171 + 224
            s = (2 * ceil32(return_data.size)) + 224
            while idx < ceil32(return_data.size) + _171 + (32 * _175) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[0] = msg.sender
            mem[32] = 2
            if stor2[address(msg.sender)]:
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _303 = mem[_289]
                require mem[_289] == mem[_289]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _303
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _303
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _324 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_324] == bool(mem[_324])
            else:
                if owner != msg.sender:
                    revert with 0, 'onlyAuthorized!'
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _299 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _307 = mem[_299]
                require mem[_299] == mem[_299]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _307
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _307
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _331 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_331] == bool(mem[_331])
    else:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
        if stor2[address(msg.sender)]:
            mem[100] = this.address
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'Tokens already boutght'
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = address(arg5)
            mem[ceil32(return_data.size) + 160] = address(arg2)
            mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg1
            mem[ceil32(return_data.size) + 228] = arg4
            mem[ceil32(return_data.size) + 260] = 160
            mem[ceil32(return_data.size) + 356] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 292] = this.address
            mem[ceil32(return_data.size) + 324] = uint32(arg3)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg4, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), uint32(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _172 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _176 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require _172 + (32 * _176) + 32 <= return_data.size
            idx = ceil32(return_data.size) + _172 + 224
            s = (2 * ceil32(return_data.size)) + 224
            while idx < ceil32(return_data.size) + _172 + (32 * _176) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[0] = msg.sender
            mem[32] = 2
            if stor2[address(msg.sender)]:
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _292 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _304 = mem[_292]
                require mem[_292] == mem[_292]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _304
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _304
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _326 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_326] == bool(mem[_326])
            else:
                if owner != msg.sender:
                    revert with 0, 'onlyAuthorized!'
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _300 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _308 = mem[_300]
                require mem[_300] == mem[_300]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _308
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _308
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _332 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_332] == bool(mem[_332])
        else:
            if owner != msg.sender:
                revert with 0, 'onlyAuthorized!'
            mem[100] = this.address
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'Tokens already boutght'
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = address(arg5)
            mem[ceil32(return_data.size) + 160] = address(arg2)
            mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg1
            mem[ceil32(return_data.size) + 228] = arg4
            mem[ceil32(return_data.size) + 260] = 160
            mem[ceil32(return_data.size) + 356] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 292] = this.address
            mem[ceil32(return_data.size) + 324] = uint32(arg3)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg4, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), uint32(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _173 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _177 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require _173 + (32 * _177) + 32 <= return_data.size
            idx = ceil32(return_data.size) + _173 + 224
            s = (2 * ceil32(return_data.size)) + 224
            while idx < ceil32(return_data.size) + _173 + (32 * _177) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[0] = msg.sender
            mem[32] = 2
            if stor2[address(msg.sender)]:
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _305 = mem[_295]
                require mem[_295] == mem[_295]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _305
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _305
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _328 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_328] == bool(mem[_328])
            else:
                if owner != msg.sender:
                    revert with 0, 'onlyAuthorized!'
                mem[mem[64] + 4] = this.address
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _301 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _309 = mem[_301]
                require mem[_301] == mem[_301]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _309
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _309
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _333 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_333] == bool(mem[_333])
}

function sub_bcee7e5b(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 192
    require arg1 == bool(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    mem[0] = msg.sender
    mem[32] = 2
    if stor2[address(msg.sender)]:
        sub_ded34837Address = msg.sender
        if address(arg4) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            idx = 0
            while idx < arg2:
                if not arg1:
                    _376 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_376]:
                        revert with 'NH{q', 50
                    mem[_376 + 32] = address(arg4)
                    if 1 >= mem[_376]:
                        revert with 'NH{q', 50
                    mem[_376 + 64] = address(arg5)
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    if address(arg4) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[_376 + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[_376 + 100] = arg6
                        mem[_376 + 132] = 128
                        mem[_376 + 228] = mem[_376]
                        s = 0
                        t = _376 + 32
                        u = _376 + 260
                        while s < mem[_376]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_376 + 164] = this.address
                        mem[_376 + 196] = block.timestamp + 15
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                           value arg3 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _376 + (32 * mem[_376]) + -mem[64] + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _833 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _849 = mem[_833]
                        require mem[_833] <= test266151307()
                        require _833 + mem[_833] + 31 < _833 + return_data.size
                        _865 = mem[_833 + mem[_833]]
                        if mem[_833 + mem[_833]] > test266151307():
                            revert with 'NH{q', 65
                        if _833 + ceil32(return_data.size) + floor32(mem[_833 + mem[_833]]) + 1 > test266151307() or floor32(mem[_833 + mem[_833]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _833 + ceil32(return_data.size) + floor32(mem[_833 + mem[_833]]) + 1
                        mem[_833 + ceil32(return_data.size)] = _865
                        require _849 + (32 * _865) + 32 <= return_data.size
                        s = _833 + _849 + 32
                        t = _833 + ceil32(return_data.size) + 32
                        while s < _833 + _849 + (32 * _865) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[mem[64] + 36] = -1
                        call address(arg5).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1201 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1201] == bool(mem[_1201])
                        mem[0] = msg.sender
                        mem[32] = 2
                        if stor2[address(msg.sender)]:
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1315 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1315] == mem[_1315]
                            if mem[_1315]:
                        else:
                            if owner != msg.sender:
                                revert with 0, 'onlyAuthorized!'
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1361 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1361] == mem[_1361]
                            if mem[_1361]:
                    else:
                        mem[_376 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_376 + 100] = arg3
                        mem[_376 + 132] = arg6
                        mem[_376 + 164] = 160
                        mem[_376 + 260] = mem[_376]
                        s = 0
                        t = _376 + 32
                        u = _376 + 292
                        while s < mem[_376]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_376 + 196] = this.address
                        mem[_376 + 228] = block.timestamp + 15
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _376 + (32 * mem[_376]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _832 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _848 = mem[_832]
                        require mem[_832] <= test266151307()
                        require _832 + mem[_832] + 31 < _832 + return_data.size
                        _864 = mem[_832 + mem[_832]]
                        if mem[_832 + mem[_832]] > test266151307():
                            revert with 'NH{q', 65
                        if _832 + ceil32(return_data.size) + floor32(mem[_832 + mem[_832]]) + 1 > test266151307() or floor32(mem[_832 + mem[_832]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _832 + ceil32(return_data.size) + floor32(mem[_832 + mem[_832]]) + 1
                        mem[_832 + ceil32(return_data.size)] = _864
                        require _848 + (32 * _864) + 32 <= return_data.size
                        s = _832 + _848 + 32
                        t = _832 + ceil32(return_data.size) + 32
                        while s < _832 + _848 + (32 * _864) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[mem[64] + 36] = -1
                        call address(arg5).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1200 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1200] == bool(mem[_1200])
                        mem[0] = msg.sender
                        mem[32] = 2
                        if stor2[address(msg.sender)]:
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1312 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1312] == mem[_1312]
                            if mem[_1312]:
                        else:
                            if owner != msg.sender:
                                revert with 0, 'onlyAuthorized!'
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1360 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1360] == mem[_1360]
                            if mem[_1360]:
                else:
                    mem[mem[64] + 4] = address(arg4)
                    mem[mem[64] + 36] = address(arg5)
                    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg4), address(arg5)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _404 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_404] == mem[_404 + 12 len 20]
                    if mem[_404 + 12 len 20]:
                        _428 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_428]:
                            revert with 'NH{q', 50
                        mem[_428 + 32] = address(arg4)
                        if 1 >= mem[_428]:
                            revert with 'NH{q', 50
                        mem[_428 + 64] = address(arg5)
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        if address(arg4) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            mem[_428 + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[_428 + 100] = arg6
                            mem[_428 + 132] = 128
                            mem[_428 + 228] = mem[_428]
                            s = 0
                            t = _428 + 32
                            u = _428 + 260
                            while s < mem[_428]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_428 + 164] = this.address
                            mem[_428 + 196] = block.timestamp + 15
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                               value arg3 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _428 + (32 * mem[_428]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _835 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _851 = mem[_835]
                            require mem[_835] <= test266151307()
                            require _835 + mem[_835] + 31 < _835 + return_data.size
                            _867 = mem[_835 + mem[_835]]
                            if mem[_835 + mem[_835]] > test266151307():
                                revert with 'NH{q', 65
                            if _835 + ceil32(return_data.size) + floor32(mem[_835 + mem[_835]]) + 1 > test266151307() or floor32(mem[_835 + mem[_835]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _835 + ceil32(return_data.size) + floor32(mem[_835 + mem[_835]]) + 1
                            mem[_835 + ceil32(return_data.size)] = _867
                            require _851 + (32 * _867) + 32 <= return_data.size
                            s = _835 + _851 + 32
                            t = _835 + ceil32(return_data.size) + 32
                            while s < _835 + _851 + (32 * _867) + 32:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[mem[64] + 36] = -1
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1203 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1203] == bool(mem[_1203])
                            mem[0] = msg.sender
                            mem[32] = 2
                            if stor2[address(msg.sender)]:
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1321 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1321] == mem[_1321]
                                if mem[_1321]:
                            else:
                                if owner != msg.sender:
                                    revert with 0, 'onlyAuthorized!'
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1363 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1363] == mem[_1363]
                                if mem[_1363]:
                        else:
                            mem[_428 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_428 + 100] = arg3
                            mem[_428 + 132] = arg6
                            mem[_428 + 164] = 160
                            mem[_428 + 260] = mem[_428]
                            s = 0
                            t = _428 + 32
                            u = _428 + 292
                            while s < mem[_428]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_428 + 196] = this.address
                            mem[_428 + 228] = block.timestamp + 15
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _428 + (32 * mem[_428]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _834 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _850 = mem[_834]
                            require mem[_834] <= test266151307()
                            require _834 + mem[_834] + 31 < _834 + return_data.size
                            _866 = mem[_834 + mem[_834]]
                            if mem[_834 + mem[_834]] > test266151307():
                                revert with 'NH{q', 65
                            if _834 + ceil32(return_data.size) + floor32(mem[_834 + mem[_834]]) + 1 > test266151307() or floor32(mem[_834 + mem[_834]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _834 + ceil32(return_data.size) + floor32(mem[_834 + mem[_834]]) + 1
                            mem[_834 + ceil32(return_data.size)] = _866
                            require _850 + (32 * _866) + 32 <= return_data.size
                            s = _834 + _850 + 32
                            t = _834 + ceil32(return_data.size) + 32
                            while s < _834 + _850 + (32 * _866) + 32:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[mem[64] + 36] = -1
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1202 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1202] == bool(mem[_1202])
                            mem[0] = msg.sender
                            mem[32] = 2
                            if stor2[address(msg.sender)]:
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1318 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1318] == mem[_1318]
                                if mem[_1318]:
                            else:
                                if owner != msg.sender:
                                    revert with 0, 'onlyAuthorized!'
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1362 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1362] == mem[_1362]
                                if mem[_1362]:
                if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[100] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[132] = -1
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 0
            while idx < arg2:
                if not arg1:
                    _378 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_378]:
                        revert with 'NH{q', 50
                    mem[_378 + 32] = address(arg4)
                    if 1 >= mem[_378]:
                        revert with 'NH{q', 50
                    mem[_378 + 64] = address(arg5)
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    if address(arg4) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[_378 + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[_378 + 100] = arg6
                        mem[_378 + 132] = 128
                        mem[_378 + 228] = mem[_378]
                        s = 0
                        t = _378 + 32
                        u = _378 + 260
                        while s < mem[_378]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_378 + 164] = this.address
                        mem[_378 + 196] = block.timestamp + 15
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                           value arg3 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _378 + (32 * mem[_378]) + -mem[64] + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _837 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _853 = mem[_837]
                        require mem[_837] <= test266151307()
                        require _837 + mem[_837] + 31 < _837 + return_data.size
                        _869 = mem[_837 + mem[_837]]
                        if mem[_837 + mem[_837]] > test266151307():
                            revert with 'NH{q', 65
                        if _837 + ceil32(return_data.size) + floor32(mem[_837 + mem[_837]]) + 1 > test266151307() or floor32(mem[_837 + mem[_837]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _837 + ceil32(return_data.size) + floor32(mem[_837 + mem[_837]]) + 1
                        mem[_837 + ceil32(return_data.size)] = _869
                        require _853 + (32 * _869) + 32 <= return_data.size
                        s = _837 + _853 + 32
                        t = _837 + ceil32(return_data.size) + 32
                        while s < _837 + _853 + (32 * _869) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[mem[64] + 36] = -1
                        call address(arg5).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1205 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1205] == bool(mem[_1205])
                        mem[0] = msg.sender
                        mem[32] = 2
                        if stor2[address(msg.sender)]:
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1327 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1327] == mem[_1327]
                            if mem[_1327]:
                        else:
                            if owner != msg.sender:
                                revert with 0, 'onlyAuthorized!'
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1365 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1365] == mem[_1365]
                            if mem[_1365]:
                    else:
                        mem[_378 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_378 + 100] = arg3
                        mem[_378 + 132] = arg6
                        mem[_378 + 164] = 160
                        mem[_378 + 260] = mem[_378]
                        s = 0
                        t = _378 + 32
                        u = _378 + 292
                        while s < mem[_378]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_378 + 196] = this.address
                        mem[_378 + 228] = block.timestamp + 15
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _378 + (32 * mem[_378]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _836 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _852 = mem[_836]
                        require mem[_836] <= test266151307()
                        require _836 + mem[_836] + 31 < _836 + return_data.size
                        _868 = mem[_836 + mem[_836]]
                        if mem[_836 + mem[_836]] > test266151307():
                            revert with 'NH{q', 65
                        if _836 + ceil32(return_data.size) + floor32(mem[_836 + mem[_836]]) + 1 > test266151307() or floor32(mem[_836 + mem[_836]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _836 + ceil32(return_data.size) + floor32(mem[_836 + mem[_836]]) + 1
                        mem[_836 + ceil32(return_data.size)] = _868
                        require _852 + (32 * _868) + 32 <= return_data.size
                        s = _836 + _852 + 32
                        t = _836 + ceil32(return_data.size) + 32
                        while s < _836 + _852 + (32 * _868) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[mem[64] + 36] = -1
                        call address(arg5).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1204 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1204] == bool(mem[_1204])
                        mem[0] = msg.sender
                        mem[32] = 2
                        if stor2[address(msg.sender)]:
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1324 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1324] == mem[_1324]
                            if mem[_1324]:
                        else:
                            if owner != msg.sender:
                                revert with 0, 'onlyAuthorized!'
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1364 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1364] == mem[_1364]
                            if mem[_1364]:
                else:
                    mem[mem[64] + 4] = address(arg4)
                    mem[mem[64] + 36] = address(arg5)
                    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg4), address(arg5)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _405 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_405] == mem[_405 + 12 len 20]
                    if mem[_405 + 12 len 20]:
                        _429 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_429]:
                            revert with 'NH{q', 50
                        mem[_429 + 32] = address(arg4)
                        if 1 >= mem[_429]:
                            revert with 'NH{q', 50
                        mem[_429 + 64] = address(arg5)
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        if address(arg4) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            mem[_429 + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[_429 + 100] = arg6
                            mem[_429 + 132] = 128
                            mem[_429 + 228] = mem[_429]
                            s = 0
                            t = _429 + 32
                            u = _429 + 260
                            while s < mem[_429]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_429 + 164] = this.address
                            mem[_429 + 196] = block.timestamp + 15
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                               value arg3 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _429 + (32 * mem[_429]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _839 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _855 = mem[_839]
                            require mem[_839] <= test266151307()
                            require _839 + mem[_839] + 31 < _839 + return_data.size
                            _871 = mem[_839 + mem[_839]]
                            if mem[_839 + mem[_839]] > test266151307():
                                revert with 'NH{q', 65
                            if _839 + ceil32(return_data.size) + floor32(mem[_839 + mem[_839]]) + 1 > test266151307() or floor32(mem[_839 + mem[_839]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _839 + ceil32(return_data.size) + floor32(mem[_839 + mem[_839]]) + 1
                            mem[_839 + ceil32(return_data.size)] = _871
                            require _855 + (32 * _871) + 32 <= return_data.size
                            s = _839 + _855 + 32
                            t = _839 + ceil32(return_data.size) + 32
                            while s < _839 + _855 + (32 * _871) + 32:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[mem[64] + 36] = -1
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1207 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1207] == bool(mem[_1207])
                            mem[0] = msg.sender
                            mem[32] = 2
                            if stor2[address(msg.sender)]:
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1333 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1333] == mem[_1333]
                                if mem[_1333]:
                            else:
                                if owner != msg.sender:
                                    revert with 0, 'onlyAuthorized!'
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1367 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1367] == mem[_1367]
                                if mem[_1367]:
                        else:
                            mem[_429 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_429 + 100] = arg3
                            mem[_429 + 132] = arg6
                            mem[_429 + 164] = 160
                            mem[_429 + 260] = mem[_429]
                            s = 0
                            t = _429 + 32
                            u = _429 + 292
                            while s < mem[_429]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_429 + 196] = this.address
                            mem[_429 + 228] = block.timestamp + 15
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _429 + (32 * mem[_429]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _838 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _854 = mem[_838]
                            require mem[_838] <= test266151307()
                            require _838 + mem[_838] + 31 < _838 + return_data.size
                            _870 = mem[_838 + mem[_838]]
                            if mem[_838 + mem[_838]] > test266151307():
                                revert with 'NH{q', 65
                            if _838 + ceil32(return_data.size) + floor32(mem[_838 + mem[_838]]) + 1 > test266151307() or floor32(mem[_838 + mem[_838]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _838 + ceil32(return_data.size) + floor32(mem[_838 + mem[_838]]) + 1
                            mem[_838 + ceil32(return_data.size)] = _870
                            require _854 + (32 * _870) + 32 <= return_data.size
                            s = _838 + _854 + 32
                            t = _838 + ceil32(return_data.size) + 32
                            while s < _838 + _854 + (32 * _870) + 32:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[mem[64] + 36] = -1
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1206 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1206] == bool(mem[_1206])
                            mem[0] = msg.sender
                            mem[32] = 2
                            if stor2[address(msg.sender)]:
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1330 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1330] == mem[_1330]
                                if mem[_1330]:
                            else:
                                if owner != msg.sender:
                                    revert with 0, 'onlyAuthorized!'
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1366 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1366] == mem[_1366]
                                if mem[_1366]:
                if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
        sub_ded34837Address = msg.sender
        if address(arg4) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            idx = 0
            while idx < arg2:
                if not arg1:
                    _380 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_380]:
                        revert with 'NH{q', 50
                    mem[_380 + 32] = address(arg4)
                    if 1 >= mem[_380]:
                        revert with 'NH{q', 50
                    mem[_380 + 64] = address(arg5)
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    if address(arg4) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[_380 + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[_380 + 100] = arg6
                        mem[_380 + 132] = 128
                        mem[_380 + 228] = mem[_380]
                        s = 0
                        t = _380 + 32
                        u = _380 + 260
                        while s < mem[_380]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_380 + 164] = this.address
                        mem[_380 + 196] = block.timestamp + 15
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                           value arg3 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _380 + (32 * mem[_380]) + -mem[64] + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _841 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _857 = mem[_841]
                        require mem[_841] <= test266151307()
                        require _841 + mem[_841] + 31 < _841 + return_data.size
                        _873 = mem[_841 + mem[_841]]
                        if mem[_841 + mem[_841]] > test266151307():
                            revert with 'NH{q', 65
                        if _841 + ceil32(return_data.size) + floor32(mem[_841 + mem[_841]]) + 1 > test266151307() or floor32(mem[_841 + mem[_841]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _841 + ceil32(return_data.size) + floor32(mem[_841 + mem[_841]]) + 1
                        mem[_841 + ceil32(return_data.size)] = _873
                        require _857 + (32 * _873) + 32 <= return_data.size
                        s = _841 + _857 + 32
                        t = _841 + ceil32(return_data.size) + 32
                        while s < _841 + _857 + (32 * _873) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[mem[64] + 36] = -1
                        call address(arg5).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1209 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1209] == bool(mem[_1209])
                        mem[0] = msg.sender
                        mem[32] = 2
                        if stor2[address(msg.sender)]:
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1339 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1339] == mem[_1339]
                            if mem[_1339]:
                        else:
                            if owner != msg.sender:
                                revert with 0, 'onlyAuthorized!'
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1369 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1369] == mem[_1369]
                            if mem[_1369]:
                    else:
                        mem[_380 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_380 + 100] = arg3
                        mem[_380 + 132] = arg6
                        mem[_380 + 164] = 160
                        mem[_380 + 260] = mem[_380]
                        s = 0
                        t = _380 + 32
                        u = _380 + 292
                        while s < mem[_380]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_380 + 196] = this.address
                        mem[_380 + 228] = block.timestamp + 15
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _380 + (32 * mem[_380]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _840 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _856 = mem[_840]
                        require mem[_840] <= test266151307()
                        require _840 + mem[_840] + 31 < _840 + return_data.size
                        _872 = mem[_840 + mem[_840]]
                        if mem[_840 + mem[_840]] > test266151307():
                            revert with 'NH{q', 65
                        if _840 + ceil32(return_data.size) + floor32(mem[_840 + mem[_840]]) + 1 > test266151307() or floor32(mem[_840 + mem[_840]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _840 + ceil32(return_data.size) + floor32(mem[_840 + mem[_840]]) + 1
                        mem[_840 + ceil32(return_data.size)] = _872
                        require _856 + (32 * _872) + 32 <= return_data.size
                        s = _840 + _856 + 32
                        t = _840 + ceil32(return_data.size) + 32
                        while s < _840 + _856 + (32 * _872) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[mem[64] + 36] = -1
                        call address(arg5).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1208 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1208] == bool(mem[_1208])
                        mem[0] = msg.sender
                        mem[32] = 2
                        if stor2[address(msg.sender)]:
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1336 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1336] == mem[_1336]
                            if mem[_1336]:
                        else:
                            if owner != msg.sender:
                                revert with 0, 'onlyAuthorized!'
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1368 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1368] == mem[_1368]
                            if mem[_1368]:
                else:
                    mem[mem[64] + 4] = address(arg4)
                    mem[mem[64] + 36] = address(arg5)
                    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg4), address(arg5)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _406 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_406] == mem[_406 + 12 len 20]
                    if mem[_406 + 12 len 20]:
                        _430 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_430]:
                            revert with 'NH{q', 50
                        mem[_430 + 32] = address(arg4)
                        if 1 >= mem[_430]:
                            revert with 'NH{q', 50
                        mem[_430 + 64] = address(arg5)
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        if address(arg4) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            mem[_430 + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[_430 + 100] = arg6
                            mem[_430 + 132] = 128
                            mem[_430 + 228] = mem[_430]
                            s = 0
                            t = _430 + 32
                            u = _430 + 260
                            while s < mem[_430]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_430 + 164] = this.address
                            mem[_430 + 196] = block.timestamp + 15
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                               value arg3 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _430 + (32 * mem[_430]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _843 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _859 = mem[_843]
                            require mem[_843] <= test266151307()
                            require _843 + mem[_843] + 31 < _843 + return_data.size
                            _875 = mem[_843 + mem[_843]]
                            if mem[_843 + mem[_843]] > test266151307():
                                revert with 'NH{q', 65
                            if _843 + ceil32(return_data.size) + floor32(mem[_843 + mem[_843]]) + 1 > test266151307() or floor32(mem[_843 + mem[_843]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _843 + ceil32(return_data.size) + floor32(mem[_843 + mem[_843]]) + 1
                            mem[_843 + ceil32(return_data.size)] = _875
                            require _859 + (32 * _875) + 32 <= return_data.size
                            s = _843 + _859 + 32
                            t = _843 + ceil32(return_data.size) + 32
                            while s < _843 + _859 + (32 * _875) + 32:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[mem[64] + 36] = -1
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1211 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1211] == bool(mem[_1211])
                            mem[0] = msg.sender
                            mem[32] = 2
                            if stor2[address(msg.sender)]:
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1345 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1345] == mem[_1345]
                                if mem[_1345]:
                            else:
                                if owner != msg.sender:
                                    revert with 0, 'onlyAuthorized!'
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1371 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1371] == mem[_1371]
                                if mem[_1371]:
                        else:
                            mem[_430 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_430 + 100] = arg3
                            mem[_430 + 132] = arg6
                            mem[_430 + 164] = 160
                            mem[_430 + 260] = mem[_430]
                            s = 0
                            t = _430 + 32
                            u = _430 + 292
                            while s < mem[_430]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_430 + 196] = this.address
                            mem[_430 + 228] = block.timestamp + 15
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _430 + (32 * mem[_430]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _842 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _858 = mem[_842]
                            require mem[_842] <= test266151307()
                            require _842 + mem[_842] + 31 < _842 + return_data.size
                            _874 = mem[_842 + mem[_842]]
                            if mem[_842 + mem[_842]] > test266151307():
                                revert with 'NH{q', 65
                            if _842 + ceil32(return_data.size) + floor32(mem[_842 + mem[_842]]) + 1 > test266151307() or floor32(mem[_842 + mem[_842]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _842 + ceil32(return_data.size) + floor32(mem[_842 + mem[_842]]) + 1
                            mem[_842 + ceil32(return_data.size)] = _874
                            require _858 + (32 * _874) + 32 <= return_data.size
                            s = _842 + _858 + 32
                            t = _842 + ceil32(return_data.size) + 32
                            while s < _842 + _858 + (32 * _874) + 32:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[mem[64] + 36] = -1
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1210 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1210] == bool(mem[_1210])
                            mem[0] = msg.sender
                            mem[32] = 2
                            if stor2[address(msg.sender)]:
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1342 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1342] == mem[_1342]
                                if mem[_1342]:
                            else:
                                if owner != msg.sender:
                                    revert with 0, 'onlyAuthorized!'
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1370 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1370] == mem[_1370]
                                if mem[_1370]:
                if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[100] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[132] = -1
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 0
            while idx < arg2:
                if not arg1:
                    _382 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_382]:
                        revert with 'NH{q', 50
                    mem[_382 + 32] = address(arg4)
                    if 1 >= mem[_382]:
                        revert with 'NH{q', 50
                    mem[_382 + 64] = address(arg5)
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    if address(arg4) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        mem[_382 + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[_382 + 100] = arg6
                        mem[_382 + 132] = 128
                        mem[_382 + 228] = mem[_382]
                        s = 0
                        t = _382 + 32
                        u = _382 + 260
                        while s < mem[_382]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_382 + 164] = this.address
                        mem[_382 + 196] = block.timestamp + 15
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                           value arg3 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _382 + (32 * mem[_382]) + -mem[64] + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _845 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _861 = mem[_845]
                        require mem[_845] <= test266151307()
                        require _845 + mem[_845] + 31 < _845 + return_data.size
                        _877 = mem[_845 + mem[_845]]
                        if mem[_845 + mem[_845]] > test266151307():
                            revert with 'NH{q', 65
                        if _845 + ceil32(return_data.size) + floor32(mem[_845 + mem[_845]]) + 1 > test266151307() or floor32(mem[_845 + mem[_845]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _845 + ceil32(return_data.size) + floor32(mem[_845 + mem[_845]]) + 1
                        mem[_845 + ceil32(return_data.size)] = _877
                        require _861 + (32 * _877) + 32 <= return_data.size
                        s = _845 + _861 + 32
                        t = _845 + ceil32(return_data.size) + 32
                        while s < _845 + _861 + (32 * _877) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[mem[64] + 36] = -1
                        call address(arg5).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1213 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1213] == bool(mem[_1213])
                        mem[0] = msg.sender
                        mem[32] = 2
                        if stor2[address(msg.sender)]:
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1351 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1351] == mem[_1351]
                            if mem[_1351]:
                        else:
                            if owner != msg.sender:
                                revert with 0, 'onlyAuthorized!'
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1373 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1373] == mem[_1373]
                            if mem[_1373]:
                    else:
                        mem[_382 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_382 + 100] = arg3
                        mem[_382 + 132] = arg6
                        mem[_382 + 164] = 160
                        mem[_382 + 260] = mem[_382]
                        s = 0
                        t = _382 + 32
                        u = _382 + 292
                        while s < mem[_382]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_382 + 196] = this.address
                        mem[_382 + 228] = block.timestamp + 15
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _382 + (32 * mem[_382]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _844 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _860 = mem[_844]
                        require mem[_844] <= test266151307()
                        require _844 + mem[_844] + 31 < _844 + return_data.size
                        _876 = mem[_844 + mem[_844]]
                        if mem[_844 + mem[_844]] > test266151307():
                            revert with 'NH{q', 65
                        if _844 + ceil32(return_data.size) + floor32(mem[_844 + mem[_844]]) + 1 > test266151307() or floor32(mem[_844 + mem[_844]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _844 + ceil32(return_data.size) + floor32(mem[_844 + mem[_844]]) + 1
                        mem[_844 + ceil32(return_data.size)] = _876
                        require _860 + (32 * _876) + 32 <= return_data.size
                        s = _844 + _860 + 32
                        t = _844 + ceil32(return_data.size) + 32
                        while s < _844 + _860 + (32 * _876) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[mem[64] + 36] = -1
                        call address(arg5).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1212 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1212] == bool(mem[_1212])
                        mem[0] = msg.sender
                        mem[32] = 2
                        if stor2[address(msg.sender)]:
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1348 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1348] == mem[_1348]
                            if mem[_1348]:
                        else:
                            if owner != msg.sender:
                                revert with 0, 'onlyAuthorized!'
                            mem[mem[64] + 4] = this.address
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1372 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1372] == mem[_1372]
                            if mem[_1372]:
                else:
                    mem[mem[64] + 4] = address(arg4)
                    mem[mem[64] + 36] = address(arg5)
                    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg4), address(arg5)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_407] == mem[_407 + 12 len 20]
                    if mem[_407 + 12 len 20]:
                        _431 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_431]:
                            revert with 'NH{q', 50
                        mem[_431 + 32] = address(arg4)
                        if 1 >= mem[_431]:
                            revert with 'NH{q', 50
                        mem[_431 + 64] = address(arg5)
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        if address(arg4) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            mem[_431 + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[_431 + 100] = arg6
                            mem[_431 + 132] = 128
                            mem[_431 + 228] = mem[_431]
                            s = 0
                            t = _431 + 32
                            u = _431 + 260
                            while s < mem[_431]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_431 + 164] = this.address
                            mem[_431 + 196] = block.timestamp + 15
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                               value arg3 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _431 + (32 * mem[_431]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _847 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _863 = mem[_847]
                            require mem[_847] <= test266151307()
                            require _847 + mem[_847] + 31 < _847 + return_data.size
                            _879 = mem[_847 + mem[_847]]
                            if mem[_847 + mem[_847]] > test266151307():
                                revert with 'NH{q', 65
                            if _847 + ceil32(return_data.size) + floor32(mem[_847 + mem[_847]]) + 1 > test266151307() or floor32(mem[_847 + mem[_847]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _847 + ceil32(return_data.size) + floor32(mem[_847 + mem[_847]]) + 1
                            mem[_847 + ceil32(return_data.size)] = _879
                            require _863 + (32 * _879) + 32 <= return_data.size
                            s = _847 + _863 + 32
                            t = _847 + ceil32(return_data.size) + 32
                            while s < _847 + _863 + (32 * _879) + 32:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[mem[64] + 36] = -1
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1215 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1215] == bool(mem[_1215])
                            mem[0] = msg.sender
                            mem[32] = 2
                            if stor2[address(msg.sender)]:
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1357 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1357] == mem[_1357]
                                if mem[_1357]:
                            else:
                                if owner != msg.sender:
                                    revert with 0, 'onlyAuthorized!'
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1375 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1375] == mem[_1375]
                                if mem[_1375]:
                        else:
                            mem[_431 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_431 + 100] = arg3
                            mem[_431 + 132] = arg6
                            mem[_431 + 164] = 160
                            mem[_431 + 260] = mem[_431]
                            s = 0
                            t = _431 + 32
                            u = _431 + 292
                            while s < mem[_431]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_431 + 196] = this.address
                            mem[_431 + 228] = block.timestamp + 15
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _431 + (32 * mem[_431]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _846 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _862 = mem[_846]
                            require mem[_846] <= test266151307()
                            require _846 + mem[_846] + 31 < _846 + return_data.size
                            _878 = mem[_846 + mem[_846]]
                            if mem[_846 + mem[_846]] > test266151307():
                                revert with 'NH{q', 65
                            if _846 + ceil32(return_data.size) + floor32(mem[_846 + mem[_846]]) + 1 > test266151307() or floor32(mem[_846 + mem[_846]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _846 + ceil32(return_data.size) + floor32(mem[_846 + mem[_846]]) + 1
                            mem[_846 + ceil32(return_data.size)] = _878
                            require _862 + (32 * _878) + 32 <= return_data.size
                            s = _846 + _862 + 32
                            t = _846 + ceil32(return_data.size) + 32
                            while s < _846 + _862 + (32 * _878) + 32:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                            mem[mem[64] + 36] = -1
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1214 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1214] == bool(mem[_1214])
                            mem[0] = msg.sender
                            mem[32] = 2
                            if stor2[address(msg.sender)]:
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1354 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1354] == mem[_1354]
                                if mem[_1354]:
                            else:
                                if owner != msg.sender:
                                    revert with 0, 'onlyAuthorized!'
                                mem[mem[64] + 4] = this.address
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1374 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1374] == mem[_1374]
                                if mem[_1374]:
                if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}



}

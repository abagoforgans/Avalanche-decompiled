contract main {




// =====================  Runtime code  =====================


const sub_95e8bb23(?) = 3600


address stor0;
address stor1;
address routerAddress;
address adminAddress;
address WETHAddress;

function WETH() {
    return WETHAddress
}

function getRouterAddress() {
    return routerAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_6023e966(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    if adminAddress != msg.sender:
        revert with 0, 'Admin only function'
    if not ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    if not address(('cd', 4)[0]):
        revert with 0, 'invalid address: tokenIn'
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[1] == address(('cd', 4)[1])
    if not address(('cd', 4)[1]):
        revert with 0, 'invalid address: tokenOut'
    if block.timestamp > -3601:
        revert with 0, 17
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    stor0 = address(('cd', 4)[0])
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[1] == address(('cd', 4)[1])
    stor1 = address(('cd', 4)[1])
    mem[100] = address(cd[100])
    require ext_code.size(address(('cd', 4)[1]))
    staticcall address(('cd', 4)[1]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[100])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if WETHAddress == stor0:
        mem[ceil32(return_data.size) + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = cd[68]
        mem[ceil32(return_data.size) + 132] = 128
        mem[ceil32(return_data.size) + 228] = ('cd', 4).length
        idx = 0
        s = cd[4] + 36
        t = ceil32(return_data.size) + 260
        while idx < ('cd', 4).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 164] = address(cd[100])
        mem[ceil32(return_data.size) + 196] = block.timestamp + 3600
        require ext_code.size(routerAddress)
        call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args cd[68], Array(len=('cd', 4).length, data=mem[ceil32(return_data.size) + 260 len 32 * ('cd', 4).length]), address(cd[100]), block.timestamp + 3600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _263 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
        _266 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128
        mem[(2 * ceil32(return_data.size)) + 96] = _266
        require return_data.size >= _263 + (32 * _266) + 32
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _266] = mem[ceil32(return_data.size) + _263 + 128 len 32 * _266]
        mem[mem[64] + 4] = address(cd[100])
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(cd[100])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _491 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _494 = mem[_491]
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        staticcall stor0.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _503 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _506 = mem[_503]
        require mem[_503] <= test266151307()
        require _503 + mem[_503] + 31 < _503 + return_data.size
        _509 = mem[_503 + mem[_503]]
        if mem[_503 + mem[_503]] > test266151307():
            revert with 0, 65
        if ceil32(mem[_503 + mem[_503]]) + 32 < 0 or _503 + ceil32(return_data.size) + ceil32(mem[_503 + mem[_503]]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = _503 + ceil32(return_data.size) + ceil32(mem[_503 + mem[_503]]) + 32
        mem[_503 + ceil32(return_data.size)] = _509
        require _506 + _509 + 32 <= return_data.size
        mem[_503 + ceil32(return_data.size) + 32 len ceil32(_509)] = mem[_503 + _506 + 32 len ceil32(_509)]
        if ceil32(_509) <= _509:
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor1)
            staticcall stor1.0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _707 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _713 = mem[_707]
            require mem[_707] <= test266151307()
            require _707 + mem[_707] + 31 < _707 + return_data.size
            _719 = mem[_707 + mem[_707]]
            if mem[_707 + mem[_707]] > test266151307():
                revert with 0, 65
            if ceil32(mem[_707 + mem[_707]]) + 32 < 0 or _707 + ceil32(return_data.size) + ceil32(mem[_707 + mem[_707]]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = _707 + ceil32(return_data.size) + ceil32(mem[_707 + mem[_707]]) + 32
            mem[_707 + ceil32(return_data.size)] = _719
            require _713 + _719 + 32 <= return_data.size
            mem[_707 + ceil32(return_data.size) + 32 len ceil32(_719)] = mem[_707 + _713 + 32 len ceil32(_719)]
            if ceil32(_719) <= _719:
                if _494 < ext_call.return_data[0]:
                    revert with 0, 17
                mem[mem[64]] = 128
                mem[mem[64] + 128] = 13
                mem[mem[64] + 160] = 'swap complete' << 152
                mem[mem[64] + 32] = 192
                mem[mem[64] + 192] = _509
                mem[mem[64] + 224 len ceil32(_509)] = mem[_503 + ceil32(return_data.size) + 32 len ceil32(_509)]
                if ceil32(_509) > _509:
                    mem[mem[64] + _509 + 224] = 0
                mem[mem[64] + 64] = ceil32(_509) + 224
                mem[ceil32(_509) + mem[64] + 224] = _719
                mem[ceil32(_509) + mem[64] + 256 len ceil32(_719)] = mem[_707 + ceil32(return_data.size) + 32 len ceil32(_719)]
                if ceil32(_719) > _719:
                    mem[ceil32(_509) + mem[64] + _719 + 256] = 0
                mem[mem[64] + 96] = _494 - ext_call.return_data[0]
                emit 0x614b3ad2: 128, 192, ceil32(_509) + 224, _494 - ext_call.return_data[0], 13, 'swap complete', _509, mem[mem[64] + 224 len ceil32(_719) + ceil32(_509) + 32]
            else:
                mem[_707 + ceil32(return_data.size) + _719 + 32] = 0
                if _494 < ext_call.return_data[0]:
                    revert with 0, 17
                _883 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = 13
                mem[mem[64] + 160] = 'swap complete' << 152
                mem[mem[64] + 32] = 192
                mem[mem[64] + 192] = _509
                mem[mem[64] + 224 len ceil32(_509)] = mem[_503 + ceil32(return_data.size) + 32 len ceil32(_509)]
                if ceil32(_509) <= _509:
                    mem[mem[64] + 64] = ceil32(_509) + 224
                    mem[ceil32(_509) + mem[64] + 224] = _719
                    mem[ceil32(_509) + mem[64] + 256 len ceil32(_719)] = mem[_707 + ceil32(return_data.size) + 32 len ceil32(_719)]
                    if ceil32(_719) > _719:
                        mem[ceil32(_509) + mem[64] + _719 + 256] = 0
                    mem[mem[64] + 96] = _494 - ext_call.return_data[0]
                    emit 0x614b3ad2: 128, 192, ceil32(_509) + 224, _494 - ext_call.return_data[0], 13, 'swap complete', _509, mem[mem[64] + 224 len ceil32(_719) + ceil32(_509) + 32]
                else:
                    mem[mem[64] + _509 + 224] = 0
                    mem[mem[64] + 64] = ceil32(_509) + 224
                    mem[ceil32(_509) + _883 + 224] = _719
                    mem[ceil32(_509) + _883 + 256 len ceil32(_719)] = mem[_707 + ceil32(return_data.size) + 32 len ceil32(_719)]
                    if ceil32(_719) > _719:
                        mem[ceil32(_509) + _883 + _719 + 256] = 0
                    mem[_883 + 96] = _494 - ext_call.return_data[0]
                    emit 0x614b3ad2: mem[mem[64] len ceil32(_719) + ceil32(_509) + _883 + -mem[64] + 256]
        else:
            mem[_503 + ceil32(return_data.size) + _509 + 32] = 0
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor1)
            staticcall stor1.0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _710 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _716 = mem[_710]
            require mem[_710] <= test266151307()
            require _710 + mem[_710] + 31 < _710 + return_data.size
            _722 = mem[_710 + mem[_710]]
            if mem[_710 + mem[_710]] > test266151307():
                revert with 0, 65
            if ceil32(mem[_710 + mem[_710]]) + 32 < 0 or _710 + ceil32(return_data.size) + ceil32(mem[_710 + mem[_710]]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = _710 + ceil32(return_data.size) + ceil32(mem[_710 + mem[_710]]) + 32
            mem[_710 + ceil32(return_data.size)] = _722
            require _716 + _722 + 32 <= return_data.size
            mem[_710 + ceil32(return_data.size) + 32 len ceil32(_722)] = mem[_710 + _716 + 32 len ceil32(_722)]
            if ceil32(_722) <= _722:
                if _494 < ext_call.return_data[0]:
                    revert with 0, 17
                _878 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = 13
                mem[mem[64] + 160] = 'swap complete' << 152
                mem[mem[64] + 32] = 192
                mem[mem[64] + 192] = _509
                mem[mem[64] + 224 len ceil32(_509)] = mem[_503 + ceil32(return_data.size) + 32 len ceil32(_509)]
                if ceil32(_509) <= _509:
                    mem[mem[64] + 64] = ceil32(_509) + 224
                    mem[ceil32(_509) + mem[64] + 224] = _722
                    mem[ceil32(_509) + mem[64] + 256 len ceil32(_722)] = mem[_710 + ceil32(return_data.size) + 32 len ceil32(_722)]
                    if ceil32(_722) > _722:
                        mem[ceil32(_509) + mem[64] + _722 + 256] = 0
                    mem[mem[64] + 96] = _494 - ext_call.return_data[0]
                    emit 0x614b3ad2: 128, 192, ceil32(_509) + 224, _494 - ext_call.return_data[0], 13, 'swap complete', _509, mem[mem[64] + 224 len ceil32(_722) + ceil32(_509) + 32]
                else:
                    mem[mem[64] + _509 + 224] = 0
                    mem[mem[64] + 64] = ceil32(_509) + 224
                    mem[ceil32(_509) + _878 + 224] = _722
                    mem[ceil32(_509) + _878 + 256 len ceil32(_722)] = mem[_710 + ceil32(return_data.size) + 32 len ceil32(_722)]
                    if ceil32(_722) > _722:
                        mem[ceil32(_509) + _878 + _722 + 256] = 0
                    mem[_878 + 96] = _494 - ext_call.return_data[0]
                    emit 0x614b3ad2: mem[mem[64] len ceil32(_722) + ceil32(_509) + _878 + -mem[64] + 256]
            else:
                mem[_710 + ceil32(return_data.size) + _722 + 32] = 0
                if _494 < ext_call.return_data[0]:
                    revert with 0, 17
                _884 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = 13
                mem[mem[64] + 160] = 'swap complete' << 152
                mem[mem[64] + 32] = 192
                mem[mem[64] + 192] = _509
                mem[mem[64] + 224 len ceil32(_509)] = mem[_503 + ceil32(return_data.size) + 32 len ceil32(_509)]
                if ceil32(_509) <= _509:
                    mem[mem[64] + 64] = ceil32(_509) + 224
                    mem[ceil32(_509) + mem[64] + 224] = _722
                    mem[ceil32(_509) + mem[64] + 256 len ceil32(_722)] = mem[_710 + ceil32(return_data.size) + 32 len ceil32(_722)]
                    if ceil32(_722) > _722:
                        mem[ceil32(_509) + mem[64] + _722 + 256] = 0
                    mem[mem[64] + 96] = _494 - ext_call.return_data[0]
                    emit 0x614b3ad2: 128, 192, ceil32(_509) + 224, _494 - ext_call.return_data[0], 13, 'swap complete', _509, mem[mem[64] + 224 len ceil32(_722) + ceil32(_509) + 32]
                else:
                    mem[mem[64] + _509 + 224] = 0
                    mem[mem[64] + 64] = ceil32(_509) + 224
                    mem[ceil32(_509) + _884 + 224] = _722
                    mem[ceil32(_509) + _884 + 256 len ceil32(_722)] = mem[_710 + ceil32(return_data.size) + 32 len ceil32(_722)]
                    if ceil32(_722) > _722:
                        mem[ceil32(_509) + _884 + _722 + 256] = 0
                    mem[_884 + 96] = _494 - ext_call.return_data[0]
                    emit 0x614b3ad2: mem[mem[64] len ceil32(_722) + ceil32(_509) + _884 + -mem[64] + 256]
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = this.address
        mem[ceil32(return_data.size) + 164] = cd[36]
        require ext_code.size(stor0)
        call stor0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[36]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
        mem[(2 * ceil32(return_data.size)) + 132] = cd[36]
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, cd[36]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if WETHAddress != stor1:
            mem[(4 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 100] = cd[36]
            mem[(4 * ceil32(return_data.size)) + 132] = cd[68]
            mem[(4 * ceil32(return_data.size)) + 164] = 160
            mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 4).length
            idx = 0
            s = cd[4] + 36
            t = (4 * ceil32(return_data.size)) + 292
            while idx < ('cd', 4).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 196] = address(cd[100])
            mem[(4 * ceil32(return_data.size)) + 228] = block.timestamp + 3600
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36], cd[68], Array(len=('cd', 4).length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 4).length]), address(cd[100]), block.timestamp + 3600
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _261 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32
            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
            _264 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
                revert with 0, 65
            if (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 32 < 0 or (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 128 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 128
            mem[(6 * ceil32(return_data.size)) + 96] = _264
            require return_data.size >= _261 + (32 * _264) + 32
            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _264] = mem[(4 * ceil32(return_data.size)) + _261 + 128 len 32 * _264]
            mem[mem[64] + 4] = address(cd[100])
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _489 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _492 = mem[_489]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor0)
            staticcall stor0.0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _501 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _504 = mem[_501]
            require mem[_501] <= test266151307()
            require _501 + mem[_501] + 31 < _501 + return_data.size
            _507 = mem[_501 + mem[_501]]
            if mem[_501 + mem[_501]] > test266151307():
                revert with 0, 65
            if ceil32(mem[_501 + mem[_501]]) + 32 < 0 or _501 + ceil32(return_data.size) + ceil32(mem[_501 + mem[_501]]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = _501 + ceil32(return_data.size) + ceil32(mem[_501 + mem[_501]]) + 32
            mem[_501 + ceil32(return_data.size)] = _507
            require _504 + _507 + 32 <= return_data.size
            mem[_501 + ceil32(return_data.size) + 32 len ceil32(_507)] = mem[_501 + _504 + 32 len ceil32(_507)]
            if ceil32(_507) <= _507:
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor1)
                staticcall stor1.0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _705 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _711 = mem[_705]
                require mem[_705] <= test266151307()
                require _705 + mem[_705] + 31 < _705 + return_data.size
                _717 = mem[_705 + mem[_705]]
                if mem[_705 + mem[_705]] > test266151307():
                    revert with 0, 65
                if ceil32(mem[_705 + mem[_705]]) + 32 < 0 or _705 + ceil32(return_data.size) + ceil32(mem[_705 + mem[_705]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _705 + ceil32(return_data.size) + ceil32(mem[_705 + mem[_705]]) + 32
                mem[_705 + ceil32(return_data.size)] = _717
                require _711 + _717 + 32 <= return_data.size
                mem[_705 + ceil32(return_data.size) + 32 len ceil32(_717)] = mem[_705 + _711 + 32 len ceil32(_717)]
                if ceil32(_717) > _717:
                    mem[_705 + ceil32(return_data.size) + _717 + 32] = 0
                if _492 < ext_call.return_data[0]:
                    revert with 0, 17
                mem[mem[64]] = 128
                mem[mem[64] + 128] = 13
                mem[mem[64] + 160] = 'swap complete' << 152
                mem[mem[64] + 32] = 192
                mem[mem[64] + 192] = _507
                mem[mem[64] + 224 len ceil32(_507)] = mem[_501 + ceil32(return_data.size) + 32 len ceil32(_507)]
                if ceil32(_507) > _507:
                    mem[mem[64] + _507 + 224] = 0
                mem[mem[64] + 64] = ceil32(_507) + 224
                mem[ceil32(_507) + mem[64] + 224] = _717
                mem[ceil32(_507) + mem[64] + 256 len ceil32(_717)] = mem[_705 + ceil32(return_data.size) + 32 len ceil32(_717)]
                if ceil32(_717) > _717:
                    mem[ceil32(_507) + mem[64] + _717 + 256] = 0
                mem[mem[64] + 96] = _492 - ext_call.return_data[0]
                emit 0x614b3ad2: 128, 192, ceil32(_507) + 224, _492 - ext_call.return_data[0], 13, 'swap complete', _507, mem[mem[64] + 224 len ceil32(_717) + ceil32(_507) + 32]
            else:
                mem[_501 + ceil32(return_data.size) + _507 + 32] = 0
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor1)
                staticcall stor1.0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _708 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _714 = mem[_708]
                require mem[_708] <= test266151307()
                require _708 + mem[_708] + 31 < _708 + return_data.size
                _720 = mem[_708 + mem[_708]]
                if mem[_708 + mem[_708]] > test266151307():
                    revert with 0, 65
                if ceil32(mem[_708 + mem[_708]]) + 32 < 0 or _708 + ceil32(return_data.size) + ceil32(mem[_708 + mem[_708]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _708 + ceil32(return_data.size) + ceil32(mem[_708 + mem[_708]]) + 32
                mem[_708 + ceil32(return_data.size)] = _720
                require _714 + _720 + 32 <= return_data.size
                mem[_708 + ceil32(return_data.size) + 32 len ceil32(_720)] = mem[_708 + _714 + 32 len ceil32(_720)]
                if ceil32(_720) > _720:
                    mem[_708 + ceil32(return_data.size) + _720 + 32] = 0
                if _492 < ext_call.return_data[0]:
                    revert with 0, 17
                mem[mem[64]] = 128
                mem[mem[64] + 128] = 13
                mem[mem[64] + 160] = 'swap complete' << 152
                mem[mem[64] + 32] = 192
                mem[mem[64] + 192] = _507
                mem[mem[64] + 224 len ceil32(_507)] = mem[_501 + ceil32(return_data.size) + 32 len ceil32(_507)]
                if ceil32(_507) > _507:
                    mem[mem[64] + _507 + 224] = 0
                mem[mem[64] + 64] = ceil32(_507) + 224
                mem[ceil32(_507) + mem[64] + 224] = _720
                mem[ceil32(_507) + mem[64] + 256 len ceil32(_720)] = mem[_708 + ceil32(return_data.size) + 32 len ceil32(_720)]
                if ceil32(_720) > _720:
                    mem[ceil32(_507) + mem[64] + _720 + 256] = 0
                mem[mem[64] + 96] = _492 - ext_call.return_data[0]
                emit 0x614b3ad2: 128, 192, ceil32(_507) + 224, _492 - ext_call.return_data[0], 13, 'swap complete', _507, mem[mem[64] + 224 len ceil32(_720) + ceil32(_507) + 32]
        else:
            mem[(4 * ceil32(return_data.size)) + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 100] = cd[36]
            mem[(4 * ceil32(return_data.size)) + 132] = cd[68]
            mem[(4 * ceil32(return_data.size)) + 164] = 160
            mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 4).length
            idx = 0
            s = cd[4] + 36
            t = (4 * ceil32(return_data.size)) + 292
            while idx < ('cd', 4).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 196] = address(cd[100])
            mem[(4 * ceil32(return_data.size)) + 228] = block.timestamp + 3600
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36], cd[68], Array(len=('cd', 4).length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 4).length]), address(cd[100]), block.timestamp + 3600
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _262 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32
            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
            _265 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
                revert with 0, 65
            if (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 32 < 0 or (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 128 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 128
            mem[(6 * ceil32(return_data.size)) + 96] = _265
            require return_data.size >= _262 + (32 * _265) + 32
            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _265] = mem[(4 * ceil32(return_data.size)) + _262 + 128 len 32 * _265]
            mem[mem[64] + 4] = address(cd[100])
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _490 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _493 = mem[_490]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor0)
            staticcall stor0.0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _502 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _505 = mem[_502]
            require mem[_502] <= test266151307()
            require _502 + mem[_502] + 31 < _502 + return_data.size
            _508 = mem[_502 + mem[_502]]
            if mem[_502 + mem[_502]] > test266151307():
                revert with 0, 65
            if ceil32(mem[_502 + mem[_502]]) + 32 < 0 or _502 + ceil32(return_data.size) + ceil32(mem[_502 + mem[_502]]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = _502 + ceil32(return_data.size) + ceil32(mem[_502 + mem[_502]]) + 32
            mem[_502 + ceil32(return_data.size)] = _508
            require _505 + _508 + 32 <= return_data.size
            mem[_502 + ceil32(return_data.size) + 32 len ceil32(_508)] = mem[_502 + _505 + 32 len ceil32(_508)]
            if ceil32(_508) <= _508:
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor1)
                staticcall stor1.0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _706 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _712 = mem[_706]
                require mem[_706] <= test266151307()
                require _706 + mem[_706] + 31 < _706 + return_data.size
                _718 = mem[_706 + mem[_706]]
                if mem[_706 + mem[_706]] > test266151307():
                    revert with 0, 65
                if ceil32(mem[_706 + mem[_706]]) + 32 < 0 or _706 + ceil32(return_data.size) + ceil32(mem[_706 + mem[_706]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _706 + ceil32(return_data.size) + ceil32(mem[_706 + mem[_706]]) + 32
                mem[_706 + ceil32(return_data.size)] = _718
                require _712 + _718 + 32 <= return_data.size
                mem[_706 + ceil32(return_data.size) + 32 len ceil32(_718)] = mem[_706 + _712 + 32 len ceil32(_718)]
                if ceil32(_718) > _718:
                    mem[_706 + ceil32(return_data.size) + _718 + 32] = 0
                if _493 < ext_call.return_data[0]:
                    revert with 0, 17
                mem[mem[64]] = 128
                mem[mem[64] + 128] = 13
                mem[mem[64] + 160] = 'swap complete' << 152
                mem[mem[64] + 32] = 192
                mem[mem[64] + 192] = _508
                mem[mem[64] + 224 len ceil32(_508)] = mem[_502 + ceil32(return_data.size) + 32 len ceil32(_508)]
                if ceil32(_508) > _508:
                    mem[mem[64] + _508 + 224] = 0
                mem[mem[64] + 64] = ceil32(_508) + 224
                mem[ceil32(_508) + mem[64] + 224] = _718
                mem[ceil32(_508) + mem[64] + 256 len ceil32(_718)] = mem[_706 + ceil32(return_data.size) + 32 len ceil32(_718)]
                if ceil32(_718) > _718:
                    mem[ceil32(_508) + mem[64] + _718 + 256] = 0
                mem[mem[64] + 96] = _493 - ext_call.return_data[0]
                emit 0x614b3ad2: 128, 192, ceil32(_508) + 224, _493 - ext_call.return_data[0], 13, 'swap complete', _508, mem[mem[64] + 224 len ceil32(_718) + ceil32(_508) + 32]
            else:
                mem[_502 + ceil32(return_data.size) + _508 + 32] = 0
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor1)
                staticcall stor1.0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _709 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _715 = mem[_709]
                require mem[_709] <= test266151307()
                require _709 + mem[_709] + 31 < _709 + return_data.size
                _721 = mem[_709 + mem[_709]]
                if mem[_709 + mem[_709]] > test266151307():
                    revert with 0, 65
                if ceil32(mem[_709 + mem[_709]]) + 32 < 0 or _709 + ceil32(return_data.size) + ceil32(mem[_709 + mem[_709]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _709 + ceil32(return_data.size) + ceil32(mem[_709 + mem[_709]]) + 32
                mem[_709 + ceil32(return_data.size)] = _721
                require _715 + _721 + 32 <= return_data.size
                mem[_709 + ceil32(return_data.size) + 32 len ceil32(_721)] = mem[_709 + _715 + 32 len ceil32(_721)]
                if ceil32(_721) > _721:
                    mem[_709 + ceil32(return_data.size) + _721 + 32] = 0
                if _493 < ext_call.return_data[0]:
                    revert with 0, 17
                mem[mem[64]] = 128
                mem[mem[64] + 128] = 13
                mem[mem[64] + 160] = 'swap complete' << 152
                mem[mem[64] + 32] = 192
                mem[mem[64] + 192] = _508
                mem[mem[64] + 224 len ceil32(_508)] = mem[_502 + ceil32(return_data.size) + 32 len ceil32(_508)]
                if ceil32(_508) > _508:
                    mem[mem[64] + _508 + 224] = 0
                mem[mem[64] + 64] = ceil32(_508) + 224
                mem[ceil32(_508) + mem[64] + 224] = _721
                mem[ceil32(_508) + mem[64] + 256 len ceil32(_721)] = mem[_709 + ceil32(return_data.size) + 32 len ceil32(_721)]
                if ceil32(_721) > _721:
                    mem[ceil32(_508) + mem[64] + _721 + 256] = 0
                mem[mem[64] + 96] = _493 - ext_call.return_data[0]
                emit 0x614b3ad2: 128, 192, ceil32(_508) + 224, _493 - ext_call.return_data[0], 13, 'swap complete', _508, mem[mem[64] + 224 len ceil32(_721) + ceil32(_508) + 32]
}



}
